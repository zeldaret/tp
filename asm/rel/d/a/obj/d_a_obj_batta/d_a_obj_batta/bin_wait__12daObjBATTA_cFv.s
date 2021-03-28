lbl_80BAB500:
/* 80BAB500  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BAB504  7C 08 02 A6 */	mflr r0
/* 80BAB508  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BAB50C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BAB510  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BAB514  7C 7E 1B 78 */	mr r30, r3
/* 80BAB518  3C 60 80 BB */	lis r3, lit_3774@ha
/* 80BAB51C  3B E3 C9 70 */	addi r31, r3, lit_3774@l
/* 80BAB520  80 1E 09 E8 */	lwz r0, 0x9e8(r30)
/* 80BAB524  2C 00 00 00 */	cmpwi r0, 0
/* 80BAB528  40 82 00 78 */	bne lbl_80BAB5A0
/* 80BAB52C  3C 60 80 BB */	lis r3, stringBase0@ha
/* 80BAB530  38 63 CA 64 */	addi r3, r3, stringBase0@l
/* 80BAB534  38 80 00 08 */	li r4, 8
/* 80BAB538  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BAB53C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BAB540  3C A5 00 02 */	addis r5, r5, 2
/* 80BAB544  38 C0 00 80 */	li r6, 0x80
/* 80BAB548  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BAB54C  4B 49 0D A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAB550  7C 64 1B 78 */	mr r4, r3
/* 80BAB554  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80BAB558  38 A0 00 02 */	li r5, 2
/* 80BAB55C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BAB560  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80BAB564  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80BAB568  C0 9F 00 20 */	lfs f4, 0x20(r31)
/* 80BAB56C  4B 46 59 04 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BAB570  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80BAB574  60 00 40 00 */	ori r0, r0, 0x4000
/* 80BAB578  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80BAB57C  38 00 00 00 */	li r0, 0
/* 80BAB580  98 1E 05 6D */	stb r0, 0x56d(r30)
/* 80BAB584  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BAB588  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BAB58C  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80BAB590  80 7E 09 E8 */	lwz r3, 0x9e8(r30)
/* 80BAB594  38 03 00 01 */	addi r0, r3, 1
/* 80BAB598  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80BAB59C  48 00 01 14 */	b lbl_80BAB6B0
lbl_80BAB5A0:
/* 80BAB5A0  2C 00 FF FF */	cmpwi r0, -1
/* 80BAB5A4  41 82 01 0C */	beq lbl_80BAB6B0
/* 80BAB5A8  88 1E 05 6C */	lbz r0, 0x56c(r30)
/* 80BAB5AC  28 00 00 00 */	cmplwi r0, 0
/* 80BAB5B0  41 82 01 00 */	beq lbl_80BAB6B0
/* 80BAB5B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BAB5B8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BAB5BC  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80BAB5C0  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 80BAB5C4  38 03 C0 00 */	addi r0, r3, -16384
/* 80BAB5C8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80BAB5CC  3C 60 80 BB */	lis r3, stringBase0@ha
/* 80BAB5D0  38 63 CA 64 */	addi r3, r3, stringBase0@l
/* 80BAB5D4  38 63 00 04 */	addi r3, r3, 4
/* 80BAB5D8  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80BAB5DC  4B 7B D3 B8 */	b strcmp
/* 80BAB5E0  2C 03 00 00 */	cmpwi r3, 0
/* 80BAB5E4  40 82 00 A0 */	bne lbl_80BAB684
/* 80BAB5E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BAB5EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BAB5F0  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80BAB5F4  2C 00 00 03 */	cmpwi r0, 3
/* 80BAB5F8  40 82 00 8C */	bne lbl_80BAB684
/* 80BAB5FC  38 00 00 01 */	li r0, 1
/* 80BAB600  98 1E 09 F0 */	stb r0, 0x9f0(r30)
/* 80BAB604  98 1E 05 6D */	stb r0, 0x56d(r30)
/* 80BAB608  38 00 00 00 */	li r0, 0
/* 80BAB60C  90 01 00 08 */	stw r0, 8(r1)
/* 80BAB610  38 7E 06 6C */	addi r3, r30, 0x66c
/* 80BAB614  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BAB618  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80BAB61C  7F C6 F3 78 */	mr r6, r30
/* 80BAB620  38 E0 00 01 */	li r7, 1
/* 80BAB624  39 1E 06 2C */	addi r8, r30, 0x62c
/* 80BAB628  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80BAB62C  39 40 00 00 */	li r10, 0
/* 80BAB630  4B 4C AC 18 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BAB634  38 7E 06 80 */	addi r3, r30, 0x680
/* 80BAB638  4B 4C D8 30 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BAB63C  38 7E 06 2C */	addi r3, r30, 0x62c
/* 80BAB640  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80BAB644  FC 40 08 90 */	fmr f2, f1
/* 80BAB648  4B 4C A9 10 */	b SetWall__12dBgS_AcchCirFff
/* 80BAB64C  38 00 00 01 */	li r0, 1
/* 80BAB650  98 1E 05 6D */	stb r0, 0x56d(r30)
/* 80BAB654  3C 60 80 BB */	lis r3, lit_4415@ha
/* 80BAB658  38 83 CB 30 */	addi r4, r3, lit_4415@l
/* 80BAB65C  80 64 00 00 */	lwz r3, 0(r4)
/* 80BAB660  80 04 00 04 */	lwz r0, 4(r4)
/* 80BAB664  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80BAB668  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BAB66C  80 04 00 08 */	lwz r0, 8(r4)
/* 80BAB670  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BAB674  7F C3 F3 78 */	mr r3, r30
/* 80BAB678  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BAB67C  4B FF E7 E1 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
/* 80BAB680  48 00 00 30 */	b lbl_80BAB6B0
lbl_80BAB684:
/* 80BAB684  3C 60 80 BB */	lis r3, lit_4418@ha
/* 80BAB688  38 83 CB 3C */	addi r4, r3, lit_4418@l
/* 80BAB68C  80 64 00 00 */	lwz r3, 0(r4)
/* 80BAB690  80 04 00 04 */	lwz r0, 4(r4)
/* 80BAB694  90 61 00 10 */	stw r3, 0x10(r1)
/* 80BAB698  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAB69C  80 04 00 08 */	lwz r0, 8(r4)
/* 80BAB6A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BAB6A4  7F C3 F3 78 */	mr r3, r30
/* 80BAB6A8  38 81 00 10 */	addi r4, r1, 0x10
/* 80BAB6AC  4B FF E7 B1 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
lbl_80BAB6B0:
/* 80BAB6B0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BAB6B4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BAB6B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BAB6BC  7C 08 03 A6 */	mtlr r0
/* 80BAB6C0  38 21 00 30 */	addi r1, r1, 0x30
/* 80BAB6C4  4E 80 00 20 */	blr 
