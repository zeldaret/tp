lbl_80480728:
/* 80480728  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048072C  7C 08 02 A6 */	mflr r0
/* 80480730  90 01 00 44 */	stw r0, 0x44(r1)
/* 80480734  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80480738  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8048073C  39 61 00 30 */	addi r11, r1, 0x30
/* 80480740  4B EE 1A 9D */	bl _savegpr_29
/* 80480744  7C 7E 1B 78 */	mr r30, r3
/* 80480748  3C 60 80 48 */	lis r3, M_lin5__Q212daObjMovebox5Bgc_c@ha /* 0x80480F28@ha */
/* 8048074C  3B E3 0F 28 */	addi r31, r3, M_lin5__Q212daObjMovebox5Bgc_c@l /* 0x80480F28@l */
/* 80480750  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 80480754  28 00 00 00 */	cmplwi r0, 0
/* 80480758  41 82 00 74 */	beq lbl_804807CC
/* 8048075C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80480760  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80480764  38 80 00 10 */	li r4, 0x10
/* 80480768  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8048076C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80480770  4B D2 30 55 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80480774  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80480778  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8048077C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80480780  80 84 00 04 */	lwz r4, 4(r4)
/* 80480784  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80480788  4B D2 46 19 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8048078C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80480790  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80480794  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80480798  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8048079C  3B A3 4A C8 */	addi r29, r3, j3dSys@l /* 0x80434AC8@l */
/* 804807A0  90 1D 00 48 */	stw r0, 0x48(r29)
/* 804807A4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 804807A8  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 804807AC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 804807B0  4B B8 D5 15 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 804807B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804807B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804807BC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 804807C0  90 1D 00 48 */	stw r0, 0x48(r29)
/* 804807C4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 804807C8  90 1D 00 4C */	stw r0, 0x4c(r29)
lbl_804807CC:
/* 804807CC  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 804807D0  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 804807D4  38 7F 02 40 */	addi r3, r31, 0x240
/* 804807D8  38 04 00 9D */	addi r0, r4, 0x9d
/* 804807DC  7C 03 00 AE */	lbzx r0, r3, r0
/* 804807E0  28 00 00 00 */	cmplwi r0, 0
/* 804807E4  40 82 00 AC */	bne lbl_80480890
/* 804807E8  80 9E 07 84 */	lwz r4, 0x784(r30)
/* 804807EC  2C 04 00 00 */	cmpwi r4, 0
/* 804807F0  41 80 00 A0 */	blt lbl_80480890
/* 804807F4  54 80 10 3A */	slwi r0, r4, 2
/* 804807F8  7C 7E 02 14 */	add r3, r30, r0
/* 804807FC  C3 E3 07 28 */	lfs f31, 0x728(r3)
/* 80480800  3C 60 80 48 */	lis r3, __vt__8cM3dGPla@ha /* 0x804817EC@ha */
/* 80480804  38 03 17 EC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804817EC@l */
/* 80480808  90 01 00 18 */	stw r0, 0x18(r1)
/* 8048080C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80480810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80480814  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80480818  1C A4 00 54 */	mulli r5, r4, 0x54
/* 8048081C  3C 80 80 48 */	lis r4, M_gnd_work__Q212daObjMovebox5Bgc_c@ha /* 0x804818D4@ha */
/* 80480820  38 04 18 D4 */	addi r0, r4, M_gnd_work__Q212daObjMovebox5Bgc_c@l /* 0x804818D4@l */
/* 80480824  7C 80 2A 14 */	add r4, r0, r5
/* 80480828  38 84 00 14 */	addi r4, r4, 0x14
/* 8048082C  38 A1 00 08 */	addi r5, r1, 8
/* 80480830  4B BF 3F 15 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80480834  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80480838  41 82 00 4C */	beq lbl_80480884
/* 8048083C  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80480840  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80480844  41 82 00 40 */	beq lbl_80480884
/* 80480848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048084C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80480850  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80480854  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80480858  FC 20 F8 90 */	fmr f1, f31
/* 8048085C  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 80480860  1C C0 00 A0 */	mulli r6, r0, 0xa0
/* 80480864  38 BF 02 40 */	addi r5, r31, 0x240
/* 80480868  38 06 00 10 */	addi r0, r6, 0x10
/* 8048086C  7C 45 04 2E */	lfsx f2, r5, r0
/* 80480870  38 A1 00 08 */	addi r5, r1, 8
/* 80480874  A8 DE 04 E6 */	lha r6, 0x4e6(r30)
/* 80480878  C0 7F 07 78 */	lfs f3, 0x778(r31)
/* 8048087C  38 E0 00 00 */	li r7, 0
/* 80480880  4B BD 57 05 */	bl setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj
lbl_80480884:
/* 80480884  3C 60 80 48 */	lis r3, __vt__8cM3dGPla@ha /* 0x804817EC@ha */
/* 80480888  38 03 17 EC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804817EC@l */
/* 8048088C  90 01 00 18 */	stw r0, 0x18(r1)
lbl_80480890:
/* 80480890  38 60 00 01 */	li r3, 1
/* 80480894  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80480898  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8048089C  39 61 00 30 */	addi r11, r1, 0x30
/* 804808A0  4B EE 19 89 */	bl _restgpr_29
/* 804808A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804808A8  7C 08 03 A6 */	mtlr r0
/* 804808AC  38 21 00 40 */	addi r1, r1, 0x40
/* 804808B0  4E 80 00 20 */	blr 
