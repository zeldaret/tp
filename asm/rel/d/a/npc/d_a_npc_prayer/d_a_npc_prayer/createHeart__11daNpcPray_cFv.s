lbl_80AB4B20:
/* 80AB4B20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AB4B24  7C 08 02 A6 */	mflr r0
/* 80AB4B28  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AB4B2C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80AB4B30  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80AB4B34  7C 7E 1B 78 */	mr r30, r3
/* 80AB4B38  3C 60 80 AB */	lis r3, m__17daNpcPray_Param_c@ha
/* 80AB4B3C  3B E3 58 08 */	addi r31, r3, m__17daNpcPray_Param_c@l
/* 80AB4B40  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80AB4B44  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AB4B48  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80AB4B4C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AB4B50  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80AB4B54  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AB4B58  38 61 00 08 */	addi r3, r1, 8
/* 80AB4B5C  38 80 00 00 */	li r4, 0
/* 80AB4B60  38 A0 00 00 */	li r5, 0
/* 80AB4B64  38 C0 00 00 */	li r6, 0
/* 80AB4B68  4B 7B 28 8C */	b __ct__5csXyzFsss
/* 80AB4B6C  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80AB4B70  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AB4B74  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AB4B78  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AB4B7C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80AB4B80  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AB4B84  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AB4B88  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80AB4B8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AB4B90  38 61 00 08 */	addi r3, r1, 8
/* 80AB4B94  4B 55 83 78 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80AB4B98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AB4B9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AB4BA0  38 81 00 10 */	addi r4, r1, 0x10
/* 80AB4BA4  7C 85 23 78 */	mr r5, r4
/* 80AB4BA8  4B 89 21 C4 */	b PSMTXMultVec
/* 80AB4BAC  38 61 00 28 */	addi r3, r1, 0x28
/* 80AB4BB0  38 81 00 10 */	addi r4, r1, 0x10
/* 80AB4BB4  7C 65 1B 78 */	mr r5, r3
/* 80AB4BB8  4B 89 24 D8 */	b PSVECAdd
/* 80AB4BBC  38 61 00 28 */	addi r3, r1, 0x28
/* 80AB4BC0  38 80 00 21 */	li r4, 0x21
/* 80AB4BC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80AB4BC8  7C 05 07 74 */	extsb r5, r0
/* 80AB4BCC  38 C1 00 08 */	addi r6, r1, 8
/* 80AB4BD0  38 E1 00 1C */	addi r7, r1, 0x1c
/* 80AB4BD4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80AB4BD8  FC 40 08 90 */	fmr f2, f1
/* 80AB4BDC  39 00 00 00 */	li r8, 0
/* 80AB4BE0  4B 56 74 F4 */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
/* 80AB4BE4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80AB4BE8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80AB4BEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AB4BF0  7C 08 03 A6 */	mtlr r0
/* 80AB4BF4  38 21 00 40 */	addi r1, r1, 0x40
/* 80AB4BF8  4E 80 00 20 */	blr 
