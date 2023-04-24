<?php

namespace App\Http\Controllers;

use App\Models\Plane;
use Illuminate\Http\Request;

class PlaneController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Plane::latest()->paginate(5);
        // var_dump($data[0]);
        return view('index', compact('data'))->with('i', (request()->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $plane = new Plane();

        $plane->plane_code = $request->plane_code;
        $plane->registration_number = $request->registration_number;
        $plane->passenger = $request->passenger;

        $plane->save();

        return redirect()->route('planes.index')->with('success', 'Plane Added successfully.');

    }

    /**
     * Display the specified resource.
     */
    public function show(Plane $plane)
    {
        return view('show', compact('plane'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Plane $plane)
    {
        return view('edit', compact('plane'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Plane $plane)
    {
        $plane = Plane::find($request->hidden_id);

        $plane->plane_code = $request->plane_code;

        $plane->registration_number = $request->registration_number;

        $plane->passenger = $request->passenger;

        $plane->save();

        return redirect()->route('planes.index')->with('success', 'Plane Data has been updated successfully');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Plane $plane)
    {
        $plane->delete();

        return redirect()->route('planes.index')->with('success', 'Plane Data deleted successfully');
    }
}
