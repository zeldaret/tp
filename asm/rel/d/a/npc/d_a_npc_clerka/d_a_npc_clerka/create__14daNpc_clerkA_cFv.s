lbl_8099266C:
/* 8099266C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80992670  7C 08 02 A6 */	mflr r0
/* 80992674  90 01 00 34 */	stw r0, 0x34(r1)
/* 80992678  39 61 00 30 */	addi r11, r1, 0x30
/* 8099267C  4B 9C FB 60 */	b _savegpr_29
/* 80992680  7C 7D 1B 78 */	mr r29, r3
/* 80992684  3C 80 80 99 */	lis r4, m__20daNpc_clerkA_Param_c@ha
/* 80992688  3B E4 58 70 */	addi r31, r4, m__20daNpc_clerkA_Param_c@l
/* 8099268C  3C 80 80 99 */	lis r4, cNullVec__6Z2Calc@ha
/* 80992690  3B C4 59 94 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80992694  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80992698  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8099269C  40 82 00 40 */	bne lbl_809926DC
/* 809926A0  28 1D 00 00 */	cmplwi r29, 0
/* 809926A4  41 82 00 2C */	beq lbl_809926D0
/* 809926A8  38 1E 00 40 */	addi r0, r30, 0x40
/* 809926AC  90 01 00 08 */	stw r0, 8(r1)
/* 809926B0  38 9E 00 54 */	addi r4, r30, 0x54
/* 809926B4  38 BE 00 E0 */	addi r5, r30, 0xe0
/* 809926B8  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 809926BC  38 E0 00 04 */	li r7, 4
/* 809926C0  39 1E 01 F4 */	addi r8, r30, 0x1f4
/* 809926C4  39 20 00 04 */	li r9, 4
/* 809926C8  39 5E 00 28 */	addi r10, r30, 0x28
/* 809926CC  48 00 2E FD */	bl __ct__14daNpc_clerkA_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_809926D0:
/* 809926D0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 809926D4  60 00 00 08 */	ori r0, r0, 8
/* 809926D8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_809926DC:
/* 809926DC  7F A3 EB 78 */	mr r3, r29
/* 809926E0  48 00 08 89 */	bl getType__14daNpc_clerkA_cFv
/* 809926E4  98 7D 10 BC */	stb r3, 0x10bc(r29)
/* 809926E8  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 809926EC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 809926F0  28 03 FF FF */	cmplwi r3, 0xffff
/* 809926F4  38 00 FF FF */	li r0, -1
/* 809926F8  41 82 00 08 */	beq lbl_80992700
/* 809926FC  7C 60 1B 78 */	mr r0, r3
lbl_80992700:
/* 80992700  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80992704  4B 81 9E 78 */	b dKy_darkworld_check__Fv
/* 80992708  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 8099270C  7F A3 EB 78 */	mr r3, r29
/* 80992710  88 1D 10 BC */	lbz r0, 0x10bc(r29)
/* 80992714  54 00 10 3A */	slwi r0, r0, 2
/* 80992718  38 9E 00 4C */	addi r4, r30, 0x4c
/* 8099271C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80992720  38 BE 00 40 */	addi r5, r30, 0x40
/* 80992724  4B 7B 5C D4 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80992728  7C 7E 1B 78 */	mr r30, r3
/* 8099272C  2C 1E 00 04 */	cmpwi r30, 4
/* 80992730  40 82 01 C8 */	bne lbl_809928F8
/* 80992734  7F A3 EB 78 */	mr r3, r29
/* 80992738  3C 80 80 99 */	lis r4, createHeapCallBack__14daNpc_clerkA_cFP10fopAc_ac_c@ha
/* 8099273C  38 84 2E F0 */	addi r4, r4, createHeapCallBack__14daNpc_clerkA_cFP10fopAc_ac_c@l
/* 80992740  38 A0 39 F0 */	li r5, 0x39f0
/* 80992744  4B 68 7D 6C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80992748  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8099274C  40 82 00 0C */	bne lbl_80992758
/* 80992750  38 60 00 05 */	li r3, 5
/* 80992754  48 00 01 A8 */	b lbl_809928FC
lbl_80992758:
/* 80992758  7F A3 EB 78 */	mr r3, r29
/* 8099275C  48 00 08 2D */	bl isDelete__14daNpc_clerkA_cFv
/* 80992760  2C 03 00 00 */	cmpwi r3, 0
/* 80992764  41 82 00 0C */	beq lbl_80992770
/* 80992768  38 60 00 05 */	li r3, 5
/* 8099276C  48 00 01 90 */	b lbl_809928FC
lbl_80992770:
/* 80992770  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80992774  80 63 00 04 */	lwz r3, 4(r3)
/* 80992778  38 03 00 24 */	addi r0, r3, 0x24
/* 8099277C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80992780  7F A3 EB 78 */	mr r3, r29
/* 80992784  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80992788  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8099278C  FC 60 08 90 */	fmr f3, f1
/* 80992790  C0 9F 00 98 */	lfs f4, 0x98(r31)
/* 80992794  C0 BF 00 9C */	lfs f5, 0x9c(r31)
/* 80992798  FC C0 20 90 */	fmr f6, f4
/* 8099279C  4B 68 7D AC */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809927A0  38 7D 05 80 */	addi r3, r29, 0x580
/* 809927A4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809927A8  38 BD 05 38 */	addi r5, r29, 0x538
/* 809927AC  38 C0 00 03 */	li r6, 3
/* 809927B0  38 E0 00 01 */	li r7, 1
/* 809927B4  4B 92 DD 7C */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 809927B8  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 809927BC  90 01 00 08 */	stw r0, 8(r1)
/* 809927C0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 809927C4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809927C8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 809927CC  7F A6 EB 78 */	mr r6, r29
/* 809927D0  38 E0 00 01 */	li r7, 1
/* 809927D4  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 809927D8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 809927DC  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 809927E0  4B 6E 3A 68 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809927E4  38 7D 08 64 */	addi r3, r29, 0x864
/* 809927E8  38 9F 00 00 */	addi r4, r31, 0
/* 809927EC  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809927F0  FC 00 00 1E */	fctiwz f0, f0
/* 809927F4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809927F8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809927FC  38 A0 00 00 */	li r5, 0
/* 80992800  7F A6 EB 78 */	mr r6, r29
/* 80992804  4B 6F 10 5C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80992808  38 7D 0F 80 */	addi r3, r29, 0xf80
/* 8099280C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80992810  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80992814  4B 6F 20 A0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80992818  38 1D 08 64 */	addi r0, r29, 0x864
/* 8099281C  90 1D 0F C4 */	stw r0, 0xfc4(r29)
/* 80992820  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80992824  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80992828  90 1D 10 24 */	stw r0, 0x1024(r29)
/* 8099282C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80992830  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80992834  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80992838  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8099283C  4B 6E 42 70 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80992840  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80992844  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80992848  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 8099284C  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80992850  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80992854  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80992858  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 8099285C  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80992860  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80992864  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80992868  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 8099286C  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80992870  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80992874  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80992878  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8099287C  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80992880  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80992884  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80992888  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 8099288C  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80992890  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80992894  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80992898  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 8099289C  90 1D 09 60 */	stw r0, 0x960(r29)
/* 809928A0  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 809928A4  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 809928A8  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 809928AC  90 1D 09 68 */	stw r0, 0x968(r29)
/* 809928B0  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 809928B4  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 809928B8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 809928BC  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 809928C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809928C4  41 82 00 14 */	beq lbl_809928D8
/* 809928C8  7F A3 EB 78 */	mr r3, r29
/* 809928CC  4B 7B 63 A4 */	b setEnvTevColor__8daNpcT_cFv
/* 809928D0  7F A3 EB 78 */	mr r3, r29
/* 809928D4  4B 7B 63 F8 */	b setRoomNo__8daNpcT_cFv
lbl_809928D8:
/* 809928D8  7F A3 EB 78 */	mr r3, r29
/* 809928DC  48 00 06 DD */	bl reset__14daNpc_clerkA_cFv
/* 809928E0  38 00 00 01 */	li r0, 1
/* 809928E4  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 809928E8  7F A3 EB 78 */	mr r3, r29
/* 809928EC  48 00 04 99 */	bl Execute__14daNpc_clerkA_cFv
/* 809928F0  38 00 00 00 */	li r0, 0
/* 809928F4  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_809928F8:
/* 809928F8  7F C3 F3 78 */	mr r3, r30
lbl_809928FC:
/* 809928FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80992900  4B 9C F9 28 */	b _restgpr_29
/* 80992904  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80992908  7C 08 03 A6 */	mtlr r0
/* 8099290C  38 21 00 30 */	addi r1, r1, 0x30
/* 80992910  4E 80 00 20 */	blr 
