lbl_800E1A30:
/* 800E1A30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E1A34  7C 08 02 A6 */	mflr r0
/* 800E1A38  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E1A3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E1A40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E1A44  7C 7E 1B 78 */	mr r30, r3
/* 800E1A48  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 800E1A4C  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 800E1A50  90 03 05 7C */	stw r0, 0x57c(r3)
/* 800E1A54  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800E1A58  28 00 00 46 */	cmplwi r0, 0x46
/* 800E1A5C  40 82 00 58 */	bne lbl_800E1AB4
/* 800E1A60  80 1E 28 3C */	lwz r0, 0x283c(r30)
/* 800E1A64  90 1E 28 24 */	stw r0, 0x2824(r30)
/* 800E1A68  80 1E 28 40 */	lwz r0, 0x2840(r30)
/* 800E1A6C  90 1E 28 28 */	stw r0, 0x2828(r30)
/* 800E1A70  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800E1A74  60 00 00 20 */	ori r0, r0, 0x20
/* 800E1A78  90 1E 05 70 */	stw r0, 0x570(r30)
/* 800E1A7C  3B E0 00 01 */	li r31, 1
/* 800E1A80  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E1A84  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E1A88  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E1A8C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E1A90  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800E1A94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E1A98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E1A9C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800E1AA0  38 80 00 01 */	li r4, 1
/* 800E1AA4  38 A0 00 01 */	li r5, 1
/* 800E1AA8  38 C1 00 08 */	addi r6, r1, 8
/* 800E1AAC  4B F8 DF 79 */	bl StartShock__12dVibration_cFii4cXyz
/* 800E1AB0  48 00 00 08 */	b lbl_800E1AB8
lbl_800E1AB4:
/* 800E1AB4  3B E0 00 00 */	li r31, 0
lbl_800E1AB8:
/* 800E1AB8  38 7E 28 3C */	addi r3, r30, 0x283c
/* 800E1ABC  48 07 D2 41 */	bl clearData__16daPy_actorKeep_cFv
/* 800E1AC0  7F E3 FB 78 */	mr r3, r31
/* 800E1AC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E1AC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E1ACC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E1AD0  7C 08 03 A6 */	mtlr r0
/* 800E1AD4  38 21 00 20 */	addi r1, r1, 0x20
/* 800E1AD8  4E 80 00 20 */	blr 
