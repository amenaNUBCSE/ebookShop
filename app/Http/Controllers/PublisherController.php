<?php

namespace App\Http\Controllers;

use App\Models\Publisher;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PublisherController extends Controller
{
    public function index() {
        $publishers = Publisher::all();
        return view('publisher.index',compact('publishers'));
    }

    public function create() {
        return view('publisher.create');
    }

    public function save(Request $request) {
        $request->validate([
            'publisher_name' => 'required'
        ]);

        Publisher::create([
            'publisher_name' => $request->publisher_name,
            'created_at' => Carbon::now('UTC')->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now('UTC')->format('Y-m-d H:i:s')
        ]);

        return redirect()->route('publisher.index')->with('success','Successfully created publishing house');
    }

    public function show($id) {
        $publisher = Publisher::findOrFail($id);

        return view('publisher.show',compact('publisher'));
    }

    public function edit($id) {
        $publisher = Publisher::findOrFail($id);

        return view('publisher.edit',compact('publisher'));
    }

    public function update(Request $request, $id) {
        $request->validate([
            'publisher_name' => 'required'
        ]);

        $publisher = Publisher::findOrFail($id);

        $publisher->update([
            'publisher_name' => $request->publisher_name,
            'updated_at' => Carbon::now('UTC')->format('Y-m-d H:i:s')
        ]);

        return redirect()->route('publisher.index')->with('success','Editorial updated correctly');
    }

    public function delete($id) {
        $publisher = Publisher::findOrFail($id);
        $publisher->delete();

        return redirect()->route('publisher.index')->with('success','Editorial successfully removed.');
    }

    public function searchSelect(Request $request)
    {
        $sql = "SELECT publishers.id, publishers.publisher_name FROM publishers WHERE publisher_name LIKE '%$request->search%' LIMIT 5";
        $publishers = DB::select($sql);
        return response()->json($publishers,200);
    }



}
