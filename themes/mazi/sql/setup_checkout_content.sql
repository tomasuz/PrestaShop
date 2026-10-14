-- Gender labels for all 8 languages
-- id_gender=1 Male, id_gender=2 Female
UPDATE ps_gender_lang SET name='Ponas'    WHERE id_gender=1 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='lt');
UPDATE ps_gender_lang SET name='Ponia'    WHERE id_gender=2 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='lt');
UPDATE ps_gender_lang SET name='Mr.'      WHERE id_gender=1 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='en');
UPDATE ps_gender_lang SET name='Mrs.'     WHERE id_gender=2 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='en');
UPDATE ps_gender_lang SET name='Пан'      WHERE id_gender=1 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='uk');
UPDATE ps_gender_lang SET name='Пані'     WHERE id_gender=2 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='uk');
UPDATE ps_gender_lang SET name='Kungs'    WHERE id_gender=1 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='lv');
UPDATE ps_gender_lang SET name='Kundze'   WHERE id_gender=2 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='lv');
UPDATE ps_gender_lang SET name='Hr.'      WHERE id_gender=1 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='et');
UPDATE ps_gender_lang SET name='Pr.'      WHERE id_gender=2 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='et');
UPDATE ps_gender_lang SET name='Pan'      WHERE id_gender=1 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='pl');
UPDATE ps_gender_lang SET name='Pani'     WHERE id_gender=2 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='pl');
UPDATE ps_gender_lang SET name='Herr'     WHERE id_gender=1 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='de');
UPDATE ps_gender_lang SET name='Frau'     WHERE id_gender=2 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='de');
UPDATE ps_gender_lang SET name='Г-н'      WHERE id_gender=1 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='ru');
UPDATE ps_gender_lang SET name='Г-жа'     WHERE id_gender=2 AND id_lang=(SELECT id_lang FROM ps_lang WHERE iso_code='ru');

-- PSGDPR creation form consent label per language
UPDATE ps_configuration_lang cl
  JOIN ps_configuration c ON c.id_configuration=cl.id_configuration
  JOIN ps_lang l ON l.id_lang=cl.id_lang
SET cl.value='Sutinku su pirkimo-pardavimo taisyklėmis ir privatumo politika'
WHERE c.name='PSGDPR_CREATION_FORM' AND l.iso_code='lt';

UPDATE ps_configuration_lang cl
  JOIN ps_configuration c ON c.id_configuration=cl.id_configuration
  JOIN ps_lang l ON l.id_lang=cl.id_lang
SET cl.value='I agree to the terms and conditions and the privacy policy'
WHERE c.name='PSGDPR_CREATION_FORM' AND l.iso_code='en';

UPDATE ps_configuration_lang cl
  JOIN ps_configuration c ON c.id_configuration=cl.id_configuration
  JOIN ps_lang l ON l.id_lang=cl.id_lang
SET cl.value='Я погоджуюся з умовами використання та політикою конфіденційності'
WHERE c.name='PSGDPR_CREATION_FORM' AND l.iso_code='uk';

UPDATE ps_configuration_lang cl
  JOIN ps_configuration c ON c.id_configuration=cl.id_configuration
  JOIN ps_lang l ON l.id_lang=cl.id_lang
SET cl.value='Piekrītu noteikumiem un privātuma politikai'
WHERE c.name='PSGDPR_CREATION_FORM' AND l.iso_code='lv';

UPDATE ps_configuration_lang cl
  JOIN ps_configuration c ON c.id_configuration=cl.id_configuration
  JOIN ps_lang l ON l.id_lang=cl.id_lang
SET cl.value='Nõustun müügitingimuste ja privaatsuspoliitikaga'
WHERE c.name='PSGDPR_CREATION_FORM' AND l.iso_code='et';

UPDATE ps_configuration_lang cl
  JOIN ps_configuration c ON c.id_configuration=cl.id_configuration
  JOIN ps_lang l ON l.id_lang=cl.id_lang
SET cl.value='Zgadzam się z regulaminem i polityką prywatności'
WHERE c.name='PSGDPR_CREATION_FORM' AND l.iso_code='pl';

UPDATE ps_configuration_lang cl
  JOIN ps_configuration c ON c.id_configuration=cl.id_configuration
  JOIN ps_lang l ON l.id_lang=cl.id_lang
SET cl.value='Ich stimme den AGB und der Datenschutzerklärung zu'
WHERE c.name='PSGDPR_CREATION_FORM' AND l.iso_code='de';

UPDATE ps_configuration_lang cl
  JOIN ps_configuration c ON c.id_configuration=cl.id_configuration
  JOIN ps_lang l ON l.id_lang=cl.id_lang
SET cl.value='Я соглашаюсь с условиями использования и политикой конфиденциальности'
WHERE c.name='PSGDPR_CREATION_FORM' AND l.iso_code='ru';

