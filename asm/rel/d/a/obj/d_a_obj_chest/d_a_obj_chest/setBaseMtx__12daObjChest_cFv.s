lbl_80BC8F34:
/* 80BC8F34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BC8F38  7C 08 02 A6 */	mflr r0
/* 80BC8F3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BC8F40  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BC8F44  7C 7F 1B 78 */	mr r31, r3
/* 80BC8F48  A8 63 0A 9A */	lha r3, 0xa9a(r3)
/* 80BC8F4C  38 03 FF 74 */	addi r0, r3, -140
/* 80BC8F50  B0 1F 0A 9A */	sth r0, 0xa9a(r31)
/* 80BC8F54  A8 7F 0A 98 */	lha r3, 0xa98(r31)
/* 80BC8F58  A8 1F 0A 9A */	lha r0, 0xa9a(r31)
/* 80BC8F5C  7C 03 02 14 */	add r0, r3, r0
/* 80BC8F60  B0 1F 0A 98 */	sth r0, 0xa98(r31)
/* 80BC8F64  A8 1F 0A 98 */	lha r0, 0xa98(r31)
/* 80BC8F68  2C 00 00 00 */	cmpwi r0, 0
/* 80BC8F6C  40 80 00 4C */	bge lbl_80BC8FB8
/* 80BC8F70  38 00 00 00 */	li r0, 0
/* 80BC8F74  B0 1F 0A 98 */	sth r0, 0xa98(r31)
/* 80BC8F78  A8 1F 0A 9A */	lha r0, 0xa9a(r31)
/* 80BC8F7C  3C 60 80 BD */	lis r3, lit_3681@ha /* 0x80BCA044@ha */
/* 80BC8F80  C8 23 A0 44 */	lfd f1, lit_3681@l(r3)  /* 0x80BCA044@l */
/* 80BC8F84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC8F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8F8C  3C 00 43 30 */	lis r0, 0x4330
/* 80BC8F90  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BC8F94  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BC8F98  EC 20 08 28 */	fsubs f1, f0, f1
/* 80BC8F9C  C0 1F 0A 9C */	lfs f0, 0xa9c(r31)
/* 80BC8FA0  FC 00 00 50 */	fneg f0, f0
/* 80BC8FA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BC8FA8  FC 00 00 1E */	fctiwz f0, f0
/* 80BC8FAC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BC8FB0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BC8FB4  B0 1F 0A 9A */	sth r0, 0xa9a(r31)
lbl_80BC8FB8:
/* 80BC8FB8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BC8FBC  4B 44 3D A9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BC8FC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC8FC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC8FC8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BC8FCC  4B 44 34 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BC8FD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC8FD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC8FD8  A8 9F 0A 84 */	lha r4, 0xa84(r31)
/* 80BC8FDC  A8 1F 0A 98 */	lha r0, 0xa98(r31)
/* 80BC8FE0  7C 04 02 14 */	add r0, r4, r0
/* 80BC8FE4  7C 04 07 34 */	extsh r4, r0
/* 80BC8FE8  A8 BF 0A 86 */	lha r5, 0xa86(r31)
/* 80BC8FEC  A8 DF 0A 88 */	lha r6, 0xa88(r31)
/* 80BC8FF0  4B 44 32 B1 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80BC8FF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC8FF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC8FFC  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BC9000  38 84 00 24 */	addi r4, r4, 0x24
/* 80BC9004  4B 77 D4 AD */	bl PSMTXCopy
/* 80BC9008  A8 7F 0A 84 */	lha r3, 0xa84(r31)
/* 80BC900C  7C 60 07 35 */	extsh. r0, r3
/* 80BC9010  41 82 00 54 */	beq lbl_80BC9064
/* 80BC9014  B0 61 00 08 */	sth r3, 8(r1)
/* 80BC9018  A8 1F 0A 86 */	lha r0, 0xa86(r31)
/* 80BC901C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80BC9020  A8 1F 0A 88 */	lha r0, 0xa88(r31)
/* 80BC9024  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80BC9028  38 00 40 00 */	li r0, 0x4000
/* 80BC902C  B0 01 00 08 */	sth r0, 8(r1)
/* 80BC9030  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BC9034  4B 44 3D 31 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BC9038  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC903C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC9040  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BC9044  4B 44 33 F1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BC9048  38 61 00 08 */	addi r3, r1, 8
/* 80BC904C  4B 44 3E F9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BC9050  3C 60 80 BD */	lis r3, lit_3679@ha /* 0x80BCA040@ha */
/* 80BC9054  C0 23 A0 40 */	lfs f1, lit_3679@l(r3)  /* 0x80BCA040@l */
/* 80BC9058  C0 5F 0A A0 */	lfs f2, 0xaa0(r31)
/* 80BC905C  FC 60 08 90 */	fmr f3, f1
/* 80BC9060  4B 44 3D D9 */	bl scaleM__14mDoMtx_stack_cFfff
lbl_80BC9064:
/* 80BC9064  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC9068  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC906C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BC9070  4B 77 D4 41 */	bl PSMTXCopy
/* 80BC9074  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BC9078  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BC907C  7C 08 03 A6 */	mtlr r0
/* 80BC9080  38 21 00 30 */	addi r1, r1, 0x30
/* 80BC9084  4E 80 00 20 */	blr 
