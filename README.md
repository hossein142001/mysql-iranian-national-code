عتبار سنجی کد ملی در Mysql
توجه شود که کد ملی بایستی از نوع string با طول 10 باشد
در صورت معتبر بودن کد ملی،خروجی همان کدملی ارسالی میباشد در غیر اینصورت 0 بازمیگردد .
مثال :

SELECT * FROM person WHERE code_melli( national_code ) = national_code