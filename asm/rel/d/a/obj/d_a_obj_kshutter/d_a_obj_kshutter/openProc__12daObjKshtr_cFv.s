lbl_80C48D0C:
/* 80C48D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C48D10  7C 08 02 A6 */	mflr r0
/* 80C48D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C48D18  88 03 05 EA */	lbz r0, 0x5ea(r3)
/* 80C48D1C  2C 00 00 03 */	cmpwi r0, 3
/* 80C48D20  41 82 00 38 */	beq lbl_80C48D58
/* 80C48D24  40 80 00 18 */	bge lbl_80C48D3C
/* 80C48D28  2C 00 00 02 */	cmpwi r0, 2
/* 80C48D2C  40 80 00 24 */	bge lbl_80C48D50
/* 80C48D30  2C 00 00 00 */	cmpwi r0, 0
/* 80C48D34  40 80 00 14 */	bge lbl_80C48D48
/* 80C48D38  48 00 00 18 */	b lbl_80C48D50
lbl_80C48D3C:
/* 80C48D3C  2C 00 00 05 */	cmpwi r0, 5
/* 80C48D40  40 80 00 10 */	bge lbl_80C48D50
/* 80C48D44  48 00 00 1C */	b lbl_80C48D60
lbl_80C48D48:
/* 80C48D48  48 00 00 39 */	bl openProc_type1__12daObjKshtr_cFv
/* 80C48D4C  48 00 00 24 */	b lbl_80C48D70
lbl_80C48D50:
/* 80C48D50  48 00 02 45 */	bl openProc_type2__12daObjKshtr_cFv
/* 80C48D54  48 00 00 1C */	b lbl_80C48D70
lbl_80C48D58:
/* 80C48D58  48 00 03 A1 */	bl openProc_typeL3Boss__12daObjKshtr_cFv
/* 80C48D5C  48 00 00 14 */	b lbl_80C48D70
lbl_80C48D60:
/* 80C48D60  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80C48D64  4B 3C 46 C4 */	b play__14mDoExt_baseAnmFv
/* 80C48D68  30 03 FF FF */	addic r0, r3, -1
/* 80C48D6C  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C48D70:
/* 80C48D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C48D74  7C 08 03 A6 */	mtlr r0
/* 80C48D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80C48D7C  4E 80 00 20 */	blr 
