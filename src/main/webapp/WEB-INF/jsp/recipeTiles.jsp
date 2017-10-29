<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<c:import url="/WEB-INF/jsp/header.jsp">
	    <c:param name="pageTitle" value="Recipe Tile View" />
	</c:import>
	
	<h1>Recipes</h1>
	
	<c:forEach var = "recipe" items = "${recipes}">
		<div class="recipe">
			<c:url var="recipeDetailUrl" value="/recipeDetails">
		        	<c:param name="recipeId" value="${recipe.recipeId}"/>
		    </c:url>
		       	<td>
		       		<a href="${recipeDetailUrl}"><img class="tableImage" src="img/recipe${recipe.recipeId}.jpg" alt="${recipe.name}"></a>
		    		</td>
		    		
<%-- 				<img src="img/recipe${recipe.recipeId}.jpg" alt="${recipe.name}">
 --%>				
			<div class="description">
				<strong>${recipe.name}</strong>
				<div class="stars"><img class="smallImage" src="img/${recipe.averageRating.intValue()}-star.png" alt="${recipe.averageRating.intValue()} star"/></div>
				<div class="ingredients">${recipe.ingredients.size()} Ingredients</div>
			</div>
		</div>
	</c:forEach>
	
	<c:import url="/WEB-INF/jsp/footer.jsp">
	</c:import>
       <%-- <table>
           <tr>
		       <td class = "equal" colspan ="2"><img src = "img/recipe0.jpg" alt = "Broccoli"></td>
		       <td class = "equal" colspan ="2"><img src = "img/recipe1.jpg" alt = "Mexican Green Rice Pilaf"></td>
		       <td class = "equal" colspan ="2"><img src = "img/recipe2.jpg" alt = "Pasta With Blue Cheese"></td>
	       </tr>
           <tr class = "background">
	       		<c:forEach var = "recipe" items = "${recipes}">
	       			<td colspan ="2"><strong>${recipe.name}</strong></td>
	       		</c:forEach>
	       </tr>
	       <tr class = "background"><td class = "blank" colspan = "6">&nbsp;</td></tr>
           <tr class = "background">
	       		<c:forEach var = "recipe" items = "${recipes}">
	       			<c:choose>
	      	 		<c:when test = "${recipe.averageRating == 5}">
	      	 			<td class = "small"><img class = "smallImage" src = "img/5-star.png" alt = "5 star"/></td>
	      	 			<td>${recipe.ingredients.size()} Ingredients</td>
	      	 		</c:when> 
	      	 		<c:when test = "${recipe.averageRating > 4}">
	      	 			<td class = "small"><img class = "smallImage" src = "img/4-star.png" alt = "4 star"/></td>
	      	 			<td>${recipe.ingredients.size()} Ingredients</td>
	      	 		</c:when> 
	      	 		<c:when test = "${recipe.averageRating > 3}">
	      	 			<td class = "small"><img class = "smallImage" src = "img/3-star.png" alt = "3 star"/></td>
	      	 			<td>${recipe.ingredients.size()} Ingredients</td>
	      	 		</c:when> 
	      	 		<c:when test = "${recipe.averageRating > 2}">
	      	 			<td class = "small"><img class = "smallImage" src = "img/2-star.png" alt = "2 star"/></td>
	      	 			<td>${recipe.ingredients.size()} Ingredients</td>
	      	 		</c:when> 
	      	 		<c:when test = "${recipe.averageRating > 0}">
	      	 			<td class = "small"><img class = "smallImage" src = "img/1-star.png" alt = "1 star"/></td>
	      	 			<td>${recipe.ingredients.size()} Ingredients</td>
	      	 		</c:when> 
	      	 		</c:choose>
	       		</c:forEach>
	       </tr>
	   </table> --%>
	   
