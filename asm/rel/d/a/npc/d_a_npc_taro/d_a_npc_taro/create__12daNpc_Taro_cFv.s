lbl_8056604C:
/* 8056604C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80566050  7C 08 02 A6 */	mflr r0
/* 80566054  90 01 00 34 */	stw r0, 0x34(r1)
/* 80566058  39 61 00 30 */	addi r11, r1, 0x30
/* 8056605C  4B DF C1 81 */	bl _savegpr_29
/* 80566060  7C 7D 1B 78 */	mr r29, r3
/* 80566064  3C 80 80 57 */	lis r4, m__18daNpc_Taro_Param_c@ha /* 0x805716C8@ha */
/* 80566068  3B E4 16 C8 */	addi r31, r4, m__18daNpc_Taro_Param_c@l /* 0x805716C8@l */
/* 8056606C  3C 80 80 57 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80571BC8@ha */
/* 80566070  3B C4 1B C8 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80571BC8@l */
/* 80566074  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80566078  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8056607C  40 82 00 40 */	bne lbl_805660BC
/* 80566080  28 1D 00 00 */	cmplwi r29, 0
/* 80566084  41 82 00 2C */	beq lbl_805660B0
/* 80566088  38 1E 01 2C */	addi r0, r30, 0x12c
/* 8056608C  90 01 00 08 */	stw r0, 8(r1)
/* 80566090  38 9E 01 D8 */	addi r4, r30, 0x1d8
/* 80566094  38 BE 05 20 */	addi r5, r30, 0x520
/* 80566098  38 DE 09 B8 */	addi r6, r30, 0x9b8
/* 8056609C  38 E0 00 04 */	li r7, 4
/* 805660A0  39 1E 0B B8 */	addi r8, r30, 0xbb8
/* 805660A4  39 20 00 04 */	li r9, 4
/* 805660A8  39 5E 00 54 */	addi r10, r30, 0x54
/* 805660AC  48 00 B3 E1 */	bl __ct__12daNpc_Taro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_805660B0:
/* 805660B0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 805660B4  60 00 00 08 */	ori r0, r0, 8
/* 805660B8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_805660BC:
/* 805660BC  7F A3 EB 78 */	mr r3, r29
/* 805660C0  48 00 0C 0D */	bl getType__12daNpc_Taro_cFv
/* 805660C4  98 7D 10 C4 */	stb r3, 0x10c4(r29)
/* 805660C8  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 805660CC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 805660D0  28 03 FF FF */	cmplwi r3, 0xffff
/* 805660D4  38 00 FF FF */	li r0, -1
/* 805660D8  41 82 00 08 */	beq lbl_805660E0
/* 805660DC  7C 60 1B 78 */	mr r0, r3
lbl_805660E0:
/* 805660E0  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 805660E4  4B C4 64 99 */	bl dKy_darkworld_check__Fv
/* 805660E8  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 805660EC  88 1D 10 C4 */	lbz r0, 0x10c4(r29)
/* 805660F0  28 00 00 09 */	cmplwi r0, 9
/* 805660F4  40 82 00 0C */	bne lbl_80566100
/* 805660F8  38 00 00 00 */	li r0, 0
/* 805660FC  98 1D 0A 89 */	stb r0, 0xa89(r29)
lbl_80566100:
/* 80566100  7F A3 EB 78 */	mr r3, r29
/* 80566104  88 1D 10 C4 */	lbz r0, 0x10c4(r29)
/* 80566108  54 00 10 3A */	slwi r0, r0, 2
/* 8056610C  38 9E 01 94 */	addi r4, r30, 0x194
/* 80566110  7C 84 00 2E */	lwzx r4, r4, r0
/* 80566114  38 BE 01 2C */	addi r5, r30, 0x12c
/* 80566118  4B BE 22 E1 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 8056611C  7C 7E 1B 78 */	mr r30, r3
/* 80566120  2C 1E 00 04 */	cmpwi r30, 4
/* 80566124  40 82 02 00 */	bne lbl_80566324
/* 80566128  7F A3 EB 78 */	mr r3, r29
/* 8056612C  48 00 0C 51 */	bl isDelete__12daNpc_Taro_cFv
/* 80566130  2C 03 00 00 */	cmpwi r3, 0
/* 80566134  41 82 00 0C */	beq lbl_80566140
/* 80566138  38 60 00 05 */	li r3, 5
/* 8056613C  48 00 01 EC */	b lbl_80566328
lbl_80566140:
/* 80566140  7F A3 EB 78 */	mr r3, r29
/* 80566144  3C 80 80 56 */	lis r4, createHeapCallBack__12daNpc_Taro_cFP10fopAc_ac_c@ha /* 0x805669F8@ha */
/* 80566148  38 84 69 F8 */	addi r4, r4, createHeapCallBack__12daNpc_Taro_cFP10fopAc_ac_c@l /* 0x805669F8@l */
/* 8056614C  88 1D 10 C4 */	lbz r0, 0x10c4(r29)
/* 80566150  54 00 10 3A */	slwi r0, r0, 2
/* 80566154  38 BF 00 90 */	addi r5, r31, 0x90
/* 80566158  7C A5 00 2E */	lwzx r5, r5, r0
/* 8056615C  4B AB 43 55 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80566160  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80566164  40 82 00 0C */	bne lbl_80566170
/* 80566168  38 60 00 05 */	li r3, 5
/* 8056616C  48 00 01 BC */	b lbl_80566328
lbl_80566170:
/* 80566170  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80566174  80 63 00 04 */	lwz r3, 4(r3)
/* 80566178  38 03 00 24 */	addi r0, r3, 0x24
/* 8056617C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80566180  7F A3 EB 78 */	mr r3, r29
/* 80566184  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80566188  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 8056618C  FC 60 08 90 */	fmr f3, f1
/* 80566190  C0 9F 00 DC */	lfs f4, 0xdc(r31)
/* 80566194  C0 BF 00 E0 */	lfs f5, 0xe0(r31)
/* 80566198  FC C0 20 90 */	fmr f6, f4
/* 8056619C  4B AB 43 AD */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 805661A0  38 7D 05 80 */	addi r3, r29, 0x580
/* 805661A4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805661A8  38 BD 05 38 */	addi r5, r29, 0x538
/* 805661AC  38 C0 00 03 */	li r6, 3
/* 805661B0  38 E0 00 01 */	li r7, 1
/* 805661B4  4B D5 A3 7D */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 805661B8  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 805661BC  38 9D 06 8C */	addi r4, r29, 0x68c
/* 805661C0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 805661C4  FC 40 08 90 */	fmr f2, f1
/* 805661C8  4B AE AA D5 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 805661CC  7F A3 EB 78 */	mr r3, r29
/* 805661D0  48 00 0D D5 */	bl reset__12daNpc_Taro_cFv
/* 805661D4  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 805661D8  90 01 00 08 */	stw r0, 8(r1)
/* 805661DC  38 7D 06 8C */	addi r3, r29, 0x68c
/* 805661E0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805661E4  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 805661E8  7F A6 EB 78 */	mr r6, r29
/* 805661EC  38 E0 00 01 */	li r7, 1
/* 805661F0  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 805661F4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 805661F8  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 805661FC  4B B1 00 4D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80566200  38 7D 08 64 */	addi r3, r29, 0x864
/* 80566204  38 9F 00 00 */	addi r4, r31, 0
/* 80566208  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8056620C  FC 00 00 1E */	fctiwz f0, f0
/* 80566210  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80566214  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80566218  38 A0 00 00 */	li r5, 0
/* 8056621C  7F A6 EB 78 */	mr r6, r29
/* 80566220  4B B1 D6 41 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80566224  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 80566228  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 8056622C  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80566230  4B B1 E6 85 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80566234  38 1D 08 64 */	addi r0, r29, 0x864
/* 80566238  90 1D 0E 90 */	stw r0, 0xe90(r29)
/* 8056623C  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80566240  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80566244  90 1D 0E F0 */	stw r0, 0xef0(r29)
/* 80566248  38 7D 0F 88 */	addi r3, r29, 0xf88
/* 8056624C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80566250  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80566254  4B B1 E6 61 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80566258  38 1D 08 64 */	addi r0, r29, 0x864
/* 8056625C  90 1D 0F CC */	stw r0, 0xfcc(r29)
/* 80566260  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80566264  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80566268  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056626C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80566270  4B B1 08 3D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80566274  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80566278  90 1D 09 30 */	stw r0, 0x930(r29)
/* 8056627C  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80566280  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80566284  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80566288  90 1D 09 38 */	stw r0, 0x938(r29)
/* 8056628C  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80566290  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80566294  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80566298  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 8056629C  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 805662A0  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 805662A4  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 805662A8  90 1D 09 48 */	stw r0, 0x948(r29)
/* 805662AC  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 805662B0  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 805662B4  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 805662B8  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 805662BC  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 805662C0  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 805662C4  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 805662C8  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 805662CC  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 805662D0  90 1D 09 60 */	stw r0, 0x960(r29)
/* 805662D4  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 805662D8  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 805662DC  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 805662E0  90 1D 09 68 */	stw r0, 0x968(r29)
/* 805662E4  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 805662E8  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 805662EC  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 805662F0  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 805662F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805662F8  41 82 00 14 */	beq lbl_8056630C
/* 805662FC  7F A3 EB 78 */	mr r3, r29
/* 80566300  4B BE 29 71 */	bl setEnvTevColor__8daNpcT_cFv
/* 80566304  7F A3 EB 78 */	mr r3, r29
/* 80566308  4B BE 29 C5 */	bl setRoomNo__8daNpcT_cFv
lbl_8056630C:
/* 8056630C  38 00 00 01 */	li r0, 1
/* 80566310  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80566314  7F A3 EB 78 */	mr r3, r29
/* 80566318  48 00 06 2D */	bl Execute__12daNpc_Taro_cFv
/* 8056631C  38 00 00 00 */	li r0, 0
/* 80566320  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80566324:
/* 80566324  7F C3 F3 78 */	mr r3, r30
lbl_80566328:
/* 80566328  39 61 00 30 */	addi r11, r1, 0x30
/* 8056632C  4B DF BE FD */	bl _restgpr_29
/* 80566330  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80566334  7C 08 03 A6 */	mtlr r0
/* 80566338  38 21 00 30 */	addi r1, r1, 0x30
/* 8056633C  4E 80 00 20 */	blr 
