lbl_806D4468:
/* 806D4468  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806D446C  7C 08 02 A6 */	mflr r0
/* 806D4470  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D4474  39 61 00 30 */	addi r11, r1, 0x30
/* 806D4478  4B C8 DD 65 */	bl _savegpr_29
/* 806D447C  7C 7F 1B 78 */	mr r31, r3
/* 806D4480  3C 80 80 6D */	lis r4, lit_3906@ha /* 0x806D79A0@ha */
/* 806D4484  3B C4 79 A0 */	addi r30, r4, lit_3906@l /* 0x806D79A0@l */
/* 806D4488  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D448C  2C 00 00 00 */	cmpwi r0, 0
/* 806D4490  40 82 00 B8 */	bne lbl_806D4548
/* 806D4494  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D4498  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D449C  83 A5 5D AC */	lwz r29, 0x5dac(r5)
/* 806D44A0  38 00 00 02 */	li r0, 2
/* 806D44A4  98 1F 0A 69 */	stb r0, 0xa69(r31)
/* 806D44A8  3C 60 80 6D */	lis r3, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D44AC  38 63 7A F0 */	addi r3, r3, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D44B0  38 63 00 05 */	addi r3, r3, 5
/* 806D44B4  38 80 00 09 */	li r4, 9
/* 806D44B8  3C A5 00 02 */	addis r5, r5, 2
/* 806D44BC  38 C0 00 80 */	li r6, 0x80
/* 806D44C0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D44C4  4B 96 7E 29 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D44C8  7C 64 1B 78 */	mr r4, r3
/* 806D44CC  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D44D0  38 A0 00 00 */	li r5, 0
/* 806D44D4  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 806D44D8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 806D44DC  FC 60 10 90 */	fmr f3, f2
/* 806D44E0  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 806D44E4  4B 93 C9 8D */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D44E8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806D44EC  D0 3F 0A 44 */	stfs f1, 0xa44(r31)
/* 806D44F0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 806D44F4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 806D44F8  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 806D44FC  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 806D4500  38 00 00 00 */	li r0, 0
/* 806D4504  98 1F 0A 71 */	stb r0, 0xa71(r31)
/* 806D4508  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806D450C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806D4510  4B B9 C6 F5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D4514  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 806D4518  38 00 00 07 */	li r0, 7
/* 806D451C  98 1F 04 97 */	stb r0, 0x497(r31)
/* 806D4520  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806D4524  64 00 00 08 */	oris r0, r0, 8
/* 806D4528  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 806D452C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 806D4530  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 806D4534  90 1F 08 30 */	stw r0, 0x830(r31)
/* 806D4538  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 806D453C  38 03 00 01 */	addi r0, r3, 1
/* 806D4540  90 1F 0A 3C */	stw r0, 0xa3c(r31)
/* 806D4544  48 00 00 D0 */	b lbl_806D4614
lbl_806D4548:
/* 806D4548  2C 00 FF FF */	cmpwi r0, -1
/* 806D454C  41 82 00 C8 */	beq lbl_806D4614
/* 806D4550  2C 00 00 01 */	cmpwi r0, 1
/* 806D4554  40 82 00 48 */	bne lbl_806D459C
/* 806D4558  38 9F 07 CC */	addi r4, r31, 0x7cc
/* 806D455C  4B 94 61 71 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D4560  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 806D4564  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D4568  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D456C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D4570  4B 9A 25 3D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806D4574  88 1F 0A 71 */	lbz r0, 0xa71(r31)
/* 806D4578  28 00 00 00 */	cmplwi r0, 0
/* 806D457C  41 82 00 98 */	beq lbl_806D4614
/* 806D4580  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806D4584  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D4588  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806D458C  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 806D4590  38 03 00 01 */	addi r0, r3, 1
/* 806D4594  90 1F 0A 3C */	stw r0, 0xa3c(r31)
/* 806D4598  48 00 00 7C */	b lbl_806D4614
lbl_806D459C:
/* 806D459C  38 9F 07 CC */	addi r4, r31, 0x7cc
/* 806D45A0  4B 94 61 2D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D45A4  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 806D45A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D45AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D45B0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D45B4  4B 9A 24 F9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806D45B8  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D45BC  38 80 00 01 */	li r4, 1
/* 806D45C0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D45C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D45C8  40 82 00 18 */	bne lbl_806D45E0
/* 806D45CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806D45D0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D45D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D45D8  41 82 00 08 */	beq lbl_806D45E0
/* 806D45DC  38 80 00 00 */	li r4, 0
lbl_806D45E0:
/* 806D45E0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D45E4  41 82 00 30 */	beq lbl_806D4614
/* 806D45E8  3C 60 80 6D */	lis r3, lit_5179@ha /* 0x806D7CF4@ha */
/* 806D45EC  38 83 7C F4 */	addi r4, r3, lit_5179@l /* 0x806D7CF4@l */
/* 806D45F0  80 64 00 00 */	lwz r3, 0(r4)
/* 806D45F4  80 04 00 04 */	lwz r0, 4(r4)
/* 806D45F8  90 61 00 08 */	stw r3, 8(r1)
/* 806D45FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D4600  80 04 00 08 */	lwz r0, 8(r4)
/* 806D4604  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D4608  7F E3 FB 78 */	mr r3, r31
/* 806D460C  38 81 00 08 */	addi r4, r1, 8
/* 806D4610  4B FF CC B9 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
lbl_806D4614:
/* 806D4614  39 61 00 30 */	addi r11, r1, 0x30
/* 806D4618  4B C8 DC 11 */	bl _restgpr_29
/* 806D461C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806D4620  7C 08 03 A6 */	mtlr r0
/* 806D4624  38 21 00 30 */	addi r1, r1, 0x30
/* 806D4628  4E 80 00 20 */	blr 
