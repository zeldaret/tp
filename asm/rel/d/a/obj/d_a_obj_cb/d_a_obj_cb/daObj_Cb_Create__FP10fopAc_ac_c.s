lbl_80BC5408:
/* 80BC5408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC540C  7C 08 02 A6 */	mflr r0
/* 80BC5410  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC5414  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC5418  4B 79 CD C5 */	bl _savegpr_29
/* 80BC541C  7C 7F 1B 78 */	mr r31, r3
/* 80BC5420  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BC5424  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC5428  40 82 00 E8 */	bne lbl_80BC5510
/* 80BC542C  7F E0 FB 79 */	or. r0, r31, r31
/* 80BC5430  41 82 00 D4 */	beq lbl_80BC5504
/* 80BC5434  7C 1E 03 78 */	mr r30, r0
/* 80BC5438  4B 45 37 2D */	bl __ct__10fopAc_ac_cFv
/* 80BC543C  38 7E 05 74 */	addi r3, r30, 0x574
/* 80BC5440  4B 6F 94 05 */	bl __ct__16Z2SoundObjSimpleFv
/* 80BC5444  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80BC5448  4B 4B 0A 65 */	bl __ct__12dBgS_AcchCirFv
/* 80BC544C  3B BE 05 EC */	addi r29, r30, 0x5ec
/* 80BC5450  7F A3 EB 78 */	mr r3, r29
/* 80BC5454  4B 4B 0C 4D */	bl __ct__9dBgS_AcchFv
/* 80BC5458  3C 60 80 BC */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BC58BC@ha */
/* 80BC545C  38 63 58 BC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BC58BC@l */
/* 80BC5460  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80BC5464  38 03 00 0C */	addi r0, r3, 0xc
/* 80BC5468  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80BC546C  38 03 00 18 */	addi r0, r3, 0x18
/* 80BC5470  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80BC5474  38 7D 00 14 */	addi r3, r29, 0x14
/* 80BC5478  4B 4B 39 F1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BC547C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BC5480  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BC5484  90 1E 08 14 */	stw r0, 0x814(r30)
/* 80BC5488  38 7E 08 18 */	addi r3, r30, 0x818
/* 80BC548C  4B 4B E2 D5 */	bl __ct__10dCcD_GSttsFv
/* 80BC5490  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BC5494  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BC5498  90 7E 08 14 */	stw r3, 0x814(r30)
/* 80BC549C  38 03 00 20 */	addi r0, r3, 0x20
/* 80BC54A0  90 1E 08 18 */	stw r0, 0x818(r30)
/* 80BC54A4  3B BE 08 38 */	addi r29, r30, 0x838
/* 80BC54A8  7F A3 EB 78 */	mr r3, r29
/* 80BC54AC  4B 4B E5 7D */	bl __ct__12dCcD_GObjInfFv
/* 80BC54B0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BC54B4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BC54B8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BC54BC  3C 60 80 BC */	lis r3, __vt__8cM3dGAab@ha /* 0x80BC58B0@ha */
/* 80BC54C0  38 03 58 B0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BC58B0@l */
/* 80BC54C4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BC54C8  3C 60 80 BC */	lis r3, __vt__8cM3dGSph@ha /* 0x80BC58A4@ha */
/* 80BC54CC  38 03 58 A4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BC58A4@l */
/* 80BC54D0  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BC54D4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BC54D8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BC54DC  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BC54E0  38 03 00 58 */	addi r0, r3, 0x58
/* 80BC54E4  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BC54E8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BC54EC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BC54F0  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BC54F4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BC54F8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BC54FC  38 03 00 84 */	addi r0, r3, 0x84
/* 80BC5500  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_80BC5504:
/* 80BC5504  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BC5508  60 00 00 08 */	ori r0, r0, 8
/* 80BC550C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BC5510:
/* 80BC5510  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BC5514  3C 80 80 BC */	lis r4, d_a_obj_cb__stringBase0@ha /* 0x80BC584C@ha */
/* 80BC5518  38 84 58 4C */	addi r4, r4, d_a_obj_cb__stringBase0@l /* 0x80BC584C@l */
/* 80BC551C  4B 46 79 A1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BC5520  7C 7E 1B 78 */	mr r30, r3
/* 80BC5524  2C 1E 00 04 */	cmpwi r30, 4
/* 80BC5528  40 82 00 F8 */	bne lbl_80BC5620
/* 80BC552C  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80BC5530  2C 00 00 00 */	cmpwi r0, 0
/* 80BC5534  41 82 00 0C */	beq lbl_80BC5540
/* 80BC5538  38 00 00 05 */	li r0, 5
/* 80BC553C  B0 1F 05 96 */	sth r0, 0x596(r31)
lbl_80BC5540:
/* 80BC5540  7F E3 FB 78 */	mr r3, r31
/* 80BC5544  3C 80 80 BC */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80BC52CC@ha */
/* 80BC5548  38 84 52 CC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80BC52CC@l */
/* 80BC554C  38 A0 08 00 */	li r5, 0x800
/* 80BC5550  4B 45 4F 61 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BC5554  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC5558  40 82 00 0C */	bne lbl_80BC5564
/* 80BC555C  38 60 00 05 */	li r3, 5
/* 80BC5560  48 00 00 C4 */	b lbl_80BC5624
lbl_80BC5564:
/* 80BC5564  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80BC5568  2C 00 00 00 */	cmpwi r0, 0
/* 80BC556C  40 82 00 34 */	bne lbl_80BC55A0
/* 80BC5570  80 9F 07 F8 */	lwz r4, 0x7f8(r31)
/* 80BC5574  28 04 00 00 */	cmplwi r4, 0
/* 80BC5578  41 82 00 28 */	beq lbl_80BC55A0
/* 80BC557C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC5580  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC5584  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BC5588  7F E5 FB 78 */	mr r5, r31
/* 80BC558C  4B 4A F4 7D */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80BC5590  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC5594  41 82 00 0C */	beq lbl_80BC55A0
/* 80BC5598  38 60 00 05 */	li r3, 5
/* 80BC559C  48 00 00 88 */	b lbl_80BC5624
lbl_80BC55A0:
/* 80BC55A0  3C 60 80 BC */	lis r3, data_80BC58F8@ha /* 0x80BC58F8@ha */
/* 80BC55A4  8C 03 58 F8 */	lbzu r0, data_80BC58F8@l(r3)  /* 0x80BC58F8@l */
/* 80BC55A8  28 00 00 00 */	cmplwi r0, 0
/* 80BC55AC  40 82 00 20 */	bne lbl_80BC55CC
/* 80BC55B0  38 00 00 01 */	li r0, 1
/* 80BC55B4  98 1F 09 78 */	stb r0, 0x978(r31)
/* 80BC55B8  98 03 00 00 */	stb r0, 0(r3)
/* 80BC55BC  38 00 FF FF */	li r0, -1
/* 80BC55C0  3C 60 80 BC */	lis r3, l_HIO@ha /* 0x80BC5908@ha */
/* 80BC55C4  38 63 59 08 */	addi r3, r3, l_HIO@l /* 0x80BC5908@l */
/* 80BC55C8  98 03 00 04 */	stb r0, 4(r3)
lbl_80BC55CC:
/* 80BC55CC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BC55D0  38 03 00 24 */	addi r0, r3, 0x24
/* 80BC55D4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BC55D8  38 00 00 00 */	li r0, 0
/* 80BC55DC  90 01 00 08 */	stw r0, 8(r1)
/* 80BC55E0  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80BC55E4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BC55E8  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80BC55EC  7F E6 FB 78 */	mr r6, r31
/* 80BC55F0  38 E0 00 01 */	li r7, 1
/* 80BC55F4  39 1F 05 AC */	addi r8, r31, 0x5ac
/* 80BC55F8  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80BC55FC  39 40 00 00 */	li r10, 0
/* 80BC5600  4B 4B 0C 49 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BC5604  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80BC5608  3C 80 80 BC */	lis r4, lit_4038@ha /* 0x80BC5848@ha */
/* 80BC560C  C0 24 58 48 */	lfs f1, lit_4038@l(r4)  /* 0x80BC5848@l */
/* 80BC5610  FC 40 08 90 */	fmr f2, f1
/* 80BC5614  4B 4B 09 45 */	bl SetWall__12dBgS_AcchCirFff
/* 80BC5618  7F E3 FB 78 */	mr r3, r31
/* 80BC561C  4B FF FB 9D */	bl daObj_Cb_Execute__FP12obj_cb_class
lbl_80BC5620:
/* 80BC5620  7F C3 F3 78 */	mr r3, r30
lbl_80BC5624:
/* 80BC5624  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC5628  4B 79 CC 01 */	bl _restgpr_29
/* 80BC562C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC5630  7C 08 03 A6 */	mtlr r0
/* 80BC5634  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC5638  4E 80 00 20 */	blr 
