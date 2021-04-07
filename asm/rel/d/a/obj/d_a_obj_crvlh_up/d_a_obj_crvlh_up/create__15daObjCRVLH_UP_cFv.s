lbl_80BD53F0:
/* 80BD53F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BD53F4  7C 08 02 A6 */	mflr r0
/* 80BD53F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BD53FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD5400  4B 78 CD DD */	bl _savegpr_29
/* 80BD5404  7C 7E 1B 78 */	mr r30, r3
/* 80BD5408  3C 80 80 BD */	lis r4, lit_3672@ha /* 0x80BD59FC@ha */
/* 80BD540C  3B E4 59 FC */	addi r31, r4, lit_3672@l /* 0x80BD59FC@l */
/* 80BD5410  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BD5414  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BD5418  40 82 00 D4 */	bne lbl_80BD54EC
/* 80BD541C  7F C0 F3 79 */	or. r0, r30, r30
/* 80BD5420  41 82 00 C0 */	beq lbl_80BD54E0
/* 80BD5424  7C 1D 03 78 */	mr r29, r0
/* 80BD5428  4B 4A 31 FD */	bl __ct__16dBgS_MoveBgActorFv
/* 80BD542C  3C 60 80 BD */	lis r3, __vt__15daObjCRVLH_UP_c@ha /* 0x80BD5B08@ha */
/* 80BD5430  38 03 5B 08 */	addi r0, r3, __vt__15daObjCRVLH_UP_c@l /* 0x80BD5B08@l */
/* 80BD5434  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80BD5438  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80BD543C  3C 80 80 BD */	lis r4, __ct__4cXyzFv@ha /* 0x80BD56E0@ha */
/* 80BD5440  38 84 56 E0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BD56E0@l */
/* 80BD5444  3C A0 80 BD */	lis r5, __dt__4cXyzFv@ha /* 0x80BD56A4@ha */
/* 80BD5448  38 A5 56 A4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BD56A4@l */
/* 80BD544C  38 C0 00 0C */	li r6, 0xc
/* 80BD5450  38 E0 00 03 */	li r7, 3
/* 80BD5454  4B 78 C9 0D */	bl __construct_array
/* 80BD5458  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BD545C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BD5460  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80BD5464  38 7D 06 10 */	addi r3, r29, 0x610
/* 80BD5468  4B 4A E2 F9 */	bl __ct__10dCcD_GSttsFv
/* 80BD546C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BD5470  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BD5474  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 80BD5478  38 03 00 20 */	addi r0, r3, 0x20
/* 80BD547C  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80BD5480  3B BD 06 30 */	addi r29, r29, 0x630
/* 80BD5484  7F A3 EB 78 */	mr r3, r29
/* 80BD5488  4B 4A E5 A1 */	bl __ct__12dCcD_GObjInfFv
/* 80BD548C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BD5490  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BD5494  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BD5498  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha /* 0x80BD5AFC@ha */
/* 80BD549C  38 03 5A FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BD5AFC@l */
/* 80BD54A0  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BD54A4  3C 60 80 BD */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BD5AF0@ha */
/* 80BD54A8  38 03 5A F0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BD5AF0@l */
/* 80BD54AC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BD54B0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BD54B4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BD54B8  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BD54BC  38 03 00 58 */	addi r0, r3, 0x58
/* 80BD54C0  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BD54C4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BD54C8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BD54CC  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BD54D0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BD54D4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BD54D8  38 03 00 84 */	addi r0, r3, 0x84
/* 80BD54DC  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80BD54E0:
/* 80BD54E0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BD54E4  60 00 00 08 */	ori r0, r0, 8
/* 80BD54E8  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BD54EC:
/* 80BD54EC  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80BD54F0  3C 80 80 BD */	lis r4, l_arcName@ha /* 0x80BD5A9C@ha */
/* 80BD54F4  38 84 5A 9C */	addi r4, r4, l_arcName@l /* 0x80BD5A9C@l */
/* 80BD54F8  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD54FC  4B 45 79 C1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BD5500  7C 7D 1B 78 */	mr r29, r3
/* 80BD5504  2C 1D 00 04 */	cmpwi r29, 4
/* 80BD5508  40 82 00 F0 */	bne lbl_80BD55F8
/* 80BD550C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80BD5510  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BD5514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD5518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD551C  3C 63 00 02 */	addis r3, r3, 2
/* 80BD5520  3C 80 80 BD */	lis r4, l_arcName@ha /* 0x80BD5A9C@ha */
/* 80BD5524  38 84 5A 9C */	addi r4, r4, l_arcName@l /* 0x80BD5A9C@l */
/* 80BD5528  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD552C  3C A0 80 BD */	lis r5, d_a_obj_crvlh_up__stringBase0@ha /* 0x80BD5A64@ha */
/* 80BD5530  38 A5 5A 64 */	addi r5, r5, d_a_obj_crvlh_up__stringBase0@l /* 0x80BD5A64@l */
/* 80BD5534  38 A5 00 27 */	addi r5, r5, 0x27
/* 80BD5538  38 63 C2 F8 */	addi r3, r3, -15624
/* 80BD553C  4B 46 71 7D */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80BD5540  7C 65 1B 78 */	mr r5, r3
/* 80BD5544  7F C3 F3 78 */	mr r3, r30
/* 80BD5548  3C 80 80 BD */	lis r4, l_arcName@ha /* 0x80BD5A9C@ha */
/* 80BD554C  38 84 5A 9C */	addi r4, r4, l_arcName@l /* 0x80BD5A9C@l */
/* 80BD5550  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD5554  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80BD5558  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80BD555C  38 E0 0E 80 */	li r7, 0xe80
/* 80BD5560  39 00 00 00 */	li r8, 0
/* 80BD5564  4B 4A 32 59 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BD5568  7C 7D 1B 78 */	mr r29, r3
/* 80BD556C  2C 1D 00 05 */	cmpwi r29, 5
/* 80BD5570  40 82 00 08 */	bne lbl_80BD5578
/* 80BD5574  48 00 00 88 */	b lbl_80BD55FC
lbl_80BD5578:
/* 80BD5578  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80BD557C  38 03 00 24 */	addi r0, r3, 0x24
/* 80BD5580  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BD5584  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80BD5588  D0 5E 05 AC */	stfs f2, 0x5ac(r30)
/* 80BD558C  D0 5E 05 B0 */	stfs f2, 0x5b0(r30)
/* 80BD5590  D0 5E 05 B4 */	stfs f2, 0x5b4(r30)
/* 80BD5594  D0 5E 05 B8 */	stfs f2, 0x5b8(r30)
/* 80BD5598  D0 5E 05 BC */	stfs f2, 0x5bc(r30)
/* 80BD559C  D0 5E 05 C0 */	stfs f2, 0x5c0(r30)
/* 80BD55A0  C0 9E 04 D8 */	lfs f4, 0x4d8(r30)
/* 80BD55A4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80BD55A8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BD55AC  EC 61 00 2A */	fadds f3, f1, f0
/* 80BD55B0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BD55B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BD55B8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80BD55BC  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80BD55C0  D0 3E 05 20 */	stfs f1, 0x520(r30)
/* 80BD55C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BD55C8  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80BD55CC  D0 5E 05 DC */	stfs f2, 0x5dc(r30)
/* 80BD55D0  7F C3 F3 78 */	mr r3, r30
/* 80BD55D4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80BD55D8  FC 40 08 90 */	fmr f2, f1
/* 80BD55DC  FC 60 08 90 */	fmr f3, f1
/* 80BD55E0  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 80BD55E4  C0 BF 00 44 */	lfs f5, 0x44(r31)
/* 80BD55E8  FC C0 20 90 */	fmr f6, f4
/* 80BD55EC  4B 44 4F 5D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BD55F0  7F C3 F3 78 */	mr r3, r30
/* 80BD55F4  4B FF FD 65 */	bl daObjCRVLH_UP_Execute__FP15daObjCRVLH_UP_c
lbl_80BD55F8:
/* 80BD55F8  7F A3 EB 78 */	mr r3, r29
lbl_80BD55FC:
/* 80BD55FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD5600  4B 78 CC 29 */	bl _restgpr_29
/* 80BD5604  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BD5608  7C 08 03 A6 */	mtlr r0
/* 80BD560C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BD5610  4E 80 00 20 */	blr 
