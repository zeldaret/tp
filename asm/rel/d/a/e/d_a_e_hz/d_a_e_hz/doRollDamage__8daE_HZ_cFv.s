lbl_806ED7A8:
/* 806ED7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806ED7AC  7C 08 02 A6 */	mflr r0
/* 806ED7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806ED7B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806ED7B8  93 C1 00 08 */	stw r30, 8(r1)
/* 806ED7BC  7C 7E 1B 78 */	mr r30, r3
/* 806ED7C0  3C 60 80 6F */	lis r3, lit_3966@ha /* 0x806F0860@ha */
/* 806ED7C4  3B E3 08 60 */	addi r31, r3, lit_3966@l /* 0x806F0860@l */
/* 806ED7C8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806ED7CC  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 806ED7D0  7C 03 02 14 */	add r0, r3, r0
/* 806ED7D4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806ED7D8  80 1E 0B 24 */	lwz r0, 0xb24(r30)
/* 806ED7DC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806ED7E0  41 82 00 A8 */	beq lbl_806ED888
/* 806ED7E4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806ED7E8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806ED7EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ED7F0  4C 41 13 82 */	cror 2, 1, 2
/* 806ED7F4  40 82 00 24 */	bne lbl_806ED818
/* 806ED7F8  38 7E 12 10 */	addi r3, r30, 0x1210
/* 806ED7FC  38 9E 12 14 */	addi r4, r30, 0x1214
/* 806ED800  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806ED804  38 C0 00 00 */	li r6, 0
/* 806ED808  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806ED80C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806ED810  39 00 00 00 */	li r8, 0
/* 806ED814  4B 92 F8 0D */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_806ED818:
/* 806ED818  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806ED81C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ED820  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806ED824  4B B8 2F 1D */	bl cLib_chaseF__FPfff
/* 806ED828  38 7E 06 B6 */	addi r3, r30, 0x6b6
/* 806ED82C  38 80 00 00 */	li r4, 0
/* 806ED830  38 A0 00 80 */	li r5, 0x80
/* 806ED834  4B B8 33 5D */	bl cLib_chaseAngleS__FPsss
/* 806ED838  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806ED83C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ED840  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806ED844  40 82 00 44 */	bne lbl_806ED888
/* 806ED848  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 806ED84C  2C 00 00 00 */	cmpwi r0, 0
/* 806ED850  40 82 00 38 */	bne lbl_806ED888
/* 806ED854  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806ED858  38 80 00 01 */	li r4, 1
/* 806ED85C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806ED860  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806ED864  40 82 00 14 */	bne lbl_806ED878
/* 806ED868  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806ED86C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806ED870  41 82 00 08 */	beq lbl_806ED878
/* 806ED874  38 80 00 00 */	li r4, 0
lbl_806ED878:
/* 806ED878  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806ED87C  41 82 00 0C */	beq lbl_806ED888
/* 806ED880  38 60 00 01 */	li r3, 1
/* 806ED884  48 00 00 08 */	b lbl_806ED88C
lbl_806ED888:
/* 806ED888  38 60 00 00 */	li r3, 0
lbl_806ED88C:
/* 806ED88C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806ED890  83 C1 00 08 */	lwz r30, 8(r1)
/* 806ED894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806ED898  7C 08 03 A6 */	mtlr r0
/* 806ED89C  38 21 00 10 */	addi r1, r1, 0x10
/* 806ED8A0  4E 80 00 20 */	blr 
