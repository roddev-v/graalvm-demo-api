package com.roddevv.graalvmnativedockerdemo.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController()
public class BaseController {
    @GetMapping("/hello-world")
    public String helloWorld() {
        return "Hello world!";
    }
}
