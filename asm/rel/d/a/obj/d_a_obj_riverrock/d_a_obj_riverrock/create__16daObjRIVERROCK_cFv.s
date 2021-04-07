lbl_80CBD3C0:
/* 80CBD3C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CBD3C4  7C 08 02 A6 */	mflr r0
/* 80CBD3C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CBD3CC  39 61 00 50 */	addi r11, r1, 0x50
/* 80CBD3D0  4B 6A 4E 0D */	bl _savegpr_29
/* 80CBD3D4  7C 7D 1B 78 */	mr r29, r3
/* 80CBD3D8  3C 80 80 CC */	lis r4, lit_3631@ha /* 0x80CBDA5C@ha */
/* 80CBD3DC  3B E4 DA 5C */	addi r31, r4, lit_3631@l /* 0x80CBDA5C@l */
/* 80CBD3E0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CBD3E4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CBD3E8  40 82 00 BC */	bne lbl_80CBD4A4
/* 80CBD3EC  7F A0 EB 79 */	or. r0, r29, r29
/* 80CBD3F0  41 82 00 A8 */	beq lbl_80CBD498
/* 80CBD3F4  7C 1E 03 78 */	mr r30, r0
/* 80CBD3F8  4B 3B B2 2D */	bl __ct__16dBgS_MoveBgActorFv
/* 80CBD3FC  3C 60 80 CC */	lis r3, __vt__16daObjRIVERROCK_c@ha /* 0x80CBDBAC@ha */
/* 80CBD400  38 03 DB AC */	addi r0, r3, __vt__16daObjRIVERROCK_c@l /* 0x80CBDBAC@l */
/* 80CBD404  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CBD408  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80CBD40C  4B 60 14 39 */	bl __ct__16Z2SoundObjSimpleFv
/* 80CBD410  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CBD414  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CBD418  90 1E 06 38 */	stw r0, 0x638(r30)
/* 80CBD41C  38 7E 06 3C */	addi r3, r30, 0x63c
/* 80CBD420  4B 3C 63 41 */	bl __ct__10dCcD_GSttsFv
/* 80CBD424  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CBD428  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CBD42C  90 7E 06 38 */	stw r3, 0x638(r30)
/* 80CBD430  38 03 00 20 */	addi r0, r3, 0x20
/* 80CBD434  90 1E 06 3C */	stw r0, 0x63c(r30)
/* 80CBD438  3B DE 06 5C */	addi r30, r30, 0x65c
/* 80CBD43C  7F C3 F3 78 */	mr r3, r30
/* 80CBD440  4B 3C 65 E9 */	bl __ct__12dCcD_GObjInfFv
/* 80CBD444  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CBD448  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CBD44C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CBD450  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha /* 0x80CBDBA0@ha */
/* 80CBD454  38 03 DB A0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CBDBA0@l */
/* 80CBD458  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80CBD45C  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CBDB94@ha */
/* 80CBD460  38 03 DB 94 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CBDB94@l */
/* 80CBD464  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CBD468  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CBD46C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CBD470  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CBD474  38 03 00 58 */	addi r0, r3, 0x58
/* 80CBD478  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CBD47C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CBD480  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CBD484  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CBD488  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CBD48C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CBD490  38 03 00 84 */	addi r0, r3, 0x84
/* 80CBD494  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80CBD498:
/* 80CBD498  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80CBD49C  60 00 00 08 */	ori r0, r0, 8
/* 80CBD4A0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80CBD4A4:
/* 80CBD4A4  38 7D 06 18 */	addi r3, r29, 0x618
/* 80CBD4A8  3C 80 80 CC */	lis r4, l_arcName@ha /* 0x80CBDB40@ha */
/* 80CBD4AC  38 84 DB 40 */	addi r4, r4, l_arcName@l /* 0x80CBDB40@l */
/* 80CBD4B0  80 84 00 00 */	lwz r4, 0(r4)
/* 80CBD4B4  4B 36 FA 09 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CBD4B8  7C 7E 1B 78 */	mr r30, r3
/* 80CBD4BC  2C 1E 00 04 */	cmpwi r30, 4
/* 80CBD4C0  40 82 02 40 */	bne lbl_80CBD700
/* 80CBD4C4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80CBD4C8  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80CBD4CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBD4D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBD4D4  3C 63 00 02 */	addis r3, r3, 2
/* 80CBD4D8  3C 80 80 CC */	lis r4, l_arcName@ha /* 0x80CBDB40@ha */
/* 80CBD4DC  38 84 DB 40 */	addi r4, r4, l_arcName@l /* 0x80CBDB40@l */
/* 80CBD4E0  80 84 00 00 */	lwz r4, 0(r4)
/* 80CBD4E4  3C A0 80 CC */	lis r5, d_a_obj_riverrock__stringBase0@ha /* 0x80CBDB14@ha */
/* 80CBD4E8  38 A5 DB 14 */	addi r5, r5, d_a_obj_riverrock__stringBase0@l /* 0x80CBDB14@l */
/* 80CBD4EC  38 A5 00 1A */	addi r5, r5, 0x1a
/* 80CBD4F0  38 63 C2 F8 */	addi r3, r3, -15624
/* 80CBD4F4  4B 37 F1 C5 */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80CBD4F8  7C 65 1B 78 */	mr r5, r3
/* 80CBD4FC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CBD500  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80CBD504  98 1D 05 A8 */	stb r0, 0x5a8(r29)
/* 80CBD508  7F A3 EB 78 */	mr r3, r29
/* 80CBD50C  3C 80 80 CC */	lis r4, l_arcName@ha /* 0x80CBDB40@ha */
/* 80CBD510  38 84 DB 40 */	addi r4, r4, l_arcName@l /* 0x80CBDB40@l */
/* 80CBD514  80 84 00 00 */	lwz r4, 0(r4)
/* 80CBD518  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80CBD51C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80CBD520  38 E0 1B F0 */	li r7, 0x1bf0
/* 80CBD524  39 00 00 00 */	li r8, 0
/* 80CBD528  4B 3B B2 95 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CBD52C  7C 7E 1B 78 */	mr r30, r3
/* 80CBD530  2C 1E 00 05 */	cmpwi r30, 5
/* 80CBD534  40 82 00 08 */	bne lbl_80CBD53C
/* 80CBD538  48 00 01 CC */	b lbl_80CBD704
lbl_80CBD53C:
/* 80CBD53C  80 7D 06 14 */	lwz r3, 0x614(r29)
/* 80CBD540  80 63 00 04 */	lwz r3, 4(r3)
/* 80CBD544  4B 35 15 3D */	bl mDoExt_setupStageTexture__FP12J3DModelData
/* 80CBD548  80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 80CBD54C  3C 03 00 01 */	addis r0, r3, 1
/* 80CBD550  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CBD554  41 82 00 80 */	beq lbl_80CBD5D4
/* 80CBD558  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80CBD55C  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80CBD560  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80CBD564  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 80CBD568  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBD56C  3C 60 43 30 */	lis r3, 0x4330
/* 80CBD570  90 61 00 20 */	stw r3, 0x20(r1)
/* 80CBD574  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CBD578  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CBD57C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CBD580  EC 03 00 2A */	fadds f0, f3, f0
/* 80CBD584  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 80CBD588  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CBD58C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CBD590  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CBD594  90 61 00 28 */	stw r3, 0x28(r1)
/* 80CBD598  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80CBD59C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CBD5A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CBD5A4  EC 03 00 2A */	fadds f0, f3, f0
/* 80CBD5A8  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 80CBD5AC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CBD5B0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80CBD5B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CBD5B8  90 61 00 30 */	stw r3, 0x30(r1)
/* 80CBD5BC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80CBD5C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CBD5C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CBD5C8  EC 03 00 2A */	fadds f0, f3, f0
/* 80CBD5CC  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 80CBD5D0  48 00 00 14 */	b lbl_80CBD5E4
lbl_80CBD5D4:
/* 80CBD5D4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80CBD5D8  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 80CBD5DC  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 80CBD5E0  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
lbl_80CBD5E4:
/* 80CBD5E4  3C 60 80 CC */	lis r3, data_80CBDBE8@ha /* 0x80CBDBE8@ha */
/* 80CBD5E8  8C 03 DB E8 */	lbzu r0, data_80CBDBE8@l(r3)  /* 0x80CBDBE8@l */
/* 80CBD5EC  28 00 00 00 */	cmplwi r0, 0
/* 80CBD5F0  40 82 00 20 */	bne lbl_80CBD610
/* 80CBD5F4  38 00 00 01 */	li r0, 1
/* 80CBD5F8  98 03 00 00 */	stb r0, 0(r3)
/* 80CBD5FC  98 1D 07 98 */	stb r0, 0x798(r29)
/* 80CBD600  38 00 FF FF */	li r0, -1
/* 80CBD604  3C 60 80 CC */	lis r3, l_HIO@ha /* 0x80CBDBF8@ha */
/* 80CBD608  38 63 DB F8 */	addi r3, r3, l_HIO@l /* 0x80CBDBF8@l */
/* 80CBD60C  98 03 00 04 */	stb r0, 4(r3)
lbl_80CBD610:
/* 80CBD610  80 7D 06 14 */	lwz r3, 0x614(r29)
/* 80CBD614  38 03 00 24 */	addi r0, r3, 0x24
/* 80CBD618  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80CBD61C  C0 9D 04 D8 */	lfs f4, 0x4d8(r29)
/* 80CBD620  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80CBD624  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80CBD628  EC 00 18 2A */	fadds f0, f0, f3
/* 80CBD62C  C0 5D 04 D0 */	lfs f2, 0x4d0(r29)
/* 80CBD630  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CBD634  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CBD638  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80CBD63C  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80CBD640  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 80CBD644  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CBD648  EC 03 00 2A */	fadds f0, f3, f0
/* 80CBD64C  D0 41 00 08 */	stfs f2, 8(r1)
/* 80CBD650  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CBD654  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80CBD658  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 80CBD65C  38 81 00 08 */	addi r4, r1, 8
/* 80CBD660  38 A0 00 02 */	li r5, 2
/* 80CBD664  81 9D 06 00 */	lwz r12, 0x600(r29)
/* 80CBD668  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CBD66C  7D 89 03 A6 */	mtctr r12
/* 80CBD670  4E 80 04 21 */	bctrl 
/* 80CBD674  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80CBD678  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80CBD67C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80CBD680  EC 21 00 2A */	fadds f1, f1, f0
/* 80CBD684  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CBD688  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 80CBD68C  D0 3D 05 D4 */	stfs f1, 0x5d4(r29)
/* 80CBD690  D0 5D 05 D8 */	stfs f2, 0x5d8(r29)
/* 80CBD694  7F A3 EB 78 */	mr r3, r29
/* 80CBD698  4B FF F0 5D */	bl initCcCylinder__16daObjRIVERROCK_cFv
/* 80CBD69C  88 9D 05 A8 */	lbz r4, 0x5a8(r29)
/* 80CBD6A0  28 04 00 FF */	cmplwi r4, 0xff
/* 80CBD6A4  41 82 00 2C */	beq lbl_80CBD6D0
/* 80CBD6A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBD6AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBD6B0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CBD6B4  7C 05 07 74 */	extsb r5, r0
/* 80CBD6B8  4B 37 7C A9 */	bl isSwitch__10dSv_info_cCFii
/* 80CBD6BC  2C 03 00 00 */	cmpwi r3, 0
/* 80CBD6C0  41 82 00 10 */	beq lbl_80CBD6D0
/* 80CBD6C4  7F A3 EB 78 */	mr r3, r29
/* 80CBD6C8  4B FF F7 65 */	bl BreakSet__16daObjRIVERROCK_cFv
/* 80CBD6CC  48 00 00 0C */	b lbl_80CBD6D8
lbl_80CBD6D0:
/* 80CBD6D0  38 00 00 00 */	li r0, 0
/* 80CBD6D4  90 1D 05 A0 */	stw r0, 0x5a0(r29)
lbl_80CBD6D8:
/* 80CBD6D8  7F A3 EB 78 */	mr r3, r29
/* 80CBD6DC  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80CBD6E0  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 80CBD6E4  FC 60 08 90 */	fmr f3, f1
/* 80CBD6E8  C0 9F 00 9C */	lfs f4, 0x9c(r31)
/* 80CBD6EC  FC A0 20 90 */	fmr f5, f4
/* 80CBD6F0  FC C0 20 90 */	fmr f6, f4
/* 80CBD6F4  4B 35 CE 55 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CBD6F8  7F A3 EB 78 */	mr r3, r29
/* 80CBD6FC  4B FF FC 2D */	bl daObjRIVERROCK_Execute__FP16daObjRIVERROCK_c
lbl_80CBD700:
/* 80CBD700  7F C3 F3 78 */	mr r3, r30
lbl_80CBD704:
/* 80CBD704  39 61 00 50 */	addi r11, r1, 0x50
/* 80CBD708  4B 6A 4B 21 */	bl _restgpr_29
/* 80CBD70C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CBD710  7C 08 03 A6 */	mtlr r0
/* 80CBD714  38 21 00 50 */	addi r1, r1, 0x50
/* 80CBD718  4E 80 00 20 */	blr 
