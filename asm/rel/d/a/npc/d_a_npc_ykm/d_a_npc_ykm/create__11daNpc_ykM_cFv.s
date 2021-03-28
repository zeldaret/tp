lbl_80B53698:
/* 80B53698  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B5369C  7C 08 02 A6 */	mflr r0
/* 80B536A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B536A4  39 61 00 40 */	addi r11, r1, 0x40
/* 80B536A8  4B 80 EB 1C */	b _savegpr_23
/* 80B536AC  7C 7D 1B 78 */	mr r29, r3
/* 80B536B0  3C 80 80 B6 */	lis r4, m__17daNpc_ykM_Param_c@ha
/* 80B536B4  3B E4 D7 94 */	addi r31, r4, m__17daNpc_ykM_Param_c@l
/* 80B536B8  3C 80 80 B6 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B536BC  3B 24 DA E8 */	addi r25, r4, cNullVec__6Z2Calc@l
/* 80B536C0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B536C4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B536C8  40 82 00 40 */	bne lbl_80B53708
/* 80B536CC  28 1D 00 00 */	cmplwi r29, 0
/* 80B536D0  41 82 00 2C */	beq lbl_80B536FC
/* 80B536D4  38 19 00 A0 */	addi r0, r25, 0xa0
/* 80B536D8  90 01 00 08 */	stw r0, 8(r1)
/* 80B536DC  38 99 00 EC */	addi r4, r25, 0xec
/* 80B536E0  38 B9 02 AC */	addi r5, r25, 0x2ac
/* 80B536E4  38 D9 08 40 */	addi r6, r25, 0x840
/* 80B536E8  38 E0 00 04 */	li r7, 4
/* 80B536EC  39 19 09 40 */	addi r8, r25, 0x940
/* 80B536F0  39 20 00 04 */	li r9, 4
/* 80B536F4  39 59 00 50 */	addi r10, r25, 0x50
/* 80B536F8  48 00 9E 91 */	bl __ct__11daNpc_ykM_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B536FC:
/* 80B536FC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B53700  60 00 00 08 */	ori r0, r0, 8
/* 80B53704  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B53708:
/* 80B53708  7F A3 EB 78 */	mr r3, r29
/* 80B5370C  48 00 10 95 */	bl getType__11daNpc_ykM_cFv
/* 80B53710  98 7D 14 74 */	stb r3, 0x1474(r29)
/* 80B53714  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80B53718  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80B5371C  28 03 FF FF */	cmplwi r3, 0xffff
/* 80B53720  38 00 FF FF */	li r0, -1
/* 80B53724  41 82 00 08 */	beq lbl_80B5372C
/* 80B53728  7C 60 1B 78 */	mr r0, r3
lbl_80B5372C:
/* 80B5372C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80B53730  38 00 00 00 */	li r0, 0
/* 80B53734  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80B53738  7F A3 EB 78 */	mr r3, r29
/* 80B5373C  88 1D 14 74 */	lbz r0, 0x1474(r29)
/* 80B53740  54 00 10 3A */	slwi r0, r0, 2
/* 80B53744  38 99 00 CC */	addi r4, r25, 0xcc
/* 80B53748  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B5374C  38 B9 00 A0 */	addi r5, r25, 0xa0
/* 80B53750  4B 5F 4C A8 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80B53754  7C 7E 1B 78 */	mr r30, r3
/* 80B53758  2C 1E 00 04 */	cmpwi r30, 4
/* 80B5375C  40 82 02 18 */	bne lbl_80B53974
/* 80B53760  7F A3 EB 78 */	mr r3, r29
/* 80B53764  48 00 10 A5 */	bl isDelete__11daNpc_ykM_cFv
/* 80B53768  2C 03 00 00 */	cmpwi r3, 0
/* 80B5376C  41 82 00 0C */	beq lbl_80B53778
/* 80B53770  38 60 00 05 */	li r3, 5
/* 80B53774  48 00 02 04 */	b lbl_80B53978
lbl_80B53778:
/* 80B53778  7F A3 EB 78 */	mr r3, r29
/* 80B5377C  3C 80 80 B5 */	lis r4, createHeapCallBack__11daNpc_ykM_cFP10fopAc_ac_c@ha
/* 80B53780  38 84 41 F8 */	addi r4, r4, createHeapCallBack__11daNpc_ykM_cFP10fopAc_ac_c@l
/* 80B53784  88 1D 14 74 */	lbz r0, 0x1474(r29)
/* 80B53788  54 00 10 3A */	slwi r0, r0, 2
/* 80B5378C  38 BF 00 C8 */	addi r5, r31, 0xc8
/* 80B53790  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B53794  4B 4C 6D 1C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B53798  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B5379C  40 82 00 0C */	bne lbl_80B537A8
/* 80B537A0  38 60 00 05 */	li r3, 5
/* 80B537A4  48 00 01 D4 */	b lbl_80B53978
lbl_80B537A8:
/* 80B537A8  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B537AC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B537B0  38 03 00 24 */	addi r0, r3, 0x24
/* 80B537B4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B537B8  7F A3 EB 78 */	mr r3, r29
/* 80B537BC  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80B537C0  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 80B537C4  C0 7F 00 F0 */	lfs f3, 0xf0(r31)
/* 80B537C8  C0 9F 00 F4 */	lfs f4, 0xf4(r31)
/* 80B537CC  C0 BF 00 F8 */	lfs f5, 0xf8(r31)
/* 80B537D0  C0 DF 00 FC */	lfs f6, 0xfc(r31)
/* 80B537D4  4B 4C 6D 74 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B537D8  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B537DC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B537E0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B537E4  38 C0 00 03 */	li r6, 3
/* 80B537E8  38 E0 00 01 */	li r7, 1
/* 80B537EC  4B 76 CD 44 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80B537F0  7F A3 EB 78 */	mr r3, r29
/* 80B537F4  48 00 10 B5 */	bl reset__11daNpc_ykM_cFv
/* 80B537F8  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B537FC  90 01 00 08 */	stw r0, 8(r1)
/* 80B53800  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B53804  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B53808  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B5380C  7F A6 EB 78 */	mr r6, r29
/* 80B53810  38 E0 00 01 */	li r7, 1
/* 80B53814  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B53818  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B5381C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B53820  4B 52 2A 28 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B53824  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B53828  38 9F 00 00 */	addi r4, r31, 0
/* 80B5382C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B53830  FC 00 00 1E */	fctiwz f0, f0
/* 80B53834  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B53838  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B5383C  38 A0 00 00 */	li r5, 0
/* 80B53840  7F A6 EB 78 */	mr r6, r29
/* 80B53844  4B 53 00 1C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B53848  3A E0 00 00 */	li r23, 0
/* 80B5384C  3B 80 00 00 */	li r28, 0
/* 80B53850  3C 60 80 3B */	lis r3, mCcDSph__8daNpcT_c@ha
/* 80B53854  3B 23 37 1C */	addi r25, r3, mCcDSph__8daNpcT_c@l
/* 80B53858  3B 5D 08 64 */	addi r26, r29, 0x864
/* 80B5385C  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80B53860  3B 63 7F A4 */	addi r27, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
lbl_80B53864:
/* 80B53864  7F 1D E2 14 */	add r24, r29, r28
/* 80B53868  38 78 0F 94 */	addi r3, r24, 0xf94
/* 80B5386C  7F 24 CB 78 */	mr r4, r25
/* 80B53870  4B 53 11 C4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80B53874  93 58 0F D8 */	stw r26, 0xfd8(r24)
/* 80B53878  93 78 10 38 */	stw r27, 0x1038(r24)
/* 80B5387C  3A F7 00 01 */	addi r23, r23, 1
/* 80B53880  2C 17 00 04 */	cmpwi r23, 4
/* 80B53884  3B 9C 01 38 */	addi r28, r28, 0x138
/* 80B53888  41 80 FF DC */	blt lbl_80B53864
/* 80B5388C  38 7D 0E 58 */	addi r3, r29, 0xe58
/* 80B53890  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80B53894  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80B53898  4B 53 10 1C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B5389C  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B538A0  90 1D 0E 9C */	stw r0, 0xe9c(r29)
/* 80B538A4  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80B538A8  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80B538AC  90 1D 0E FC */	stw r0, 0xefc(r29)
/* 80B538B0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B538B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B538B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B538BC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B538C0  4B 52 31 EC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B538C4  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B538C8  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B538CC  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B538D0  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B538D4  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B538D8  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B538DC  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B538E0  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B538E4  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B538E8  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B538EC  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B538F0  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B538F4  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B538F8  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B538FC  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B53900  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B53904  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B53908  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B5390C  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B53910  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B53914  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B53918  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B5391C  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B53920  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B53924  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B53928  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B5392C  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B53930  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B53934  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B53938  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B5393C  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80B53940  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80B53944  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B53948  41 82 00 14 */	beq lbl_80B5395C
/* 80B5394C  7F A3 EB 78 */	mr r3, r29
/* 80B53950  4B 5F 53 20 */	b setEnvTevColor__8daNpcT_cFv
/* 80B53954  7F A3 EB 78 */	mr r3, r29
/* 80B53958  4B 5F 53 74 */	b setRoomNo__8daNpcT_cFv
lbl_80B5395C:
/* 80B5395C  38 00 00 01 */	li r0, 1
/* 80B53960  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B53964  7F A3 EB 78 */	mr r3, r29
/* 80B53968  48 00 07 89 */	bl Execute__11daNpc_ykM_cFv
/* 80B5396C  38 00 00 00 */	li r0, 0
/* 80B53970  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B53974:
/* 80B53974  7F C3 F3 78 */	mr r3, r30
lbl_80B53978:
/* 80B53978  39 61 00 40 */	addi r11, r1, 0x40
/* 80B5397C  4B 80 E8 94 */	b _restgpr_23
/* 80B53980  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B53984  7C 08 03 A6 */	mtlr r0
/* 80B53988  38 21 00 40 */	addi r1, r1, 0x40
/* 80B5398C  4E 80 00 20 */	blr 
