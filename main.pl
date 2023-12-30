% ONU Specialty recommendation system


%%%%%%%%%%%%%%%%%%%%
%% Knowledge base %%
%%%%%%%%%%%%%%%%%%%%

% Dynamic predicates
:- dynamic nmt_mandatory_score/2.

% nmt_mandatory_score(ukr, 187).
% nmt_mandatory_score(math, 190).

:- dynamic nmt_selective_score/2.

% nmt_selective_score(hist, 170).
% nmt_selective_score(lang, 187).
% nmt_selective_score(bio, 185).
% nmt_selective_score(chem, 182).
% nmt_selective_score(phys, 190).

:- dynamic interest/2.

:- dynamic avg_score/1.

% Mandatory subjects' coefficients
mandatory_coefficient(edu_biology, ukr, 0.3).
mandatory_coefficient(edu_biology, math, 0.35).
mandatory_coefficient(edu_geography, ukr, 0.3).
mandatory_coefficient(edu_geography, math, 0.35).
mandatory_coefficient(land_use_and_valuation, ukr, 0.3).
mandatory_coefficient(land_use_and_valuation, math, 0.35).
mandatory_coefficient(geographical_bases_of_nature_management_and_regional_and_municipal_development, ukr, 0.3).
mandatory_coefficient(geographical_bases_of_nature_management_and_regional_and_municipal_development, math, 0.35).
mandatory_coefficient(history, ukr, 0.25).
mandatory_coefficient(history, math, 0.25).
mandatory_coefficient(philosophy, ukr, 0.35).
mandatory_coefficient(philosophy, math, 0.25).
mandatory_coefficient(culturology, ukr, 0.25).
mandatory_coefficient(culturology, math, 0.25).
mandatory_coefficient(ukrainian, ukr, 0.5).
mandatory_coefficient(ukrainian, math, 0.25).
mandatory_coefficient(english, ukr, 0.4).
mandatory_coefficient(english, math, 0.3).
mandatory_coefficient(english_translation, ukr, 0.4).
mandatory_coefficient(english_translation, math, 0.3).
mandatory_coefficient(german, ukr, 0.4).
mandatory_coefficient(german, math, 0.3).
mandatory_coefficient(spanish, ukr, 0.4).
mandatory_coefficient(spanish, math, 0.3).
mandatory_coefficient(french, ukr, 0.4).
mandatory_coefficient(french, math, 0.3).
mandatory_coefficient(applied_linguistics, ukr, 0.4).
mandatory_coefficient(applied_linguistics, math, 0.3).
mandatory_coefficient(politology, ukr, 0.35).
mandatory_coefficient(politology, math, 0.4).
mandatory_coefficient(psychology, ukr, 0.35).
mandatory_coefficient(psychology, math, 0.4).
mandatory_coefficient(journalism, ukr, 0.45).
mandatory_coefficient(journalism, math, 0.3).
mandatory_coefficient(advertisement_and_public_relations, ukr, 0.45).
mandatory_coefficient(advertisement_and_public_relations, math, 0.3).
mandatory_coefficient(law, ukr, 0.35).
mandatory_coefficient(law, math, 0.25).
mandatory_coefficient(social_work, ukr, 0.35).
mandatory_coefficient(social_work, math, 0.4).
mandatory_coefficient(economics_and_business_regulation, ukr, 0.35).
mandatory_coefficient(economics_and_business_regulation, math, 0.4).
mandatory_coefficient(accounting_and_taxation, ukr, 0.35).
mandatory_coefficient(accounting_and_taxation, math, 0.4).
mandatory_coefficient(finance_banking_insurance_and_stock_market, ukr, 0.35).
mandatory_coefficient(finance_banking_insurance_and_stock_market, math, 0.4).
mandatory_coefficient(management, ukr, 0.35).
mandatory_coefficient(management, math, 0.4).
mandatory_coefficient(biology_and_biochemistry, ukr, 0.3).
mandatory_coefficient(biology_and_biochemistry, math, 0.35).
mandatory_coefficient(chemistry, ukr, 0.3).
mandatory_coefficient(chemistry, math, 0.35).
mandatory_coefficient(pharmaceutical_chemistry, ukr, 0.3).
mandatory_coefficient(pharmaceutical_chemistry, math, 0.35).
mandatory_coefficient(marine_geology_hydrogeology_and_engineering_geology, ukr, 0.35).
mandatory_coefficient(marine_geology_hydrogeology_and_engineering_geology, math, 0.4).
mandatory_coefficient(physics_and_astronomy, ukr, 0.3).
mandatory_coefficient(physics_and_astronomy, math, 0.5).
mandatory_coefficient(mathematics, ukr, 0.3).
mandatory_coefficient(mathematics, math, 0.5).
mandatory_coefficient(applied_mathematics, ukr, 0.3).
mandatory_coefficient(applied_mathematics, math, 0.5).
mandatory_coefficient(computer_science, ukr, 0.3).
mandatory_coefficient(computer_science, math, 0.5).
mandatory_coefficient(information_systems_and_technology, ukr, 0.3).
mandatory_coefficient(information_systems_and_technology, math, 0.5).
mandatory_coefficient(biotechnology_and_bioengineering, ukr, 0.35).
mandatory_coefficient(biotechnology_and_bioengineering, math, 0.35).
mandatory_coefficient(automation_computer_integrated_technologies_and_robotics, ukr, 0.3).
mandatory_coefficient(automation_computer_integrated_technologies_and_robotics, math, 0.5).
mandatory_coefficient(horticulture, ukr, 0.35).
mandatory_coefficient(horticulture, math, 0.4).
mandatory_coefficient(tourism, ukr, 0.4).
mandatory_coefficient(tourism, math, 0.3).
mandatory_coefficient(international_relations_public_communications_and_regional_studies, ukr, 0.4).
mandatory_coefficient(international_relations_public_communications_and_regional_studies, math, 0.3).
mandatory_coefficient(international_economic_relations, ukr, 0.3).
mandatory_coefficient(international_economic_relations, math, 0.4).

