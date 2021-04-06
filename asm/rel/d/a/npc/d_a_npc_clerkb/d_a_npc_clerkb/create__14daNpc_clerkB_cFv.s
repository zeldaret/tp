lbl_80996090:
/* 80996090  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80996094  7C 08 02 A6 */	mflr r0
/* 80996098  90 01 00 34 */	stw r0, 0x34(r1)
/* 8099609C  39 61 00 30 */	addi r11, r1, 0x30
/* 809960A0  4B 9C C1 3D */	bl _savegpr_29
/* 809960A4  7C 7D 1B 78 */	mr r29, r3
/* 809960A8  3C 80 80 9A */	lis r4, m__20daNpc_clerkB_Param_c@ha /* 0x80999978@ha */
/* 809960AC  3B E4 99 78 */	addi r31, r4, m__20daNpc_clerkB_Param_c@l /* 0x80999978@l */
/* 809960B0  3C 80 80 9A */	lis r4, cNullVec__6Z2Calc@ha /* 0x80999AB0@ha */
/* 809960B4  3B C4 9A B0 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80999AB0@l */
/* 809960B8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809960BC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809960C0  40 82 00 40 */	bne lbl_80996100
/* 809960C4  28 1D 00 00 */	cmplwi r29, 0
/* 809960C8  41 82 00 2C */	beq lbl_809960F4
/* 809960CC  38 1E 00 40 */	addi r0, r30, 0x40
/* 809960D0  90 01 00 08 */	stw r0, 8(r1)
/* 809960D4  38 9E 00 54 */	addi r4, r30, 0x54
/* 809960D8  38 BE 01 50 */	addi r5, r30, 0x150
/* 809960DC  38 DE 02 4C */	addi r6, r30, 0x24c
/* 809960E0  38 E0 00 04 */	li r7, 4
/* 809960E4  39 1E 02 DC */	addi r8, r30, 0x2dc
/* 809960E8  39 20 00 04 */	li r9, 4
/* 809960EC  39 5E 00 28 */	addi r10, r30, 0x28
/* 809960F0  48 00 35 91 */	bl __ct__14daNpc_clerkB_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_809960F4:
/* 809960F4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 809960F8  60 00 00 08 */	ori r0, r0, 8
/* 809960FC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80996100:
/* 80996100  7F A3 EB 78 */	mr r3, r29
/* 80996104  48 00 08 D9 */	bl getType__14daNpc_clerkB_cFv
/* 80996108  98 7D 10 D4 */	stb r3, 0x10d4(r29)
/* 8099610C  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80996110  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80996114  28 03 FF FF */	cmplwi r3, 0xffff
/* 80996118  38 00 FF FF */	li r0, -1
/* 8099611C  41 82 00 08 */	beq lbl_80996124
/* 80996120  7C 60 1B 78 */	mr r0, r3
lbl_80996124:
/* 80996124  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80996128  4B 81 64 55 */	bl dKy_darkworld_check__Fv
/* 8099612C  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 80996130  7F A3 EB 78 */	mr r3, r29
/* 80996134  88 1D 10 D4 */	lbz r0, 0x10d4(r29)
/* 80996138  54 00 10 3A */	slwi r0, r0, 2
/* 8099613C  38 9E 00 4C */	addi r4, r30, 0x4c
/* 80996140  7C 84 00 2E */	lwzx r4, r4, r0
/* 80996144  38 BE 00 40 */	addi r5, r30, 0x40
/* 80996148  4B 7B 22 B1 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 8099614C  7C 7E 1B 78 */	mr r30, r3
/* 80996150  2C 1E 00 04 */	cmpwi r30, 4
/* 80996154  40 82 01 C8 */	bne lbl_8099631C
/* 80996158  7F A3 EB 78 */	mr r3, r29
/* 8099615C  3C 80 80 99 */	lis r4, createHeapCallBack__14daNpc_clerkB_cFP10fopAc_ac_c@ha /* 0x80996964@ha */
/* 80996160  38 84 69 64 */	addi r4, r4, createHeapCallBack__14daNpc_clerkB_cFP10fopAc_ac_c@l /* 0x80996964@l */
/* 80996164  38 A0 43 80 */	li r5, 0x4380
/* 80996168  4B 68 43 49 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8099616C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80996170  40 82 00 0C */	bne lbl_8099617C
/* 80996174  38 60 00 05 */	li r3, 5
/* 80996178  48 00 01 A8 */	b lbl_80996320
lbl_8099617C:
/* 8099617C  7F A3 EB 78 */	mr r3, r29
/* 80996180  48 00 0D FD */	bl isDelete__14daNpc_clerkB_cFv
/* 80996184  2C 03 00 00 */	cmpwi r3, 0
/* 80996188  41 82 00 0C */	beq lbl_80996194
/* 8099618C  38 60 00 05 */	li r3, 5
/* 80996190  48 00 01 90 */	b lbl_80996320
lbl_80996194:
/* 80996194  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80996198  80 63 00 04 */	lwz r3, 4(r3)
/* 8099619C  38 03 00 24 */	addi r0, r3, 0x24
/* 809961A0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 809961A4  7F A3 EB 78 */	mr r3, r29
/* 809961A8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 809961AC  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 809961B0  FC 60 08 90 */	fmr f3, f1
/* 809961B4  C0 9F 00 9C */	lfs f4, 0x9c(r31)
/* 809961B8  C0 BF 00 A0 */	lfs f5, 0xa0(r31)
/* 809961BC  FC C0 20 90 */	fmr f6, f4
/* 809961C0  4B 68 43 89 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809961C4  38 7D 05 80 */	addi r3, r29, 0x580
/* 809961C8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809961CC  38 BD 05 38 */	addi r5, r29, 0x538
/* 809961D0  38 C0 00 03 */	li r6, 3
/* 809961D4  38 E0 00 01 */	li r7, 1
/* 809961D8  4B 92 A3 59 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 809961DC  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 809961E0  90 01 00 08 */	stw r0, 8(r1)
/* 809961E4  38 7D 06 8C */	addi r3, r29, 0x68c
/* 809961E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809961EC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 809961F0  7F A6 EB 78 */	mr r6, r29
/* 809961F4  38 E0 00 01 */	li r7, 1
/* 809961F8  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 809961FC  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80996200  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80996204  4B 6E 00 45 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80996208  38 7D 08 64 */	addi r3, r29, 0x864
/* 8099620C  38 9F 00 00 */	addi r4, r31, 0
/* 80996210  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80996214  FC 00 00 1E */	fctiwz f0, f0
/* 80996218  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8099621C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80996220  38 A0 00 00 */	li r5, 0
/* 80996224  7F A6 EB 78 */	mr r6, r29
/* 80996228  4B 6E D6 39 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8099622C  38 7D 0F 98 */	addi r3, r29, 0xf98
/* 80996230  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80996234  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80996238  4B 6E E6 7D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8099623C  38 1D 08 64 */	addi r0, r29, 0x864
/* 80996240  90 1D 0F DC */	stw r0, 0xfdc(r29)
/* 80996244  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80996248  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 8099624C  90 1D 10 3C */	stw r0, 0x103c(r29)
/* 80996250  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80996254  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80996258  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099625C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80996260  4B 6E 08 4D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80996264  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80996268  90 1D 09 30 */	stw r0, 0x930(r29)
/* 8099626C  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80996270  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80996274  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80996278  90 1D 09 38 */	stw r0, 0x938(r29)
/* 8099627C  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80996280  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80996284  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80996288  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 8099628C  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80996290  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80996294  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80996298  90 1D 09 48 */	stw r0, 0x948(r29)
/* 8099629C  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 809962A0  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 809962A4  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 809962A8  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 809962AC  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 809962B0  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 809962B4  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 809962B8  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 809962BC  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 809962C0  90 1D 09 60 */	stw r0, 0x960(r29)
/* 809962C4  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 809962C8  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 809962CC  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 809962D0  90 1D 09 68 */	stw r0, 0x968(r29)
/* 809962D4  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 809962D8  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 809962DC  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 809962E0  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 809962E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809962E8  41 82 00 14 */	beq lbl_809962FC
/* 809962EC  7F A3 EB 78 */	mr r3, r29
/* 809962F0  4B 7B 29 81 */	bl setEnvTevColor__8daNpcT_cFv
/* 809962F4  7F A3 EB 78 */	mr r3, r29
/* 809962F8  4B 7B 29 D5 */	bl setRoomNo__8daNpcT_cFv
lbl_809962FC:
/* 809962FC  7F A3 EB 78 */	mr r3, r29
/* 80996300  48 00 0C AD */	bl reset__14daNpc_clerkB_cFv
/* 80996304  38 00 00 01 */	li r0, 1
/* 80996308  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 8099630C  7F A3 EB 78 */	mr r3, r29
/* 80996310  48 00 04 E9 */	bl Execute__14daNpc_clerkB_cFv
/* 80996314  38 00 00 00 */	li r0, 0
/* 80996318  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_8099631C:
/* 8099631C  7F C3 F3 78 */	mr r3, r30
lbl_80996320:
/* 80996320  39 61 00 30 */	addi r11, r1, 0x30
/* 80996324  4B 9C BF 05 */	bl _restgpr_29
/* 80996328  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8099632C  7C 08 03 A6 */	mtlr r0
/* 80996330  38 21 00 30 */	addi r1, r1, 0x30
/* 80996334  4E 80 00 20 */	blr 
