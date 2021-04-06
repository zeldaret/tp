lbl_80AEB1D0:
/* 80AEB1D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEB1D4  7C 08 02 A6 */	mflr r0
/* 80AEB1D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEB1DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEB1E0  7C 65 1B 78 */	mr r5, r3
/* 80AEB1E4  3B E0 00 00 */	li r31, 0
/* 80AEB1E8  88 83 09 EA */	lbz r4, 0x9ea(r3)
/* 80AEB1EC  28 04 00 FF */	cmplwi r4, 0xff
/* 80AEB1F0  41 82 00 24 */	beq lbl_80AEB214
/* 80AEB1F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AEB1F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AEB1FC  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 80AEB200  7C 05 07 74 */	extsb r5, r0
/* 80AEB204  4B 54 A1 5D */	bl isSwitch__10dSv_info_cCFii
/* 80AEB208  2C 03 00 00 */	cmpwi r3, 0
/* 80AEB20C  41 82 00 08 */	beq lbl_80AEB214
/* 80AEB210  3B E0 00 01 */	li r31, 1
lbl_80AEB214:
/* 80AEB214  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80AEB218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEB21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEB220  7C 08 03 A6 */	mtlr r0
/* 80AEB224  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEB228  4E 80 00 20 */	blr 