% Selective subjects' coefficients
selective_coefficient(edu_biology, history, 0.35).
selective_coefficient(edu_biology, lang, 0.3).
selective_coefficient(edu_biology, bio, 0.5).
selective_coefficient(edu_biology, phys, 0.3).
selective_coefficient(edu_biology, chem, 0.3).
selective_coefficient(edu_geography, history, 0.35).
selective_coefficient(edu_geography, lang, 0.35).
selective_coefficient(edu_geography, bio, 0.35).
selective_coefficient(edu_geography, phys, 0.35).
selective_coefficient(edu_geography, chem, 0.35).
selective_coefficient(land_use_and_valuation, history, 0.35).
selective_coefficient(land_use_and_valuation, lang, 0.35).
selective_coefficient(land_use_and_valuation, bio, 0.35).
selective_coefficient(land_use_and_valuation, phys, 0.35).
selective_coefficient(land_use_and_valuation, chem, 0.35).
selective_coefficient(geographical_bases_of_nature_management_and_regional_and_municipal_development, history, 0.35).
selective_coefficient(geographical_bases_of_nature_management_and_regional_and_municipal_development, lang, 0.35).
selective_coefficient(geographical_bases_of_nature_management_and_regional_and_municipal_development, bio, 0.35).
selective_coefficient(geographical_bases_of_nature_management_and_regional_and_municipal_development, phys, 0.35).
selective_coefficient(geographical_bases_of_nature_management_and_regional_and_municipal_development, chem, 0.35).
selective_coefficient(history, history, 0.5).
selective_coefficient(history, lang, 0.5).
selective_coefficient(history, bio, 0.2).
selective_coefficient(history, phys, 0.2).
selective_coefficient(history, chem, 0.2).
selective_coefficient(philosophy, history, 0.4).
selective_coefficient(philosophy, lang, 0.4).
selective_coefficient(philosophy, bio, 0.2).
selective_coefficient(philosophy, phys, 0.2).
selective_coefficient(philosophy, chem, 0.2).
selective_coefficient(culturology, history, 0.5).
selective_coefficient(culturology, lang, 0.5).
selective_coefficient(culturology, bio, 0.2).
selective_coefficient(culturology, phys, 0.2).
selective_coefficient(culturology, chem, 0.2).
selective_coefficient(ukrainian, history, 0.25).
selective_coefficient(ukrainian, lang, 0.25).
selective_coefficient(ukrainian, bio, 0.2).
selective_coefficient(ukrainian, phys, 0.2).
selective_coefficient(ukrainian, chem, 0.2).
selective_coefficient(english, history, 0.3).
selective_coefficient(english, lang, 0.4).
selective_coefficient(english, bio, 0.2).
selective_coefficient(english, phys, 0.2).
selective_coefficient(english, chem, 0.2).
selective_coefficient(english_translation, history, 0.3).
selective_coefficient(english_translation, lang, 0.4).
selective_coefficient(english_translation, bio, 0.2).
selective_coefficient(english_translation, phys, 0.2).
selective_coefficient(english_translation, chem, 0.2).
selective_coefficient(german, history, 0.3).
selective_coefficient(german, lang, 0.4).
selective_coefficient(german, bio, 0.2).
selective_coefficient(german, phys, 0.2).
selective_coefficient(german, chem, 0.2).
selective_coefficient(spanish, history, 0.3).
selective_coefficient(spanish, lang, 0.4).
selective_coefficient(spanish, bio, 0.2).
selective_coefficient(spanish, phys, 0.2).
selective_coefficient(spanish, chem, 0.2).
selective_coefficient(french, history, 0.3).
selective_coefficient(french, lang, 0.4).
selective_coefficient(french, bio, 0.2).
selective_coefficient(french, phys, 0.2).
selective_coefficient(french, chem, 0.2).
selective_coefficient(applied_linguistics, history, 0.3).
selective_coefficient(applied_linguistics, lang, 0.4).
selective_coefficient(applied_linguistics, bio, 0.2).
selective_coefficient(applied_linguistics, phys, 0.2).
selective_coefficient(applied_linguistics, chem, 0.2).
selective_coefficient(politology, history, 0.25).
selective_coefficient(politology, lang, 0.25).
selective_coefficient(politology, bio, 0.2).
selective_coefficient(politology, phys, 0.2).
selective_coefficient(politology, chem, 0.2).
selective_coefficient(psychology, history, 0.25).
selective_coefficient(psychology, lang, 0.25).
selective_coefficient(psychology, bio, 0.4).
selective_coefficient(psychology, phys, 0.2).
selective_coefficient(psychology, chem, 0.2).
selective_coefficient(journalism, history, 0.25).
selective_coefficient(journalism, lang, 0.35).
selective_coefficient(journalism, bio, 0.2).
selective_coefficient(journalism, phys, 0.2).
selective_coefficient(journalism, chem, 0.2).
selective_coefficient(advertisement_and_public_relations, history, 0.25).
selective_coefficient(advertisement_and_public_relations, lang, 0.35).
selective_coefficient(advertisement_and_public_relations, bio, 0.2).
selective_coefficient(advertisement_and_public_relations, phys, 0.2).
selective_coefficient(advertisement_and_public_relations, chem, 0.2).
selective_coefficient(law, history, 0.4).
selective_coefficient(law, lang, 0.4).
selective_coefficient(law, bio, 0.25).
selective_coefficient(law, phys, 0.25).
selective_coefficient(law, chem, 0.25).
selective_coefficient(social_work, history, 0.25).
selective_coefficient(social_work, lang, 0.25).
selective_coefficient(social_work, bio, 0.25).
selective_coefficient(social_work, phys, 0.25).
selective_coefficient(social_work, chem, 0.25).
selective_coefficient(economics_and_business_regulation, history, 0.25).
selective_coefficient(economics_and_business_regulation, lang, 0.25).
selective_coefficient(economics_and_business_regulation, bio, 0.2).
selective_coefficient(economics_and_business_regulation, phys, 0.2).
selective_coefficient(economics_and_business_regulation, chem, 0.2).
selective_coefficient(accounting_and_taxation, history, 0.25).
selective_coefficient(accounting_and_taxation, lang, 0.25).
selective_coefficient(accounting_and_taxation, bio, 0.2).
selective_coefficient(accounting_and_taxation, phys, 0.2).
selective_coefficient(accounting_and_taxation, chem, 0.2).
selective_coefficient(finance_banking_insurance_and_stock_market, history, 0.25).
selective_coefficient(finance_banking_insurance_and_stock_market, lang, 0.25).
selective_coefficient(finance_banking_insurance_and_stock_market, bio, 0.2).
selective_coefficient(finance_banking_insurance_and_stock_market, phys, 0.2).
selective_coefficient(finance_banking_insurance_and_stock_market, chem, 0.2).
selective_coefficient(management, history, 0.25).
selective_coefficient(management, lang, 0.25).
selective_coefficient(management, bio, 0.2).
selective_coefficient(management, phys, 0.2).
selective_coefficient(management, chem, 0.2).
selective_coefficient(biology_and_biochemistry, history, 0.35).
selective_coefficient(biology_and_biochemistry, lang, 0.3).
selective_coefficient(biology_and_biochemistry, bio, 0.5).
selective_coefficient(biology_and_biochemistry, phys, 0.35).
selective_coefficient(biology_and_biochemistry, chem, 0.35).
selective_coefficient(chemistry, history, 0.35).
selective_coefficient(chemistry, lang, 0.3).
selective_coefficient(chemistry, bio, 0.35).
selective_coefficient(chemistry, phys, 0.35).
selective_coefficient(chemistry, phys, 0.5).
selective_coefficient(pharmaceutical_chemistry, history, 0.35).
selective_coefficient(pharmaceutical_chemistry, lang, 0.3).
selective_coefficient(pharmaceutical_chemistry, bio, 0.35).
selective_coefficient(pharmaceutical_chemistry, phys, 0.35).
selective_coefficient(pharmaceutical_chemistry, chem, 0.5).
selective_coefficient(marine_geology_hydrogeology_and_engineering_geology, history, 0.25).
selective_coefficient(marine_geology_hydrogeology_and_engineering_geology, lang, 0.3).
selective_coefficient(marine_geology_hydrogeology_and_engineering_geology, bio, 0.35).
selective_coefficient(marine_geology_hydrogeology_and_engineering_geology, phys, 0.4).
selective_coefficient(marine_geology_hydrogeology_and_engineering_geology, chem, 0.4).
selective_coefficient(physics_and_astronomy, history, 0.2).
selective_coefficient(physics_and_astronomy, lang, 0.3).
selective_coefficient(physics_and_astronomy, bio, 0.25).
selective_coefficient(physics_and_astronomy, phys, 0.5).
selective_coefficient(physics_and_astronomy, chem, 0.3).
selective_coefficient(mathematics, history, 0.2).
selective_coefficient(mathematics, lang, 0.2).
selective_coefficient(mathematics, bio, 0.2).
selective_coefficient(mathematics, phys, 0.4).
selective_coefficient(mathematics, chem, 0.2).
selective_coefficient(applied_mathematics, history, 0.2).
selective_coefficient(applied_mathematics, lang, 0.3).
selective_coefficient(applied_mathematics, bio, 0.2).
selective_coefficient(applied_mathematics, phys, 0.4).
selective_coefficient(applied_mathematics, chem, 0.4).
selective_coefficient(computer_science, history, 0.2).
selective_coefficient(computer_science, lang, 0.3).
selective_coefficient(computer_science, bio, 0.2).
selective_coefficient(computer_science, phys, 0.4).
selective_coefficient(computer_science, chem, 0.2).
selective_coefficient(information_systems_and_technology, history, 0.2).
selective_coefficient(information_systems_and_technology, lang, 0.3).
selective_coefficient(information_systems_and_technology, bio, 0.2).
selective_coefficient(information_systems_and_technology, phys, 0.4).
selective_coefficient(information_systems_and_technology, chem, 0.2).
selective_coefficient(biotechnology_and_bioengineering, history, 0.3).
selective_coefficient(biotechnology_and_bioengineering, lang, 0.3).
selective_coefficient(biotechnology_and_bioengineering, bio, 0.5).
selective_coefficient(biotechnology_and_bioengineering, phys, 0.5).
selective_coefficient(biotechnology_and_bioengineering, chem, 0.5).
selective_coefficient(automation_computer_integrated_technologies_and_robotics, history, 0.2).
selective_coefficient(automation_computer_integrated_technologies_and_robotics, lang, 0.25).
selective_coefficient(automation_computer_integrated_technologies_and_robotics, bio, 0.2).
selective_coefficient(automation_computer_integrated_technologies_and_robotics, phys, 0.5).
selective_coefficient(automation_computer_integrated_technologies_and_robotics, chem, 0.2).
selective_coefficient(horticulture, history, 0.25).
selective_coefficient(horticulture, lang, 0.35).
selective_coefficient(horticulture, bio, 0.5).
selective_coefficient(horticulture, phys, 0.4).
selective_coefficient(horticulture, chem, 0.4).
selective_coefficient(tourism, history, 0.3).
selective_coefficient(tourism, lang, 0.5).
selective_coefficient(tourism, bio, 0.35).
selective_coefficient(tourism, phys, 0.25).
selective_coefficient(tourism, chem, 0.25).
selective_coefficient(international_relations_public_communications_and_regional_studies, history, 0.3).
selective_coefficient(international_relations_public_communications_and_regional_studies, lang, 0.5).
selective_coefficient(international_relations_public_communications_and_regional_studies, bio, 0.2).
selective_coefficient(international_relations_public_communications_and_regional_studies, phys, 0.2).
selective_coefficient(international_relations_public_communications_and_regional_studies, chem, 0.2).
selective_coefficient(international_economic_relations, history, 0.3).
selective_coefficient(international_economic_relations, lang, 0.5).
selective_coefficient(international_economic_relations, bio, 0.2).
selective_coefficient(international_economic_relations, phys, 0.2).
selective_coefficient(international_economic_relations, chem, 0.2).

% Min. budget scores of 2023
min_budget_score(edu_biology, 157.3).
min_budget_score(edu_geography, 146.7).
min_budget_score(land_use_and_valuation, 155).
min_budget_score(geographical_bases_of_nature_management_and_regional_and_municipal_development, 146.7).
min_budget_score(history, 168.2).
min_budget_score(philosophy, 163.6).
min_budget_score(culturology, 166.4).
min_budget_score(ukrainian, 161.2).
min_budget_score(english, 165.3).
min_budget_score(english_translation, 178.4).
min_budget_score(german, 177.4).
min_budget_score(spanish, 177.0).
min_budget_score(french, 175.7).
min_budget_score(applied_linguistics, 178.8).
min_budget_score(politology, 145.4).
min_budget_score(psychology, 164.3).
min_budget_score(journalism, 181.0).
min_budget_score(advertisement_and_public_relations, 0).
min_budget_score(law, 181.0).
min_budget_score(social_work, 142.3).
min_budget_score(economics_and_business_regulation, 173.5).
min_budget_score(accounting_and_taxation, 170.3).
min_budget_score(finance_banking_insurance_and_stock_market, 171.2).
min_budget_score(management, 146.5).
min_budget_score(biology_and_biochemistry, 133.3).
min_budget_score(chemistry, 134.1).
min_budget_score(pharmaceutical_chemistry, 132.0).
min_budget_score(marine_geology_hydrogeology_and_engineering_geology, 137.2).
min_budget_score(physics_and_astronomy, 143.6).
min_budget_score(mathematics, 144.7).
min_budget_score(applied_mathematics, 157.2).
min_budget_score(computer_science, 195.2).
min_budget_score(politology, 160.8).
min_budget_score(politology, 157.6).
min_budget_score(politology, 153.7).
min_budget_score(horticulture, 142.1).
min_budget_score(tourism, 169.5).
min_budget_score(international_relations_public_communications_and_regional_studies, 167.5).
min_budget_score(international_economic_relations, 187.2).

% Min. contract scores of 2023
min_contract_score(edu_biology, 135.3).
min_contract_score(edu_geography, 138.9).
min_contract_score(land_use_and_valuation, 138.9).
min_contract_score(geographical_bases_of_nature_management_and_regional_and_municipal_development, 141.3).
min_contract_score(history, 138.6).
min_contract_score(philosophy, 148.0).
min_contract_score(culturology, 128.7).
min_contract_score(ukrainian, 146.4).
min_contract_score(english, 122.8).
min_contract_score(english_translation, 150.0).
min_contract_score(german, 144.4).
min_contract_score(spanish, 149.6).
min_contract_score(french, 145.3).
min_contract_score(applied_linguistics, 139.9).
min_contract_score(politology, 116.0).
min_contract_score(psychology, 116.8).
min_contract_score(journalism, 131.6).
min_contract_score(advertisement_and_public_relations, 139.8).
min_contract_score(law, 126.5).
min_contract_score(social_work, 124.7).
min_contract_score(economics_and_business_regulation, 133.5).
min_contract_score(accounting_and_taxation, 146.5).
min_contract_score(finance_banking_insurance_and_stock_market, 134.3).
min_contract_score(management, 127.2).
min_contract_score(biology_and_biochemistry, 147.3).
min_contract_score(chemistry, 120).
min_contract_score(pharmaceutical_chemistry, 120).
min_contract_score(marine_geology_hydrogeology_and_engineering_geology, 120).
min_contract_score(physics_and_astronomy, 136.4).
min_contract_score(mathematics, 120).
min_contract_score(applied_mathematics, 141.7).
min_contract_score(computer_science, 131.0).
min_contract_score(politology, 129.8).
min_contract_score(politology, 143.5).
min_contract_score(politology, 120.0).
min_contract_score(horticulture, 120).
min_contract_score(tourism, 136.2).
min_contract_score(international_relations_public_communications_and_regional_studies, 125.6).
min_contract_score(international_economic_relations, 133.5).


correlate_interest(Interest, Threshold) :-
    interest(Interest, ILevel), ILevel >= Threshold.

correlate_any_interest(I1, I2, I3, I4,  Threshold) :-
    interest(I1, I1Level), I1Level >= Threshold;
    interest(I2, I2Level), I2Level >= Threshold;
    interest(I3, I3Level), I3Level >= Threshold;
    interest(I4, I4Level), I4Level >= Threshold.


field(agriculture) :-
    correlate_interest(food, 3),
    correlate_interest(outdoor, 2),
    correlate_interest(biology, 3).

field(education) :-
    correlate_interest(otb, 2),
    correlate_interest(art, 1),
    correlate_interest(teach, 3),
    correlate_interest(social, 3).

field(engineering) :-
    correlate_interest(math, 3),
    correlate_interest(tech, 3),
    correlate_interest(logic, 2),
    correlate_interest(invent, 3).

field(finance) :-
    correlate_interest(math, 2),
    correlate_interest(stress, 3),
    correlate_interest(social, 2),
    correlate_interest(business, 2).

field(humanities) :-
    correlate_interest(social, 2),
    correlate_interest(nontech, 2),
    correlate_any_interest(languages, history, culture, _, 3).

field(social_sciences) :-
    correlate_interest(art, 2),
    correlate_interest(social, 3),
    correlate_interest(serving, 3).

field(international_relations) :-
    correlate_interest(social, 3),
    correlate_interest(serving, 2),
    correlate_interest(politics, 4),
    correlate_interest(perfection, 2).

field(it) :-
    correlate_interest(otb, 2),
    correlate_interest(tech, 3),
    correlate_interest(comp, 3),
    correlate_interest(logic, 3),
    correlate_interest(invent, 2),
    correlate_interest(stress, 1).

field(mathematics) :-
    correlate_interest(art, 1),
    correlate_interest(otb, 2),
    correlate_interest(math, 4),
    correlate_interest(logic, 3),
    correlate_interest(stress, 2),
    correlate_interest(perfection, 3),
    correlate_any_interest(science, business, _, _, 3).

field(natural_sciences) :-
    correlate_interest(art, 1),
    correlate_interest(otb, 2),
    correlate_interest(science, 3),
    correlate_interest(perfection, 3),
    correlate_any_interest(physics, biology, chemistry, _, 3).

field(service) :-
    correlate_interest(social, 2),
    correlate_interest(serving, 3),
    correlate_interest(business, 3).


%%%%%%%%%%%%%%%%%%%%%%
%% Inference engine %%
%%%%%%%%%%%%%%%%%%%%%%

% Predicate to decide whether an enrolle can choose a specialty
can_apply_spec(Specialty) :-
    % Get the coefficients for mandatory subjects
    mandatory_coefficient(Specialty, Subject1, C1),
    mandatory_coefficient(Specialty, Subject2, C2),
    dif(Subject1, Subject2),
    
    % Get the scores for mandatory subjects
    nmt_mandatory_score(Subject1, Score1),
    nmt_mandatory_score(Subject2, Score2),
    
    % Find the chosen subject with the maximum product of score and coefficient
    findall(Coeff * Score, (
        selective_coefficient(Specialty, ChosenSubject, Coeff),
        nmt_selective_score(ChosenSubject, Score)
    ), ChosenSubjectList),
    
    % Check if there are valid chosen subjects
    ChosenSubjectList \= [],
    
    % Find the chosen subject with the maximum product
    % max_member(*(C3, MaxScore), ChosenSubjectList),
    max_product(ChosenSubjectList, C3, MaxScore),
    
    % Calculate the average mark
    AverageScore is (C1 * Score1 + C2 * Score2 + C3 * MaxScore) / (C1 + C2 + C3) * 1.04,
    assertz(avg_score(AverageScore)),

    (min_budget_score(Specialty, MinBudgetScore), AverageScore > MinBudgetScore;
    min_contract_score(Specialty, MinContractScore), AverageScore > MinContractScore).

% Predicate to find the maximum product in the list
max_product(ProductList, MaxCoeff, MaxScore) :-
    findall(Product, (
        member(Coeff* Score, ProductList),
        product(Coeff, Score, Product)
    ), Products),
    max_member(MaxProduct, Products),
    nth0(Index, Products, MaxProduct),
    nth0(Index, ProductList, MaxCoeff * MaxScore).

% Predicate to calculate the product `coeff * score`
product(Coeff, Score, Product) :-
    Product is Coeff * Score.


% 014.05 Середня освіта (біологія та здоров’я людини)
can_apply(edu_biology) :-
    can_apply_spec(edu_biology),
    field(education).

% 014.07 Середня освіта (Географія)
can_apply(edu_geography) :-
    can_apply_spec(edu_geography),
    field(education).

% 032 Історія та археологія
can_apply(history) :-
    can_apply_spec(history),
    field(humanities).

% 033 Філософія
can_apply(philosophy) :-
    can_apply_spec(philosophy),
    field(humanities).

% 034 Культурологія
can_apply(culturology) :-
    can_apply_spec(culturology),
    field(humanities).

% 035.01 Філологія. Українська мова та література
can_apply(ukrainian) :-
    can_apply_spec(ukrainian),
    field(humanities).

% 035.041 Філологія. перша - англійська
can_apply(english) :-
    can_apply_spec(english),
    field(humanities).

% 035.041 Філологія. Переклад з англійської мови та другої іноземної українською
can_apply(english_translation) :-
    can_apply_spec(english_translation),
    field(humanities).

% 035.043 Філологія. перша - німецька
can_apply(german) :-
    can_apply_spec(german),
    field(humanities).

% 035.051 Філологія. перша - іспанська
can_apply(spanish) :-
    can_apply_spec(spanish),
    field(humanities).

% 035.055 Філологія. перша - французька
can_apply(french) :-
    can_apply_spec(french),
    field(humanities).

% 035.10 Прикладна лінгвістика
can_apply(applied_linguistics) :-
    can_apply_spec(applied_linguistics),
    field(humanities).

% 052 Політологія
can_apply(politology) :-
    can_apply_spec(politology),
    field(social_sciences).

% 053 Психологія
can_apply(psychology) :-
    can_apply_spec(psychology),
    field(social_sciences).

% 061 Журналістика
can_apply(journalism) :-
    can_apply_spec(journalism),
    field(social_sciences).

% 061 Журналістика: Реклама та зв`язки з громадськістю
can_apply(advertisement_and_public_relations) :-
    can_apply_spec(advertisement_and_public_relations),
    field(social_sciences).

% 081 Право
can_apply(law) :-
    can_apply_spec(law),
    field(social_sciences).

% 231 Соціальна робота
can_apply(social_work) :-
    can_apply_spec(social_work),
    field(social_sciences).

% 051 Економіка. Економіка та правове регулювання бізнесу
can_apply(economics_and_business_regulation) :-
    can_apply_spec(economics_and_business_regulation),
    field(finance).

% 071 Облік і оподаткування
can_apply(accounting_and_taxation) :-
    can_apply_spec(accounting_and_taxation),
    field(finance).

% 072 Фінанси, банківська справа, страхування та фондовий ринок
can_apply(finance_banking_insurance_and_stock_market) :-
    can_apply_spec(finance_banking_insurance_and_stock_market),
    field(finance).

% 073 Менеджмент
can_apply(management) :-
    can_apply_spec(management),
    field(finance).

% 091 Біологія та біохімія
can_apply(biology_and_biochemistry) :-
    can_apply_spec(biology_and_biochemistry),
    field(natural_sciences).

% 102 Хімія
can_apply(chemistry) :-
    can_apply_spec(chemistry),
    field(natural_sciences).

% 102 Фармацевтична хімія
can_apply(pharmaceutical_chemistry) :-
    can_apply_spec(pharmaceutical_chemistry),
    field(natural_sciences).

% 103 Науки про Землю. Морська геологія, гідрогеологія та інженерна геологія
can_apply(marine_geology_hydrogeology_and_engineering_geology) :-
    can_apply_spec(marine_geology_hydrogeology_and_engineering_geology),
    field(natural_sciences).

% 104 Фізика та астрономія
can_apply(physics_and_astronomy) :-
    can_apply_spec(physics_and_astronomy),
    field(natural_sciences).

% 106 Географія. Землекористування і оцінка земель
can_apply(land_use_and_valuation) :-
    can_apply_spec(land_use_and_valuation),
    field(natural_sciences).

% 106 Географія. Географічні основи природокористування та регіонального і муніципального розвитку
can_apply(geographical_bases_of_nature_management_and_regional_and_municipal_development) :-
    can_apply_spec(geographical_bases_of_nature_management_and_regional_and_municipal_development),
    field(natural_sciences).

% 111 Математика
can_apply(mathematics) :-
    can_apply_spec(mathematics),
    field(mathematics).

% 113 Прикладна математика
can_apply(applied_mathematics) :-
    can_apply_spec(applied_mathematics),
    field(mathematics).

% 122 Комп’ютерні науки
can_apply(computer_science) :-
    can_apply_spec(computer_science),
    field(it).

% 123 Комп’ютерна інженерія
can_apply(computer_engineering) :-
    can_apply_spec(computer_engineering),
    field(it).

% 126 Інформаційні системи та технології
can_apply(information_systems_and_technology) :-
    can_apply_spec(information_systems_and_technology),
    field(it).

% 162 Біотехнології та біоінженерія
can_apply(biotechnology_and_bioengineering) :-
    can_apply_spec(biotechnology_and_bioengineering),
    field(engineering).

% 174 Автоматизація, комп’ютерно-інтегровані технології та робототехніка
can_apply(automation_computer_integrated_technologies_and_robotics) :-
    can_apply_spec(automation_computer_integrated_technologies_and_robotics),
    field(engineering).

% 206 Садово-паркове господарство
can_apply(horticulture) :-
    can_apply_spec(horticulture),
    field(agriculture).

% 242 Туризм
can_apply(tourism) :-
    can_apply_spec(tourism),
    field(service).

% 291 Міжнародні відносини, суспільні комунікації та регіональні студії
can_apply(international_relations_public_communications_and_regional_studies) :-
    can_apply_spec(international_relations_public_communications_and_regional_studies),
    field(international_relations).

% 292 Міжнародні економічні відносини
can_apply(international_economic_relations) :-
    can_apply_spec(international_economic_relations),
    field(international_relations).

%%%%%%%%%%%%%%%%%%%%%%%%
%% Explanation module %%
%%%%%%%%%%%%%%%%%%%%%%%%

info_spec(
    edu_biology,
    "014.05 «Середня освіта. Біологія та здоров’я людини»",
    "«014 Середня освіта» ОП Середня освіта (Біологія та здоров’я людини) – має прикладну орієнтацію в галузі шкільної біологічної освіти. Це сучасні наукові знання біології, валеології, педагогіки, методики навчання біології та основ здоров’я. Передбачає підготовку до функціональних обов’язків учителів біології та основ здоров’я, класних керівників у закладах загальної середньої освіти, організаторів гуртків біологічного та валеологічного спрямування в закладах додаткової освіти, викладача професійно-технічного навчального закладу нижчого ступеня."
).

info_spec(
    edu_geography,
    "014.07 «Середня освіта. Географія»",
    "014.07 Середня освіта (Географія) - підготовка висококваліфікованих, конкурентоспроможних учителів географії, які отримали базові та фундаментальні знання й уміння інноваційного предметно-професійного характеру, можуть їх застосовувати та продукувати нові знання для вирішення професійних завдань в закладах загальної середньої освіти нового типу. Формування загальних та професійних компетентностей, що забезпечують вільний доступ до працевлаштування та здобуття наступного рівня вищої освіти. Особливостями ОП 014.07 Середня освіта (Географія) є органічне поєднання в освітньому процесі предметної (ґрунтовні теоретичні знання та експериментальні уміння з географії), психолого-педагогічної (володіння інноваційними технологіями навчання географії) підготовки; поєднання теоретичного навчання з практичною спрямованістю підготовки фахівців. Студенти здобувають навички застосовувати основні принципи та методи географічних досліджень відповідно до основних концепцій та парадигм в географії, спроможність аналізувати особливості сучасного соціально- економічного розвитку країн і регіонів світу, застосовувати основні концепції, закони і загальні проблеми природокористування, спроможність моделювати, організовувати та контролювати процес навчання географії в школі, організовувати краєзнавчо-туристичну та природознавчо-екологічну роботу в ЗО."
).


info_spec(
    history,
	"032 «Історія та археологія»",
    "Спеціальність 032 «Історія та археологія» представлена бакалаврським, магістерським та докторським рівнями вищої освіти та сфокусована на підготовці фахівців, всебічно обізнаних в минулому людства, України та інших країн в усіх його проявах. Це комплекс сучасних навичок роботи з археологічними й етнографічними колекціями, архівними джерелами, унікальними стародруками та музейними колекціями, інтегровані знання про процеси формування та функціонування матеріальної й нематеріальної культурної спадщини, артикуляції ідентичності та утворення засад міжкультурної комунікації, це досвід польових практик з археології, етнології та музеєзнавства та навички викладацької роботи, опанування базових принципів наукових досліджень з історії та археології."
).

info_spec(
    philosophy,
    "033 «Філософія»",
    "033 «Філософія» - це сучасна підготовка висококваліфікованих та конкурентоспроможних фахівців, здатних розв’язувати складні спеціалізовані задачі та практичні проблеми у сфері філософії та гуманітаристики, що характеризуються комплексністю та невизначеністю умов і передбачають системне опанування основ філософії, обізнаність в існуючих філософських традиціях, ученнях, методологіях, застосування теорій і методів філософії; здатних розв’язувати комплексні проблеми в галузі професійної та дослідницько-інноваційної діяльності у сфері філософії, що передбачає глибоке переосмислення наявних та створення нових цілісних знань з філософії та професійної практики. Випускники ОНУ імені І. І. Мечникова за спеціальністю 033 «Філософія» можуть працювати у науковій, організаційно-управлінській та освітній галузях; в органах державної влади та місцевого самоврядування; в аналітично-інформаційних інституціях; у друкованих та електронних засобах масової інформації, PR-технологіях; у соціальних та культурних закладах, громадських організаціях, партіях тощо."
).

info_spec(
    culturology,
    "034 «Культурологія»",
    "Випускники ОНУ імені І. І. Мечникова за спеціальністю 034 «Культурологія» отримують різнобічну підготовку фахівців у сфері культурології, що дозволяє їм бути готовими до подальшого саморозвитку та професійного зростання впродовж життя. Завдяки сформованим компетентностям вони мають можливість працювати фахівцями в галузі освіти, в сфері культури та мистецтва (зокрема, організаторами подорожей, концертів, лекцій, театралізованих вистав), ведучими та журналістами радіо- й телекомпаній, фахівцями із конференц-сервісу, керівниками творчих аматорських колективів."
).

info_spec(
    ukrainian,
    "035 «Філологія», ОП 035.01 «Українська мова та література»",
    "035 Філологія ОП 035.01 Українська мова та література (бакалавр, магістр) – це сучасні комплексні знання з українського мовознавства і літературознавства, історії й теорії української мови та історії української літератури, ґрунтовна підготовка з іноземних і слов’янських мов та зарубіжної літератури, навчання новітніх підходів і методів дослідження мови і літератури, семіотики та філософії, літературного процесу та актуальних лінгвістичних напрямів. Основну увагу приділено новітнім проблемам сучасної філологічної науки – когнітивній лінгвістиці, соціолінгвістиці, комунікативній лінгвістиці та лінгвопрагматиці, літературній компаративістиці, письменницькій есеїстиці. За вибором студентів здійснюється поглиблене вивчення іноземних мов. Здобувачі беруть участь у науковій і громадській роботі, друкувати свої художні твори у збірках поезії та прози, вести активну літературну діяльність. Випускники реалізують можливість працювати філологами, викладачами української мови та літератури, зарубіжної літератури в середніх закладах освіти та ЗВО, перекладачами і редакторами. Фундаментальна філологічна підготовка є базовою для подальшої письменницької, журналістської і редакторської діяльності виупскників."
).

info_spec(
    english,
    "035 «Філологія», ОП 035.041 «Германські мови та літератури (переклад включно), перша – англійська»",
    "Освітньо-професійна програма «035.041 Германські мови та літератури (переклад включно), перша – англійська» першого (бакалаврського) рівня вищої освіти – це забезпечення якісної підготовки фахівців, в галузі лінгвістики, літературознавства, перекладу, викладання мов. Програма базується на сучасних наукових знаннях теоретичної і прикладної лінгвістики, літературознавства, перекладознавства, педагогіки, психології, проблем впровадження інноваційних методів, інформаційно-комунікаційних технологій навчання англійської та другої іноземної мов. Це гармонійне поєднання традицій класичної вищої гуманітарної філологічної освіти і освіти прикладної, орієнтованої на формування конкурентоспроможного фахівця, який володіє високим ступенем адаптивності до умов сучасного ринку праці. Випускники ОНУ імені І. І. Мечникова за спеціальністю «035.041 Германські мови та літератури (переклад включно), перша – англійська» можуть працювати викладачами в університетах, гімназіях, ліцеях, коледжах, державних та приватних школах, перекладачами, туристичними гідами, науковцями у науково-дослідних центрах, менеджерами державних та приватних устанок, журналістами у ЗМІ та ін., а також продовжувати освіту в зарубіжних університетах."
).

info_spec(
    english_translation,
    "035 «Філологія», ОП 035.041 «Переклад з англійської мови та другої іноземної українською»",
    "Освітньо-професійна програма «035.041 Переклад з англійської мови та другої іноземної українською» першого (бакалаврського) рівня вищої освіти – це забезпечення якісної підготовки фахівців, в галузі лінгвістики, літературознавства, перекладу, викладання мов. Програма базується на сучасних наукових знаннях теоретичної і прикладної лінгвістики, літературознавства, перекладознавства, педагогіки, психології, проблем впровадження інноваційних методів, інформаційно-комунікаційних технологій навчання англійської та другої іноземної мов. Це гармонійне поєднання традицій класичної вищої гуманітарної філологічної освіти і освіти прикладної, орієнтованої на формування конкурентоспроможного фахівця, який володіє високим ступенем адаптивності до умов сучасного ринку праці. Випускники ОНУ імені І. І. Мечникова за спеціальністю «035.041 Переклад з англійської мови та другої іноземної українською » можуть працювати викладачами в університетах, гімназіях, ліцеях, коледжах, державних та приватних школах, перекладачами, туристичними гідами, науковцями у науково-дослідних центрах, менеджерами державних та приватних устанок, журналістами у ЗМІ та ін., а також продовжувати освіту в зарубіжних університетах."
).

info_spec(
    german,
    "035 «Філологія», ОП 035.043 «Філологія. перша - німецька»",
    "Спеціальність «035.043 Філологія. перша - німецька» передбачає глибоке вивчення німецької мови, літератури та культури. Студенти отримують широкі знання про мовні структури, історію німецької літератури, а також вивчають соціокультурний контекст німецькомовних країн. Програма включає в себе практичні заняття з перекладу, вивчення мовних навичок та роботу з оригінальними текстами. Випускники отримують не лише професійні навички в галузі філології, але й здатність аналізувати та розуміти культурні особливості німецькомовного середовища, що дозволяє їм працювати в різних сферах, таких як освіта, медіа, переклад та міжнародні відносини."
).

info_spec(
    spanish,
    "035 «Філологія», ОП 035.051 «Філологія. перша - іспанська»",
    "Спеціальність «035.051 Філологія. перша - іспанська» зосереджена на вивченні іспанської мови та літератури з глибоким аналізом їхньої структури, еволюції та культурного контексту. Студенти цієї спеціальності отримують високий рівень володіння іспанською мовою, розвивають навички перекладу, літературознавства та культурології, досліджують творчість іспаномовних авторів. Програма також передбачає практичний досвід у викладанні іспанської мови та літератури, що підготовлює студентів до роботи у сферах освіти, міжнародних відносин, перекладу та журналістики."
).

info_spec(
    french,
    "035 «Філологія», ОП 035.055 «Філологія. перша - французька»",
    "Спеціальність «035.055 Філологія. перша - французька» націлена на глибоке вивчення французької мови, літератури та культури. Студенти цього напряму здобувають теоретичні знання у сфері мовознавства, літературознавства, історії та філософії, спрямовані на розуміння особливостей французької мови як засобу комунікації та вивчення французької літератури в контексті її історії. Випускники цієї спеціальності можуть працювати як вчителі французької мови, перекладачі, літературні критики, а також у сферах міжнародних відносин, журналістики та культурного менеджменту, де важливе знання французької мови та культурної спадщини."
).

info_spec(
    applied_linguistics,
    "035 «Філологія», ОП 035.10 «Прикладна лінгвістика»",
    "035 Філологія ОП 035.10 Прикладна лінгвістика – це сучасні комплексні знання з українського мовознавства і літературознавства, історії й теорії української мови та історії української літератури, ґрунтовна підготовка з іноземних і слов’янських мов та зарубіжної літератури, навчання новітніх підходів і методів дослідження мови і літератури, семіотики та філософії, літературного процесу та актуальних лінгвістичних напрямів. Основну увагу приділено новітнім проблемам сучасної філологічної науки – когнітивній лінгвістиці, соціолінгвістиці, комунікативній лінгвістиці та лінгвопрагматиці, літературній компаративістиці, письменницькій есеїстиці. За вибором студентів здійснюється поглиблене вивчення іноземних мов. Здобувачі беруть участь у науковій і громадській роботі, друкувати свої художні твори у збірках поезії та прози, вести активну літературну діяльність."
).

info_spec(
    politology,
    "052 «Політологія»",
    "052 Політологія - це спеціальність підготовки бакалаврів в системі навчальних, науково-дослідних та практичних заходів, спрямованих на пізнання, засвоєння та практичне використання основних законів та закономірностей суспільно-політичного розвитку. В полі зору бакалаврів-політологів — діяльність політичних інститутів, розгортання політичних процесів, функціювання органів державної влади та місцевого самоврядування."
).

info_spec(
    psychology,
    "053 «Психологія»",
    "ОП зі спеціальності 053 «Психологія» містить: загальні та спеціальні компетентності; програмні результати навчання; тісний зв’язок теорії та практики, обсяг та термін навчання бакалаврів. Це здатність оперувати категоріально-понятійним апаратом психології; розуміти природу психічних явищ, поведінки; навички міжособистісної взаємодії, здатність проводити психологічне дослідження, аналізувати одержані результати, формулювати висновки, надавати рекомендації, здійснювати психологічну допомогу, психопрофілактичну діяльність, дотримуватись норм професійної етики, конкурентоспроможність. Випускники можуть здійснювати науково-дослідні роботи, психологічну діагностику, структурний аналіз особистості, надавати психологічну допомогу та консультативні послуги, працювати у психологічних службах; реабілітаційних центрах, в закладах освіти, органах внутрішніх справ, підприємствах всіх форм власності, відділах управління персоналом, органах влади, громадських і політичних організаціях."
).

info_spec(
    journalism,
    "061 «Журналістика», ОП «Журналістика»",
    "061 «Журналістика» ОП «Журналістика» − це сучасна практико-орієнтована підготовка у сфері медіа та масових і соціальних комунікацій; знання та навички щодо пресової журналістики, блогінгу, реклами, зв’язків із громадськістю, копірайтингу, колумністики, медіапосередництва, нових медіа та мультимедійних форматів, інфотейнменту забезпечать здобувачів конкурентними перевагами на інформаційному ринку; широка база практик факультету журналістики, реклами та видавничої справи допоможе обрати омріяну галузь творчої діяльності. Здобувай найпрестижнішу професію інформаційного суспільства разом з нами!"
).

info_spec(
    advertisement_and_public_relations,
    "061 «Журналістика», ОП «Реклама та зв`язки з громадськістю»",
    "061 «Журналістика» ОП «Реклама та зв`язки з громадськістю» − це сучасна практико-орієнтована підготовка у сфері медіа та масових і соціальних комунікацій; знання та навички щодо пресової журналістики, блогінгу, реклами, зв’язків із громадськістю, копірайтингу, колумністики, медіапосередництва, нових медіа та мультимедійних форматів, інфотейнменту забезпечать здобувачів конкурентними перевагами на інформаційному ринку; широка база практик факультету журналістики, реклами та видавничої справи допоможе обрати омріяну галузь творчої діяльності. Здобувай найпрестижнішу професію інформаційного суспільства разом з нами!"
).

