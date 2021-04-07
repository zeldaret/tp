lbl_800E91C4:
/* 800E91C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E91C8  7C 08 02 A6 */	mflr r0
/* 800E91CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E91D0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800E91D4  28 00 00 C0 */	cmplwi r0, 0xc0
/* 800E91D8  40 82 00 28 */	bne lbl_800E9200
/* 800E91DC  A8 03 30 12 */	lha r0, 0x3012(r3)
/* 800E91E0  2C 00 00 00 */	cmpwi r0, 0
/* 800E91E4  40 82 00 1C */	bne lbl_800E9200
/* 800E91E8  38 00 00 01 */	li r0, 1
/* 800E91EC  B0 03 30 12 */	sth r0, 0x3012(r3)
/* 800E91F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E91F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E91F8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800E91FC  4B F5 92 6D */	bl reset__14dEvt_control_cFv
lbl_800E9200:
/* 800E9200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E9204  7C 08 03 A6 */	mtlr r0
/* 800E9208  38 21 00 10 */	addi r1, r1, 0x10
/* 800E920C  4E 80 00 20 */	blr 
