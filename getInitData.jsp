<%@page import="javax.json.Json"%>
<%@page import="javax.json.JsonArrayBuilder"%>
<%@page import="javax.json.JsonBuilderFactory"%>
<%@page import="javax.json.JsonObjectBuilder"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%

		Map<String, String> base = new HashMap<String, String>();
		JsonBuilderFactory jsonFactory = Json.createBuilderFactory(base);
		
		
		JsonObjectBuilder jsonObject = jsonFactory.createObjectBuilder();
	
		JsonArrayBuilder jsonArray = jsonFactory.createArrayBuilder();
		jsonArray.add("ACTION");
		jsonArray.add("COMEDY");
		jsonArray.add("CRIME");
		jsonArray.add("DRAMA");
		jsonArray.add("FANTASY");
		jsonArray.add("SCI-FI");
		jsonObject.add("genre", jsonArray);


		jsonArray = jsonFactory.createArrayBuilder();
		jsonArray.add("Brad Pitt");
		jsonArray.add("Jim Carrey");
		jsonArray.add("Leonardo DiCaprio");
		jsonArray.add("Tom Cruise");
		jsonObject.add("actor", jsonArray);

		String jsonTxt = jsonObject.build().toString();

		
		//PrintWriter pw = response.getWriter();
		out.print(jsonTxt);
%>
