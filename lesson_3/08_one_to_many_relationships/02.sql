SELECT "when", duration, first_name FROM calls
INNER JOIN contacts ON calls.contact_id = contacts.id
WHERE (contacts.first_name || ' ' || contacts.last_name) != 'William Swift';