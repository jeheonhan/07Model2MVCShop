<%@ page contentType="text/html; charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${!empty param.menu }">	
		<c:if test="${ resultPage.currentPage <= resultPage.pageUnit }">
				◀ 이전
		</c:if>
	<%-- ========================================================================================================================================================================================= --%>	
		<c:choose>				
			<c:when test="${!empty search.searchCondition && !empty search.searchKeyword }">
				<c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
					<a href="/product/listProduct?currentPage=${ resultPage.beginUnitPage-1}&menu=${param.menu}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}">◀ 이전</a>
				</c:if>
			</c:when>
			<c:otherwise>
				<c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
					<a href="/product/listProduct?currentPage=${ resultPage.beginUnitPage-1}&menu=${param.menu}">◀ 이전</a>
				</c:if>
			</c:otherwise>
		</c:choose>
	<%-- ========================================================================================================================================================================================= --%>	
		<c:choose>
			<c:when test="${!empty search.searchCondition && !empty search.searchKeyword }">
				<c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
				<a href="/product/listProduct?currentPage=${ i }&menu=${param.menu}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}">${ i }</a>
				</c:forEach>
			</c:when>		
			<c:otherwise>
				<c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
				<a href="/product/listProduct?currentPage=${ i }&menu=${param.menu}">${ i }</a>
				</c:forEach>
			</c:otherwise>		
		</c:choose>
	<%-- ========================================================================================================================================================================================= --%>	
		
			<c:if test="${ resultPage.endUnitPage >= resultPage.maxPage }">
					이후 ▶
			</c:if>
	<%-- ========================================================================================================================================================================================= --%>		
		<c:choose>
			<c:when test="${!empty search.searchCondition && !empty search.searchKeyword }">
					<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
							<a href="/product/listProduct?currentPage=${resultPage.endUnitPage+1}&menu=${param.menu}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}">이후 ▶</a>
					</c:if>
			</c:when>		
			<c:otherwise>
					<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
							<a href="/product/listProduct?currentPage=${resultPage.endUnitPage+1}&menu=${param.menu}">이후 ▶</a>
					</c:if>
			</c:otherwise>
		</c:choose>
</c:if>

<%-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// --%>

<c:if test="${empty param.menu}">

	<c:if test="${ resultPage.currentPage <= resultPage.pageUnit }">
				◀ 이전
		</c:if>
	<%-- ========================================================================================================================================================================================= --%>	
		<c:choose>				
			<c:when test="${!empty search.searchCondition && !empty search.searchKeyword }">
				<c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
					<a href="/user/listUser?currentPage=${ resultPage.beginUnitPage-1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}">◀ 이전</a>
				</c:if>
			</c:when>
			<c:otherwise>
				<c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
					<a href="/user/listUser?currentPage=${ resultPage.beginUnitPage-1}">◀ 이전</a>
				</c:if>
			</c:otherwise>
		</c:choose>
	<%-- ========================================================================================================================================================================================= --%>	
		<c:choose>
			<c:when test="${!empty search.searchCondition && !empty search.searchKeyword }">
				<c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
				<a href="/user/listUser?currentPage=${ i }&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}">${ i }</a>
				</c:forEach>
			</c:when>		
			<c:otherwise>
				<c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
				<a href="/user/listUser?currentPage=${ i }">${ i }</a>
				</c:forEach>
			</c:otherwise>		
		</c:choose>
	<%-- ========================================================================================================================================================================================= --%>	
		
			<c:if test="${ resultPage.endUnitPage >= resultPage.maxPage }">
					이후 ▶
			</c:if>
	<%-- ========================================================================================================================================================================================= --%>		
		<c:choose>
			<c:when test="${!empty search.searchCondition && !empty search.searchKeyword }">
					<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
							<a href="/user/listUser?currentPage=${resultPage.endUnitPage+1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}">이후 ▶</a>
					</c:if>
			</c:when>		
			<c:otherwise>
					<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
							<a href="/user/listUser?currentPage=${resultPage.endUnitPage+1}">이후 ▶</a>
					</c:if>
			</c:otherwise>
		</c:choose>
</c:if>
