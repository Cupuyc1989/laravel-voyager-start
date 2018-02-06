<?php

function rroute($name, $parameters = []) {
    return route($name, $parameters, false);
}