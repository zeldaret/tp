lbl_8054F4F8:
/* 8054F4F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054F4FC  7C 08 02 A6 */	mflr r0
/* 8054F500  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054F504  39 61 00 30 */	addi r11, r1, 0x30
/* 8054F508  4B E1 2C D5 */	bl _savegpr_29
/* 8054F50C  7C 7D 1B 78 */	mr r29, r3
/* 8054F510  3C 80 80 55 */	lis r4, m__18daNpc_Kkri_Param_c@ha /* 0x80553490@ha */
/* 8054F514  3B E4 34 90 */	addi r31, r4, m__18daNpc_Kkri_Param_c@l /* 0x80553490@l */
/* 8054F518  3C 80 80 55 */	lis r4, cNullVec__6Z2Calc@ha /* 0x805535F8@ha */
/* 8054F51C  3B C4 35 F8 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x805535F8@l */
/* 8054F520  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8054F524  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8054F528  40 82 00 40 */	bne lbl_8054F568
/* 8054F52C  28 1D 00 00 */	cmplwi r29, 0
/* 8054F530  41 82 00 2C */	beq lbl_8054F55C
/* 8054F534  38 1E 00 58 */	addi r0, r30, 0x58
/* 8054F538  90 01 00 08 */	stw r0, 8(r1)
/* 8054F53C  38 9E 00 78 */	addi r4, r30, 0x78
/* 8054F540  38 BE 02 1C */	addi r5, r30, 0x21c
/* 8054F544  38 DE 04 68 */	addi r6, r30, 0x468
/* 8054F548  38 E0 00 04 */	li r7, 4
/* 8054F54C  39 1E 05 58 */	addi r8, r30, 0x558
/* 8054F550  39 20 00 04 */	li r9, 4
/* 8054F554  39 5E 00 30 */	addi r10, r30, 0x30
/* 8054F558  48 00 3D AD */	bl __ct__12daNpc_Kkri_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_8054F55C:
/* 8054F55C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8054F560  60 00 00 08 */	ori r0, r0, 8
/* 8054F564  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8054F568:
/* 8054F568  7F A3 EB 78 */	mr r3, r29
/* 8054F56C  48 00 08 B5 */	bl getType__12daNpc_Kkri_cFv
/* 8054F570  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 8054F574  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 8054F578  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8054F57C  28 03 FF FF */	cmplwi r3, 0xffff
/* 8054F580  38 00 FF FF */	li r0, -1
/* 8054F584  41 82 00 08 */	beq lbl_8054F58C
/* 8054F588  7C 60 1B 78 */	mr r0, r3
lbl_8054F58C:
/* 8054F58C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 8054F590  4B C5 CF ED */	bl dKy_darkworld_check__Fv
/* 8054F594  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 8054F598  7F A3 EB 78 */	mr r3, r29
/* 8054F59C  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 8054F5A0  54 00 10 3A */	slwi r0, r0, 2
/* 8054F5A4  38 9E 00 6C */	addi r4, r30, 0x6c
/* 8054F5A8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8054F5AC  38 BE 00 58 */	addi r5, r30, 0x58
/* 8054F5B0  4B BF 8E 49 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 8054F5B4  7C 7E 1B 78 */	mr r30, r3
/* 8054F5B8  2C 1E 00 04 */	cmpwi r30, 4
/* 8054F5BC  40 82 01 F8 */	bne lbl_8054F7B4
/* 8054F5C0  7F A3 EB 78 */	mr r3, r29
/* 8054F5C4  48 00 08 95 */	bl isDelete__12daNpc_Kkri_cFv
/* 8054F5C8  2C 03 00 00 */	cmpwi r3, 0
/* 8054F5CC  41 82 00 0C */	beq lbl_8054F5D8
/* 8054F5D0  38 60 00 05 */	li r3, 5
/* 8054F5D4  48 00 01 E4 */	b lbl_8054F7B8
lbl_8054F5D8:
/* 8054F5D8  7F A3 EB 78 */	mr r3, r29
/* 8054F5DC  3C 80 80 55 */	lis r4, createHeapCallBack__12daNpc_Kkri_cFP10fopAc_ac_c@ha /* 0x8054FD00@ha */
/* 8054F5E0  38 84 FD 00 */	addi r4, r4, createHeapCallBack__12daNpc_Kkri_cFP10fopAc_ac_c@l /* 0x8054FD00@l */
/* 8054F5E4  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 8054F5E8  54 00 10 3A */	slwi r0, r0, 2
/* 8054F5EC  38 BF 00 8C */	addi r5, r31, 0x8c
/* 8054F5F0  7C A5 00 2E */	lwzx r5, r5, r0
/* 8054F5F4  4B AC AE BD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8054F5F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8054F5FC  40 82 00 0C */	bne lbl_8054F608
/* 8054F600  38 60 00 05 */	li r3, 5
/* 8054F604  48 00 01 B4 */	b lbl_8054F7B8
lbl_8054F608:
/* 8054F608  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 8054F60C  80 63 00 04 */	lwz r3, 4(r3)
/* 8054F610  38 03 00 24 */	addi r0, r3, 0x24
/* 8054F614  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8054F618  7F A3 EB 78 */	mr r3, r29
/* 8054F61C  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8054F620  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 8054F624  FC 60 08 90 */	fmr f3, f1
/* 8054F628  C0 9F 00 A0 */	lfs f4, 0xa0(r31)
/* 8054F62C  C0 BF 00 A4 */	lfs f5, 0xa4(r31)
/* 8054F630  FC C0 20 90 */	fmr f6, f4
/* 8054F634  4B AC AF 15 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8054F638  38 7D 05 80 */	addi r3, r29, 0x580
/* 8054F63C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8054F640  38 BD 05 38 */	addi r5, r29, 0x538
/* 8054F644  38 C0 00 03 */	li r6, 3
/* 8054F648  38 E0 00 01 */	li r7, 1
/* 8054F64C  4B D7 0E E5 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 8054F650  7F A3 EB 78 */	mr r3, r29
/* 8054F654  48 00 08 39 */	bl reset__12daNpc_Kkri_cFv
/* 8054F658  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 8054F65C  90 01 00 08 */	stw r0, 8(r1)
/* 8054F660  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8054F664  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8054F668  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8054F66C  7F A6 EB 78 */	mr r6, r29
/* 8054F670  38 E0 00 01 */	li r7, 1
/* 8054F674  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 8054F678  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 8054F67C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 8054F680  4B B2 6B C9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8054F684  38 7D 08 64 */	addi r3, r29, 0x864
/* 8054F688  38 9F 00 00 */	addi r4, r31, 0
/* 8054F68C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8054F690  FC 00 00 1E */	fctiwz f0, f0
/* 8054F694  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8054F698  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8054F69C  38 A0 00 00 */	li r5, 0
/* 8054F6A0  7F A6 EB 78 */	mr r6, r29
/* 8054F6A4  4B B3 41 BD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8054F6A8  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 8054F6AC  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 8054F6B0  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 8054F6B4  4B B3 52 01 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8054F6B8  38 1D 08 64 */	addi r0, r29, 0x864
/* 8054F6BC  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 8054F6C0  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 8054F6C4  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 8054F6C8  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 8054F6CC  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 8054F6D0  28 00 00 00 */	cmplwi r0, 0
/* 8054F6D4  40 82 00 1C */	bne lbl_8054F6F0
/* 8054F6D8  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 8054F6DC  60 00 00 02 */	ori r0, r0, 2
/* 8054F6E0  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8054F6E4  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 8054F6E8  60 00 00 04 */	ori r0, r0, 4
/* 8054F6EC  90 1D 06 B8 */	stw r0, 0x6b8(r29)
lbl_8054F6F0:
/* 8054F6F0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8054F6F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054F6F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054F6FC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8054F700  4B B2 73 AD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8054F704  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 8054F708  90 1D 09 30 */	stw r0, 0x930(r29)
/* 8054F70C  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 8054F710  90 1D 09 34 */	stw r0, 0x934(r29)
/* 8054F714  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 8054F718  90 1D 09 38 */	stw r0, 0x938(r29)
/* 8054F71C  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 8054F720  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 8054F724  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 8054F728  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 8054F72C  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 8054F730  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 8054F734  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 8054F738  90 1D 09 48 */	stw r0, 0x948(r29)
/* 8054F73C  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8054F740  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 8054F744  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 8054F748  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 8054F74C  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 8054F750  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 8054F754  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 8054F758  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 8054F75C  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 8054F760  90 1D 09 60 */	stw r0, 0x960(r29)
/* 8054F764  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 8054F768  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 8054F76C  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 8054F770  90 1D 09 68 */	stw r0, 0x968(r29)
/* 8054F774  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 8054F778  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 8054F77C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8054F780  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 8054F784  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8054F788  41 82 00 14 */	beq lbl_8054F79C
/* 8054F78C  7F A3 EB 78 */	mr r3, r29
/* 8054F790  4B BF 94 E1 */	bl setEnvTevColor__8daNpcT_cFv
/* 8054F794  7F A3 EB 78 */	mr r3, r29
/* 8054F798  4B BF 95 35 */	bl setRoomNo__8daNpcT_cFv
lbl_8054F79C:
/* 8054F79C  38 00 00 01 */	li r0, 1
/* 8054F7A0  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 8054F7A4  7F A3 EB 78 */	mr r3, r29
/* 8054F7A8  48 00 04 9D */	bl Execute__12daNpc_Kkri_cFv
/* 8054F7AC  38 00 00 00 */	li r0, 0
/* 8054F7B0  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_8054F7B4:
/* 8054F7B4  7F C3 F3 78 */	mr r3, r30
lbl_8054F7B8:
/* 8054F7B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8054F7BC  4B E1 2A 6D */	bl _restgpr_29
/* 8054F7C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054F7C4  7C 08 03 A6 */	mtlr r0
/* 8054F7C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8054F7CC  4E 80 00 20 */	blr 