-- Reassurance block titles and descriptions per language
-- Block 1: Security policy
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Saugumo politika',      rl.description='Mokėjimai apsaugoti SSL šifravimu. Jūsų asmeniniai duomenys yra visiškai saugūs.'  WHERE rl.id_psreassurance=1 AND l.iso_code='lt';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Security policy',       rl.description='Payments secured by SSL encryption. Your personal data is completely safe.'          WHERE rl.id_psreassurance=1 AND l.iso_code='en';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Політика безпеки',      rl.description='Платежі захищені SSL-шифруванням. Ваші особисті дані в безпеці.'                   WHERE rl.id_psreassurance=1 AND l.iso_code='uk';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Drošības politika',     rl.description='Maksājumi aizsargāti ar SSL šifrēšanu. Jūsu personas dati ir pilnīgi droši.'       WHERE rl.id_psreassurance=1 AND l.iso_code='lv';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Turvalisuse poliitika', rl.description='Maksed on kaitstud SSL-krüptimisega. Teie isikuandmed on täiesti turvalised.'      WHERE rl.id_psreassurance=1 AND l.iso_code='et';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Polityka bezpieczeństwa',rl.description='Płatności zabezpieczone szyfrowaniem SSL. Twoje dane osobowe są w pełni bezpieczne.' WHERE rl.id_psreassurance=1 AND l.iso_code='pl';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Sicherheitsrichtlinie', rl.description='Zahlungen durch SSL-Verschlüsselung gesichert. Ihre Daten sind vollständig sicher.' WHERE rl.id_psreassurance=1 AND l.iso_code='de';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Политика безопасности', rl.description='Платежи защищены SSL-шифрованием. Ваши личные данные полностью в безопасности.'    WHERE rl.id_psreassurance=1 AND l.iso_code='ru';
-- Block 2: Delivery information
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Pristatymo informacija',rl.description='Pristatome per 2–5 darbo dienas. Nemokamas pristatymas nuo 50 €.'                  WHERE rl.id_psreassurance=2 AND l.iso_code='lt';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Delivery information',  rl.description='Delivered in 2–5 working days. Free shipping on orders from €50.'                  WHERE rl.id_psreassurance=2 AND l.iso_code='en';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Інформація про доставку',rl.description='Доставка 2–5 робочих днів. Безкоштовна доставка від 50 €.'                       WHERE rl.id_psreassurance=2 AND l.iso_code='uk';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Piegādes informācija',  rl.description='Piegāde 2–5 darba dienās. Bezmaksas piegāde no 50 €.'                              WHERE rl.id_psreassurance=2 AND l.iso_code='lv';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Tarneinfo',             rl.description='Tarne 2–5 tööpäeva. Tasuta kohaletoimetamine alates 50 €.'                          WHERE rl.id_psreassurance=2 AND l.iso_code='et';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Informacje o dostawie', rl.description='Dostawa w 2–5 dni roboczych. Darmowa wysyłka od 50 €.'                             WHERE rl.id_psreassurance=2 AND l.iso_code='pl';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Lieferinformationen',   rl.description='Lieferung in 2–5 Werktagen. Kostenloser Versand ab 50 €.'                          WHERE rl.id_psreassurance=2 AND l.iso_code='de';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Информация о доставке', rl.description='Доставка 2–5 рабочих дней. Бесплатная доставка от 50 €.'                          WHERE rl.id_psreassurance=2 AND l.iso_code='ru';
-- Block 3: Return policy
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Grąžinimo taisyklės',  rl.description='14 dienų grąžinimo garantija. Grąžinimas paprastas ir nemokamas.'                   WHERE rl.id_psreassurance=3 AND l.iso_code='lt';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Return policy',         rl.description='14-day return guarantee. Returns are simple and free of charge.'                    WHERE rl.id_psreassurance=3 AND l.iso_code='en';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Правила повернення',   rl.description='14 днів гарантія повернення. Повернення просте і безкоштовне.'                      WHERE rl.id_psreassurance=3 AND l.iso_code='uk';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Atgriešanas noteikumi',rl.description='14 dienu atgriešanas garantija. Atgriešana ir vienkārša un bezmaksas.'              WHERE rl.id_psreassurance=3 AND l.iso_code='lv';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Tagastuspoliitika',    rl.description='14-päevane tagastusgarantii. Tagastamine on lihtne ja tasuta.'                       WHERE rl.id_psreassurance=3 AND l.iso_code='et';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Zasady zwrotów',       rl.description='14-dniowa gwarancja zwrotu. Zwroty są proste i bezpłatne.'                          WHERE rl.id_psreassurance=3 AND l.iso_code='pl';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Rückgabebedingungen',  rl.description='14 Tage Rückgabegarantie. Rückgaben sind einfach und kostenlos.'                    WHERE rl.id_psreassurance=3 AND l.iso_code='de';
UPDATE ps_psreassurance_lang rl JOIN ps_lang l ON l.id_lang=rl.id_lang SET rl.title='Правила возврата',     rl.description='Гарантия возврата 14 дней. Возврат прост и бесплатен.'                              WHERE rl.id_psreassurance=3 AND l.iso_code='ru';

-- Disable birthday field on checkout
UPDATE ps_configuration SET value='0' WHERE name='PS_CUSTOMER_BIRTHDATE';
