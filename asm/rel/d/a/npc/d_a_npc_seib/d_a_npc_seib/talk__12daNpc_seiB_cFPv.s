lbl_80AC616C:
/* 80AC616C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6170  7C 08 02 A6 */	mflr r0
/* 80AC6174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC617C  7C 7F 1B 78 */	mr r31, r3
/* 80AC6180  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AC6184  2C 00 00 02 */	cmpwi r0, 2
/* 80AC6188  41 82 00 34 */	beq lbl_80AC61BC
/* 80AC618C  40 80 00 68 */	bge lbl_80AC61F4
/* 80AC6190  2C 00 00 00 */	cmpwi r0, 0
/* 80AC6194  40 80 00 0C */	bge lbl_80AC61A0
/* 80AC6198  48 00 00 5C */	b lbl_80AC61F4
/* 80AC619C  48 00 00 58 */	b lbl_80AC61F4
lbl_80AC61A0:
/* 80AC61A0  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AC61A4  38 A0 00 00 */	li r5, 0
/* 80AC61A8  4B 68 5A 49 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AC61AC  38 00 00 00 */	li r0, 0
/* 80AC61B0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AC61B4  38 00 00 02 */	li r0, 2
/* 80AC61B8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AC61BC:
/* 80AC61BC  7F E3 FB 78 */	mr r3, r31
/* 80AC61C0  38 80 00 00 */	li r4, 0
/* 80AC61C4  38 A0 00 00 */	li r5, 0
/* 80AC61C8  38 C0 00 00 */	li r6, 0
/* 80AC61CC  38 E0 00 00 */	li r7, 0
/* 80AC61D0  4B 68 5A A9 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AC61D4  2C 03 00 00 */	cmpwi r3, 0
/* 80AC61D8  41 82 00 1C */	beq lbl_80AC61F4
/* 80AC61DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC61E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC61E4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AC61E8  4B 57 C2 81 */	bl reset__14dEvt_control_cFv
/* 80AC61EC  38 00 00 03 */	li r0, 3
/* 80AC61F0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AC61F4:
/* 80AC61F4  38 60 00 00 */	li r3, 0
/* 80AC61F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC61FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6200  7C 08 03 A6 */	mtlr r0
/* 80AC6204  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6208  4E 80 00 20 */	blr 
