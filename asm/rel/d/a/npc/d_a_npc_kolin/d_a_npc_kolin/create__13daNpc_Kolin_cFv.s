lbl_80554138:
/* 80554138  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055413C  7C 08 02 A6 */	mflr r0
/* 80554140  90 01 00 34 */	stw r0, 0x34(r1)
/* 80554144  39 61 00 30 */	addi r11, r1, 0x30
/* 80554148  4B E0 E0 95 */	bl _savegpr_29
/* 8055414C  7C 7D 1B 78 */	mr r29, r3
/* 80554150  3C 80 80 56 */	lis r4, m__19daNpc_Kolin_Param_c@ha /* 0x8055A5B4@ha */
/* 80554154  3B E4 A5 B4 */	addi r31, r4, m__19daNpc_Kolin_Param_c@l /* 0x8055A5B4@l */
/* 80554158  3C 80 80 56 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8055A8C8@ha */
/* 8055415C  3B C4 A8 C8 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x8055A8C8@l */
/* 80554160  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80554164  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80554168  40 82 00 40 */	bne lbl_805541A8
/* 8055416C  28 1D 00 00 */	cmplwi r29, 0
/* 80554170  41 82 00 2C */	beq lbl_8055419C
/* 80554174  38 1E 00 80 */	addi r0, r30, 0x80
/* 80554178  90 01 00 08 */	stw r0, 8(r1)
/* 8055417C  38 9E 00 FC */	addi r4, r30, 0xfc
/* 80554180  38 BE 02 84 */	addi r5, r30, 0x284
/* 80554184  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80554188  38 E0 00 04 */	li r7, 4
/* 8055418C  39 1E 05 B0 */	addi r8, r30, 0x5b0
/* 80554190  39 20 00 04 */	li r9, 4
/* 80554194  39 5E 00 38 */	addi r10, r30, 0x38
/* 80554198  48 00 62 21 */	bl __ct__13daNpc_Kolin_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_8055419C:
/* 8055419C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 805541A0  60 00 00 08 */	ori r0, r0, 8
/* 805541A4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_805541A8:
/* 805541A8  7F A3 EB 78 */	mr r3, r29
/* 805541AC  48 00 08 E5 */	bl getType__13daNpc_Kolin_cFv
/* 805541B0  98 7D 0F 84 */	stb r3, 0xf84(r29)
/* 805541B4  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 805541B8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 805541BC  28 03 FF FF */	cmplwi r3, 0xffff
/* 805541C0  38 00 FF FF */	li r0, -1
/* 805541C4  41 82 00 08 */	beq lbl_805541CC
/* 805541C8  7C 60 1B 78 */	mr r0, r3
lbl_805541CC:
/* 805541CC  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 805541D0  4B C5 83 AD */	bl dKy_darkworld_check__Fv
/* 805541D4  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 805541D8  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 805541DC  28 00 00 09 */	cmplwi r0, 9
/* 805541E0  40 82 00 0C */	bne lbl_805541EC
/* 805541E4  38 00 00 00 */	li r0, 0
/* 805541E8  98 1D 0A 89 */	stb r0, 0xa89(r29)
lbl_805541EC:
/* 805541EC  7F A3 EB 78 */	mr r3, r29
/* 805541F0  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 805541F4  54 00 10 3A */	slwi r0, r0, 2
/* 805541F8  38 9E 00 C0 */	addi r4, r30, 0xc0
/* 805541FC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80554200  38 BE 00 80 */	addi r5, r30, 0x80
/* 80554204  4B BF 41 F5 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80554208  7C 7E 1B 78 */	mr r30, r3
/* 8055420C  2C 1E 00 04 */	cmpwi r30, 4
/* 80554210  40 82 01 E8 */	bne lbl_805543F8
/* 80554214  7F A3 EB 78 */	mr r3, r29
/* 80554218  48 00 09 19 */	bl isDelete__13daNpc_Kolin_cFv
/* 8055421C  2C 03 00 00 */	cmpwi r3, 0
/* 80554220  41 82 00 0C */	beq lbl_8055422C
/* 80554224  38 60 00 05 */	li r3, 5
/* 80554228  48 00 01 D4 */	b lbl_805543FC
lbl_8055422C:
/* 8055422C  7F A3 EB 78 */	mr r3, r29
/* 80554230  3C 80 80 55 */	lis r4, createHeapCallBack__13daNpc_Kolin_cFP10fopAc_ac_c@ha /* 0x80554A18@ha */
/* 80554234  38 84 4A 18 */	addi r4, r4, createHeapCallBack__13daNpc_Kolin_cFP10fopAc_ac_c@l /* 0x80554A18@l */
/* 80554238  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 8055423C  54 00 10 3A */	slwi r0, r0, 2
/* 80554240  38 BF 00 A0 */	addi r5, r31, 0xa0
/* 80554244  7C A5 00 2E */	lwzx r5, r5, r0
/* 80554248  4B AC 62 69 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8055424C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80554250  40 82 00 0C */	bne lbl_8055425C
/* 80554254  38 60 00 05 */	li r3, 5
/* 80554258  48 00 01 A4 */	b lbl_805543FC
lbl_8055425C:
/* 8055425C  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80554260  80 63 00 04 */	lwz r3, 4(r3)
/* 80554264  38 03 00 24 */	addi r0, r3, 0x24
/* 80554268  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8055426C  7F A3 EB 78 */	mr r3, r29
/* 80554270  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80554274  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 80554278  FC 60 08 90 */	fmr f3, f1
/* 8055427C  C0 9F 00 E4 */	lfs f4, 0xe4(r31)
/* 80554280  C0 BF 00 E8 */	lfs f5, 0xe8(r31)
/* 80554284  FC C0 20 90 */	fmr f6, f4
/* 80554288  4B AC 62 C1 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8055428C  38 7D 05 80 */	addi r3, r29, 0x580
/* 80554290  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80554294  38 BD 05 38 */	addi r5, r29, 0x538
/* 80554298  38 C0 00 03 */	li r6, 3
/* 8055429C  38 E0 00 01 */	li r7, 1
/* 805542A0  4B D6 C2 91 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 805542A4  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 805542A8  38 9D 06 8C */	addi r4, r29, 0x68c
/* 805542AC  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 805542B0  FC 40 08 90 */	fmr f2, f1
/* 805542B4  4B AF C9 E9 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 805542B8  7F A3 EB 78 */	mr r3, r29
/* 805542BC  48 00 09 F5 */	bl reset__13daNpc_Kolin_cFv
/* 805542C0  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 805542C4  90 01 00 08 */	stw r0, 8(r1)
/* 805542C8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 805542CC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805542D0  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 805542D4  7F A6 EB 78 */	mr r6, r29
/* 805542D8  38 E0 00 01 */	li r7, 1
/* 805542DC  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 805542E0  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 805542E4  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 805542E8  4B B2 1F 61 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805542EC  38 7D 08 64 */	addi r3, r29, 0x864
/* 805542F0  38 9F 00 00 */	addi r4, r31, 0
/* 805542F4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 805542F8  FC 00 00 1E */	fctiwz f0, f0
/* 805542FC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80554300  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80554304  38 A0 00 00 */	li r5, 0
/* 80554308  7F A6 EB 78 */	mr r6, r29
/* 8055430C  4B B2 F5 55 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80554310  38 7D 0E 48 */	addi r3, r29, 0xe48
/* 80554314  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80554318  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 8055431C  4B B3 05 99 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80554320  38 1D 08 64 */	addi r0, r29, 0x864
/* 80554324  90 1D 0E 8C */	stw r0, 0xe8c(r29)
/* 80554328  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 8055432C  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80554330  90 1D 0E EC */	stw r0, 0xeec(r29)
/* 80554334  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80554338  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055433C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80554340  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80554344  4B B2 27 69 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80554348  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 8055434C  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80554350  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80554354  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80554358  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 8055435C  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80554360  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80554364  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80554368  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 8055436C  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80554370  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80554374  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80554378  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 8055437C  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80554380  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80554384  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80554388  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 8055438C  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80554390  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80554394  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80554398  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 8055439C  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 805543A0  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 805543A4  90 1D 09 60 */	stw r0, 0x960(r29)
/* 805543A8  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 805543AC  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 805543B0  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 805543B4  90 1D 09 68 */	stw r0, 0x968(r29)
/* 805543B8  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 805543BC  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 805543C0  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 805543C4  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 805543C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805543CC  41 82 00 14 */	beq lbl_805543E0
/* 805543D0  7F A3 EB 78 */	mr r3, r29
/* 805543D4  4B BF 48 9D */	bl setEnvTevColor__8daNpcT_cFv
/* 805543D8  7F A3 EB 78 */	mr r3, r29
/* 805543DC  4B BF 48 F1 */	bl setRoomNo__8daNpcT_cFv
lbl_805543E0:
/* 805543E0  38 00 00 01 */	li r0, 1
/* 805543E4  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 805543E8  7F A3 EB 78 */	mr r3, r29
/* 805543EC  48 00 05 79 */	bl Execute__13daNpc_Kolin_cFv
/* 805543F0  38 00 00 00 */	li r0, 0
/* 805543F4  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_805543F8:
/* 805543F8  7F C3 F3 78 */	mr r3, r30
lbl_805543FC:
/* 805543FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80554400  4B E0 DE 29 */	bl _restgpr_29
/* 80554404  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80554408  7C 08 03 A6 */	mtlr r0
/* 8055440C  38 21 00 30 */	addi r1, r1, 0x30
/* 80554410  4E 80 00 20 */	blr 
