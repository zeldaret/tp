lbl_80AADEE0:
/* 80AADEE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AADEE4  7C 08 02 A6 */	mflr r0
/* 80AADEE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AADEEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80AADEF0  4B 8B 42 EC */	b _savegpr_29
/* 80AADEF4  7C 7D 1B 78 */	mr r29, r3
/* 80AADEF8  3C 80 80 AB */	lis r4, m__19daNpc_Pouya_Param_c@ha
/* 80AADEFC  3B E4 20 00 */	addi r31, r4, m__19daNpc_Pouya_Param_c@l
/* 80AADF00  3C 80 80 AB */	lis r4, cNullVec__6Z2Calc@ha
/* 80AADF04  3B C4 21 F0 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80AADF08  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AADF0C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AADF10  40 82 00 40 */	bne lbl_80AADF50
/* 80AADF14  28 1D 00 00 */	cmplwi r29, 0
/* 80AADF18  41 82 00 2C */	beq lbl_80AADF44
/* 80AADF1C  38 1E 00 80 */	addi r0, r30, 0x80
/* 80AADF20  90 01 00 08 */	stw r0, 8(r1)
/* 80AADF24  38 9E 00 AC */	addi r4, r30, 0xac
/* 80AADF28  38 BE 02 6C */	addi r5, r30, 0x26c
/* 80AADF2C  38 DE 05 44 */	addi r6, r30, 0x544
/* 80AADF30  38 E0 00 04 */	li r7, 4
/* 80AADF34  39 1E 06 64 */	addi r8, r30, 0x664
/* 80AADF38  39 20 00 04 */	li r9, 4
/* 80AADF3C  39 5E 00 38 */	addi r10, r30, 0x38
/* 80AADF40  48 00 3F 55 */	bl __ct__13daNpc_Pouya_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80AADF44:
/* 80AADF44  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80AADF48  60 00 00 08 */	ori r0, r0, 8
/* 80AADF4C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80AADF50:
/* 80AADF50  7F A3 EB 78 */	mr r3, r29
/* 80AADF54  48 00 09 95 */	bl getType__13daNpc_Pouya_cFv
/* 80AADF58  98 7D 0F 84 */	stb r3, 0xf84(r29)
/* 80AADF5C  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80AADF60  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80AADF64  28 03 FF FF */	cmplwi r3, 0xffff
/* 80AADF68  38 00 FF FF */	li r0, -1
/* 80AADF6C  41 82 00 08 */	beq lbl_80AADF74
/* 80AADF70  7C 60 1B 78 */	mr r0, r3
lbl_80AADF74:
/* 80AADF74  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80AADF78  38 00 00 00 */	li r0, 0
/* 80AADF7C  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80AADF80  7F A3 EB 78 */	mr r3, r29
/* 80AADF84  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80AADF88  54 00 10 3A */	slwi r0, r0, 2
/* 80AADF8C  38 9E 00 94 */	addi r4, r30, 0x94
/* 80AADF90  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AADF94  38 BE 00 80 */	addi r5, r30, 0x80
/* 80AADF98  4B 69 A4 60 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80AADF9C  7C 7E 1B 78 */	mr r30, r3
/* 80AADFA0  2C 1E 00 04 */	cmpwi r30, 4
/* 80AADFA4  40 82 01 EC */	bne lbl_80AAE190
/* 80AADFA8  7F A3 EB 78 */	mr r3, r29
/* 80AADFAC  48 00 09 A1 */	bl isDelete__13daNpc_Pouya_cFv
/* 80AADFB0  2C 03 00 00 */	cmpwi r3, 0
/* 80AADFB4  41 82 00 0C */	beq lbl_80AADFC0
/* 80AADFB8  38 60 00 05 */	li r3, 5
/* 80AADFBC  48 00 01 D8 */	b lbl_80AAE194
lbl_80AADFC0:
/* 80AADFC0  7F A3 EB 78 */	mr r3, r29
/* 80AADFC4  3C 80 80 AB */	lis r4, createHeapCallBack__13daNpc_Pouya_cFP10fopAc_ac_c@ha
/* 80AADFC8  38 84 E8 70 */	addi r4, r4, createHeapCallBack__13daNpc_Pouya_cFP10fopAc_ac_c@l
/* 80AADFCC  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80AADFD0  54 00 10 3A */	slwi r0, r0, 2
/* 80AADFD4  38 BF 00 8C */	addi r5, r31, 0x8c
/* 80AADFD8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AADFDC  4B 56 C4 D4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AADFE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AADFE4  40 82 00 0C */	bne lbl_80AADFF0
/* 80AADFE8  38 60 00 05 */	li r3, 5
/* 80AADFEC  48 00 01 A8 */	b lbl_80AAE194
lbl_80AADFF0:
/* 80AADFF0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AADFF4  80 63 00 04 */	lwz r3, 4(r3)
/* 80AADFF8  38 03 00 24 */	addi r0, r3, 0x24
/* 80AADFFC  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80AAE000  7F A3 EB 78 */	mr r3, r29
/* 80AAE004  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80AAE008  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80AAE00C  FC 60 08 90 */	fmr f3, f1
/* 80AAE010  C0 9F 00 AC */	lfs f4, 0xac(r31)
/* 80AAE014  C0 BF 00 B0 */	lfs f5, 0xb0(r31)
/* 80AAE018  FC C0 20 90 */	fmr f6, f4
/* 80AAE01C  4B 56 C5 2C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AAE020  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AAE024  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AAE028  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AAE02C  38 C0 00 03 */	li r6, 3
/* 80AAE030  38 E0 00 01 */	li r7, 1
/* 80AAE034  4B 81 24 FC */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80AAE038  7F A3 EB 78 */	mr r3, r29
/* 80AAE03C  48 00 09 9D */	bl reset__13daNpc_Pouya_cFv
/* 80AAE040  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80AAE044  90 01 00 08 */	stw r0, 8(r1)
/* 80AAE048  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AAE04C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AAE050  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80AAE054  7F A6 EB 78 */	mr r6, r29
/* 80AAE058  38 E0 00 01 */	li r7, 1
/* 80AAE05C  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80AAE060  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80AAE064  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80AAE068  4B 5C 81 E0 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AAE06C  38 7D 08 64 */	addi r3, r29, 0x864
/* 80AAE070  38 9F 00 00 */	addi r4, r31, 0
/* 80AAE074  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AAE078  FC 00 00 1E */	fctiwz f0, f0
/* 80AAE07C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AAE080  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AAE084  38 A0 00 00 */	li r5, 0
/* 80AAE088  7F A6 EB 78 */	mr r6, r29
/* 80AAE08C  4B 5D 57 D4 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AAE090  38 7D 0E 48 */	addi r3, r29, 0xe48
/* 80AAE094  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80AAE098  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80AAE09C  4B 5D 68 18 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AAE0A0  38 1D 08 64 */	addi r0, r29, 0x864
/* 80AAE0A4  90 1D 0E 8C */	stw r0, 0xe8c(r29)
/* 80AAE0A8  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80AAE0AC  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80AAE0B0  90 1D 0E EC */	stw r0, 0xeec(r29)
/* 80AAE0B4  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80AAE0B8  60 00 00 02 */	ori r0, r0, 2
/* 80AAE0BC  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80AAE0C0  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80AAE0C4  60 00 00 04 */	ori r0, r0, 4
/* 80AAE0C8  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80AAE0CC  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AAE0D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AAE0D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AAE0D8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AAE0DC  4B 5C 89 D0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80AAE0E0  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80AAE0E4  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80AAE0E8  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80AAE0EC  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80AAE0F0  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80AAE0F4  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80AAE0F8  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80AAE0FC  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80AAE100  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80AAE104  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80AAE108  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80AAE10C  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80AAE110  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80AAE114  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80AAE118  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80AAE11C  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80AAE120  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80AAE124  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80AAE128  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80AAE12C  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80AAE130  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80AAE134  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80AAE138  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80AAE13C  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80AAE140  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80AAE144  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80AAE148  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80AAE14C  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80AAE150  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80AAE154  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80AAE158  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80AAE15C  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80AAE160  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AAE164  41 82 00 14 */	beq lbl_80AAE178
/* 80AAE168  7F A3 EB 78 */	mr r3, r29
/* 80AAE16C  4B 69 AB 04 */	b setEnvTevColor__8daNpcT_cFv
/* 80AAE170  7F A3 EB 78 */	mr r3, r29
/* 80AAE174  4B 69 AB 58 */	b setRoomNo__8daNpcT_cFv
lbl_80AAE178:
/* 80AAE178  38 00 00 01 */	li r0, 1
/* 80AAE17C  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80AAE180  7F A3 EB 78 */	mr r3, r29
/* 80AAE184  48 00 06 39 */	bl Execute__13daNpc_Pouya_cFv
/* 80AAE188  38 00 00 00 */	li r0, 0
/* 80AAE18C  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80AAE190:
/* 80AAE190  7F C3 F3 78 */	mr r3, r30
lbl_80AAE194:
/* 80AAE194  39 61 00 30 */	addi r11, r1, 0x30
/* 80AAE198  4B 8B 40 90 */	b _restgpr_29
/* 80AAE19C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AAE1A0  7C 08 03 A6 */	mtlr r0
/* 80AAE1A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80AAE1A8  4E 80 00 20 */	blr 
