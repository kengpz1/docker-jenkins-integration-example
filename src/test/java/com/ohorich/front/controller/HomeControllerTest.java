package com.ohorich.front.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

@ExtendWith(SpringExtension.class)
@WebMvcTest(controllers = HomeController.class)
public class HomeControllerTest {

	@Autowired
	private MockMvc mvc;

	@Test
	  void whenValidIndexUrl_thenReturns200() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/")).andExpect(status().isOk());
	  }
}
