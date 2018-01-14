@extends('layouts.app')

@section('title')
    {{ $page->title }}
@stop

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1>
                            {{ $page->title }}
                        </h1>
                    </div>
                    <div class="panel-body">
                        @if ($page->image)
                            <div class="image">
                                <img src="{{ Voyager::image($page->image) }}" alt="{{ $page->title }}">
                            </div>
                            <hr>
                        @endif
                        @if ($page->excerpt)
                            <div class="excerpt">
                                {!! $page->excerpt !!}}
                            </div>
                                <hr>
                        @endif
                        <div class="body">
                            {!! $page->body !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop