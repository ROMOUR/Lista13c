*** Variables ***
${BROWSER}      chrome
${URL}          https://www.blazedemo.com

&{CUSTOMER1}    name=John Doe    address=123 Elm St    dep_city=San Diego    dest_city=New York    state=NY    zip=10001    card_type=visa    card_number=4111111111111111    month=12    year=2025    name_on_card=John Doe
&{CUSTOMER2}    name=Jane Smith    address=456 Oak St    dep_city=Boston    dest_city=London    state=MA    zip=02210    card_type=visa    card_number=5500000000000004    month=01    year=2026    name_on_card=Jane Smith
&{CUSTOMER3}    name=Jim Beam    address=789 Pine St    dep_city=Portland    dest_city=Dublin    state=CA    zip=94105    card_type=visa    card_number=4111111111111111    month=06    year=2027    name_on_card=Jim Beam
@{CUSTOMERS}    &{CUSTOMER1}    &{CUSTOMER2}    &{CUSTOMER3}