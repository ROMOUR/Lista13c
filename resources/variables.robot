*** Variables ***
${BROWSER}    chrome
${URL}        https://www.blazedemo.com

@{CUSTOMERS} = 
    | name        | address          | city           | state | zip   | card_type | card_number      | month | year | name_on_card |
    | John Doe    | 123 Elm St      | New York       | NY    | 10001 | visa      | 4111111111111111 | 12    | 2025 | John Doe     |
    | Jane Smith  | 456 Oak St      | Boston         | MA    | 02110 | master    | 5500000000000004 | 01    | 2026 | Jane Smith   |
    | Jim Beam    | 789 Pine St     | San Francisco  | CA    | 94105 | visa      | 4111111111111111 | 06    | 2027 | Jim Beam     |