lbl_8051A820:
/* 8051A820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051A824  7C 08 02 A6 */	mflr r0
/* 8051A828  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051A82C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051A830  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8051A834  7C 7E 1B 78 */	mr r30, r3
/* 8051A838  80 03 05 F8 */	lwz r0, 0x5f8(r3)
/* 8051A83C  90 01 00 08 */	stw r0, 8(r1)
/* 8051A840  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8051A844  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8051A848  38 81 00 08 */	addi r4, r1, 8
/* 8051A84C  4B AF EF AC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8051A850  7C 7F 1B 79 */	or. r31, r3, r3
/* 8051A854  40 82 00 10 */	bne lbl_8051A864
/* 8051A858  7F C3 F3 78 */	mr r3, r30
/* 8051A85C  4B AF F4 20 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8051A860  48 00 00 8C */	b lbl_8051A8EC
lbl_8051A864:
/* 8051A864  A8 7E 05 D4 */	lha r3, 0x5d4(r30)
/* 8051A868  2C 03 00 01 */	cmpwi r3, 1
/* 8051A86C  41 82 00 44 */	beq lbl_8051A8B0
/* 8051A870  40 80 00 7C */	bge lbl_8051A8EC
/* 8051A874  2C 03 00 00 */	cmpwi r3, 0
/* 8051A878  40 80 00 08 */	bge lbl_8051A880
/* 8051A87C  48 00 00 70 */	b lbl_8051A8EC
lbl_8051A880:
/* 8051A880  38 03 00 01 */	addi r0, r3, 1
/* 8051A884  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8051A888  7F C3 F3 78 */	mr r3, r30
/* 8051A88C  38 80 00 0A */	li r4, 0xa
/* 8051A890  3C A0 80 52 */	lis r5, lit_3650@ha
/* 8051A894  C0 25 B9 CC */	lfs f1, lit_3650@l(r5)
/* 8051A898  38 A0 00 02 */	li r5, 2
/* 8051A89C  3C C0 80 52 */	lis r6, lit_3669@ha
/* 8051A8A0  C0 46 B9 E4 */	lfs f2, lit_3669@l(r6)
/* 8051A8A4  4B FF F0 A9 */	bl anm_init__FP8fr_classifUcf
/* 8051A8A8  38 00 00 14 */	li r0, 0x14
/* 8051A8AC  B0 1E 05 DC */	sth r0, 0x5dc(r30)
lbl_8051A8B0:
/* 8051A8B0  3C 60 80 52 */	lis r3, lit_3669@ha
/* 8051A8B4  C0 03 B9 E4 */	lfs f0, lit_3669@l(r3)
/* 8051A8B8  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051A8BC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8051A8C0  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 8051A8C4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8051A8C8  C0 1F 06 3C */	lfs f0, 0x63c(r31)
/* 8051A8CC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8051A8D0  C0 1F 06 40 */	lfs f0, 0x640(r31)
/* 8051A8D4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8051A8D8  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 8051A8DC  2C 00 00 00 */	cmpwi r0, 0
/* 8051A8E0  40 82 00 0C */	bne lbl_8051A8EC
/* 8051A8E4  7F C3 F3 78 */	mr r3, r30
/* 8051A8E8  4B AF F3 94 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8051A8EC:
/* 8051A8EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051A8F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8051A8F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051A8F8  7C 08 03 A6 */	mtlr r0
/* 8051A8FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8051A900  4E 80 00 20 */	blr 
