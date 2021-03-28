lbl_8003FD9C:
/* 8003FD9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003FDA0  7C 08 02 A6 */	mflr r0
/* 8003FDA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003FDA8  7C 66 1B 78 */	mr r6, r3
/* 8003FDAC  88 A4 00 00 */	lbz r5, 0(r4)
/* 8003FDB0  28 05 00 FF */	cmplwi r5, 0xff
/* 8003FDB4  40 82 00 0C */	bne lbl_8003FDC0
/* 8003FDB8  38 60 00 01 */	li r3, 1
/* 8003FDBC  48 00 00 4C */	b lbl_8003FE08
lbl_8003FDC0:
/* 8003FDC0  88 04 00 01 */	lbz r0, 1(r4)
/* 8003FDC4  28 00 00 00 */	cmplwi r0, 0
/* 8003FDC8  40 82 00 24 */	bne lbl_8003FDEC
/* 8003FDCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003FDD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003FDD4  7C A4 2B 78 */	mr r4, r5
/* 8003FDD8  80 A6 00 24 */	lwz r5, 0x24(r6)
/* 8003FDDC  4B FF 55 85 */	bl isSwitch__10dSv_info_cCFii
/* 8003FDE0  7C 60 00 34 */	cntlzw r0, r3
/* 8003FDE4  54 03 D9 7E */	srwi r3, r0, 5
/* 8003FDE8  48 00 00 20 */	b lbl_8003FE08
lbl_8003FDEC:
/* 8003FDEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003FDF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003FDF4  7C A4 2B 78 */	mr r4, r5
/* 8003FDF8  80 A6 00 24 */	lwz r5, 0x24(r6)
/* 8003FDFC  4B FF 55 65 */	bl isSwitch__10dSv_info_cCFii
/* 8003FE00  30 03 FF FF */	addic r0, r3, -1
/* 8003FE04  7C 60 19 10 */	subfe r3, r0, r3
lbl_8003FE08:
/* 8003FE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003FE0C  7C 08 03 A6 */	mtlr r0
/* 8003FE10  38 21 00 10 */	addi r1, r1, 0x10
/* 8003FE14  4E 80 00 20 */	blr 
