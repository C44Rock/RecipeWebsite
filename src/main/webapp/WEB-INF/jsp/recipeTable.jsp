<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<c:import url="/WEB-INF/jsp/header.jsp">
	    <c:param name="pageTitle" value="Recipe Table View" />
	</c:import>

       <h1>Recipes</h1>
       <table>
           <tr>
		       <td> </td>
		        <c:forEach var = "recipe" items = "${recipes}">
		        		<c:url var="recipeDetailUrl" value="/recipeDetails">
		        			<c:param name="recipeId" value="${recipe.recipeId}"/>
		        		</c:url>
		       		<td>
		       			<a href="${recipeDetailUrl}"><img class="tableImage" src="img/recipe${recipe.recipeId}.jpg" alt="${recipe.name}"></a>
		       		</td>
		       	</c:forEach>
	       </tr>
	       
	       <tr class = "background">
	          <td class="left"><strong>Name</strong></td>
	      	 <c:forEach var = "recipe" items = "${recipes}">
	       			<td>${recipe.name}</td>
	       </c:forEach>
	       </tr>
	         <tr>
	          <td class="left"><strong>Type</strong></td>
	      	 <c:forEach var = "recipe" items = "${recipes}">
	       			<td>${recipe.recipeType}</td>
	       </c:forEach>
	       </tr>
	         <tr class = "background">
	          <td class="left"><strong>Cook Time</strong></td>
	      	 <c:forEach var = "recipe" items = "${recipes}">
	       			<td>${recipe.cookTimeInMinutes}</td>
	       </c:forEach>
	       </tr>
	         <tr>
	         <td class="left"><strong>Ingredients</strong></td>
	      	 <c:forEach var = "recipe" items = "${recipes}">
	       			<td>${recipe.ingredients.size()} Ingredients</td>
	       </c:forEach>
	       </tr>
	         <tr class = "background">
	          <td class="left"><strong>Rating</strong></td>
	      	 <c:forEach var = "recipe" items = "${recipes}">
	      	 	<td><div class="stars"><img class="smallImage" src="img/${recipe.averageRating.intValue()}-star.png" alt="${recipe.averageRating.intValue()} star"/></div></td>
	       </c:forEach>
	       </tr>
       </table>
   
	<c:import url="/WEB-INF/jsp/footer.jsp">
	</c:import>