lbl_8011E960:
/* 8011E960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011E964  7C 08 02 A6 */	mflr r0
/* 8011E968  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011E96C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011E970  7C 7F 1B 78 */	mr r31, r3
/* 8011E974  38 00 00 04 */	li r0, 4
/* 8011E978  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 8011E97C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8011E980  64 00 08 00 */	oris r0, r0, 0x800
/* 8011E984  90 03 05 88 */	stw r0, 0x588(r3)
/* 8011E988  4B FF FE B5 */	bl setSwordPushAnime__9daAlink_cFv
/* 8011E98C  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 8011E990  2C 00 01 93 */	cmpwi r0, 0x193
/* 8011E994  40 82 00 18 */	bne lbl_8011E9AC
/* 8011E998  7F E3 FB 78 */	mr r3, r31
/* 8011E99C  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100C2@ha */
/* 8011E9A0  38 84 00 C2 */	addi r4, r4, 0x00C2 /* 0x000100C2@l */
/* 8011E9A4  4B FA 07 15 */	bl voiceStartLevel__9daAlink_cFUl
/* 8011E9A8  48 00 00 38 */	b lbl_8011E9E0
lbl_8011E9AC:
/* 8011E9AC  2C 00 01 94 */	cmpwi r0, 0x194
/* 8011E9B0  40 82 00 18 */	bne lbl_8011E9C8
/* 8011E9B4  7F E3 FB 78 */	mr r3, r31
/* 8011E9B8  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100C4@ha */
/* 8011E9BC  38 84 00 C4 */	addi r4, r4, 0x00C4 /* 0x000100C4@l */
/* 8011E9C0  4B FA 06 F9 */	bl voiceStartLevel__9daAlink_cFUl
/* 8011E9C4  48 00 00 1C */	b lbl_8011E9E0
lbl_8011E9C8:
/* 8011E9C8  2C 00 01 92 */	cmpwi r0, 0x192
/* 8011E9CC  40 82 00 14 */	bne lbl_8011E9E0
/* 8011E9D0  7F E3 FB 78 */	mr r3, r31
/* 8011E9D4  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100C3@ha */
/* 8011E9D8  38 84 00 C3 */	addi r4, r4, 0x00C3 /* 0x000100C3@l */
/* 8011E9DC  4B FA 06 DD */	bl voiceStartLevel__9daAlink_cFUl
lbl_8011E9E0:
/* 8011E9E0  38 60 00 01 */	li r3, 1
/* 8011E9E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011E9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011E9EC  7C 08 03 A6 */	mtlr r0
/* 8011E9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8011E9F4  4E 80 00 20 */	blr 
