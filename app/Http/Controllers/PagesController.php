<?php

namespace App\Http\Controllers;

use App\Page;
use Illuminate\Http\Request;

class PagesController extends Controller
{
	public function show($slug)
	{
		$page = Page::findBySlug($slug);
	    return view('page.show', compact('page'));
	}
}
