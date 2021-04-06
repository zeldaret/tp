lbl_80BD42D8:
/* 80BD42D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BD42DC  7C 08 02 A6 */	mflr r0
/* 80BD42E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BD42E4  39 61 00 50 */	addi r11, r1, 0x50
/* 80BD42E8  4B 78 DE F5 */	bl _savegpr_29
/* 80BD42EC  7C 7D 1B 78 */	mr r29, r3
/* 80BD42F0  3C 80 80 BD */	lis r4, ccCylSrc@ha /* 0x80BD4D04@ha */
/* 80BD42F4  3B C4 4D 04 */	addi r30, r4, ccCylSrc@l /* 0x80BD4D04@l */
/* 80BD42F8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD42FC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD4300  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BD4304  4B 44 64 0D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BD4308  7C 65 1B 78 */	mr r5, r3
/* 80BD430C  38 61 00 28 */	addi r3, r1, 0x28
/* 80BD4310  38 80 00 00 */	li r4, 0
/* 80BD4314  3C A5 00 01 */	addis r5, r5, 1
/* 80BD4318  38 05 80 00 */	addi r0, r5, -32768
/* 80BD431C  7C 05 07 34 */	extsh r5, r0
/* 80BD4320  38 C0 00 00 */	li r6, 0
/* 80BD4324  4B 69 30 D1 */	bl __ct__5csXyzFsss
/* 80BD4328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD432C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD4330  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80BD4334  38 80 00 00 */	li r4, 0
/* 80BD4338  90 81 00 08 */	stw r4, 8(r1)
/* 80BD433C  38 00 FF FF */	li r0, -1
/* 80BD4340  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BD4344  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BD4348  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BD434C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BD4350  38 80 00 00 */	li r4, 0
/* 80BD4354  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000861B@ha */
/* 80BD4358  38 A5 86 1B */	addi r5, r5, 0x861B /* 0x0000861B@l */
/* 80BD435C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80BD4360  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80BD4364  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80BD4368  39 20 00 00 */	li r9, 0
/* 80BD436C  39 40 00 FF */	li r10, 0xff
/* 80BD4370  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80BD4374  4B 47 87 1D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BD4378  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80BD437C  38 80 00 00 */	li r4, 0
/* 80BD4380  90 81 00 08 */	stw r4, 8(r1)
/* 80BD4384  38 00 FF FF */	li r0, -1
/* 80BD4388  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BD438C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BD4390  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BD4394  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BD4398  38 80 00 00 */	li r4, 0
/* 80BD439C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000861C@ha */
/* 80BD43A0  38 A5 86 1C */	addi r5, r5, 0x861C /* 0x0000861C@l */
/* 80BD43A4  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80BD43A8  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80BD43AC  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80BD43B0  39 20 00 00 */	li r9, 0
/* 80BD43B4  39 40 00 FF */	li r10, 0xff
/* 80BD43B8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80BD43BC  4B 47 86 D5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BD43C0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80BD43C4  38 80 00 00 */	li r4, 0
/* 80BD43C8  90 81 00 08 */	stw r4, 8(r1)
/* 80BD43CC  38 00 FF FF */	li r0, -1
/* 80BD43D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BD43D4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BD43D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BD43DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BD43E0  38 80 00 00 */	li r4, 0
/* 80BD43E4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000861D@ha */
/* 80BD43E8  38 A5 86 1D */	addi r5, r5, 0x861D /* 0x0000861D@l */
/* 80BD43EC  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80BD43F0  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80BD43F4  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80BD43F8  39 20 00 00 */	li r9, 0
/* 80BD43FC  39 40 00 FF */	li r10, 0xff
/* 80BD4400  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80BD4404  4B 47 86 8D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BD4408  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80BD440C  38 80 00 00 */	li r4, 0
/* 80BD4410  90 81 00 08 */	stw r4, 8(r1)
/* 80BD4414  38 00 FF FF */	li r0, -1
/* 80BD4418  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BD441C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BD4420  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BD4424  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BD4428  38 80 00 00 */	li r4, 0
/* 80BD442C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000861E@ha */
/* 80BD4430  38 A5 86 1E */	addi r5, r5, 0x861E /* 0x0000861E@l */
/* 80BD4434  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80BD4438  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80BD443C  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80BD4440  39 20 00 00 */	li r9, 0
/* 80BD4444  39 40 00 FF */	li r10, 0xff
/* 80BD4448  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80BD444C  4B 47 86 45 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BD4450  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80BD4454  38 80 00 00 */	li r4, 0
/* 80BD4458  90 81 00 08 */	stw r4, 8(r1)
/* 80BD445C  38 00 FF FF */	li r0, -1
/* 80BD4460  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BD4464  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BD4468  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BD446C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BD4470  38 80 00 00 */	li r4, 0
/* 80BD4474  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000861F@ha */
/* 80BD4478  38 A5 86 1F */	addi r5, r5, 0x861F /* 0x0000861F@l */
/* 80BD447C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80BD4480  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80BD4484  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80BD4488  39 20 00 00 */	li r9, 0
/* 80BD448C  39 40 00 FF */	li r10, 0xff
/* 80BD4490  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80BD4494  4B 47 85 FD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BD4498  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80BD449C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80BD44A0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80BD44A4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BD44A8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80BD44AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD44B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD44B4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BD44B8  38 80 00 05 */	li r4, 5
/* 80BD44BC  38 A0 00 1F */	li r5, 0x1f
/* 80BD44C0  38 C1 00 30 */	addi r6, r1, 0x30
/* 80BD44C4  4B 49 B5 61 */	bl StartShock__12dVibration_cFii4cXyz
/* 80BD44C8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BD44CC  7C 07 07 74 */	extsb r7, r0
/* 80BD44D0  38 00 00 00 */	li r0, 0
/* 80BD44D4  90 01 00 08 */	stw r0, 8(r1)
/* 80BD44D8  38 60 00 71 */	li r3, 0x71
/* 80BD44DC  28 1D 00 00 */	cmplwi r29, 0
/* 80BD44E0  41 82 00 0C */	beq lbl_80BD44EC
/* 80BD44E4  80 9D 00 04 */	lwz r4, 4(r29)
/* 80BD44E8  48 00 00 08 */	b lbl_80BD44F0
lbl_80BD44EC:
/* 80BD44EC  38 80 FF FF */	li r4, -1
lbl_80BD44F0:
/* 80BD44F0  38 A0 00 01 */	li r5, 1
/* 80BD44F4  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80BD44F8  39 01 00 28 */	addi r8, r1, 0x28
/* 80BD44FC  39 20 00 00 */	li r9, 0
/* 80BD4500  39 40 FF FF */	li r10, -1
/* 80BD4504  4B 44 59 ED */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80BD4508  90 7D 05 A4 */	stw r3, 0x5a4(r29)
/* 80BD450C  80 7D 05 A0 */	lwz r3, 0x5a0(r29)
/* 80BD4510  38 81 00 24 */	addi r4, r1, 0x24
/* 80BD4514  4B 44 54 A9 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80BD4518  2C 03 00 00 */	cmpwi r3, 0
/* 80BD451C  41 82 00 14 */	beq lbl_80BD4530
/* 80BD4520  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80BD4524  28 03 00 00 */	cmplwi r3, 0
/* 80BD4528  41 82 00 08 */	beq lbl_80BD4530
/* 80BD452C  48 00 09 F1 */	bl HakaiSet__15daObjCRVLH_UP_cFv
lbl_80BD4530:
/* 80BD4530  7F A3 EB 78 */	mr r3, r29
/* 80BD4534  4B FF FD 35 */	bl BgRelease__15daObjCRVLH_DW_cFv
/* 80BD4538  38 00 00 01 */	li r0, 1
/* 80BD453C  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 80BD4540  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BD4544  7C 03 07 74 */	extsb r3, r0
/* 80BD4548  4B 45 8B 25 */	bl dComIfGp_getReverb__Fi
/* 80BD454C  7C 67 1B 78 */	mr r7, r3
/* 80BD4550  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B8@ha */
/* 80BD4554  38 03 02 B8 */	addi r0, r3, 0x02B8 /* 0x000802B8@l */
/* 80BD4558  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BD455C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BD4560  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BD4564  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD4568  38 81 00 20 */	addi r4, r1, 0x20
/* 80BD456C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BD4570  38 C0 00 00 */	li r6, 0
/* 80BD4574  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80BD4578  FC 40 08 90 */	fmr f2, f1
/* 80BD457C  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80BD4580  FC 80 18 90 */	fmr f4, f3
/* 80BD4584  39 00 00 00 */	li r8, 0
/* 80BD4588  4B 6D 73 FD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD458C  39 61 00 50 */	addi r11, r1, 0x50
/* 80BD4590  4B 78 DC 99 */	bl _restgpr_29
/* 80BD4594  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BD4598  7C 08 03 A6 */	mtlr r0
/* 80BD459C  38 21 00 50 */	addi r1, r1, 0x50
/* 80BD45A0  4E 80 00 20 */	blr 
