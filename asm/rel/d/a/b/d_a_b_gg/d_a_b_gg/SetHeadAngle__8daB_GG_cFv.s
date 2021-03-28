lbl_805E9A28:
/* 805E9A28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E9A2C  7C 08 02 A6 */	mflr r0
/* 805E9A30  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E9A34  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805E9A38  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805E9A3C  7C 7E 1B 78 */	mr r30, r3
/* 805E9A40  3C 60 80 5F */	lis r3, lit_3912@ha
/* 805E9A44  C0 03 D0 64 */	lfs f0, lit_3912@l(r3)
/* 805E9A48  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805E9A4C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E9A50  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E9A54  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9A58  80 63 00 04 */	lwz r3, 4(r3)
/* 805E9A5C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805E9A60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805E9A64  38 63 00 F0 */	addi r3, r3, 0xf0
/* 805E9A68  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805E9A6C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805E9A70  4B D5 CA 40 */	b PSMTXCopy
/* 805E9A74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805E9A78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805E9A7C  38 81 00 14 */	addi r4, r1, 0x14
/* 805E9A80  7C 85 23 78 */	mr r5, r4
/* 805E9A84  4B D5 D2 E8 */	b PSMTXMultVec
/* 805E9A88  38 61 00 08 */	addi r3, r1, 8
/* 805E9A8C  38 81 00 14 */	addi r4, r1, 0x14
/* 805E9A90  38 BE 06 5C */	addi r5, r30, 0x65c
/* 805E9A94  4B C7 D0 A0 */	b __mi__4cXyzCFRC3Vec
/* 805E9A98  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E9A9C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805E9AA0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E9AA4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E9AA8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805E9AAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E9AB0  EC 21 00 72 */	fmuls f1, f1, f1
/* 805E9AB4  EC 00 00 32 */	fmuls f0, f0, f0
/* 805E9AB8  EC 41 00 2A */	fadds f2, f1, f0
/* 805E9ABC  3C 60 80 5F */	lis r3, lit_3912@ha
/* 805E9AC0  C0 03 D0 64 */	lfs f0, lit_3912@l(r3)
/* 805E9AC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E9AC8  40 81 00 0C */	ble lbl_805E9AD4
/* 805E9ACC  FC 00 10 34 */	frsqrte f0, f2
/* 805E9AD0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805E9AD4:
/* 805E9AD4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 805E9AD8  4B C7 DB 9C */	b cM_atan2s__Fff
/* 805E9ADC  7C 03 00 D0 */	neg r0, r3
/* 805E9AE0  7C 1F 07 34 */	extsh r31, r0
/* 805E9AE4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 805E9AE8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 805E9AEC  4B C7 DB 88 */	b cM_atan2s__Fff
/* 805E9AF0  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 805E9AF4  7F E4 FB 78 */	mr r4, r31
/* 805E9AF8  38 A0 00 02 */	li r5, 2
/* 805E9AFC  38 C0 10 00 */	li r6, 0x1000
/* 805E9B00  4B C8 6B 08 */	b cLib_addCalcAngleS2__FPssss
/* 805E9B04  38 7E 06 D6 */	addi r3, r30, 0x6d6
/* 805E9B08  7F E4 FB 78 */	mr r4, r31
/* 805E9B0C  38 A0 00 02 */	li r5, 2
/* 805E9B10  38 C0 10 00 */	li r6, 0x1000
/* 805E9B14  4B C8 6A F4 */	b cLib_addCalcAngleS2__FPssss
/* 805E9B18  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805E9B1C  D0 1E 06 5C */	stfs f0, 0x65c(r30)
/* 805E9B20  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805E9B24  D0 1E 06 60 */	stfs f0, 0x660(r30)
/* 805E9B28  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805E9B2C  D0 1E 06 64 */	stfs f0, 0x664(r30)
/* 805E9B30  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805E9B34  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805E9B38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E9B3C  7C 08 03 A6 */	mtlr r0
/* 805E9B40  38 21 00 40 */	addi r1, r1, 0x40
/* 805E9B44  4E 80 00 20 */	blr 
