CREATE OR REPLACE FUNCTION chart_list_cash(in_account_class int)
RETURNS SETOF chart AS
$$
DECLARE resultrow record;
        link_string text;
BEGIN
        IF in_account_class = 1 THEN
           link_string := '%AR_paid%';
        ELSE 
           link_string := '%AP_paid%';
        END IF;

        FOR resultrow IN
          SELECT *  FROM chart
          WHERE link LIKE link_string
          ORDER BY accno
          LOOP
          return next resultrow;
        END LOOP;
END;
$$ language plpgsql;
COMMENT ON FUNCTION chart_list_cash(in_account_class int) IS
$$ This function returns the cash account acording with in_account_class which must be 1 or 2 $$;

CREATE OR REPLACE FUNCTION chart_get_ar_ap(in_account_class int)
RETURNS SETOF chart AS
$$
DECLARE out_row chart%ROWTYPE;
BEGIN
	IF in_account_class NOT IN (1, 2) THEN
		RAISE EXCEPTION 'Bad Account Type';
	END IF;
       FOR out_row IN
               SELECT * FROM chart 
               WHERE link = CASE WHEN in_account_class = 1 THEN 'AP'
                               WHEN in_account_class = 2 THEN 'AR'
                               END
       LOOP
               RETURN NEXT out_row;
       END LOOP;
END;
$$ LANGUAGE PLPGSQL;
COMMENT ON FUNCTION chart_get_ar_ap(in_account_class int) IS
$$ This function returns the cash account acording with in_account_class which must be 1 or 2 $$;

