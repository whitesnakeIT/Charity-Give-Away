<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="../fragments/headers/formHeader.jsp"/>
<section class="form--steps" id="steps">
    <div class="form--steps-instructions">

        <div class="form--steps-container">
            <h3>Ważne!</h3>
            <p data-step="1" class="active">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="2">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="3">
                Wybierz jedną, do
                której trafi Twoja przesyłka.
            </p>
            <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>
        </div>
    </div>
    <div class="form--steps-container">
        <div class="form--steps-counter">Krok <span>1</span>/4</div>

        <form:form method="post" modelAttribute="donation">


            <!-- STEP 1: class .active is switching steps -->
            <div data-step="1" class="active" id="step1">
                <h3>Zaznacz co chcesz oddać:</h3>
                <c:forEach items="${categories}" var="category">
                    <div class="form-group form-group--checkbox">
                        <label>
                            <form:checkbox path="categories" value="${category.id}"/>
                            <span class="checkbox"></span>
                            <span class="description">${category.name}</span>
                        </label>
                    </div>
                </c:forEach>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
                <h4><form:errors path="categories" cssClass="error"/></h4>
            </div>

            <!-- STEP 2 -->
            <div data-step="2" id="step2">
                <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

                <div class="form-group form-group--inline">
                    <label>
                        Liczba 60l worków:
                        <form:input path="quantity" type="number" step="1" min="1"/>
                    </label>

                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
                <h4><form:errors path="quantity" cssClass="error"/></h4>
            </div>


            <!-- STEP 4 -->
            <div data-step="3" id="step3">
                <h3>Wybierz organizacje, której chcesz pomóc:</h3>
                <c:forEach items="${institutions}" var="institution">
                    <div class="form-group form-group--checkbox">
                        <label>
                            <form:radiobutton path="institution" value="${institution.id}"/>
                            <span class="checkbox radio"></span>
                            <span class="description">
                                 <div class="title">${institution.name}</div>
                                  <div class="subtitle">
                                       Cel i misja: ${institution.description}
                                 </div>
                           </span>
                        </label>
                    </div>
                </c:forEach>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>

                </div>
                <h4><form:errors path="institution" cssClass="error"/></h4>

            </div>

            <!-- STEP 5 -->
            <div data-step="4" id="step4">
                <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>

                <div class="form-section form-section--columns">
                    <div class="form-section--column">
                        <h4>Adres odbioru</h4>
                        <div class="form-group form-group--inline">
                            <label>
                                Ulica
                                <form:input path="street"/>
                            </label>
                        </div>
                        <h4><form:errors path="street" cssClass="error-summary"/></h4>

                        <div class="form-group form-group--inline">
                            <label>
                                Miasto
                                <form:input path="city"/>
                            </label>
                            <h4><form:errors path="city" cssClass="error-summary"/></h4>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Kod pocztowy
                                <form:input path="zipCode"/>
                            </label>
                            <h4><form:errors path="zipCode" cssClass="error-summary"/></h4>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Numer telefonu
                                <form:input path="phone" type="number"/>
                            </label>
                            <h4><form:errors path="phone" cssClass="error-summary"/></h4>
                        </div>
                    </div>

                    <div class="form-section--column">
                        <h4>Termin odbioru</h4>
                        <div class="form-group form-group--inline">
                            <label>
                                Data
                                <form:input path="pickUpDate" type="date"/>
                            </label>
                            <h4><form:errors path="pickUpDate" cssClass="error-summary"/></h4>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Godzina
                                <form:input path="pickUpTime" type="time"/>
                            </label>
                            <h4><form:errors path="pickUpTime" cssClass="error-summary"/></h4>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Uwagi dla kuriera
                                <form:textarea path="pickUpComment" rows="5"/>
                            </label>
                            <h4><form:errors path="pickUpComment" cssClass="error-summary"/></h4>
                        </div>
                    </div>
                </div>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 6 -->
            <div data-step="5" id="step5">
                <h3>Podsumowanie Twojej darowizny</h3>

                <div class="summary">
                    <div class="form-section">
                        <h4>Oddajesz:</h4>
                        <ul>
                            <li>
                                <span class="icon icon-bag"></span>
                                <span class="summary--text"
                                      id="quantitySummary">Brak</span>
                            </li>

                            <li>
                                <span class="icon icon-hand"></span>
                                <span class="summary--text" id="institutionSummary">Brak</span>
                            </li>
                        </ul>
                    </div>

                    <div class="form-section form-section--columns">
                        <div class="form-section--column">
                            <h4>Adres odbioru:</h4>
                            <ul>
                                <li id="streetSummary">Brak</li>
                                <li id="citySummary">Brak</li>
                                <li id="zipCodeSummary">Brak</li>
                                <li id="phoneSummary">Brak</li>
                            </ul>
                        </div>

                        <div class="form-section--column">
                            <h4>Termin odbioru:</h4>
                            <ul>
                                <li id="pickUpDateSummary">Brak</li>
                                <li id="pickUpTimeSummary">Brak</li>
                                <li id="pickUpCommentSummary">Brak</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="submit" class="btn">Potwierdzam</button>
                </div>
            </div>

        </form:form>
    </div>

<jsp:include page="../fragments/footer.jsp"/>