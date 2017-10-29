<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<c:import url="/WEB-INF/jsp/header.jsp">
	    <c:param name="pageTitle" value="Recipe Tile View" />
	</c:import>
	
	<div class ="picture">
		<img class="tableImage" src="img/recipe${recipe.recipeId}.jpg" alt="${recipe.name}">
	<div class="right">
		<div class="name">
				<c:out value="${recipe.name}"/>
		</div>
		
		<div class="type">
			<c:out value="${recipe.recipeType}"/>
		</div>
		
		<div class="time">
			<span class="bold"><c:out value="Cook Time "/></span>
			<c:out value="${recipe.cookTimeInMinutes}"/>
		</div>
		
		<div class="description">
			<c:out value="${recipe.description}"/>
		</div>
	</div>
	</div>
	
	<div class="ingredients">
		<span class="bold"><c:out value="Ingredients "/></span>
		<ul>
			<c:forEach var="ingredient" items="${recipe.ingredients}" varStatus="loop">
				<li><c:out value="${ingredient.printIngredient()}"/></li>
			</c:forEach>
		</ul>
	</div>
	
	<div class="prep">
		<span class="bold"><c:out value="Preparation "/></span>
		<ol>
			<c:forEach var="step" items="${recipe.preparationSteps}" varStatus="loop">
				<li><c:out value="${step}"/></li>
			</c:forEach>
		</ol>
	</div>
	

	<c:import url="/WEB-INF/jsp/footer.jsp">
	
	</c:import>
	
	
	
	
	
	
	
	<!-- private Long recipeId;
	private String name;
	private String description;
	private List<Ingredient> ingredients;
	private List<String> preparationSteps;
	private double averageRating;
	private int cookTimeInMinutes;
	private String recipeType; -->