info_spec(
    law,
    "081 «Право»",
    "081 «Право» – це сучасні інтегровані знання про державу та право, правові системи світу, юридичні категорії та конструкції, особливості регулювання відносин у приватно-правовій та публічно-правовій сферах, різноманітних галузях правового життя. Це: формування світогляду сучасного юриста; здатність до критичного та системного аналізу правових явищ і застосування набутих знань у професійній діяльності; набуття спеціальних навичок та вмінь щодо юридичного забезпечення та захисту прав учасників різноманітних правовідносин, що виникають як в Україні, так і поза її межами; здатність займати посади в органах державної виконавчої та судової влади, місцевого самоврядування, в юридичних службах підприємств, установ, організацій тощо."
).

info_spec(
    social_work,
    "231 «Соціальна робота»",
    "Спеціальність 231 «Соціальна робота» - це унікальний вид професійної діяльності спрямований на створення соціальних умов для поліпшення якості життя та підвищення добробуту окремої особистості, певної групи, громади та населення в цілому. Професійна діяльність фахівців спрямована на захист та соціальну підтримку клієнтів у вразливому стані та при складних життєвих обставинах, допомогу у вирішенні особистісних і соціальних проблем, на соціальні перетворення у суспільстві шляхом реалізації різноманітних проектів та впровадження соціальних інновацій. Фахівці соціальної роботи є агентами змін як у суспільстві, так і у житті окремих людей, сімей та громад, є регуляторами взаємовідносин особистості з державою та іншими інститутами. Це дозволяє нашим випускникам бути конкурентноздатними на сучасному ринку праці, адже сфера соціальної роботи є надзвичайно розгалуженою і постійно трансформується відповідно до нових викликів держави та суспільства."
).

