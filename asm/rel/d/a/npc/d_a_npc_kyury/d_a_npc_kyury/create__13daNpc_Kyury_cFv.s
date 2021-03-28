lbl_80A60218:
/* 80A60218  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A6021C  7C 08 02 A6 */	mflr r0
/* 80A60220  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A60224  39 61 00 30 */	addi r11, r1, 0x30
/* 80A60228  4B 90 1F B4 */	b _savegpr_29
/* 80A6022C  7C 7D 1B 78 */	mr r29, r3
/* 80A60230  3C 80 80 A6 */	lis r4, m__19daNpc_Kyury_Param_c@ha
/* 80A60234  3B E4 38 AC */	addi r31, r4, m__19daNpc_Kyury_Param_c@l
/* 80A60238  3C 80 80 A6 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A6023C  3B C4 3A 14 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80A60240  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A60244  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A60248  40 82 00 40 */	bne lbl_80A60288
/* 80A6024C  28 1D 00 00 */	cmplwi r29, 0
/* 80A60250  41 82 00 2C */	beq lbl_80A6027C
/* 80A60254  38 1E 00 50 */	addi r0, r30, 0x50
/* 80A60258  90 01 00 08 */	stw r0, 8(r1)
/* 80A6025C  38 9E 00 74 */	addi r4, r30, 0x74
/* 80A60260  38 BE 02 50 */	addi r5, r30, 0x250
/* 80A60264  38 DE 04 10 */	addi r6, r30, 0x410
/* 80A60268  38 E0 00 04 */	li r7, 4
/* 80A6026C  39 1E 05 10 */	addi r8, r30, 0x510
/* 80A60270  39 20 00 04 */	li r9, 4
/* 80A60274  39 5E 00 38 */	addi r10, r30, 0x38
/* 80A60278  48 00 34 A9 */	bl __ct__13daNpc_Kyury_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A6027C:
/* 80A6027C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A60280  60 00 00 08 */	ori r0, r0, 8
/* 80A60284  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A60288:
/* 80A60288  7F A3 EB 78 */	mr r3, r29
/* 80A6028C  48 00 08 7D */	bl getType__13daNpc_Kyury_cFv
/* 80A60290  98 7D 0F 88 */	stb r3, 0xf88(r29)
/* 80A60294  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A60298  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80A6029C  28 03 FF FF */	cmplwi r3, 0xffff
/* 80A602A0  38 00 FF FF */	li r0, -1
/* 80A602A4  41 82 00 08 */	beq lbl_80A602AC
/* 80A602A8  7C 60 1B 78 */	mr r0, r3
lbl_80A602AC:
/* 80A602AC  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A602B0  38 00 00 00 */	li r0, 0
/* 80A602B4  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80A602B8  7F A3 EB 78 */	mr r3, r29
/* 80A602BC  88 1D 0F 88 */	lbz r0, 0xf88(r29)
/* 80A602C0  54 00 10 3A */	slwi r0, r0, 2
/* 80A602C4  38 9E 00 64 */	addi r4, r30, 0x64
/* 80A602C8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A602CC  38 BE 00 50 */	addi r5, r30, 0x50
/* 80A602D0  4B 6E 81 28 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80A602D4  7C 7E 1B 78 */	mr r30, r3
/* 80A602D8  2C 1E 00 04 */	cmpwi r30, 4
/* 80A602DC  40 82 01 EC */	bne lbl_80A604C8
/* 80A602E0  7F A3 EB 78 */	mr r3, r29
/* 80A602E4  48 00 08 71 */	bl isDelete__13daNpc_Kyury_cFv
/* 80A602E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A602EC  41 82 00 0C */	beq lbl_80A602F8
/* 80A602F0  38 60 00 05 */	li r3, 5
/* 80A602F4  48 00 01 D8 */	b lbl_80A604CC
lbl_80A602F8:
/* 80A602F8  7F A3 EB 78 */	mr r3, r29
/* 80A602FC  3C 80 80 A6 */	lis r4, createHeapCallBack__13daNpc_Kyury_cFP10fopAc_ac_c@ha
/* 80A60300  38 84 0A 90 */	addi r4, r4, createHeapCallBack__13daNpc_Kyury_cFP10fopAc_ac_c@l
/* 80A60304  38 A0 48 90 */	li r5, 0x4890
/* 80A60308  4B 5B A1 A8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A6030C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A60310  40 82 00 0C */	bne lbl_80A6031C
/* 80A60314  38 60 00 05 */	li r3, 5
/* 80A60318  48 00 01 B4 */	b lbl_80A604CC
lbl_80A6031C:
/* 80A6031C  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80A60320  80 63 00 04 */	lwz r3, 4(r3)
/* 80A60324  38 03 00 24 */	addi r0, r3, 0x24
/* 80A60328  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A6032C  7F A3 EB 78 */	mr r3, r29
/* 80A60330  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A60334  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80A60338  FC 60 08 90 */	fmr f3, f1
/* 80A6033C  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80A60340  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80A60344  FC C0 20 90 */	fmr f6, f4
/* 80A60348  4B 5B A2 00 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A6034C  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A60350  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A60354  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A60358  38 C0 00 03 */	li r6, 3
/* 80A6035C  38 E0 00 01 */	li r7, 1
/* 80A60360  4B 86 01 D0 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80A60364  7F A3 EB 78 */	mr r3, r29
/* 80A60368  48 00 08 35 */	bl reset__13daNpc_Kyury_cFv
/* 80A6036C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A60370  90 01 00 08 */	stw r0, 8(r1)
/* 80A60374  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A60378  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A6037C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A60380  7F A6 EB 78 */	mr r6, r29
/* 80A60384  38 E0 00 01 */	li r7, 1
/* 80A60388  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80A6038C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A60390  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A60394  4B 61 5E B4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A60398  38 7D 08 64 */	addi r3, r29, 0x864
/* 80A6039C  38 9F 00 00 */	addi r4, r31, 0
/* 80A603A0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A603A4  FC 00 00 1E */	fctiwz f0, f0
/* 80A603A8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A603AC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A603B0  38 A0 00 00 */	li r5, 0
/* 80A603B4  7F A6 EB 78 */	mr r6, r29
/* 80A603B8  4B 62 34 A8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A603BC  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 80A603C0  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80A603C4  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80A603C8  4B 62 44 EC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A603CC  38 1D 08 64 */	addi r0, r29, 0x864
/* 80A603D0  90 1D 0E 90 */	stw r0, 0xe90(r29)
/* 80A603D4  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80A603D8  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80A603DC  90 1D 0E F0 */	stw r0, 0xef0(r29)
/* 80A603E0  88 1D 0F 88 */	lbz r0, 0xf88(r29)
/* 80A603E4  28 00 00 01 */	cmplwi r0, 1
/* 80A603E8  40 82 00 1C */	bne lbl_80A60404
/* 80A603EC  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80A603F0  60 00 00 02 */	ori r0, r0, 2
/* 80A603F4  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80A603F8  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80A603FC  60 00 00 04 */	ori r0, r0, 4
/* 80A60400  90 1D 06 B8 */	stw r0, 0x6b8(r29)
lbl_80A60404:
/* 80A60404  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A60408  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A6040C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A60410  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A60414  4B 61 66 98 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A60418  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80A6041C  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80A60420  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80A60424  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80A60428  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80A6042C  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A60430  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80A60434  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80A60438  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80A6043C  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80A60440  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80A60444  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80A60448  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80A6044C  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80A60450  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80A60454  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80A60458  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80A6045C  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80A60460  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80A60464  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80A60468  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80A6046C  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80A60470  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80A60474  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80A60478  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80A6047C  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80A60480  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80A60484  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A60488  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80A6048C  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80A60490  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80A60494  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80A60498  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A6049C  41 82 00 14 */	beq lbl_80A604B0
/* 80A604A0  7F A3 EB 78 */	mr r3, r29
/* 80A604A4  4B 6E 87 CC */	b setEnvTevColor__8daNpcT_cFv
/* 80A604A8  7F A3 EB 78 */	mr r3, r29
/* 80A604AC  4B 6E 88 20 */	b setRoomNo__8daNpcT_cFv
lbl_80A604B0:
/* 80A604B0  38 00 00 01 */	li r0, 1
/* 80A604B4  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80A604B8  7F A3 EB 78 */	mr r3, r29
/* 80A604BC  48 00 05 21 */	bl Execute__13daNpc_Kyury_cFv
/* 80A604C0  38 00 00 00 */	li r0, 0
/* 80A604C4  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80A604C8:
/* 80A604C8  7F C3 F3 78 */	mr r3, r30
lbl_80A604CC:
/* 80A604CC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A604D0  4B 90 1D 58 */	b _restgpr_29
/* 80A604D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A604D8  7C 08 03 A6 */	mtlr r0
/* 80A604DC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A604E0  4E 80 00 20 */	blr 
