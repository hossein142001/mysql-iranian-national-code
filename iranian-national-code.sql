CREATE DEFINER=`root`@`%` FUNCTION `code_melli`(`code_melli`  varchar(10)) RETURNS varchar(10) CHARSET utf8 COLLATE utf8_persian_ci
    NO SQL
BEGIN

	IF (LENGTH(@NC) <> 10) THEN
		RETURN 0;
	END IF;

	SET @NC1 = SUBSTRING(@NC,1,1);
	set @NC2 = substring(@NC,2,1);
	set @NC3 = substring(@NC,3,1);
	set @NC4 = substring(@NC,4,1) ;
	set @NC5 = substring(@NC,5,1);
	set @NC6 = substring(@NC,6,1);
	set @NC7 = substring(@NC,7,1);
	set @NC8 = substring(@NC,8,1);
	set @NC9 = substring(@NC,9,1);
	set @NC10 = substring(@NC,10,1);

 if (@NC1 not in ('1','2','3','4','5','6','7','8','9','0'))
            or (@NC2 not in ('1','2','3','4','5','6','7','8','9','0'))
            or (@NC3 not in ('1','2','3','4','5','6','7','8','9','0'))
            or (@NC4 not in ('1','2','3','4','5','6','7','8','9','0'))
            or (@NC5 not in ('1','2','3','4','5','6','7','8','9','0'))
            or (@NC6 not in ('1','2','3','4','5','6','7','8','9','0'))
            or (@NC7 not in ('1','2','3','4','5','6','7','8','9','0'))
            or (@NC8 not in ('1','2','3','4','5','6','7','8','9','0'))
            or (@NC9 not in ('1','2','3','4','5','6','7','8','9','0'))
            or (@NC10 not in ('1','2','3','4','5','6','7','8','9','0')) THEN
		RETURN 1;
	END IF;

if (@NC='1111111111' OR
			@NC='0000000000' OR
			@NC='2222222222' OR
			@NC='3333333333' OR
			@NC='4444444444' OR
			@NC='5555555555' OR
			@NC='6666666666' OR
			@NC='7777777777' OR
			@NC='8888888888' OR
			@NC='9999999999' )  THEN
		RETURN 2;
	END IF;


SET @c = CAST(@NC10 AS UNSIGNED);
set @n = cast(@NC1 as UNSIGNED)*10 +
				 cast(@NC2 as UNSIGNED)*9 +
				 cast(@NC3 as UNSIGNED)*8 +
				 cast(@NC4 as UNSIGNED)*7 +
				 cast(@NC5 as UNSIGNED)*6 +
				 cast(@NC6 as UNSIGNED)*5 +
				 cast(@NC7 as UNSIGNED)*4 +
				 cast(@NC8 as UNSIGNED)*3 +
				 cast(@NC9 as UNSIGNED)*2 ;

	set @r = @n % 11 ;
	if  NOT((@r = 0 AND @r = @c) OR (@r = 1 AND @c = 1) OR (@r > 1 AND @c = 11 - @r))  THEN
		RETURN 3 ;
	end IF;

	RETURN @NC;
END