info_spec(
    economics_and_business_regulation,
    "051 «Економіка», ОП «Економіка та правове регулювання бізнесу»",
    "051 «Економіка» ОП «Економіка та правове регулювання бізнесу» – сучасні інтегровані знання в галузі економіки, бізнесу, права; інноваційні методи навчання, тісний зв’язок теорії та практики; знання і компетенції за світовими стандартами, «навчання через усе життя»! Це критичне аналітичне мислення, креативний підхід, ефективні навички і компетентності успішного розвитку бізнесу та підприємництва в національному та міжнародному правовому середовищі, бізнес-аналізу та бізнес-статистики, бізнес-діагностики та бізнес-планування, консалтингу та економічної політики, прогнозування економічних процесів і моделювання стратегій розвитку, забезпечення конкурентоспроможності та управління ризиками на внутрішньому та глобальному ринках на принципах нової економіки – інноваційнійсть, розвиток людського капіталу, віртуалізація, цифровізація, клієнтоорієнтованість, відповідальність!"
).

info_spec(
    accounting_and_taxation,
    "071 «Облік і оподаткування», ОП «Облік і оподаткування»",
    "071 «Облік і оподаткування» ОП «Облік і оподаткування» – це підготовка сучасних кваліфікованих фахівців у галузі управління та адміністрування; професіоналів для фінансових, митних, фіскальних, казначейських, аудиторських державних служб (податковий інспектор, інспектор митної служби, агент з митного оформлення вантажів та товарів, державний аудитор, економічний радник, податковий консультант); унікальних спеціалістів, які поєднують знання з обліку, аналізу і оподаткування та юриспруденції (кваліфіковані бухгалтери, аудитори, ревізори, організатори діловодства в державних та приватних підприємствах, в т.ч. міжнародних організаціях, помічники керівників). Спеціалісти в галузі обліку, митної справи, аудиту, аналізу та оподаткування – це незамінні фахівці в сучасному світі, «права рука» керівників та власників бізнесу; професіонали, що здатні надавати своєчасну, повну і достовірну інформацію для прийняття управлінських рішень, якій повністю довіряють власники та інвестори бізнесу."
).

info_spec(
    finance_banking_insurance_and_stock_market,
    "072 «Фінанси, банківська справа, страхування та фондовий ринок»",
    "072 «Фінанси, банківська справа, страхування та фондовий ринок» – це престижна професія та водночас мистецтво майстерного управління фінансовими ресурсами. Це володіння особливим вмінням бачити цифрами складний і гармонійний світ економіки. Це високий рівень затребуваності на ринку праці та широкі можливості досягнення успіху в сфері фінансового і банківського контролю за обігом грошових коштів, забезпечення фінансової стабільності підприємства, аналізу стану фінансової і господарської діяльності підприємства, визначенні напрямів витрачання коштів, організації поточного фінансування та формування резервів, здійсненні взаємодії з різними структурами фінансового ринку щодо всіх аспектів фінансової, кредитної, облікової, інвестиційної та фіскальної діяльності."
).

info_spec(
    management,
	"073 «Менеджмент»",
    "073 «Менеджмент» – це: визначення ключових показників результативності та ефективності управління проектами та процесами, побудова бізнес-архітектури підприємства, організація і логістика, управління бізнес-процесами, управління маркетингом, створення команд та об’єднання талантів; інноваційні методи навчання та занурення у віртуальну та доповнену реальність в міжнародних проектах, присвячених четвертій промисловій революції у спеціалізованій аудиторії «Віртуальна навчальна фабрика Industry 4.0»; оволодіння необхідними для управлінської діяльності фундаментальними знаннями з теорії і практики управління, практичне закріплення та реалізація отриманого професійного потенціалу на підприємствах, установах, організаціях; аналітичні здібності, системне мислення, блискавична реакція, лідерські здібності, організаторські навички – компетенції сучасного менеджера!"
).

info_spec(
    biology_and_biochemistry,
    "091 «Біологія», ОП «Біологія та біохімія»",
    "«091 Біологія» ОП Біологія та біохімія – має академічну орієнтацію в області біології. Це сучасні наукові знання загальної і прикладної біології, проблем збереження здоров’я, охорони довкілля, раціонального використання природних ресурсів, традиційні та інноваційні підходи до їх вирішення. Це підготовка висококваліфікованих та конкурентоспроможних фахівців, які здатні вирішувати складні спеціалізовані задачі та практичні проблеми у різних галузях біології; здійснювати наукову, науково-практичну діяльність на підприємствах та установах біологічного, медичного, екологічного, біотехнологічного профілю різної форми власності та підпорядкування."
).

info_spec(
    chemistry,
	"102 «Хімія», ОП «Хімія»",
    "102 Хімія, освітня програма «Хімія» формує фундаментальні знання й уміння інноваційного характеру в галузі хімії, гармонійно поєднує теоретичну та практичну підготовку та має наукову складову. Випускники програми зможуть здійснювати синтез та ідентифікацію; визначати склад, будову та властивості речовин, застосовувати та продукувати нові знання для вирішення професійних завдань в хімічних, хіміко-аналітичних , хіміко-фармацевтичних лабораторіях промислового комплексу та науково-дослідних лабораторіях. У студентів-хіміків є широкі можливості брати участь у програмах академічної мобільності."
).

info_spec(
    pharmaceutical_chemistry,
    "102 «Хімія», ОП «Фармацевтична хімія»",
    "102 Хімія, освітня програма «Фармацевтична хімія» формує фундаментальні знання й уміння інноваційного характеру в галузі хімії, гармонійно поєднує теоретичну та практичну підготовку та має наукову складову. Випускники програми зможуть здійснювати синтез та ідентифікацію; визначати склад, будову та властивості речовин, застосовувати та продукувати нові знання для вирішення професійних завдань в хімічних, хіміко-аналітичних , хіміко-фармацевтичних лабораторіях промислового комплексу та науково-дослідних лабораторіях. У студентів-хіміків є широкі можливості брати участь у програмах академічної мобільності."
).

info_spec(
    marine_geology_hydrogeology_and_engineering_geology,
    "103 «Науки про Землю», ОП «Морська геологія, гідрогеологія та інженерна геологія»",
    "Вперше в Україні в ОНУ імені І.І. Мечникова в рамках спеціальності 103 «Науки про Землю» розроблена освітня програма підготовки бакалаврів «Морська геологія, гідрогеологія та інженерна геологія», яка стартує з наступного навчального року. Ця програма є унікальною для України,оскільки системно поєднує підготовку морських геологів – фахівців з геології і корисних копалин дна морів і океанів, гідрогеологів – фахівців з пошуків,розвідки та оцінки запасів підземних вод, та інженер-геологів – фахівців з дослідження гірських порід і масивів ґрунтів з метою забезпеченнябезпечного будівництва всіх видів інженерних споруд, вивчення небезпечних геологічних процесів та оцінки стану геологічного середовища.Отримання фундаментальних знань з морської геології дасть можливість працювати у виробничій сфері, брати участь у науково-дослідницьких експедиціях по вивченню дна морів та океанів, оцінці їх екологічного стану, пошуку корисних копалин.Області застосування знань фахівців-гідрогеологів невичерпні: це морське дно, яке практично не вивчене; глибини надр, що містять підземніводи; меліорація земель, задоволення насущних і постійно зростаючих потреб народного господарства і населення у якісній воді.Інженер-геолог займається інженерно-геологічними дослідженнями в будівництві, при реконструкції будівель і споруд і відповідає за стійкістьбудівель і масивів порід. В даний час, коли інтенсивно освоюються території суходолу, акваторії морів і узбережжя ця професія користується підвищеним попитом. Професія геолога, гідрогеолога, інженер-геолога, яку отримують студенти в рамках освітньої програми «Морська геологія, гідрогеологія таінженерна геологія» на відміну від багатьох інших професій не має кордонів. Наші геологи успішно працюють в різних країнах світу. Ще один з плюсівпрофесії геолога – часті подорожі: в експедиціях геологи відвідують безліч куточків нашої неосяжної планети."
).

