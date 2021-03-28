lbl_805A2340:
/* 805A2340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2344  7C 08 02 A6 */	mflr r0
/* 805A2348  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A234C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2350  7C 7F 1B 78 */	mr r31, r3
/* 805A2354  4B FF FE 4D */	bl areaCheck__13daTagCstaSw_cFv
/* 805A2358  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805A235C  28 00 00 01 */	cmplwi r0, 1
/* 805A2360  40 82 00 40 */	bne lbl_805A23A0
/* 805A2364  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A2368  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A236C  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 805A2370  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A2374  7C 05 07 74 */	extsb r5, r0
/* 805A2378  4B A9 2F E8 */	b isSwitch__10dSv_info_cCFii
/* 805A237C  2C 03 00 00 */	cmpwi r3, 0
/* 805A2380  40 82 00 58 */	bne lbl_805A23D8
/* 805A2384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A2388  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A238C  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 805A2390  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A2394  7C 05 07 74 */	extsb r5, r0
/* 805A2398  4B A9 2E 68 */	b onSwitch__10dSv_info_cFii
/* 805A239C  48 00 00 3C */	b lbl_805A23D8
lbl_805A23A0:
/* 805A23A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A23A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A23A8  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 805A23AC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A23B0  7C 05 07 74 */	extsb r5, r0
/* 805A23B4  4B A9 2F AC */	b isSwitch__10dSv_info_cCFii
/* 805A23B8  2C 03 00 00 */	cmpwi r3, 0
/* 805A23BC  41 82 00 1C */	beq lbl_805A23D8
/* 805A23C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A23C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A23C8  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 805A23CC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A23D0  7C 05 07 74 */	extsb r5, r0
/* 805A23D4  4B A9 2E DC */	b offSwitch__10dSv_info_cFii
lbl_805A23D8:
/* 805A23D8  38 60 00 01 */	li r3, 1
/* 805A23DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A23E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A23E4  7C 08 03 A6 */	mtlr r0
/* 805A23E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A23EC  4E 80 00 20 */	blr 
