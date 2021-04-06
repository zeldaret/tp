lbl_80B43084:
/* 80B43084  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B43088  7C 08 02 A6 */	mflr r0
/* 80B4308C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B43090  39 61 00 30 */	addi r11, r1, 0x30
/* 80B43094  4B 81 F1 49 */	bl _savegpr_29
/* 80B43098  7C 7D 1B 78 */	mr r29, r3
/* 80B4309C  3C 80 80 B4 */	lis r4, m__19daNpc_yamiD_Param_c@ha /* 0x80B4604C@ha */
/* 80B430A0  3B E4 60 4C */	addi r31, r4, m__19daNpc_yamiD_Param_c@l /* 0x80B4604C@l */
/* 80B430A4  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B46144@ha */
/* 80B430A8  3B C4 61 44 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80B46144@l */
/* 80B430AC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B430B0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B430B4  40 82 00 40 */	bne lbl_80B430F4
/* 80B430B8  28 1D 00 00 */	cmplwi r29, 0
/* 80B430BC  41 82 00 2C */	beq lbl_80B430E8
/* 80B430C0  38 1E 00 38 */	addi r0, r30, 0x38
/* 80B430C4  90 01 00 08 */	stw r0, 8(r1)
/* 80B430C8  38 9E 00 50 */	addi r4, r30, 0x50
/* 80B430CC  38 BE 00 88 */	addi r5, r30, 0x88
/* 80B430D0  38 DE 00 C0 */	addi r6, r30, 0xc0
/* 80B430D4  38 E0 00 04 */	li r7, 4
/* 80B430D8  39 1E 00 E0 */	addi r8, r30, 0xe0
/* 80B430DC  39 20 00 04 */	li r9, 4
/* 80B430E0  39 5E 00 28 */	addi r10, r30, 0x28
/* 80B430E4  48 00 2D 91 */	bl __ct__13daNpc_yamiD_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B430E8:
/* 80B430E8  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B430EC  60 00 00 08 */	ori r0, r0, 8
/* 80B430F0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B430F4:
/* 80B430F4  7F A3 EB 78 */	mr r3, r29
/* 80B430F8  48 00 08 05 */	bl getType__13daNpc_yamiD_cFv
/* 80B430FC  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80B43100  7F A3 EB 78 */	mr r3, r29
/* 80B43104  48 00 08 31 */	bl getFlowNodeNo__13daNpc_yamiD_cFv
/* 80B43108  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 80B4310C  38 00 00 00 */	li r0, 0
/* 80B43110  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80B43114  7F A3 EB 78 */	mr r3, r29
/* 80B43118  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B4311C  54 00 10 3A */	slwi r0, r0, 2
/* 80B43120  38 9E 00 44 */	addi r4, r30, 0x44
/* 80B43124  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B43128  38 BE 00 38 */	addi r5, r30, 0x38
/* 80B4312C  4B 60 52 CD */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80B43130  7C 7E 1B 78 */	mr r30, r3
/* 80B43134  2C 1E 00 04 */	cmpwi r30, 4
/* 80B43138  40 82 01 E4 */	bne lbl_80B4331C
/* 80B4313C  7F A3 EB 78 */	mr r3, r29
/* 80B43140  3C 80 80 B4 */	lis r4, createHeapCallBack__13daNpc_yamiD_cFP10fopAc_ac_c@ha /* 0x80B43884@ha */
/* 80B43144  38 84 38 84 */	addi r4, r4, createHeapCallBack__13daNpc_yamiD_cFP10fopAc_ac_c@l /* 0x80B43884@l */
/* 80B43148  38 A0 37 10 */	li r5, 0x3710
/* 80B4314C  4B 4D 73 65 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B43150  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B43154  40 82 00 0C */	bne lbl_80B43160
/* 80B43158  38 60 00 05 */	li r3, 5
/* 80B4315C  48 00 01 C4 */	b lbl_80B43320
lbl_80B43160:
/* 80B43160  7F A3 EB 78 */	mr r3, r29
/* 80B43164  48 00 08 35 */	bl isDelete__13daNpc_yamiD_cFv
/* 80B43168  2C 03 00 00 */	cmpwi r3, 0
/* 80B4316C  41 82 00 0C */	beq lbl_80B43178
/* 80B43170  38 60 00 05 */	li r3, 5
/* 80B43174  48 00 01 AC */	b lbl_80B43320
lbl_80B43178:
/* 80B43178  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B4317C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B43180  38 03 00 24 */	addi r0, r3, 0x24
/* 80B43184  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B43188  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80B4318C  D0 1D 05 20 */	stfs f0, 0x520(r29)
/* 80B43190  7F A3 EB 78 */	mr r3, r29
/* 80B43194  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80B43198  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80B4319C  FC 60 08 90 */	fmr f3, f1
/* 80B431A0  C0 9F 00 98 */	lfs f4, 0x98(r31)
/* 80B431A4  C0 BF 00 9C */	lfs f5, 0x9c(r31)
/* 80B431A8  FC C0 20 90 */	fmr f6, f4
/* 80B431AC  4B 4D 73 9D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B431B0  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B431B4  64 00 08 00 */	oris r0, r0, 0x800
/* 80B431B8  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80B431BC  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B431C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B431C4  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B431C8  38 C0 00 03 */	li r6, 3
/* 80B431CC  38 E0 00 01 */	li r7, 1
/* 80B431D0  4B 77 D3 61 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80B431D4  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B431D8  90 01 00 08 */	stw r0, 8(r1)
/* 80B431DC  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B431E0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B431E4  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B431E8  7F A6 EB 78 */	mr r6, r29
/* 80B431EC  38 E0 00 01 */	li r7, 1
/* 80B431F0  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B431F4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B431F8  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B431FC  4B 53 30 4D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B43200  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B43204  38 9F 00 00 */	addi r4, r31, 0
/* 80B43208  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B4320C  FC 00 00 1E */	fctiwz f0, f0
/* 80B43210  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B43214  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B43218  38 A0 00 00 */	li r5, 0
/* 80B4321C  7F A6 EB 78 */	mr r6, r29
/* 80B43220  4B 54 06 41 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B43224  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80B43228  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80B4322C  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80B43230  4B 54 16 85 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B43234  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B43238  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80B4323C  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80B43240  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80B43244  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80B43248  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B4324C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B43250  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B43254  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B43258  4B 53 38 55 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80B4325C  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B43260  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B43264  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B43268  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B4326C  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B43270  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B43274  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B43278  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B4327C  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B43280  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B43284  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B43288  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B4328C  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B43290  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B43294  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B43298  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B4329C  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B432A0  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B432A4  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B432A8  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B432AC  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B432B0  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B432B4  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B432B8  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B432BC  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B432C0  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B432C4  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B432C8  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B432CC  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B432D0  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B432D4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80B432D8  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80B432DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B432E0  41 82 00 14 */	beq lbl_80B432F4
/* 80B432E4  7F A3 EB 78 */	mr r3, r29
/* 80B432E8  4B 60 59 89 */	bl setEnvTevColor__8daNpcT_cFv
/* 80B432EC  7F A3 EB 78 */	mr r3, r29
/* 80B432F0  4B 60 59 DD */	bl setRoomNo__8daNpcT_cFv
lbl_80B432F4:
/* 80B432F4  38 00 00 00 */	li r0, 0
/* 80B432F8  90 1D 0F C8 */	stw r0, 0xfc8(r29)
/* 80B432FC  7F A3 EB 78 */	mr r3, r29
/* 80B43300  48 00 07 21 */	bl reset__13daNpc_yamiD_cFv
/* 80B43304  38 00 00 01 */	li r0, 1
/* 80B43308  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B4330C  7F A3 EB 78 */	mr r3, r29
/* 80B43310  48 00 04 AD */	bl Execute__13daNpc_yamiD_cFv
/* 80B43314  38 00 00 00 */	li r0, 0
/* 80B43318  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B4331C:
/* 80B4331C  7F C3 F3 78 */	mr r3, r30
lbl_80B43320:
/* 80B43320  39 61 00 30 */	addi r11, r1, 0x30
/* 80B43324  4B 81 EF 05 */	bl _restgpr_29
/* 80B43328  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4332C  7C 08 03 A6 */	mtlr r0
/* 80B43330  38 21 00 30 */	addi r1, r1, 0x30
/* 80B43334  4E 80 00 20 */	blr 
