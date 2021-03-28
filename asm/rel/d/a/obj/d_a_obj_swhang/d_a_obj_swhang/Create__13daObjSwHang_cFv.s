lbl_80CFBAC8:
/* 80CFBAC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CFBACC  7C 08 02 A6 */	mflr r0
/* 80CFBAD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CFBAD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFBAD8  4B 66 67 00 */	b _savegpr_28
/* 80CFBADC  7C 7D 1B 78 */	mr r29, r3
/* 80CFBAE0  3C 80 80 D0 */	lis r4, cNullVec__6Z2Calc@ha
/* 80CFBAE4  3B E4 D2 B8 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80CFBAE8  48 00 06 2D */	bl checkDown__13daObjSwHang_cFv
/* 80CFBAEC  2C 03 00 00 */	cmpwi r3, 0
/* 80CFBAF0  41 82 00 28 */	beq lbl_80CFBB18
/* 80CFBAF4  88 1D 07 30 */	lbz r0, 0x730(r29)
/* 80CFBAF8  54 00 10 3A */	slwi r0, r0, 2
/* 80CFBAFC  3C 60 80 D0 */	lis r3, l_pull_length@ha
/* 80CFBB00  38 63 D2 18 */	addi r3, r3, l_pull_length@l
/* 80CFBB04  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CFBB08  D0 1D 07 6C */	stfs f0, 0x76c(r29)
/* 80CFBB0C  7F A3 EB 78 */	mr r3, r29
/* 80CFBB10  48 00 0F 25 */	bl init_modeOnWait__13daObjSwHang_cFv
/* 80CFBB14  48 00 00 18 */	b lbl_80CFBB2C
lbl_80CFBB18:
/* 80CFBB18  3C 60 80 D0 */	lis r3, lit_3681@ha
/* 80CFBB1C  C0 03 D2 40 */	lfs f0, lit_3681@l(r3)
/* 80CFBB20  D0 1D 07 6C */	stfs f0, 0x76c(r29)
/* 80CFBB24  7F A3 EB 78 */	mr r3, r29
/* 80CFBB28  48 00 0B 71 */	bl init_modeOffWait__13daObjSwHang_cFv
lbl_80CFBB2C:
/* 80CFBB2C  7F A3 EB 78 */	mr r3, r29
/* 80CFBB30  4B FF FE A9 */	bl initBaseMtx__13daObjSwHang_cFv
/* 80CFBB34  80 9D 07 34 */	lwz r4, 0x734(r29)
/* 80CFBB38  28 04 00 00 */	cmplwi r4, 0
/* 80CFBB3C  41 82 00 20 */	beq lbl_80CFBB5C
/* 80CFBB40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFBB44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFBB48  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CFBB4C  7F A5 EB 78 */	mr r5, r29
/* 80CFBB50  4B 37 8E B8 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CFBB54  80 7D 07 34 */	lwz r3, 0x734(r29)
/* 80CFBB58  4B 37 FE 68 */	b Move__4dBgWFv
lbl_80CFBB5C:
/* 80CFBB5C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80CFBB60  38 03 00 24 */	addi r0, r3, 0x24
/* 80CFBB64  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80CFBB68  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80CFBB6C  38 80 00 00 */	li r4, 0
/* 80CFBB70  38 A0 00 FF */	li r5, 0xff
/* 80CFBB74  7F A6 EB 78 */	mr r6, r29
/* 80CFBB78  4B 38 7C E8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CFBB7C  88 1D 07 30 */	lbz r0, 0x730(r29)
/* 80CFBB80  2C 00 00 03 */	cmpwi r0, 3
/* 80CFBB84  40 80 00 10 */	bge lbl_80CFBB94
/* 80CFBB88  2C 00 00 00 */	cmpwi r0, 0
/* 80CFBB8C  41 82 00 14 */	beq lbl_80CFBBA0
/* 80CFBB90  48 00 00 10 */	b lbl_80CFBBA0
lbl_80CFBB94:
/* 80CFBB94  2C 00 00 05 */	cmpwi r0, 5
/* 80CFBB98  40 80 00 08 */	bge lbl_80CFBBA0
/* 80CFBB9C  48 00 00 14 */	b lbl_80CFBBB0
lbl_80CFBBA0:
/* 80CFBBA0  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 80CFBBA4  38 9F 00 84 */	addi r4, r31, 0x84
/* 80CFBBA8  4B 38 8E 8C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CFBBAC  48 00 00 1C */	b lbl_80CFBBC8
lbl_80CFBBB0:
/* 80CFBBB0  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 80CFBBB4  38 9F 00 C4 */	addi r4, r31, 0xc4
/* 80CFBBB8  4B 38 8E 7C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CFBBBC  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80CFBBC0  64 00 00 20 */	oris r0, r0, 0x20
/* 80CFBBC4  90 1D 04 9C */	stw r0, 0x49c(r29)
lbl_80CFBBC8:
/* 80CFBBC8  38 1D 05 BC */	addi r0, r29, 0x5bc
/* 80CFBBCC  90 1D 06 3C */	stw r0, 0x63c(r29)
/* 80CFBBD0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80CFBBD4  80 63 00 04 */	lwz r3, 4(r3)
/* 80CFBBD8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80CFBBDC  80 A3 00 00 */	lwz r5, 0(r3)
/* 80CFBBE0  7F A3 EB 78 */	mr r3, r29
/* 80CFBBE4  C0 25 00 3C */	lfs f1, 0x3c(r5)
/* 80CFBBE8  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 80CFBBEC  88 1D 07 30 */	lbz r0, 0x730(r29)
/* 80CFBBF0  54 00 10 3A */	slwi r0, r0, 2
/* 80CFBBF4  3C 80 80 D0 */	lis r4, l_pull_length@ha
/* 80CFBBF8  38 84 D2 18 */	addi r4, r4, l_pull_length@l
/* 80CFBBFC  7C 04 04 2E */	lfsx f0, r4, r0
/* 80CFBC00  EC 42 00 28 */	fsubs f2, f2, f0
/* 80CFBC04  C0 65 00 44 */	lfs f3, 0x44(r5)
/* 80CFBC08  C0 85 00 48 */	lfs f4, 0x48(r5)
/* 80CFBC0C  C0 A5 00 4C */	lfs f5, 0x4c(r5)
/* 80CFBC10  C0 C5 00 50 */	lfs f6, 0x50(r5)
/* 80CFBC14  4B 31 E9 34 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CFBC18  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80CFBC1C  80 63 00 04 */	lwz r3, 4(r3)
/* 80CFBC20  83 83 00 54 */	lwz r28, 0x54(r3)
/* 80CFBC24  3B C0 00 00 */	li r30, 0
/* 80CFBC28  3B FF 00 34 */	addi r31, r31, 0x34
/* 80CFBC2C  48 00 00 54 */	b lbl_80CFBC80
lbl_80CFBC30:
/* 80CFBC30  7F 83 E3 78 */	mr r3, r28
/* 80CFBC34  7F C4 F3 78 */	mr r4, r30
/* 80CFBC38  4B 5E 2E C0 */	b getName__10JUTNameTabCFUs
/* 80CFBC3C  88 1D 07 30 */	lbz r0, 0x730(r29)
/* 80CFBC40  54 00 10 3A */	slwi r0, r0, 2
/* 80CFBC44  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80CFBC48  4B 66 CD 4C */	b strcmp
/* 80CFBC4C  2C 03 00 00 */	cmpwi r3, 0
/* 80CFBC50  40 82 00 2C */	bne lbl_80CFBC7C
/* 80CFBC54  7F C0 07 34 */	extsh r0, r30
/* 80CFBC58  90 1D 07 68 */	stw r0, 0x768(r29)
/* 80CFBC5C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80CFBC60  80 63 00 04 */	lwz r3, 4(r3)
/* 80CFBC64  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80CFBC68  57 C0 13 BA */	rlwinm r0, r30, 2, 0xe, 0x1d
/* 80CFBC6C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80CFBC70  3C 60 80 D0 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80CFBC74  38 03 B9 38 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l
/* 80CFBC78  90 04 00 04 */	stw r0, 4(r4)
lbl_80CFBC7C:
/* 80CFBC7C  3B DE 00 01 */	addi r30, r30, 1
lbl_80CFBC80:
/* 80CFBC80  80 9D 05 B8 */	lwz r4, 0x5b8(r29)
/* 80CFBC84  80 64 00 04 */	lwz r3, 4(r4)
/* 80CFBC88  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 80CFBC8C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80CFBC90  7C 00 18 40 */	cmplw r0, r3
/* 80CFBC94  41 80 FF 9C */	blt lbl_80CFBC30
/* 80CFBC98  93 A4 00 14 */	stw r29, 0x14(r4)
/* 80CFBC9C  38 60 00 01 */	li r3, 1
/* 80CFBCA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFBCA4  4B 66 65 80 */	b _restgpr_28
/* 80CFBCA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CFBCAC  7C 08 03 A6 */	mtlr r0
/* 80CFBCB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80CFBCB4  4E 80 00 20 */	blr 
