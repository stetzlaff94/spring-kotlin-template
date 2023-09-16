package com.stephentetzlaff.app.controller

import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/demo")
class Controller {

    @GetMapping
    fun getPosts(): ResponseEntity<String> {
        // add your logic here to get posts
        return ResponseEntity("Posts will be fetched here", HttpStatus.OK)
    }

    @GetMapping("/health")
    fun healthCheck(): ResponseEntity<String> {
        return ResponseEntity("Service is up and running!", HttpStatus.OK)
    }
}
