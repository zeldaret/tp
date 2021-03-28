lbl_80694F94:
/* 80694F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80694F98  7C 08 02 A6 */	mflr r0
/* 80694F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80694FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80694FA4  7C 7F 1B 78 */	mr r31, r3
/* 80694FA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80694FAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80694FB0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80694FB4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80694FB8  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80694FBC  4B CB 19 2C */	b PSMTXTrans
/* 80694FC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80694FC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80694FC8  A8 9F 00 44 */	lha r4, 0x44(r31)
/* 80694FCC  4B 97 73 D0 */	b mDoMtx_XrotM__FPA4_fs
/* 80694FD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80694FD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80694FD8  A8 9F 00 46 */	lha r4, 0x46(r31)
/* 80694FDC  4B 97 74 F0 */	b mDoMtx_ZrotM__FPA4_fs
/* 80694FE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80694FE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80694FE8  A8 9F 00 3E */	lha r4, 0x3e(r31)
/* 80694FEC  4B 97 74 48 */	b mDoMtx_YrotM__FPA4_fs
/* 80694FF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80694FF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80694FF8  A8 9F 00 3C */	lha r4, 0x3c(r31)
/* 80694FFC  4B 97 73 A0 */	b mDoMtx_XrotM__FPA4_fs
/* 80695000  3C 60 80 69 */	lis r3, l_HIO@ha
/* 80695004  38 63 7E 7C */	addi r3, r3, l_HIO@l
/* 80695008  C0 23 00 08 */	lfs f1, 8(r3)
/* 8069500C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80695010  EC 21 00 32 */	fmuls f1, f1, f0
/* 80695014  FC 40 08 90 */	fmr f2, f1
/* 80695018  FC 60 08 90 */	fmr f3, f1
/* 8069501C  4B 97 7E 1C */	b scaleM__14mDoMtx_stack_cFfff
/* 80695020  88 1F 00 52 */	lbz r0, 0x52(r31)
/* 80695024  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80695028  41 82 00 1C */	beq lbl_80695044
/* 8069502C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80695030  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80695034  80 9F 00 00 */	lwz r4, 0(r31)
/* 80695038  38 84 00 24 */	addi r4, r4, 0x24
/* 8069503C  4B CB 14 74 */	b PSMTXCopy
/* 80695040  48 00 00 18 */	b lbl_80695058
lbl_80695044:
/* 80695044  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80695048  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8069504C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80695050  38 84 00 24 */	addi r4, r4, 0x24
/* 80695054  4B CB 14 5C */	b PSMTXCopy
lbl_80695058:
/* 80695058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8069505C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80695060  7C 08 03 A6 */	mtlr r0
/* 80695064  38 21 00 10 */	addi r1, r1, 0x10
/* 80695068  4E 80 00 20 */	blr 
