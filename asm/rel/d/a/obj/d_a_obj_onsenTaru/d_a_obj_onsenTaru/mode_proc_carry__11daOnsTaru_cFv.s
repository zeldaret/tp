lbl_80CA9320:
/* 80CA9320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9324  7C 08 02 A6 */	mflr r0
/* 80CA9328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA932C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA9330  7C 7F 1B 78 */	mr r31, r3
/* 80CA9334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA9338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA933C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CA9340  C0 3F 05 7C */	lfs f1, 0x57c(r31)
/* 80CA9344  C0 5F 05 84 */	lfs f2, 0x584(r31)
/* 80CA9348  38 80 00 00 */	li r4, 0
/* 80CA934C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CA9350  81 8C 01 24 */	lwz r12, 0x124(r12)
/* 80CA9354  7D 89 03 A6 */	mtctr r12
/* 80CA9358  4E 80 04 21 */	bctrl 
/* 80CA935C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CA9360  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CA9364  40 82 00 48 */	bne lbl_80CA93AC
/* 80CA9368  7F E3 FB 78 */	mr r3, r31
/* 80CA936C  4B FF F9 05 */	bl chkWaterLineIn__11daOnsTaru_cFv
/* 80CA9370  2C 03 00 00 */	cmpwi r3, 0
/* 80CA9374  41 82 00 10 */	beq lbl_80CA9384
/* 80CA9378  7F E3 FB 78 */	mr r3, r31
/* 80CA937C  48 00 01 9D */	bl mode_init_sink__11daOnsTaru_cFv
/* 80CA9380  48 00 00 2C */	b lbl_80CA93AC
lbl_80CA9384:
/* 80CA9384  3C 60 80 CB */	lis r3, lit_4020@ha
/* 80CA9388  C0 23 9B D8 */	lfs f1, lit_4020@l(r3)
/* 80CA938C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CA9390  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CA9394  41 82 00 10 */	beq lbl_80CA93A4
/* 80CA9398  7F E3 FB 78 */	mr r3, r31
/* 80CA939C  48 00 00 25 */	bl mode_init_drop__11daOnsTaru_cFv
/* 80CA93A0  48 00 00 0C */	b lbl_80CA93AC
lbl_80CA93A4:
/* 80CA93A4  7F E3 FB 78 */	mr r3, r31
/* 80CA93A8  4B FF FE F5 */	bl mode_init_wait__11daOnsTaru_cFv
lbl_80CA93AC:
/* 80CA93AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA93B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA93B4  7C 08 03 A6 */	mtlr r0
/* 80CA93B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA93BC  4E 80 00 20 */	blr 
