lbl_80CDC790:
/* 80CDC790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDC794  7C 08 02 A6 */	mflr r0
/* 80CDC798  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDC79C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDC7A0  7C 7F 1B 78 */	mr r31, r3
/* 80CDC7A4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80CDC7A8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80CDC7AC  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 80CDC7B0  60 00 00 02 */	ori r0, r0, 2
/* 80CDC7B4  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 80CDC7B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDC7BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDC7C0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80CDC7C4  7F E4 FB 78 */	mr r4, r31
/* 80CDC7C8  3C A0 80 CE */	lis r5, eventCallBack__FPvi@ha /* 0x80CDBB38@ha */
/* 80CDC7CC  38 A5 BB 38 */	addi r5, r5, eventCallBack__FPvi@l /* 0x80CDBB38@l */
/* 80CDC7D0  38 C0 00 00 */	li r6, 0
/* 80CDC7D4  4B 36 61 41 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80CDC7D8  7F E3 FB 78 */	mr r3, r31
/* 80CDC7DC  4B FF F8 5D */	bl demoProc__14daObjSmgDoor_cFv
/* 80CDC7E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDC7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDC7E8  7C 08 03 A6 */	mtlr r0
/* 80CDC7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDC7F0  4E 80 00 20 */	blr 
