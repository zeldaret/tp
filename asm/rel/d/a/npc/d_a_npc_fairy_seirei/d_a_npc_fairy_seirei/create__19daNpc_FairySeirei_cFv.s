lbl_8054006C:
/* 8054006C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80540070  7C 08 02 A6 */	mflr r0
/* 80540074  90 01 00 24 */	stw r0, 0x24(r1)
/* 80540078  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054007C  7C 7F 1B 78 */	mr r31, r3
/* 80540080  3C 80 80 54 */	lis r4, cNullVec__6Z2Calc@ha
/* 80540084  39 44 1E 60 */	addi r10, r4, cNullVec__6Z2Calc@l
/* 80540088  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8054008C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80540090  40 82 00 40 */	bne lbl_805400D0
/* 80540094  28 1F 00 00 */	cmplwi r31, 0
/* 80540098  41 82 00 2C */	beq lbl_805400C4
/* 8054009C  38 0A 00 28 */	addi r0, r10, 0x28
/* 805400A0  90 01 00 08 */	stw r0, 8(r1)
/* 805400A4  38 8A 00 44 */	addi r4, r10, 0x44
/* 805400A8  38 AA 00 60 */	addi r5, r10, 0x60
/* 805400AC  38 CA 00 7C */	addi r6, r10, 0x7c
/* 805400B0  38 E0 00 04 */	li r7, 4
/* 805400B4  39 0A 00 8C */	addi r8, r10, 0x8c
/* 805400B8  39 20 00 04 */	li r9, 4
/* 805400BC  39 4A 00 20 */	addi r10, r10, 0x20
/* 805400C0  48 00 1B 25 */	bl __ct__19daNpc_FairySeirei_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_805400C4:
/* 805400C4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805400C8  60 00 00 08 */	ori r0, r0, 8
/* 805400CC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805400D0:
/* 805400D0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805400D4  98 1F 0E 44 */	stb r0, 0xe44(r31)
/* 805400D8  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 805400DC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 805400E0  28 03 FF FF */	cmplwi r3, 0xffff
/* 805400E4  38 00 FF FF */	li r0, -1
/* 805400E8  41 82 00 08 */	beq lbl_805400F0
/* 805400EC  7C 60 1B 78 */	mr r0, r3
lbl_805400F0:
/* 805400F0  90 1F 0A 7C */	stw r0, 0xa7c(r31)
/* 805400F4  38 00 00 00 */	li r0, 0
/* 805400F8  98 1F 0A 89 */	stb r0, 0xa89(r31)
/* 805400FC  7F E3 FB 78 */	mr r3, r31
/* 80540100  48 00 01 F5 */	bl isDelete__19daNpc_FairySeirei_cFv
/* 80540104  2C 03 00 00 */	cmpwi r3, 0
/* 80540108  41 82 00 0C */	beq lbl_80540114
/* 8054010C  38 60 00 05 */	li r3, 5
/* 80540110  48 00 01 74 */	b lbl_80540284
lbl_80540114:
/* 80540114  38 1F 04 E4 */	addi r0, r31, 0x4e4
/* 80540118  90 01 00 08 */	stw r0, 8(r1)
/* 8054011C  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80540120  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80540124  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80540128  7F E6 FB 78 */	mr r6, r31
/* 8054012C  38 E0 00 01 */	li r7, 1
/* 80540130  39 1F 08 A0 */	addi r8, r31, 0x8a0
/* 80540134  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80540138  39 5F 04 DC */	addi r10, r31, 0x4dc
/* 8054013C  4B B3 61 0C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80540140  38 7F 08 64 */	addi r3, r31, 0x864
/* 80540144  3C 80 80 54 */	lis r4, m__25daNpc_FairySeirei_Param_c@ha
/* 80540148  38 84 1D 8C */	addi r4, r4, m__25daNpc_FairySeirei_Param_c@l
/* 8054014C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80540150  FC 00 00 1E */	fctiwz f0, f0
/* 80540154  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80540158  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8054015C  38 A0 00 00 */	li r5, 0
/* 80540160  7F E6 FB 78 */	mr r6, r31
/* 80540164  4B B4 36 FC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80540168  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 8054016C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80540170  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80540174  4B B4 47 40 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80540178  38 1F 08 64 */	addi r0, r31, 0x864
/* 8054017C  90 1F 0E 8C */	stw r0, 0xe8c(r31)
/* 80540180  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80540184  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80540188  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8054018C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80540190  4B B3 69 1C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80540194  80 1F 07 68 */	lwz r0, 0x768(r31)
/* 80540198  90 1F 09 30 */	stw r0, 0x930(r31)
/* 8054019C  80 1F 07 6C */	lwz r0, 0x76c(r31)
/* 805401A0  90 1F 09 34 */	stw r0, 0x934(r31)
/* 805401A4  80 1F 07 70 */	lwz r0, 0x770(r31)
/* 805401A8  90 1F 09 38 */	stw r0, 0x938(r31)
/* 805401AC  88 1F 07 74 */	lbz r0, 0x774(r31)
/* 805401B0  98 1F 09 3C */	stb r0, 0x93c(r31)
/* 805401B4  A0 1F 07 7C */	lhz r0, 0x77c(r31)
/* 805401B8  B0 1F 09 44 */	sth r0, 0x944(r31)
/* 805401BC  A0 1F 07 7E */	lhz r0, 0x77e(r31)
/* 805401C0  B0 1F 09 46 */	sth r0, 0x946(r31)
/* 805401C4  80 1F 07 80 */	lwz r0, 0x780(r31)
/* 805401C8  90 1F 09 48 */	stw r0, 0x948(r31)
/* 805401CC  80 1F 07 84 */	lwz r0, 0x784(r31)
/* 805401D0  90 1F 09 4C */	stw r0, 0x94c(r31)
/* 805401D4  C0 1F 07 8C */	lfs f0, 0x78c(r31)
/* 805401D8  D0 1F 09 54 */	stfs f0, 0x954(r31)
/* 805401DC  C0 1F 07 90 */	lfs f0, 0x790(r31)
/* 805401E0  D0 1F 09 58 */	stfs f0, 0x958(r31)
/* 805401E4  C0 1F 07 94 */	lfs f0, 0x794(r31)
/* 805401E8  D0 1F 09 5C */	stfs f0, 0x95c(r31)
/* 805401EC  80 1F 07 98 */	lwz r0, 0x798(r31)
/* 805401F0  90 1F 09 60 */	stw r0, 0x960(r31)
/* 805401F4  C0 1F 07 9C */	lfs f0, 0x79c(r31)
/* 805401F8  D0 1F 09 64 */	stfs f0, 0x964(r31)
/* 805401FC  80 1F 07 A0 */	lwz r0, 0x7a0(r31)
/* 80540200  90 1F 09 68 */	stw r0, 0x968(r31)
/* 80540204  C0 1F 07 24 */	lfs f0, 0x724(r31)
/* 80540208  D0 1F 0D F4 */	stfs f0, 0xdf4(r31)
/* 8054020C  3C 60 80 54 */	lis r3, lit_4024@ha
/* 80540210  C0 23 1E 20 */	lfs f1, lit_4024@l(r3)
/* 80540214  C0 1F 0D F4 */	lfs f0, 0xdf4(r31)
/* 80540218  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8054021C  41 82 00 14 */	beq lbl_80540230
/* 80540220  7F E3 FB 78 */	mr r3, r31
/* 80540224  4B C0 8A 4C */	b setEnvTevColor__8daNpcT_cFv
/* 80540228  7F E3 FB 78 */	mr r3, r31
/* 8054022C  4B C0 8A A0 */	b setRoomNo__8daNpcT_cFv
lbl_80540230:
/* 80540230  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80540234  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80540238  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 8054023C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80540240  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80540244  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80540248  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 8054024C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80540250  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80540254  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80540258  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 8054025C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80540260  7F E3 FB 78 */	mr r3, r31
/* 80540264  48 00 00 D1 */	bl reset__19daNpc_FairySeirei_cFv
/* 80540268  38 00 00 01 */	li r0, 1
/* 8054026C  98 1F 0A 88 */	stb r0, 0xa88(r31)
/* 80540270  7F E3 FB 78 */	mr r3, r31
/* 80540274  48 00 00 59 */	bl Execute__19daNpc_FairySeirei_cFv
/* 80540278  38 00 00 00 */	li r0, 0
/* 8054027C  98 1F 0A 88 */	stb r0, 0xa88(r31)
/* 80540280  38 60 00 04 */	li r3, 4
lbl_80540284:
/* 80540284  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80540288  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054028C  7C 08 03 A6 */	mtlr r0
/* 80540290  38 21 00 20 */	addi r1, r1, 0x20
/* 80540294  4E 80 00 20 */	blr 
