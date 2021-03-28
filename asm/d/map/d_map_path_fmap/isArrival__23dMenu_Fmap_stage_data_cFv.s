lbl_8003D95C:
/* 8003D95C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003D960  7C 08 02 A6 */	mflr r0
/* 8003D964  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003D968  39 61 00 20 */	addi r11, r1, 0x20
/* 8003D96C  48 32 48 71 */	bl _savegpr_29
/* 8003D970  38 80 00 00 */	li r4, 0
/* 8003D974  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 8003D978  80 63 00 08 */	lwz r3, 8(r3)
/* 8003D97C  8B A3 00 02 */	lbz r29, 2(r3)
/* 8003D980  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003D984  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8003D988  48 00 00 24 */	b lbl_8003D9AC
lbl_8003D98C:
/* 8003D98C  7F E3 FB 78 */	mr r3, r31
/* 8003D990  7F A4 EB 78 */	mr r4, r29
/* 8003D994  4B FF 77 15 */	bl getSave2__10dSv_save_cFi
/* 8003D998  88 9E 00 10 */	lbz r4, 0x10(r30)
/* 8003D99C  4B FF 71 51 */	bl isVisitedRoom__13dSv_memory2_cFi
/* 8003D9A0  30 03 FF FF */	addic r0, r3, -1
/* 8003D9A4  7C 80 19 10 */	subfe r4, r0, r3
/* 8003D9A8  83 DE 00 08 */	lwz r30, 8(r30)
lbl_8003D9AC:
/* 8003D9AC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8003D9B0  40 82 00 0C */	bne lbl_8003D9BC
/* 8003D9B4  28 1E 00 00 */	cmplwi r30, 0
/* 8003D9B8  40 82 FF D4 */	bne lbl_8003D98C
lbl_8003D9BC:
/* 8003D9BC  7C 83 23 78 */	mr r3, r4
/* 8003D9C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8003D9C4  48 32 48 65 */	bl _restgpr_29
/* 8003D9C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003D9CC  7C 08 03 A6 */	mtlr r0
/* 8003D9D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8003D9D4  4E 80 00 20 */	blr 
