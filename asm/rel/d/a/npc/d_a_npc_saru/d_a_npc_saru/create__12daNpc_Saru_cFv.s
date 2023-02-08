lbl_80AC0578:
/* 80AC0578  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AC057C  7C 08 02 A6 */	mflr r0
/* 80AC0580  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AC0584  39 61 00 30 */	addi r11, r1, 0x30
/* 80AC0588  4B 8A 1C 55 */	bl _savegpr_29
/* 80AC058C  7C 7D 1B 78 */	mr r29, r3
/* 80AC0590  3C 80 80 AC */	lis r4, m__18daNpc_Saru_Param_c@ha /* 0x80AC44F8@ha */
/* 80AC0594  3B E4 44 F8 */	addi r31, r4, m__18daNpc_Saru_Param_c@l /* 0x80AC44F8@l */
/* 80AC0598  3C 80 80 AC */	lis r4, cNullVec__6Z2Calc@ha /* 0x80AC46A4@ha */
/* 80AC059C  3B C4 46 A4 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80AC46A4@l */
/* 80AC05A0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AC05A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AC05A8  40 82 00 40 */	bne lbl_80AC05E8
/* 80AC05AC  28 1D 00 00 */	cmplwi r29, 0
/* 80AC05B0  41 82 00 2C */	beq lbl_80AC05DC
/* 80AC05B4  38 1E 00 58 */	addi r0, r30, 0x58
/* 80AC05B8  90 01 00 08 */	stw r0, 8(r1)
/* 80AC05BC  38 9E 00 7C */	addi r4, r30, 0x7c
/* 80AC05C0  38 BE 00 98 */	addi r5, r30, 0x98
/* 80AC05C4  38 DE 06 2C */	addi r6, r30, 0x62c
/* 80AC05C8  38 E0 00 04 */	li r7, 4
/* 80AC05CC  39 1E 06 3C */	addi r8, r30, 0x63c
/* 80AC05D0  39 20 00 04 */	li r9, 4
/* 80AC05D4  39 5E 00 40 */	addi r10, r30, 0x40
/* 80AC05D8  48 00 3D BD */	bl __ct__12daNpc_Saru_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80AC05DC:
/* 80AC05DC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80AC05E0  60 00 00 08 */	ori r0, r0, 8
/* 80AC05E4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80AC05E8:
/* 80AC05E8  7F A3 EB 78 */	mr r3, r29
/* 80AC05EC  48 00 06 21 */	bl getType__12daNpc_Saru_cFv
/* 80AC05F0  98 7D 0F 88 */	stb r3, 0xf88(r29)
/* 80AC05F4  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80AC05F8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80AC05FC  28 03 FF FF */	cmplwi r3, 0xffff
/* 80AC0600  38 00 FF FF */	li r0, -1
/* 80AC0604  41 82 00 08 */	beq lbl_80AC060C
/* 80AC0608  7C 60 1B 78 */	mr r0, r3
lbl_80AC060C:
/* 80AC060C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80AC0610  4B 6E BF 6D */	bl dKy_darkworld_check__Fv
/* 80AC0614  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 80AC0618  7F A3 EB 78 */	mr r3, r29
/* 80AC061C  88 1D 0F 88 */	lbz r0, 0xf88(r29)
/* 80AC0620  54 00 10 3A */	slwi r0, r0, 2
/* 80AC0624  38 9E 00 6C */	addi r4, r30, 0x6c
/* 80AC0628  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC062C  38 BE 00 58 */	addi r5, r30, 0x58
/* 80AC0630  4B 68 7D C9 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80AC0634  7C 7E 1B 78 */	mr r30, r3
/* 80AC0638  2C 1E 00 04 */	cmpwi r30, 4
/* 80AC063C  40 82 01 D4 */	bne lbl_80AC0810
/* 80AC0640  7F A3 EB 78 */	mr r3, r29
/* 80AC0644  48 00 06 15 */	bl isDelete__12daNpc_Saru_cFv
/* 80AC0648  2C 03 00 00 */	cmpwi r3, 0
/* 80AC064C  41 82 00 0C */	beq lbl_80AC0658
/* 80AC0650  38 60 00 05 */	li r3, 5
/* 80AC0654  48 00 01 C0 */	b lbl_80AC0814
lbl_80AC0658:
/* 80AC0658  7F A3 EB 78 */	mr r3, r29
/* 80AC065C  3C 80 80 AC */	lis r4, createHeapCallBack__12daNpc_Saru_cFP10fopAc_ac_c@ha /* 0x80AC0AEC@ha */
/* 80AC0660  38 84 0A EC */	addi r4, r4, createHeapCallBack__12daNpc_Saru_cFP10fopAc_ac_c@l /* 0x80AC0AEC@l */
/* 80AC0664  88 1D 0F 88 */	lbz r0, 0xf88(r29)
/* 80AC0668  54 00 10 3A */	slwi r0, r0, 2
/* 80AC066C  38 BF 00 90 */	addi r5, r31, 0x90
/* 80AC0670  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AC0674  4B 55 9E 3D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AC0678  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AC067C  40 82 00 0C */	bne lbl_80AC0688
/* 80AC0680  38 60 00 05 */	li r3, 5
/* 80AC0684  48 00 01 90 */	b lbl_80AC0814
lbl_80AC0688:
/* 80AC0688  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC068C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AC0690  38 03 00 24 */	addi r0, r3, 0x24
/* 80AC0694  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80AC0698  7F A3 EB 78 */	mr r3, r29
/* 80AC069C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80AC06A0  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 80AC06A4  FC 60 08 90 */	fmr f3, f1
/* 80AC06A8  C0 9F 00 A8 */	lfs f4, 0xa8(r31)
/* 80AC06AC  C0 BF 00 AC */	lfs f5, 0xac(r31)
/* 80AC06B0  FC C0 20 90 */	fmr f6, f4
/* 80AC06B4  4B 55 9E 95 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AC06B8  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC06BC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AC06C0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AC06C4  38 C0 00 03 */	li r6, 3
/* 80AC06C8  38 E0 00 01 */	li r7, 1
/* 80AC06CC  4B 7F FE 65 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80AC06D0  7F A3 EB 78 */	mr r3, r29
/* 80AC06D4  48 00 06 15 */	bl reset__12daNpc_Saru_cFv
/* 80AC06D8  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80AC06DC  90 01 00 08 */	stw r0, 8(r1)
/* 80AC06E0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AC06E4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AC06E8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80AC06EC  7F A6 EB 78 */	mr r6, r29
/* 80AC06F0  38 E0 00 01 */	li r7, 1
/* 80AC06F4  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80AC06F8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80AC06FC  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80AC0700  4B 5B 5B 49 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AC0704  38 7D 08 64 */	addi r3, r29, 0x864
/* 80AC0708  38 9F 00 00 */	addi r4, r31, 0
/* 80AC070C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AC0710  FC 00 00 1E */	fctiwz f0, f0
/* 80AC0714  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AC0718  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AC071C  38 A0 00 00 */	li r5, 0
/* 80AC0720  7F A6 EB 78 */	mr r6, r29
/* 80AC0724  4B 5C 31 3D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AC0728  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 80AC072C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80AC0730  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80AC0734  4B 5C 41 81 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AC0738  38 1D 08 64 */	addi r0, r29, 0x864
/* 80AC073C  90 1D 0E 90 */	stw r0, 0xe90(r29)
/* 80AC0740  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80AC0744  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80AC0748  90 1D 0E F0 */	stw r0, 0xef0(r29)
/* 80AC074C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AC0750  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC0754  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC0758  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AC075C  4B 5B 63 51 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AC0760  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80AC0764  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80AC0768  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80AC076C  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80AC0770  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80AC0774  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80AC0778  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80AC077C  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80AC0780  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80AC0784  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80AC0788  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80AC078C  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80AC0790  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80AC0794  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80AC0798  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80AC079C  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80AC07A0  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80AC07A4  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80AC07A8  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80AC07AC  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80AC07B0  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80AC07B4  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80AC07B8  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80AC07BC  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80AC07C0  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80AC07C4  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80AC07C8  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80AC07CC  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80AC07D0  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80AC07D4  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80AC07D8  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80AC07DC  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80AC07E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AC07E4  41 82 00 14 */	beq lbl_80AC07F8
/* 80AC07E8  7F A3 EB 78 */	mr r3, r29
/* 80AC07EC  4B 68 84 85 */	bl setEnvTevColor__8daNpcT_cFv
/* 80AC07F0  7F A3 EB 78 */	mr r3, r29
/* 80AC07F4  4B 68 84 D9 */	bl setRoomNo__8daNpcT_cFv
lbl_80AC07F8:
/* 80AC07F8  38 00 00 01 */	li r0, 1
/* 80AC07FC  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80AC0800  7F A3 EB 78 */	mr r3, r29
/* 80AC0804  48 00 02 85 */	bl Execute__12daNpc_Saru_cFv
/* 80AC0808  38 00 00 00 */	li r0, 0
/* 80AC080C  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80AC0810:
/* 80AC0810  7F C3 F3 78 */	mr r3, r30
lbl_80AC0814:
/* 80AC0814  39 61 00 30 */	addi r11, r1, 0x30
/* 80AC0818  4B 8A 1A 11 */	bl _restgpr_29
/* 80AC081C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AC0820  7C 08 03 A6 */	mtlr r0
/* 80AC0824  38 21 00 30 */	addi r1, r1, 0x30
/* 80AC0828  4E 80 00 20 */	blr 