info_spec(
    physics_and_astronomy,
    "104 «Фізика та астрономія»",
    "104 – «Фізика та астрономія» – міцна та широка система базових знань з експериментальної та теоретичної фізики, астрономії та їх можливі застосування у виробництві, а також фундаментальних і прикладних досліджень в області астрономії. Завдяки досягненням сучасної фізики людство не має тяжкої фізичної праці, а зараз позбувається вже і від малопродуктивних видів розумової діяльності. Надзвичайно важливою є роль фізики у розв’язанні таких глобальних проблем як охорона здоров’я, енергозабезпечення, охорона навколишнього середовища. Астрономія, в свою чергу, дозволяє вивчати фізичні процеси, які неможливо відтворити на Землі, передбачати наслідки впливу космічних явищ на життя людства. Саме тому провідні країни світу приділяють особливу увагу роботам в галузі фізики та астрономії. Випускники працюють у якості фахівців, наукових співробітників в науково – дослідних лабораторіях, обсерваторіях і закладах освіти."
).

info_spec(
    land_use_and_valuation,
    "106 «Географія», ОП «Землекористування і оцінка земель»",
    "Підготовка висококваліфікованих, конкурентоспроможних фахівців за спеціальністю 106 Географія за освітньою програмою «Землекористування і оцінка земель», які отримають необхідні знання й уміння інноваційного предметно-професійного характеру та зможуть їх застосовувати на практиці - це мета нашої програми підготовки, яка базується на понад як пятидесятирічному досвіді існування кафедри в університеті. Програма підготовки майбутніх випускників передбачає застосування сучасних географічних теорій і методів, формування загальних і професійних компетентностей, необхідних для розв’язування ґрунтознавчо-географічних і земельно-оціночних задач, що забезпечить вільний доступ до працевлаштування та здобуття наступного рівня вищої освіти. Випускники за цією ОПП можуть займати первинні посади: ґрунтознавець; фахівець із агрохімії і ґрунтознавства; географ-ґрунтознавець; фахівець землекористування і оцінки земель; громадський інспектор з використання та охорони земель та ін. Обирай головою і серцем!"
).

info_spec(
    geographical_bases_of_nature_management_and_regional_and_municipal_development,
    "106 «Географія», ОП «Географічні основи природокористування та регіонального і муніципального розвитку»",
    "106 Географія; ОП Географічні основи природокористування та регіонального і муніципального розвитку - комплексні знання  сучасних умов регіональної політики розвитку територій, які  базуються на розумінні внутрішнього потенціалу і тенденцій територіального розвитку, формуванні місцевих конкурентних переваг, інтелектуальних можливостей території, що зумовлює нові підходи до вирішення місцевих  екологічних, соціальних та економічних питань, удосконалення управління суспільно-економічними процесами в регіоні. Студенти  здобувають навички аналізу, прогнозування та управління регіональним розвитком, включаючи оцінку природно-ресурсного та рекреаційно-туристичного потенціалу території, демографічної ситуації та ринку праці, рівня економічної, соціальної та природно-техногенної безпеки, якості життя населення,  раціоналізації управління природокористуванням в приморських смугах. Випускники працюють у різноманітних структурах державного, регіонального та міського управління, аналітичних центрах, у науково-дослідних та проектних державних і приватних установах, підприємствах сфери бізнесу."
).

info_spec(
    mathematics,
	"111 «Математика»",
    "Спеціальність 111 «Математика» — це підготовка спеціалістів з математичним складом мислення, аналітичними здібностями, «любов’ю до цифр», здатнiстю думати абстрактно й нестандартно. Професія аналітика (operations analyst, data scientist, data engineer, machine learning engineer) є однією з найбільш потрібних та перспективних професій сучасності. Навчальний план включає фундаментальні математичні дисципліни, програмування та інформаційні технології в аналітиці (Python, SQL, Excel, R), дисципліни економічного спрямування, а також курси спецiалiзацiї Data Science. Пiд час навчання студенти мають можливість проходити навчальну та виробничу практику у фінансових установах, банках, IT-компаніях. За вибором студенти можуть прослухати дисципліни педагогічного спрямування та пройти педагогічну практику."
).

info_spec(
    applied_mathematics,
	"113 «Прикладна математика»",
    "Спеціальність 113 «Прикладна математика» — це застосування математичних методів та алгоритмів у найрізноманітніших сферах життєдіяльності людини. Побудова адекватної математичної моделi системи, вибір раціонального алгоритму її розв’язання, комп’ютерна реалiзацiя моделi — задачi вельми не простi, якi вимагають не тільки знання та розуміння сучасних технологiй, але й глибоких математичних знань, вміння мислити абстрактно та нестандартно. Випускники цієї спеціальності успішно працюють у провідних ІТ-компаніях України та світу як розробники та архітектори програмного забезпечення (software developer, software architect), QA-інженери, а також як інженери з аналізу даних та машинного навчання (data scientist, machine learning engineer, computer vision engineer)."
).

info_spec(
    computer_science,
	"122 «Комп’ютерні науки»",
    "Випускники спеціальності 122 «Комп’ютерні науки» отримують глибоку математичну підготовку, яка є базою для ефективного розв’язання завдань як програмування, моделювання чи проектування інформаційних систем, так і аналізу чи обробки інформації, машинного навчання тощо. Вони здатні вести за допомогою комп’ютерних технологій і математичних методів проектно-прикладну діяльність по створенню інформаційних, інформаційно-обчислювальних, аналітичних систем, систем штучного інтелекту та машинного навчання, розробці програмного забезпечення для розв’язання актуальних інформаційних і управлінських задач у різних сферах діяльності зі створенням та (або) використанням комп’ютерних систем (програмно апаратних комплексів) підтримки прийняття рішень."
).

info_spec(
    computer_engineering,
	"123 «Комп’ютерна інженерія»",
    "Спеціальність 123 «Комп’ютерна інженерія» орієнтована на набуття і розвиток знань, умінь та компетенцій в галузі створення апаратних і програмних систем обробки та перетворення інформації універсального та спеціалізованого призначення; створення та використання програмного забезпечення для розробки та експлуатації комп’ютерних систем та мереж; методів опрацювання інформації, математичних моделей обчислювальних процесів, технологій реалізації, безпечних, автономних, адаптивних, інтелектуальних, розумних систем, мереж та сервісів. Випускники отримують необхідну як технічну, так і математичну підготовку, яка дозволить виконувати математичне, інформаційне та імітаційне моделювання систем і процесів, застосовувати технології віртуалізації в комп’ютерних системах, мережні інформаційні технології, створювати та досліджувати розподілені технічні системи, використовувати технології інтернету речей, криптографічні протоколи."
).

info_spec(
    information_systems_and_technology,
	"126 «Інформаційні системи та технології»",
    "Випускники спеціальності 126 «Інформаційні системи та технології» це фахівці, які здатні вести за допомогою комп’ютерних технологій і математичних методів проектно-прикладну діяльність по створенню інформаційних, інформаційно-обчислювальних, аналітичних систем, систем штучного інтелекту та машинного навчання, розробці програмного забезпечення для розв’язання актуальних інформаційних і управлінських задач у різних сферах діяльності. Студенти забезпечуються потужною математичною та IT-підготовкою шляхом вивчення і здобуття навичок практичного застосування методів та процесів збору, зберігання, обробки, передачі, аналізу і оцінки інформації із застосуванням комп’ютерних технологій, що забезпечують можливість її використання для прийняття рішень."
).

info_spec(
    biotechnology_and_bioengineering,
	"162 «Біотехнології та біоінженерія»",
    "162 «Біотехнології та біоінженерія» ОП Біотехнології та біоінженерія – має наукову, теоретичну, професійну, прикладну складові. Спеціальність орієнтована на загальнонаукові уявлення про сучасні дослідження у галузі біотехнології з урахуванням специфіки роботи науково-дослідних установ, біотехнологічних підприємств та компаній. Здійснює підготовку фахівців, які зможуть на високому професійному рівні використовувати живі об’єкти для отримання препаратів і продуктів методами біологічного синтезу та/або біотрансформації для потреб медицини, ветеринарії, агропромислового комплексу, харчової промисловості, екології, енергетики, легкої промисловості. Фахівець з біотехнології може працювати на підприємствах та виробництвах, які пов’язані з використанням біологічних агентів та продуктів їх життєдіяльності; в науково-дослідних інститутах хімічного, медичного, біологічного, сільськогосподарського профілю."
).

info_spec(
    automation_computer_integrated_technologies_and_robotics,
	"174 «Автоматизація, комп’ютерно-інтегровані технології та робототехніка»",
    "Спеціальність «174 Автоматизація, комп’ютерно-інтегровані технології та робототехніка» орієнтована на поглиблене вивчення сучасних методів автоматизації виробничих та технологічних процесів, комп'ютерно-інтегрованих систем та робототехніки. Студенти цієї спеціальності отримують знання у сфері програмування контролерів, проектування та експлуатації автоматизованих систем, а також основи робототехніки. Вони вивчають сучасні технології, пов'язані з впровадженням інтелектуальних систем у виробництво, що дозволяє їм працювати в різних галузях, включаючи виробництво, транспорт, медицину та інші галузі, де важлива автоматизація та використання сучасних технологій."
).

info_spec(
    horticulture,
	"206 «Садово-паркове господарство»",
    "«206 Садово-паркове господарство» ОП Садово-паркове господарство – має прикладну орієнтацію в області садово-паркового господарства. Це сучасні наукові знання про технологічні процеси вирощування декоративних рослин, ландшафтного проектування, створення та експлуатації об’єктів садово-паркового господарства з урахуванням сучасних біоценотичних процесів. Придатність до працевлаштування: фахівці в галузі біології та агрономії; молодші фахівці в агрономії, лісових господарствах та в природно-заповідній справі; консультанти в сільському, лісовому, водному господарствах та в природно-заповідній справі."
).

