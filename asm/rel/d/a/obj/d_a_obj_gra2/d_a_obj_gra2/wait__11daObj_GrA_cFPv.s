lbl_80C031E4:
/* 80C031E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C031E8  7C 08 02 A6 */	mflr r0
/* 80C031EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C031F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C031F4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C031F8  7C 7E 1B 78 */	mr r30, r3
/* 80C031FC  3C 80 80 C1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C0FE68@ha */
/* 80C03200  3B E4 FE 68 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80C0FE68@l */
/* 80C03204  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C03208  2C 00 00 00 */	cmpwi r0, 0
/* 80C0320C  41 82 00 0C */	beq lbl_80C03218
/* 80C03210  41 80 01 30 */	blt lbl_80C03340
/* 80C03214  48 00 01 2C */	b lbl_80C03340
lbl_80C03218:
/* 80C03218  88 1E 08 44 */	lbz r0, 0x844(r30)
/* 80C0321C  28 00 00 00 */	cmplwi r0, 0
/* 80C03220  40 82 01 20 */	bne lbl_80C03340
/* 80C03224  88 1E 0A 7E */	lbz r0, 0xa7e(r30)
/* 80C03228  2C 00 00 02 */	cmpwi r0, 2
/* 80C0322C  41 82 00 D0 */	beq lbl_80C032FC
/* 80C03230  40 80 00 14 */	bge lbl_80C03244
/* 80C03234  2C 00 00 00 */	cmpwi r0, 0
/* 80C03238  41 82 00 18 */	beq lbl_80C03250
/* 80C0323C  40 80 00 64 */	bge lbl_80C032A0
/* 80C03240  48 00 01 00 */	b lbl_80C03340
lbl_80C03244:
/* 80C03244  2C 00 00 04 */	cmpwi r0, 4
/* 80C03248  40 80 00 F8 */	bge lbl_80C03340
/* 80C0324C  48 00 00 D4 */	b lbl_80C03320
lbl_80C03250:
/* 80C03250  38 80 00 00 */	li r4, 0
/* 80C03254  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C03258  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0325C  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C03260  4B FF E5 2D */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C03264  7F C3 F3 78 */	mr r3, r30
/* 80C03268  38 80 00 00 */	li r4, 0
/* 80C0326C  3C A0 80 C1 */	lis r5, lit_4618@ha /* 0x80C0FBB4@ha */
/* 80C03270  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)  /* 0x80C0FBB4@l */
/* 80C03274  4B FF E5 39 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C03278  80 7F 03 04 */	lwz r3, 0x304(r31)
/* 80C0327C  80 1F 03 08 */	lwz r0, 0x308(r31)
/* 80C03280  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80C03284  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C03288  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 80C0328C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C03290  7F C3 F3 78 */	mr r3, r30
/* 80C03294  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C03298  4B FF E6 5D */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0329C  48 00 00 A4 */	b lbl_80C03340
lbl_80C032A0:
/* 80C032A0  38 80 00 00 */	li r4, 0
/* 80C032A4  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C032A8  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C032AC  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C032B0  4B FF E4 DD */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C032B4  7F C3 F3 78 */	mr r3, r30
/* 80C032B8  38 80 00 00 */	li r4, 0
/* 80C032BC  3C A0 80 C1 */	lis r5, lit_4618@ha /* 0x80C0FBB4@ha */
/* 80C032C0  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)  /* 0x80C0FBB4@l */
/* 80C032C4  4B FF E4 E9 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C032C8  80 7F 03 10 */	lwz r3, 0x310(r31)
/* 80C032CC  80 1F 03 14 */	lwz r0, 0x314(r31)
/* 80C032D0  90 61 00 20 */	stw r3, 0x20(r1)
/* 80C032D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C032D8  80 1F 03 18 */	lwz r0, 0x318(r31)
/* 80C032DC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C032E0  7F C3 F3 78 */	mr r3, r30
/* 80C032E4  38 81 00 20 */	addi r4, r1, 0x20
/* 80C032E8  4B FF E6 0D */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C032EC  7F C3 F3 78 */	mr r3, r30
/* 80C032F0  38 80 00 01 */	li r4, 1
/* 80C032F4  4B FF F7 E1 */	bl setLookMode__11daObj_GrA_cFi
/* 80C032F8  48 00 00 48 */	b lbl_80C03340
lbl_80C032FC:
/* 80C032FC  80 9F 03 1C */	lwz r4, 0x31c(r31)
/* 80C03300  80 1F 03 20 */	lwz r0, 0x320(r31)
/* 80C03304  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C03308  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C0330C  80 1F 03 24 */	lwz r0, 0x324(r31)
/* 80C03310  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C03314  38 81 00 14 */	addi r4, r1, 0x14
/* 80C03318  4B FF E5 DD */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0331C  48 00 00 24 */	b lbl_80C03340
lbl_80C03320:
/* 80C03320  80 9F 03 28 */	lwz r4, 0x328(r31)
/* 80C03324  80 1F 03 2C */	lwz r0, 0x32c(r31)
/* 80C03328  90 81 00 08 */	stw r4, 8(r1)
/* 80C0332C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C03330  80 1F 03 30 */	lwz r0, 0x330(r31)
/* 80C03334  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C03338  38 81 00 08 */	addi r4, r1, 8
/* 80C0333C  4B FF E5 B9 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
lbl_80C03340:
/* 80C03340  38 60 00 01 */	li r3, 1
/* 80C03344  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C03348  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C0334C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C03350  7C 08 03 A6 */	mtlr r0
/* 80C03354  38 21 00 40 */	addi r1, r1, 0x40
/* 80C03358  4E 80 00 20 */	blr 
