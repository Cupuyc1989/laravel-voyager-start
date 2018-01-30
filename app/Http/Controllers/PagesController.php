<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;

class PagesController extends Controller
{
    public function show($slug)
    {
        $page = Page::where('slug', $slug)->firstOrFail();

        return view('page.show',compact('page'));
    }
}
