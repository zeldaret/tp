lbl_8045AB80:
/* 8045AB80  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8045AB84  7C 08 02 A6 */	mflr r0
/* 8045AB88  90 01 00 64 */	stw r0, 0x64(r1)
/* 8045AB8C  39 61 00 60 */	addi r11, r1, 0x60
/* 8045AB90  4B F0 76 3D */	bl _savegpr_25
/* 8045AB94  7C 7F 1B 78 */	mr r31, r3
/* 8045AB98  38 00 00 02 */	li r0, 2
/* 8045AB9C  98 03 0C C4 */	stb r0, 0xcc4(r3)
/* 8045ABA0  3B 40 00 00 */	li r26, 0
/* 8045ABA4  3B C0 00 00 */	li r30, 0
/* 8045ABA8  3C 60 80 46 */	lis r3, l_tri_src@ha /* 0x8045CAE4@ha */
/* 8045ABAC  3B 83 CA E4 */	addi r28, r3, l_tri_src@l /* 0x8045CAE4@l */
/* 8045ABB0  3B BF 05 DC */	addi r29, r31, 0x5dc
/* 8045ABB4  48 00 00 20 */	b lbl_8045ABD4
lbl_8045ABB8:
/* 8045ABB8  7F 7F F2 14 */	add r27, r31, r30
/* 8045ABBC  38 7B 06 18 */	addi r3, r27, 0x618
/* 8045ABC0  7F 84 E3 78 */	mr r4, r28
/* 8045ABC4  4B C2 9C C1 */	bl Set__8dCcD_TriFRC11dCcD_SrcTri
/* 8045ABC8  93 BB 06 5C */	stw r29, 0x65c(r27)
/* 8045ABCC  3B 5A 00 01 */	addi r26, r26, 1
/* 8045ABD0  3B DE 01 5C */	addi r30, r30, 0x15c
lbl_8045ABD4:
/* 8045ABD4  88 1F 0C C4 */	lbz r0, 0xcc4(r31)
/* 8045ABD8  7C 1A 00 00 */	cmpw r26, r0
/* 8045ABDC  41 80 FF DC */	blt lbl_8045ABB8
/* 8045ABE0  C0 7F 05 0C */	lfs f3, 0x50c(r31)
/* 8045ABE4  C0 5F 05 14 */	lfs f2, 0x514(r31)
/* 8045ABE8  D0 41 00 08 */	stfs f2, 8(r1)
/* 8045ABEC  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8045ABF0  3C 60 80 46 */	lis r3, lit_3873@ha /* 0x8045CA00@ha */
/* 8045ABF4  C0 23 CA 00 */	lfs f1, lit_3873@l(r3)  /* 0x8045CA00@l */
/* 8045ABF8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8045ABFC  C0 1F 05 08 */	lfs f0, 0x508(r31)
/* 8045AC00  3B 81 00 14 */	addi r28, r1, 0x14
/* 8045AC04  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045AC08  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8045AC0C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8045AC10  C0 7F 05 18 */	lfs f3, 0x518(r31)
/* 8045AC14  3B 61 00 20 */	addi r27, r1, 0x20
/* 8045AC18  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8045AC1C  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8045AC20  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8045AC24  3B 41 00 2C */	addi r26, r1, 0x2c
/* 8045AC28  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8045AC2C  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8045AC30  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8045AC34  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8045AC38  4B BB 21 2D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8045AC3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045AC40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045AC44  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8045AC48  4B BB 17 ED */	bl mDoMtx_YrotM__FPA4_fs
/* 8045AC4C  3B 20 00 00 */	li r25, 0
/* 8045AC50  3B C0 00 00 */	li r30, 0
/* 8045AC54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045AC58  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8045AC5C:
/* 8045AC5C  38 81 00 08 */	addi r4, r1, 8
/* 8045AC60  7C 84 F2 14 */	add r4, r4, r30
/* 8045AC64  7F A3 EB 78 */	mr r3, r29
/* 8045AC68  7C 85 23 78 */	mr r5, r4
/* 8045AC6C  4B EE C1 01 */	bl PSMTXMultVec
/* 8045AC70  3B 39 00 01 */	addi r25, r25, 1
/* 8045AC74  2C 19 00 04 */	cmpwi r25, 4
/* 8045AC78  3B DE 00 0C */	addi r30, r30, 0xc
/* 8045AC7C  41 80 FF E0 */	blt lbl_8045AC5C
/* 8045AC80  38 7F 07 3C */	addi r3, r31, 0x73c
/* 8045AC84  38 81 00 08 */	addi r4, r1, 8
/* 8045AC88  7F 85 E3 78 */	mr r5, r28
/* 8045AC8C  7F 66 DB 78 */	mr r6, r27
/* 8045AC90  4B E1 4B 4D */	bl setPos__8cM3dGTriFPC3VecPC3VecPC3Vec
/* 8045AC94  38 7F 08 98 */	addi r3, r31, 0x898
/* 8045AC98  38 81 00 08 */	addi r4, r1, 8
/* 8045AC9C  7F 65 DB 78 */	mr r5, r27
/* 8045ACA0  7F 46 D3 78 */	mr r6, r26
/* 8045ACA4  4B E1 4B 39 */	bl setPos__8cM3dGTriFPC3VecPC3VecPC3Vec
/* 8045ACA8  39 61 00 60 */	addi r11, r1, 0x60
/* 8045ACAC  4B F0 75 6D */	bl _restgpr_25
/* 8045ACB0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8045ACB4  7C 08 03 A6 */	mtlr r0
/* 8045ACB8  38 21 00 60 */	addi r1, r1, 0x60
/* 8045ACBC  4E 80 00 20 */	blr 