info_spec(
    tourism,
	"242 «Туризм»",
    "242 Туризм ОП Туризм дозволяє студентам здобути загальні і професійні компетентності, необхідні для проведення самостійних наукових і виробничих досліджень з теорії і методології туризмознавства, менеджменту туристичної діяльності, маркетингу туристичних послуг, нормативно-правового забезпечення туристичної діяльності, територіальної організації сфери послуг, організації та географії релігійного туризму, рекреалогії та рекреаційної географії, географії туризму України, організації активного туризму, індустрії гостинності, історико-культурного туризму. Студенти отримують такі важливі якості, як комунікабельність, вміння творчо та нестандартно приймати рішення. Доречними стануть стійкість до стресу та працьовитість. Адже з туристами можуть статися різні непередбачувані ситуації, починаючи від урагану на узбережжі моря і закінчуючи відміною рейсу. Туризм має свої переваги, такі як можливість подорожувати та бувати у різних країнах, великі доходи, які мають сезонний характер. Але, незважаючи на сезонність, туризм вважається однією з найперспективніших та найбільш прибуткових галузей. Зазвичай у туризмі працюють фанати своєї справи, які не проміняють цю справу більше ні на що."
).

info_spec(
    international_relations_public_communications_and_regional_studies,
	"291 «Міжнародні відносини, суспільні комунікації та регіональні студії»",
    "Випускники ОНУ імені І. І. Мечникова за спеціальністю 291 «Міжнародні відносини, суспільні комунікації та регіональні студії» (галузь знань 29 «Міжнародні відносини») рівня бакалавра мають виконувати обов’язки у якості дипломатичних агентів, організаторів громадських заходів, педагогів професійного навчання, референтів, фахівців із інтерв’ювання (засоби масової інформації)."
).

info_spec(
    international_economic_relations,
	"292 «Міжнародні економічні відносини»",
    "Випускники спеціальності 292 «Міжнародні економічні відносини» – це: диплом бакалавра з двома професійними кваліфікаціями - фахівець з міжнародних економічних відносин, фахівець з перекладу; диплом магістра з чотирма професійними кваліфікаціями - аналітик з інвестицій, експерт із зовнішньоекономічних питань, економіст з міжнародної торгівлі, перекладач; вивчення двох іноземних мов (за вибором студента - англійська, німецька, французька, іспанська, новогрецька мови); вивчення економічних дисциплін англійською, як мовою міжнародного бізнесу. Працевлаштування: міжнародні фінансові компанії і транснаціональні корпорації, міжнародні економічні організації, філії іноземних фірм в Україні та за кордоном, українські фірми - учасники зовнішньоекономічної діяльності, іноземні та українські банки; державні установи; офіційні представництва України за кордоном."
).

info(Specialty) :-
    info_spec(Specialty, Title, Description),
    avg_score(AverageScore),
    min_budget_score(Specialty, MinBudgetScore),
    min_contract_score(Specialty, MinContractScore),
    format("Спеціальність: ~w~nОпис: ~w~nМін. бал на бюджет (2023): ~w~nМін. бал на контракт (2023): ~w~n~n", [Title, Description, MinBudgetScore, MinContractScore]),
    min_contract_score(Specialty, MinContractScore), AverageScore > MinContractScore, writeln("Можете подати заяву на КОНТРАКТ."),
    min_budget_score(Specialty, MinBudgetScore), MinBudgetScore \= 0, AverageScore > MinBudgetScore, writeln("Можете подати заяву на БЮДЖЕТ.\n"), !.


%%%%%%%%%%%%%%%%%%%%
%% User interface %%
%%%%%%%%%%%%%%%%%%%%

consult :-
    intro,
    reset_answers,
    menu,
    % listing(nmt_mandatory_score),
    % listing(nmt_selective_score),
    % listing(interest),
    recommend_specialties, nl.

intro :-
    writeln("Яку спеціальність я можу обрати при вступі до ОНУ?"),
    writeln("Щоб відповісти на це питання, дайте відповіді на поставлені нижче запитання, закінчуючи символом крапки ('.')."), nl. 

% Clear stored user progress reset_answers must always return `true`;
% because `clear` can return either `true` or `false`,
% we fail the first and succeed with the second.
reset_answers :-
    retractall(nmt_mandatory_score(_, _)),
    retractall(nmt_selective_score(_, _)),
    retractall(interest(_, _)),
    fail.
reset_answers.

menu :-
    score_instructions,
    prompt_mandatory_score(ukr, "Українська мова та література"),
    prompt_mandatory_score(math, "Математика"),
    prompt_selective_score(hist, "Історія України"),
    prompt_selective_score(lang, "Іноземна мова"),
    prompt_selective_score(bio, "Біологія"),
    prompt_selective_score(chem, "Хімія"),
    prompt_selective_score(phys, "Фізика"),

    interest_instructions,
    prompt_interest(science, "науці в цілому"),
    prompt_interest(math, "математиці"),
    prompt_interest(physics, "фізиці"),
    prompt_interest(chemistry, "біології"),
    prompt_interest(biology, "хімії"),
    prompt_interest(tech, "сучасних інформаційних технологіях"),
    prompt_interest(comp, "роботі з числами"),
    prompt_interest(logic, "логічному мисленні/будуванні логічних ланцюгів"),
    prompt_interest(invent, "винахідництві/знаходженні нових речей"),
    prompt_interest(business, "бізнесі"),
    prompt_engagement(stress, "стресу"),
    prompt_interest(nontech, "нетехнічних (гуманітарних) напрямках"),
    prompt_interest(languages, "вивченні нових (людських) мов"),
    prompt_interest(history, "історії"),
    prompt_interest(culture, "вивченні культур різних країн"),
    prompt_interest(psychology, "вивченні психології людини"),
    prompt_engagement(social, "соціальних взаємодій"),
    prompt_interest(politics, "політиці"),
    prompt_engagement(serving, "допомоги іншим людям"),
    prompt_interest(food, "напрямках, пов’язаних із виробництвом/обробкою/продажем/тощо їжі"),
    prompt_interest(outdoor, "заходах на свіжому повітрі"),
    prompt_engagement(otb, "нестандартного мислення"),
    prompt_engagement(perfection, "перфекціонізму"),
    prompt_engagement(art, "мистецтва"),
    prompt_interest(teach, "навчанні інших").

score_instructions :-
    writeln("Введіть бали, які Ви отримали за кожен з предметів НМТ."),
    writeln("Бали вказуйте в межах від 100 до 200."),
    writeln("Якщо Ви не здавали якийсь з вибіркових предметів, поставте напроти нього 0."), nl.

prompt_mandatory_score(Subject, Title) :-
    repeat,
    format("~w: ", [Title]),
    read(Score),
    (   number(Score), integer(Score), (Score >= 100, Score =< 200; Score =:= 0)
    ->  assertz(nmt_mandatory_score(Subject, Score)), !
    ;   writeln('Invalid input. Please enter a valid number.'), fail
    ).

prompt_selective_score(Subject, Title) :-
    repeat,
    format("~w: ", [Title]),
    read(Score),
    (   number(Score), integer(Score), (Score >= 100, Score =< 200; Score =:= 0)
    ->  assertz(nmt_selective_score(Subject, Score)), !
    ;   writeln('Invalid input. Please enter a valid score.'), fail
    ).

interest_instructions :-
    nl, writeln("Чудово! Тепер, дайте відповіді на деякі запитання стосовно Ваших інтересів/вподобань."),
    writeln("Будь ласка, відповідайте цифрами від 0 до 4:"),
    writeln("0 – Не цікавить/Відсутня в житті"),
    writeln("1 – Трохи зацікавлений/Не має суттєвого впливу"),
    writeln("2 – Доволі зацікавлений/Регулярний вплив"),
    writeln("3 – Дуже зацікавлений/Частий вплив"),
    writeln("4 – Живу цим!/Постійний вплив"), nl.

prompt_interest(Interest, Title) :-
    repeat,
    write("Наскільки Ви зацікавлені у/в "),
    write(Title),
    write("? "),
    read(InterestLevel),
    (   number(InterestLevel), integer(InterestLevel), InterestLevel >= 0, InterestLevel =< 4
    ->  assertz(interest(Interest, InterestLevel)), !
    ;   writeln('Invalid input. Please enter a valid option.'), fail
    ).

prompt_engagement(Interest, Title) :-
    repeat,
    write("Яка участь "),
    write(Title),
    write(" у Вашому житті? "),
    read(EngagementLevel),
    (   number(EngagementLevel), integer(EngagementLevel), EngagementLevel >= 0, EngagementLevel =< 4
    ->  assertz(interest(Interest, EngagementLevel)), !
    ;   writeln('Invalid input. Please enter a valid option.'), fail
    ).

recommend_specialties :-
    (setof(X, can_apply(X), Specialties) ->
        (Specialties = [] ->
            writeln("Вибачте, не можемо надати рекомендації відповідно наданих відповідей.")
            ;
        	writeln("\nРемомендовані спеціальності:"),
            forall(member(X, Specialties), info(X))
        )
        ;
        writeln("Вибачте, не можемо надати рекомендації відповідно наданих відповідей.")
    ).