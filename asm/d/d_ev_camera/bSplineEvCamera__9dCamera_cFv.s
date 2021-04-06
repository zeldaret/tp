lbl_8009544C:
/* 8009544C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80095450  7C 08 02 A6 */	mflr r0
/* 80095454  90 01 00 74 */	stw r0, 0x74(r1)
/* 80095458  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8009545C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80095460  7C 7E 1B 78 */	mr r30, r3
/* 80095464  3B FE 03 E8 */	addi r31, r30, 0x3e8
/* 80095468  80 03 01 74 */	lwz r0, 0x174(r3)
/* 8009546C  28 00 00 00 */	cmplwi r0, 0
/* 80095470  40 82 01 18 */	bne lbl_80095588
/* 80095474  38 00 00 00 */	li r0, 0
/* 80095478  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 8009547C  38 00 27 0F */	li r0, 0x270f
/* 80095480  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80095484  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 80095488  38 84 AA F4 */	addi r4, r4, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8009548C  38 A4 01 9B */	addi r5, r4, 0x19b
/* 80095490  7F E4 FB 78 */	mr r4, r31
/* 80095494  4B FF 3A 89 */	bl getEvXyzListData__9dCamera_cFPP4cXyzPc
/* 80095498  2C 03 00 00 */	cmpwi r3, 0
/* 8009549C  41 82 00 18 */	beq lbl_800954B4
/* 800954A0  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 800954A4  7C 00 18 00 */	cmpw r0, r3
/* 800954A8  40 81 00 14 */	ble lbl_800954BC
/* 800954AC  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800954B0  48 00 00 0C */	b lbl_800954BC
lbl_800954B4:
/* 800954B4  38 60 00 01 */	li r3, 1
/* 800954B8  48 00 02 14 */	b lbl_800956CC
lbl_800954BC:
/* 800954BC  3C 60 80 38 */	lis r3, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 800954C0  38 63 AA F4 */	addi r3, r3, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 800954C4  38 A3 01 A3 */	addi r5, r3, 0x1a3
/* 800954C8  7F C3 F3 78 */	mr r3, r30
/* 800954CC  38 9F 00 04 */	addi r4, r31, 4
/* 800954D0  4B FF 3A 4D */	bl getEvXyzListData__9dCamera_cFPP4cXyzPc
/* 800954D4  2C 03 00 00 */	cmpwi r3, 0
/* 800954D8  41 82 00 18 */	beq lbl_800954F0
/* 800954DC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 800954E0  7C 00 18 00 */	cmpw r0, r3
/* 800954E4  40 81 00 14 */	ble lbl_800954F8
/* 800954E8  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800954EC  48 00 00 0C */	b lbl_800954F8
lbl_800954F0:
/* 800954F0  38 60 00 01 */	li r3, 1
/* 800954F4  48 00 01 D8 */	b lbl_800956CC
lbl_800954F8:
/* 800954F8  3C 60 80 38 */	lis r3, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 800954FC  38 63 AA F4 */	addi r3, r3, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 80095500  38 A3 01 A8 */	addi r5, r3, 0x1a8
/* 80095504  7F C3 F3 78 */	mr r3, r30
/* 80095508  38 9F 00 08 */	addi r4, r31, 8
/* 8009550C  4B FF 39 4D */	bl getEvFloatListData__9dCamera_cFPPfPc
/* 80095510  2C 03 00 00 */	cmpwi r3, 0
/* 80095514  41 82 00 18 */	beq lbl_8009552C
/* 80095518  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8009551C  7C 00 18 00 */	cmpw r0, r3
/* 80095520  40 81 00 14 */	ble lbl_80095534
/* 80095524  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80095528  48 00 00 0C */	b lbl_80095534
lbl_8009552C:
/* 8009552C  38 60 00 01 */	li r3, 1
/* 80095530  48 00 01 9C */	b lbl_800956CC
lbl_80095534:
/* 80095534  7F C3 F3 78 */	mr r3, r30
/* 80095538  38 9F 00 0C */	addi r4, r31, 0xc
/* 8009553C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 80095540  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 80095544  4B FF 37 6D */	bl getEvIntData__9dCamera_cFPiPc
/* 80095548  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8009554C  40 82 00 0C */	bne lbl_80095558
/* 80095550  38 60 00 01 */	li r3, 1
/* 80095554  48 00 01 78 */	b lbl_800956CC
lbl_80095558:
/* 80095558  7F C3 F3 78 */	mr r3, r30
/* 8009555C  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 80095560  38 84 AA F4 */	addi r4, r4, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 80095564  38 84 00 36 */	addi r4, r4, 0x36
/* 80095568  4B FF 3F 5D */	bl getEvActor__9dCamera_cFPc
/* 8009556C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 80095570  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80095574  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80095578  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8009557C  48 00 22 FD */	bl Init__14d2DBSplinePathFll
/* 80095580  38 00 00 01 */	li r0, 1
/* 80095584  98 1E 01 58 */	stb r0, 0x158(r30)
lbl_80095588:
/* 80095588  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8009558C  28 00 00 00 */	cmplwi r0, 0
/* 80095590  40 82 01 38 */	bne lbl_800956C8
/* 80095594  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80095598  48 00 23 6D */	bl Step__14d2DBSplinePathFv
/* 8009559C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800955A0  41 82 01 28 */	beq lbl_800956C8
/* 800955A4  38 61 00 38 */	addi r3, r1, 0x38
/* 800955A8  38 9E 05 D8 */	addi r4, r30, 0x5d8
/* 800955AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 800955B0  48 00 24 BD */	bl Calc__14d2DBSplinePathFP4cXyz
/* 800955B4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800955B8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800955BC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800955C0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800955C4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800955C8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800955CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 800955D0  38 9E 05 D8 */	addi r4, r30, 0x5d8
/* 800955D4  80 BF 00 04 */	lwz r5, 4(r31)
/* 800955D8  48 00 24 95 */	bl Calc__14d2DBSplinePathFP4cXyz
/* 800955DC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800955E0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800955E4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800955E8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800955EC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800955F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800955F4  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 800955F8  28 05 00 00 */	cmplwi r5, 0
/* 800955FC  41 82 00 5C */	beq lbl_80095658
/* 80095600  38 61 00 20 */	addi r3, r1, 0x20
/* 80095604  7F C4 F3 78 */	mr r4, r30
/* 80095608  38 C1 00 50 */	addi r6, r1, 0x50
/* 8009560C  48 0C F7 61 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80095610  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80095614  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 80095618  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8009561C  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 80095620  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80095624  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 80095628  38 61 00 14 */	addi r3, r1, 0x14
/* 8009562C  7F C4 F3 78 */	mr r4, r30
/* 80095630  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 80095634  38 C1 00 44 */	addi r6, r1, 0x44
/* 80095638  48 0C F7 35 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8009563C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80095640  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 80095644  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80095648  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 8009564C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80095650  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 80095654  48 00 00 34 */	b lbl_80095688
lbl_80095658:
/* 80095658  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8009565C  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 80095660  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80095664  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 80095668  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8009566C  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 80095670  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80095674  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 80095678  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8009567C  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 80095680  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80095684  D0 1E 00 78 */	stfs f0, 0x78(r30)
lbl_80095688:
/* 80095688  38 61 00 08 */	addi r3, r1, 8
/* 8009568C  38 9E 00 70 */	addi r4, r30, 0x70
/* 80095690  38 BE 00 64 */	addi r5, r30, 0x64
/* 80095694  48 1D 14 A1 */	bl __mi__4cXyzCFRC3Vec
/* 80095698  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8009569C  38 81 00 08 */	addi r4, r1, 8
/* 800956A0  48 1D C3 D1 */	bl Val__7cSGlobeFRC4cXyz
/* 800956A4  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 800956A8  80 9F 00 08 */	lwz r4, 8(r31)
/* 800956AC  48 00 24 75 */	bl Calc__14d2DBSplinePathFPf
/* 800956B0  D0 3E 00 80 */	stfs f1, 0x80(r30)
/* 800956B4  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 800956B8  2C 00 00 03 */	cmpwi r0, 3
/* 800956BC  40 82 00 0C */	bne lbl_800956C8
/* 800956C0  38 00 00 01 */	li r0, 1
/* 800956C4  98 1F 00 1C */	stb r0, 0x1c(r31)
lbl_800956C8:
/* 800956C8  88 7F 00 1C */	lbz r3, 0x1c(r31)
lbl_800956CC:
/* 800956CC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800956D0  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800956D4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800956D8  7C 08 03 A6 */	mtlr r0
/* 800956DC  38 21 00 70 */	addi r1, r1, 0x70
/* 800956E0  4E 80 00 20 */	blr 
