lbl_80AD57C4:
/* 80AD57C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD57C8  7C 08 02 A6 */	mflr r0
/* 80AD57CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD57D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD57D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AD57D8  7C 7E 1B 78 */	mr r30, r3
/* 80AD57DC  3C 80 80 AD */	lis r4, cNullVec__6Z2Calc@ha
/* 80AD57E0  3B E4 7D E4 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80AD57E4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AD57E8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AD57EC  40 82 00 40 */	bne lbl_80AD582C
/* 80AD57F0  28 1E 00 00 */	cmplwi r30, 0
/* 80AD57F4  41 82 00 2C */	beq lbl_80AD5820
/* 80AD57F8  38 1F 00 48 */	addi r0, r31, 0x48
/* 80AD57FC  90 01 00 08 */	stw r0, 8(r1)
/* 80AD5800  38 9F 00 6C */	addi r4, r31, 0x6c
/* 80AD5804  38 BF 00 88 */	addi r5, r31, 0x88
/* 80AD5808  38 DF 00 C0 */	addi r6, r31, 0xc0
/* 80AD580C  38 E0 00 04 */	li r7, 4
/* 80AD5810  39 1F 00 D0 */	addi r8, r31, 0xd0
/* 80AD5814  39 20 00 04 */	li r9, 4
/* 80AD5818  39 5F 00 28 */	addi r10, r31, 0x28
/* 80AD581C  48 00 23 DD */	bl __ct__14daNpc_Seirei_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80AD5820:
/* 80AD5820  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80AD5824  60 00 00 08 */	ori r0, r0, 8
/* 80AD5828  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80AD582C:
/* 80AD582C  7F C3 F3 78 */	mr r3, r30
/* 80AD5830  48 00 04 B1 */	bl getType__14daNpc_Seirei_cFv
/* 80AD5834  98 7E 0E 44 */	stb r3, 0xe44(r30)
/* 80AD5838  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 80AD583C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80AD5840  28 03 FF FF */	cmplwi r3, 0xffff
/* 80AD5844  38 00 FF FF */	li r0, -1
/* 80AD5848  41 82 00 08 */	beq lbl_80AD5850
/* 80AD584C  7C 60 1B 78 */	mr r0, r3
lbl_80AD5850:
/* 80AD5850  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80AD5854  38 00 00 00 */	li r0, 0
/* 80AD5858  98 1E 0A 89 */	stb r0, 0xa89(r30)
/* 80AD585C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80AD5860  54 00 27 3E */	srwi r0, r0, 0x1c
/* 80AD5864  98 1E 0E 45 */	stb r0, 0xe45(r30)
/* 80AD5868  7F C3 F3 78 */	mr r3, r30
/* 80AD586C  88 1E 0E 44 */	lbz r0, 0xe44(r30)
/* 80AD5870  54 00 10 3A */	slwi r0, r0, 2
/* 80AD5874  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80AD5878  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD587C  38 BF 00 48 */	addi r5, r31, 0x48
/* 80AD5880  4B 67 2B 78 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80AD5884  7C 7F 1B 78 */	mr r31, r3
/* 80AD5888  2C 1F 00 04 */	cmpwi r31, 4
/* 80AD588C  40 82 01 D4 */	bne lbl_80AD5A60
/* 80AD5890  88 1E 0E 45 */	lbz r0, 0xe45(r30)
/* 80AD5894  28 00 00 00 */	cmplwi r0, 0
/* 80AD5898  41 82 00 28 */	beq lbl_80AD58C0
/* 80AD589C  7F C3 F3 78 */	mr r3, r30
/* 80AD58A0  3C 80 80 AD */	lis r4, createHeapCallBack__14daNpc_Seirei_cFP10fopAc_ac_c@ha
/* 80AD58A4  38 84 5C C0 */	addi r4, r4, createHeapCallBack__14daNpc_Seirei_cFP10fopAc_ac_c@l
/* 80AD58A8  38 A0 00 00 */	li r5, 0
/* 80AD58AC  4B 54 4C 04 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AD58B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD58B4  40 82 00 0C */	bne lbl_80AD58C0
/* 80AD58B8  38 60 00 05 */	li r3, 5
/* 80AD58BC  48 00 01 A8 */	b lbl_80AD5A64
lbl_80AD58C0:
/* 80AD58C0  7F C3 F3 78 */	mr r3, r30
/* 80AD58C4  48 00 04 69 */	bl isDelete__14daNpc_Seirei_cFv
/* 80AD58C8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD58CC  41 82 00 0C */	beq lbl_80AD58D8
/* 80AD58D0  38 60 00 05 */	li r3, 5
/* 80AD58D4  48 00 01 90 */	b lbl_80AD5A64
lbl_80AD58D8:
/* 80AD58D8  88 1E 0E 45 */	lbz r0, 0xe45(r30)
/* 80AD58DC  28 00 00 00 */	cmplwi r0, 0
/* 80AD58E0  41 82 00 2C */	beq lbl_80AD590C
/* 80AD58E4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AD58E8  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD58EC  38 03 00 24 */	addi r0, r3, 0x24
/* 80AD58F0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80AD58F4  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AD58F8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AD58FC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AD5900  38 C0 00 03 */	li r6, 3
/* 80AD5904  38 E0 00 01 */	li r7, 1
/* 80AD5908  4B 7E AC 28 */	b init__10Z2CreatureFP3VecP3VecUcUc
lbl_80AD590C:
/* 80AD590C  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80AD5910  90 01 00 08 */	stw r0, 8(r1)
/* 80AD5914  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AD5918  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AD591C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80AD5920  7F C6 F3 78 */	mr r6, r30
/* 80AD5924  38 E0 00 01 */	li r7, 1
/* 80AD5928  39 1E 08 A0 */	addi r8, r30, 0x8a0
/* 80AD592C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80AD5930  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80AD5934  4B 5A 09 14 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AD5938  38 7E 08 64 */	addi r3, r30, 0x864
/* 80AD593C  3C 80 80 AD */	lis r4, m__20daNpc_Seirei_Param_c@ha
/* 80AD5940  38 84 7C A8 */	addi r4, r4, m__20daNpc_Seirei_Param_c@l
/* 80AD5944  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AD5948  FC 00 00 1E */	fctiwz f0, f0
/* 80AD594C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AD5950  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AD5954  38 A0 00 00 */	li r5, 0
/* 80AD5958  7F C6 F3 78 */	mr r6, r30
/* 80AD595C  4B 5A DF 04 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AD5960  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AD5964  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AD5968  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AD596C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AD5970  4B 5A 11 3C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80AD5974  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 80AD5978  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80AD597C  80 1E 07 6C */	lwz r0, 0x76c(r30)
/* 80AD5980  90 1E 09 34 */	stw r0, 0x934(r30)
/* 80AD5984  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 80AD5988  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80AD598C  88 1E 07 74 */	lbz r0, 0x774(r30)
/* 80AD5990  98 1E 09 3C */	stb r0, 0x93c(r30)
/* 80AD5994  A0 1E 07 7C */	lhz r0, 0x77c(r30)
/* 80AD5998  B0 1E 09 44 */	sth r0, 0x944(r30)
/* 80AD599C  A0 1E 07 7E */	lhz r0, 0x77e(r30)
/* 80AD59A0  B0 1E 09 46 */	sth r0, 0x946(r30)
/* 80AD59A4  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 80AD59A8  90 1E 09 48 */	stw r0, 0x948(r30)
/* 80AD59AC  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 80AD59B0  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80AD59B4  C0 1E 07 8C */	lfs f0, 0x78c(r30)
/* 80AD59B8  D0 1E 09 54 */	stfs f0, 0x954(r30)
/* 80AD59BC  C0 1E 07 90 */	lfs f0, 0x790(r30)
/* 80AD59C0  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 80AD59C4  C0 1E 07 94 */	lfs f0, 0x794(r30)
/* 80AD59C8  D0 1E 09 5C */	stfs f0, 0x95c(r30)
/* 80AD59CC  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 80AD59D0  90 1E 09 60 */	stw r0, 0x960(r30)
/* 80AD59D4  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 80AD59D8  D0 1E 09 64 */	stfs f0, 0x964(r30)
/* 80AD59DC  80 1E 07 A0 */	lwz r0, 0x7a0(r30)
/* 80AD59E0  90 1E 09 68 */	stw r0, 0x968(r30)
/* 80AD59E4  C0 1E 07 24 */	lfs f0, 0x724(r30)
/* 80AD59E8  D0 1E 0D F4 */	stfs f0, 0xdf4(r30)
/* 80AD59EC  3C 60 80 AD */	lis r3, lit_4042@ha
/* 80AD59F0  C0 23 7D 3C */	lfs f1, lit_4042@l(r3)
/* 80AD59F4  C0 1E 0D F4 */	lfs f0, 0xdf4(r30)
/* 80AD59F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AD59FC  41 82 00 14 */	beq lbl_80AD5A10
/* 80AD5A00  7F C3 F3 78 */	mr r3, r30
/* 80AD5A04  4B 67 32 6C */	b setEnvTevColor__8daNpcT_cFv
/* 80AD5A08  7F C3 F3 78 */	mr r3, r30
/* 80AD5A0C  4B 67 32 C0 */	b setRoomNo__8daNpcT_cFv
lbl_80AD5A10:
/* 80AD5A10  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80AD5A14  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80AD5A18  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80AD5A1C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80AD5A20  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80AD5A24  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80AD5A28  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AD5A2C  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80AD5A30  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AD5A34  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80AD5A38  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AD5A3C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80AD5A40  7F C3 F3 78 */	mr r3, r30
/* 80AD5A44  48 00 02 F1 */	bl reset__14daNpc_Seirei_cFv
/* 80AD5A48  38 00 00 01 */	li r0, 1
/* 80AD5A4C  98 1E 0A 88 */	stb r0, 0xa88(r30)
/* 80AD5A50  7F C3 F3 78 */	mr r3, r30
/* 80AD5A54  48 00 01 A5 */	bl Execute__14daNpc_Seirei_cFv
/* 80AD5A58  38 00 00 00 */	li r0, 0
/* 80AD5A5C  98 1E 0A 88 */	stb r0, 0xa88(r30)
lbl_80AD5A60:
/* 80AD5A60  7F E3 FB 78 */	mr r3, r31
lbl_80AD5A64:
/* 80AD5A64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD5A68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AD5A6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD5A70  7C 08 03 A6 */	mtlr r0
/* 80AD5A74  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD5A78  4E 80 00 20 */	blr 
