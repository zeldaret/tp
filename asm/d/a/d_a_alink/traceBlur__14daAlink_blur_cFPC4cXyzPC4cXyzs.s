lbl_80125B0C:
/* 80125B0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80125B10  7C 08 02 A6 */	mflr r0
/* 80125B14  90 01 00 34 */	stw r0, 0x34(r1)
/* 80125B18  39 61 00 30 */	addi r11, r1, 0x30
/* 80125B1C  48 23 C6 B9 */	bl _savegpr_27
/* 80125B20  7C 7B 1B 78 */	mr r27, r3
/* 80125B24  7C BD 2B 78 */	mr r29, r5
/* 80125B28  7C DC 33 78 */	mr r28, r6
/* 80125B2C  7C 83 23 78 */	mr r3, r4
/* 80125B30  4B EE 72 35 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80125B34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80125B38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80125B3C  7F 84 E3 78 */	mr r4, r28
/* 80125B40  4B EE 68 F5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80125B44  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80125B48  FC 20 00 50 */	fneg f1, f0
/* 80125B4C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80125B50  FC 40 00 50 */	fneg f2, f0
/* 80125B54  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80125B58  FC 60 00 50 */	fneg f3, f0
/* 80125B5C  4B EE 72 41 */	bl transM__14mDoMtx_stack_cFfff
/* 80125B60  3B 80 00 00 */	li r28, 0
/* 80125B64  3B E0 00 00 */	li r31, 0
/* 80125B68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80125B6C  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 80125B70  48 00 00 60 */	b lbl_80125BD0
lbl_80125B74:
/* 80125B74  7F BB FA 14 */	add r29, r27, r31
/* 80125B78  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80125B7C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80125B80  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80125B84  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80125B88  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80125B8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80125B90  7F C3 F3 78 */	mr r3, r30
/* 80125B94  38 81 00 08 */	addi r4, r1, 8
/* 80125B98  38 BD 00 38 */	addi r5, r29, 0x38
/* 80125B9C  48 22 11 D1 */	bl PSMTXMultVec
/* 80125BA0  C0 1D 03 08 */	lfs f0, 0x308(r29)
/* 80125BA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80125BA8  C0 1D 03 0C */	lfs f0, 0x30c(r29)
/* 80125BAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80125BB0  C0 1D 03 10 */	lfs f0, 0x310(r29)
/* 80125BB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80125BB8  7F C3 F3 78 */	mr r3, r30
/* 80125BBC  38 81 00 08 */	addi r4, r1, 8
/* 80125BC0  38 BD 03 08 */	addi r5, r29, 0x308
/* 80125BC4  48 22 11 A9 */	bl PSMTXMultVec
/* 80125BC8  3B 9C 00 01 */	addi r28, r28, 1
/* 80125BCC  3B FF 00 0C */	addi r31, r31, 0xc
lbl_80125BD0:
/* 80125BD0  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 80125BD4  7C 1C 00 00 */	cmpw r28, r0
/* 80125BD8  41 80 FF 9C */	blt lbl_80125B74
/* 80125BDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80125BE0  48 23 C6 41 */	bl _restgpr_27
/* 80125BE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80125BE8  7C 08 03 A6 */	mtlr r0
/* 80125BEC  38 21 00 30 */	addi r1, r1, 0x30
/* 80125BF0  4E 80 00 20 */	blr 
