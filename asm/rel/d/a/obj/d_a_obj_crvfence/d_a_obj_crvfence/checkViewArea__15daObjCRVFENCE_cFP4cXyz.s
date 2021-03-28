lbl_80BCF7DC:
/* 80BCF7DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BCF7E0  7C 08 02 A6 */	mflr r0
/* 80BCF7E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BCF7E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BCF7EC  3C 60 80 BD */	lis r3, lit_3685@ha
/* 80BCF7F0  3B E3 01 88 */	addi r31, r3, lit_3685@l
/* 80BCF7F4  7C 83 23 78 */	mr r3, r4
/* 80BCF7F8  38 81 00 08 */	addi r4, r1, 8
/* 80BCF7FC  4B 44 5B 14 */	b mDoLib_project__FP3VecP3Vec
/* 80BCF800  38 60 00 00 */	li r3, 0
/* 80BCF804  C0 41 00 08 */	lfs f2, 8(r1)
/* 80BCF808  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BCF80C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80BCF810  4C 41 13 82 */	cror 2, 1, 2
/* 80BCF814  40 82 00 38 */	bne lbl_80BCF84C
/* 80BCF818  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BCF81C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BCF820  4C 40 13 82 */	cror 2, 0, 2
/* 80BCF824  40 82 00 28 */	bne lbl_80BCF84C
/* 80BCF828  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80BCF82C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80BCF830  4C 41 13 82 */	cror 2, 1, 2
/* 80BCF834  40 82 00 18 */	bne lbl_80BCF84C
/* 80BCF838  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80BCF83C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BCF840  4C 40 13 82 */	cror 2, 0, 2
/* 80BCF844  40 82 00 08 */	bne lbl_80BCF84C
/* 80BCF848  38 60 00 01 */	li r3, 1
lbl_80BCF84C:
/* 80BCF84C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BCF850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BCF854  7C 08 03 A6 */	mtlr r0
/* 80BCF858  38 21 00 20 */	addi r1, r1, 0x20
/* 80BCF85C  4E 80 00 20 */	blr 
