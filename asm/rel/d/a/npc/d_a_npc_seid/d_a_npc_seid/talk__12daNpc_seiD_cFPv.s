lbl_80ACA4A4:
/* 80ACA4A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACA4A8  7C 08 02 A6 */	mflr r0
/* 80ACA4AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACA4B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACA4B4  7C 7F 1B 78 */	mr r31, r3
/* 80ACA4B8  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80ACA4BC  2C 00 00 02 */	cmpwi r0, 2
/* 80ACA4C0  41 82 00 34 */	beq lbl_80ACA4F4
/* 80ACA4C4  40 80 00 68 */	bge lbl_80ACA52C
/* 80ACA4C8  2C 00 00 00 */	cmpwi r0, 0
/* 80ACA4CC  40 80 00 0C */	bge lbl_80ACA4D8
/* 80ACA4D0  48 00 00 5C */	b lbl_80ACA52C
/* 80ACA4D4  48 00 00 58 */	b lbl_80ACA52C
lbl_80ACA4D8:
/* 80ACA4D8  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80ACA4DC  38 A0 00 00 */	li r5, 0
/* 80ACA4E0  4B 68 17 10 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80ACA4E4  38 00 00 00 */	li r0, 0
/* 80ACA4E8  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80ACA4EC  38 00 00 02 */	li r0, 2
/* 80ACA4F0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACA4F4:
/* 80ACA4F4  7F E3 FB 78 */	mr r3, r31
/* 80ACA4F8  38 80 00 00 */	li r4, 0
/* 80ACA4FC  38 A0 00 00 */	li r5, 0
/* 80ACA500  38 C0 00 00 */	li r6, 0
/* 80ACA504  38 E0 00 00 */	li r7, 0
/* 80ACA508  4B 68 17 70 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80ACA50C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACA510  41 82 00 1C */	beq lbl_80ACA52C
/* 80ACA514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ACA518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ACA51C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80ACA520  4B 57 7F 48 */	b reset__14dEvt_control_cFv
/* 80ACA524  38 00 00 03 */	li r0, 3
/* 80ACA528  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACA52C:
/* 80ACA52C  38 60 00 00 */	li r3, 0
/* 80ACA530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACA534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACA538  7C 08 03 A6 */	mtlr r0
/* 80ACA53C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACA540  4E 80 00 20 */	blr 
