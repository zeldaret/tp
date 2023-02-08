lbl_804D63A4:
/* 804D63A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D63A8  7C 08 02 A6 */	mflr r0
/* 804D63AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D63B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804D63B4  4B E8 BE 29 */	bl _savegpr_29
/* 804D63B8  7C 7F 1B 78 */	mr r31, r3
/* 804D63BC  3B A0 00 00 */	li r29, 0
/* 804D63C0  4B FF FA 5D */	bl getType__10daAndsw2_cFv
/* 804D63C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D63C8  2C 00 00 04 */	cmpwi r0, 4
/* 804D63CC  41 82 00 60 */	beq lbl_804D642C
/* 804D63D0  40 80 00 18 */	bge lbl_804D63E8
/* 804D63D4  2C 00 00 02 */	cmpwi r0, 2
/* 804D63D8  40 80 00 34 */	bge lbl_804D640C
/* 804D63DC  2C 00 00 00 */	cmpwi r0, 0
/* 804D63E0  40 80 00 10 */	bge lbl_804D63F0
/* 804D63E4  48 00 00 90 */	b lbl_804D6474
lbl_804D63E8:
/* 804D63E8  2C 00 00 07 */	cmpwi r0, 7
/* 804D63EC  40 80 00 88 */	bge lbl_804D6474
lbl_804D63F0:
/* 804D63F0  7F E3 FB 78 */	mr r3, r31
/* 804D63F4  4B FF FA C9 */	bl chkAllSw2__10daAndsw2_cFv
/* 804D63F8  30 03 FF FF */	addic r0, r3, -1
/* 804D63FC  7C 00 19 10 */	subfe r0, r0, r3
/* 804D6400  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804D6404  7C 1D 03 78 */	mr r29, r0
/* 804D6408  48 00 00 6C */	b lbl_804D6474
lbl_804D640C:
/* 804D640C  7F E3 FB 78 */	mr r3, r31
/* 804D6410  4B FF FB 55 */	bl chkSwStatus__10daAndsw2_cFv
/* 804D6414  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 804D6418  30 03 FF FF */	addic r0, r3, -1
/* 804D641C  7C 00 19 10 */	subfe r0, r0, r3
/* 804D6420  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804D6424  7C 1D 03 78 */	mr r29, r0
/* 804D6428  48 00 00 4C */	b lbl_804D6474
lbl_804D642C:
/* 804D642C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804D6430  7C 1E 07 74 */	extsb r30, r0
/* 804D6434  7F E3 FB 78 */	mr r3, r31
/* 804D6438  4B FF F9 CD */	bl getSwbit__10daAndsw2_cFv
/* 804D643C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804D6440  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D6444  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D6448  7F C5 F3 78 */	mr r5, r30
/* 804D644C  4B B5 EF 15 */	bl isSwitch__10dSv_info_cCFii
/* 804D6450  2C 03 00 00 */	cmpwi r3, 0
/* 804D6454  40 82 00 20 */	bne lbl_804D6474
/* 804D6458  7F E3 FB 78 */	mr r3, r31
/* 804D645C  4B FF FB C9 */	bl chkSwStatus2__10daAndsw2_cFv
/* 804D6460  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 804D6464  30 03 FF FF */	addic r0, r3, -1
/* 804D6468  7C 00 19 10 */	subfe r0, r0, r3
/* 804D646C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804D6470  7C 1D 03 78 */	mr r29, r0
lbl_804D6474:
/* 804D6474  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 804D6478  41 82 00 EC */	beq lbl_804D6564
/* 804D647C  7F E3 FB 78 */	mr r3, r31
/* 804D6480  4B FF F9 A9 */	bl getTimer__10daAndsw2_cFv
/* 804D6484  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D6488  28 00 00 FF */	cmplwi r0, 0xff
/* 804D648C  41 82 00 24 */	beq lbl_804D64B0
/* 804D6490  7F E3 FB 78 */	mr r3, r31
/* 804D6494  4B FF F9 95 */	bl getTimer__10daAndsw2_cFv
/* 804D6498  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D649C  1C 00 00 0F */	mulli r0, r0, 0xf
/* 804D64A0  B0 1F 05 68 */	sth r0, 0x568(r31)
/* 804D64A4  38 00 00 01 */	li r0, 1
/* 804D64A8  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 804D64AC  48 00 00 B8 */	b lbl_804D6564
lbl_804D64B0:
/* 804D64B0  A8 1F 05 6A */	lha r0, 0x56a(r31)
/* 804D64B4  2C 00 FF FF */	cmpwi r0, -1
/* 804D64B8  41 82 00 24 */	beq lbl_804D64DC
/* 804D64BC  7F E3 FB 78 */	mr r3, r31
/* 804D64C0  4B FF F9 5D */	bl getType__10daAndsw2_cFv
/* 804D64C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D64C8  28 00 00 04 */	cmplwi r0, 4
/* 804D64CC  41 82 00 10 */	beq lbl_804D64DC
/* 804D64D0  38 00 00 02 */	li r0, 2
/* 804D64D4  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 804D64D8  48 00 00 8C */	b lbl_804D6564
lbl_804D64DC:
/* 804D64DC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804D64E0  7C 1E 07 74 */	extsb r30, r0
/* 804D64E4  7F E3 FB 78 */	mr r3, r31
/* 804D64E8  4B FF F9 1D */	bl getSwbit__10daAndsw2_cFv
/* 804D64EC  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804D64F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D64F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D64F8  7F C5 F3 78 */	mr r5, r30
/* 804D64FC  4B B5 ED 05 */	bl onSwitch__10dSv_info_cFii
/* 804D6500  7F E3 FB 78 */	mr r3, r31
/* 804D6504  4B FF F9 19 */	bl getType__10daAndsw2_cFv
/* 804D6508  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D650C  28 00 00 01 */	cmplwi r0, 1
/* 804D6510  41 82 00 2C */	beq lbl_804D653C
/* 804D6514  7F E3 FB 78 */	mr r3, r31
/* 804D6518  4B FF F9 05 */	bl getType__10daAndsw2_cFv
/* 804D651C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D6520  28 00 00 03 */	cmplwi r0, 3
/* 804D6524  41 82 00 18 */	beq lbl_804D653C
/* 804D6528  7F E3 FB 78 */	mr r3, r31
/* 804D652C  4B FF F8 F1 */	bl getType__10daAndsw2_cFv
/* 804D6530  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D6534  28 00 00 06 */	cmplwi r0, 6
/* 804D6538  40 82 00 10 */	bne lbl_804D6548
lbl_804D653C:
/* 804D653C  38 00 00 04 */	li r0, 4
/* 804D6540  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 804D6544  48 00 00 20 */	b lbl_804D6564
lbl_804D6548:
/* 804D6548  7F E3 FB 78 */	mr r3, r31
/* 804D654C  4B FF F8 D1 */	bl getType__10daAndsw2_cFv
/* 804D6550  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D6554  28 00 00 04 */	cmplwi r0, 4
/* 804D6558  41 82 00 0C */	beq lbl_804D6564
/* 804D655C  38 00 00 05 */	li r0, 5
/* 804D6560  98 1F 05 6C */	stb r0, 0x56c(r31)
lbl_804D6564:
/* 804D6564  38 60 00 01 */	li r3, 1
/* 804D6568  39 61 00 20 */	addi r11, r1, 0x20
/* 804D656C  4B E8 BC BD */	bl _restgpr_29
/* 804D6570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D6574  7C 08 03 A6 */	mtlr r0
/* 804D6578  38 21 00 20 */	addi r1, r1, 0x20
/* 804D657C  4E 80 00 20 */	blr 
