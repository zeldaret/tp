lbl_800AD2D8:
/* 800AD2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AD2DC  7C 08 02 A6 */	mflr r0
/* 800AD2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AD2E4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AD2E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AD2EC  4C 41 13 82 */	cror 2, 1, 2
/* 800AD2F0  40 82 00 40 */	bne lbl_800AD330
/* 800AD2F4  80 C3 20 60 */	lwz r6, 0x2060(r3)
/* 800AD2F8  C0 46 00 0C */	lfs f2, 0xc(r6)
/* 800AD2FC  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800AD300  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800AD304  40 81 00 1C */	ble lbl_800AD320
/* 800AD308  A0 06 00 18 */	lhz r0, 0x18(r6)
/* 800AD30C  28 00 00 00 */	cmplwi r0, 0
/* 800AD310  40 82 00 10 */	bne lbl_800AD320
/* 800AD314  38 80 00 00 */	li r4, 0
/* 800AD318  A0 A3 30 C6 */	lhz r5, 0x30c6(r3)
/* 800AD31C  48 00 00 0C */	b lbl_800AD328
lbl_800AD320:
/* 800AD320  A0 83 30 A8 */	lhz r4, 0x30a8(r3)
/* 800AD324  A0 A3 30 AA */	lhz r5, 0x30aa(r3)
lbl_800AD328:
/* 800AD328  7C C3 33 78 */	mr r3, r6
/* 800AD32C  4B F6 25 1D */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_800AD330:
/* 800AD330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AD334  7C 08 03 A6 */	mtlr r0
/* 800AD338  38 21 00 10 */	addi r1, r1, 0x10
/* 800AD33C  4E 80 00 20 */	blr 
