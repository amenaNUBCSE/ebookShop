<?php

namespace App\Http\Controllers;

use App\Models\Author;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AuthorController extends Controller
{
    public function index()
    {
        $authors = Author::all();
        return view('author.index', compact('authors'));
    }

    public function save(Request $request)
    {
        $request->validate(['author_name' => 'min:3|required']);

        Author::create(['author_name' => $request->author_name, 'created_at' => Carbon::now('UTC')->format('Y-m-d H:i:s'), 'updated_at' => Carbon::now('UTC')->format('Y-m-d H:i:s')]);

        return redirect()->route('author.index')->with('success', 'Author created successfully.');
    }

    public function create()
    {
        return view('author.create');
    }

    public function show($id)
    {

        $author = Author::findOrFail($id);

        return view('author.show', compact('author'));
    }


    public function edit($id)
    {

        $author = Author::findOrFail($id);

        return view('author.edit', compact('author'));
    }

    public function update(Request $request, $id)
    {
        $request->validate(['author_name' => 'min:3|required']);

        $author = Author::findOrFail($id);

        $author->update(['author_name' => $request->author_name, 'updated_at' => Carbon::now('UTC')->format('Y-m-d H:i:s')]);

        return redirect()->route('author.index')->with('success', 'Author updated successfully');
    }

    public function delete($id)
    {
        $author = Author::findOrFail($id);
        $author->delete();

        return redirect()->route('author.index')->with('success', "Author successfully removed");
    }

    public function searchSelect(Request $request)
    {
        $sql = "SELECT authors.id, authors.author_name FROM authors WHERE author_name LIKE '%$request->search%' LIMIT 5";
        $authors = DB::select($sql);
        return response()->json($authors,200);
    }


}
