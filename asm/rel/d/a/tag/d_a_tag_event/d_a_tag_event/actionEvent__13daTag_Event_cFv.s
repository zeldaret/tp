lbl_8048B1B0:
/* 8048B1B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B1B4  7C 08 02 A6 */	mflr r0
/* 8048B1B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B1BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048B1C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8048B1C4  7C 7E 1B 78 */	mr r30, r3
/* 8048B1C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048B1CC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8048B1D0  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8048B1D4  A8 9E 05 68 */	lha r4, 0x568(r30)
/* 8048B1D8  4B BB C8 A0 */	b endCheck__16dEvent_manager_cFs
/* 8048B1DC  2C 03 00 00 */	cmpwi r3, 0
/* 8048B1E0  41 82 00 64 */	beq lbl_8048B244
/* 8048B1E4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8048B1E8  4B BB 72 80 */	b reset__14dEvt_control_cFv
/* 8048B1EC  A8 1E 05 6A */	lha r0, 0x56a(r30)
/* 8048B1F0  2C 00 FF FF */	cmpwi r0, -1
/* 8048B1F4  41 82 00 34 */	beq lbl_8048B228
/* 8048B1F8  38 00 00 05 */	li r0, 5
/* 8048B1FC  98 1E 05 72 */	stb r0, 0x572(r30)
/* 8048B200  7F C3 F3 78 */	mr r3, r30
/* 8048B204  A8 9E 05 6A */	lha r4, 0x56a(r30)
/* 8048B208  A8 1E 05 6C */	lha r0, 0x56c(r30)
/* 8048B20C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8048B210  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8048B214  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8048B218  38 E0 00 00 */	li r7, 0
/* 8048B21C  39 00 00 01 */	li r8, 1
/* 8048B220  4B B9 04 5C */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8048B224  48 00 00 28 */	b lbl_8048B24C
lbl_8048B228:
/* 8048B228  38 00 00 00 */	li r0, 0
/* 8048B22C  98 1E 05 72 */	stb r0, 0x572(r30)
/* 8048B230  7F C3 F3 78 */	mr r3, r30
/* 8048B234  4B FF FC C5 */	bl demoEndProc__13daTag_Event_cFv
/* 8048B238  38 00 FF FF */	li r0, -1
/* 8048B23C  B0 1E 05 6C */	sth r0, 0x56c(r30)
/* 8048B240  48 00 00 0C */	b lbl_8048B24C
lbl_8048B244:
/* 8048B244  7F C3 F3 78 */	mr r3, r30
/* 8048B248  4B FF FC B5 */	bl demoProc__13daTag_Event_cFv
lbl_8048B24C:
/* 8048B24C  38 60 00 01 */	li r3, 1
/* 8048B250  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048B254  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048B258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B25C  7C 08 03 A6 */	mtlr r0
/* 8048B260  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B264  4E 80 00 20 */	blr 
