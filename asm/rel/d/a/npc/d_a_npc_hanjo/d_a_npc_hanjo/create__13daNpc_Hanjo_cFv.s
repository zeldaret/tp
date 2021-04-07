lbl_809F9278:
/* 809F9278  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809F927C  7C 08 02 A6 */	mflr r0
/* 809F9280  90 01 00 44 */	stw r0, 0x44(r1)
/* 809F9284  39 61 00 40 */	addi r11, r1, 0x40
/* 809F9288  4B 96 8F 45 */	bl _savegpr_25
/* 809F928C  7C 7C 1B 78 */	mr r28, r3
/* 809F9290  3C 80 80 A0 */	lis r4, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809F9294  3B C4 06 00 */	addi r30, r4, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809F9298  3C 80 80 A0 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A00940@ha */
/* 809F929C  3B E4 09 40 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80A00940@l */
/* 809F92A0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809F92A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809F92A8  40 82 00 40 */	bne lbl_809F92E8
/* 809F92AC  28 1C 00 00 */	cmplwi r28, 0
/* 809F92B0  41 82 00 2C */	beq lbl_809F92DC
/* 809F92B4  38 1F 00 98 */	addi r0, r31, 0x98
/* 809F92B8  90 01 00 08 */	stw r0, 8(r1)
/* 809F92BC  38 9F 00 DC */	addi r4, r31, 0xdc
/* 809F92C0  38 BF 01 F4 */	addi r5, r31, 0x1f4
/* 809F92C4  38 DF 04 78 */	addi r6, r31, 0x478
/* 809F92C8  38 E0 00 04 */	li r7, 4
/* 809F92CC  39 1F 04 F8 */	addi r8, r31, 0x4f8
/* 809F92D0  39 20 00 04 */	li r9, 4
/* 809F92D4  39 5F 00 40 */	addi r10, r31, 0x40
/* 809F92D8  48 00 6D D1 */	bl __ct__13daNpc_Hanjo_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_809F92DC:
/* 809F92DC  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 809F92E0  60 00 00 08 */	ori r0, r0, 8
/* 809F92E4  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_809F92E8:
/* 809F92E8  7F 83 E3 78 */	mr r3, r28
/* 809F92EC  48 00 09 AD */	bl getType__13daNpc_Hanjo_cFv
/* 809F92F0  98 7C 10 C4 */	stb r3, 0x10c4(r28)
/* 809F92F4  A8 1C 04 B4 */	lha r0, 0x4b4(r28)
/* 809F92F8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 809F92FC  28 03 FF FF */	cmplwi r3, 0xffff
/* 809F9300  38 00 FF FF */	li r0, -1
/* 809F9304  41 82 00 08 */	beq lbl_809F930C
/* 809F9308  7C 60 1B 78 */	mr r0, r3
lbl_809F930C:
/* 809F930C  90 1C 0A 7C */	stw r0, 0xa7c(r28)
/* 809F9310  38 00 00 00 */	li r0, 0
/* 809F9314  98 1C 0A 89 */	stb r0, 0xa89(r28)
/* 809F9318  7F 83 E3 78 */	mr r3, r28
/* 809F931C  88 1C 10 C4 */	lbz r0, 0x10c4(r28)
/* 809F9320  54 00 10 3A */	slwi r0, r0, 2
/* 809F9324  38 9F 00 C8 */	addi r4, r31, 0xc8
/* 809F9328  7C 84 00 2E */	lwzx r4, r4, r0
/* 809F932C  38 BF 00 98 */	addi r5, r31, 0x98
/* 809F9330  4B 74 F0 C9 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 809F9334  7C 7D 1B 78 */	mr r29, r3
/* 809F9338  2C 1D 00 04 */	cmpwi r29, 4
/* 809F933C  40 82 02 20 */	bne lbl_809F955C
/* 809F9340  7F 83 E3 78 */	mr r3, r28
/* 809F9344  48 00 09 AD */	bl isDelete__13daNpc_Hanjo_cFv
/* 809F9348  2C 03 00 00 */	cmpwi r3, 0
/* 809F934C  41 82 00 0C */	beq lbl_809F9358
/* 809F9350  38 60 00 05 */	li r3, 5
/* 809F9354  48 00 02 0C */	b lbl_809F9560
lbl_809F9358:
/* 809F9358  7F 83 E3 78 */	mr r3, r28
/* 809F935C  3C 80 80 A0 */	lis r4, createHeapCallBack__13daNpc_Hanjo_cFP10fopAc_ac_c@ha /* 0x809F9C20@ha */
/* 809F9360  38 84 9C 20 */	addi r4, r4, createHeapCallBack__13daNpc_Hanjo_cFP10fopAc_ac_c@l /* 0x809F9C20@l */
/* 809F9364  88 1C 10 C4 */	lbz r0, 0x10c4(r28)
/* 809F9368  54 00 10 3A */	slwi r0, r0, 2
/* 809F936C  38 BE 00 E4 */	addi r5, r30, 0xe4
/* 809F9370  7C A5 00 2E */	lwzx r5, r5, r0
/* 809F9374  4B 62 11 3D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809F9378  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F937C  40 82 00 0C */	bne lbl_809F9388
/* 809F9380  38 60 00 05 */	li r3, 5
/* 809F9384  48 00 01 DC */	b lbl_809F9560
lbl_809F9388:
/* 809F9388  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 809F938C  80 63 00 04 */	lwz r3, 4(r3)
/* 809F9390  80 83 00 04 */	lwz r4, 4(r3)
/* 809F9394  38 03 00 24 */	addi r0, r3, 0x24
/* 809F9398  90 1C 05 04 */	stw r0, 0x504(r28)
/* 809F939C  7F 83 E3 78 */	mr r3, r28
/* 809F93A0  4B 62 11 D9 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 809F93A4  38 7C 05 80 */	addi r3, r28, 0x580
/* 809F93A8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 809F93AC  38 BC 05 38 */	addi r5, r28, 0x538
/* 809F93B0  38 C0 00 03 */	li r6, 3
/* 809F93B4  38 E0 00 01 */	li r7, 1
/* 809F93B8  4B 8C 71 79 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 809F93BC  38 7C 09 C0 */	addi r3, r28, 0x9c0
/* 809F93C0  38 9C 06 8C */	addi r4, r28, 0x68c
/* 809F93C4  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 809F93C8  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 809F93CC  4B 65 78 D1 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 809F93D0  7F 83 E3 78 */	mr r3, r28
/* 809F93D4  48 00 09 C9 */	bl reset__13daNpc_Hanjo_cFv
/* 809F93D8  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 809F93DC  90 01 00 08 */	stw r0, 8(r1)
/* 809F93E0  38 7C 06 8C */	addi r3, r28, 0x68c
/* 809F93E4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 809F93E8  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 809F93EC  7F 86 E3 78 */	mr r6, r28
/* 809F93F0  38 E0 00 01 */	li r7, 1
/* 809F93F4  39 1C 08 A0 */	addi r8, r28, 0x8a0
/* 809F93F8  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 809F93FC  39 5C 04 DC */	addi r10, r28, 0x4dc
/* 809F9400  4B 67 CE 49 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809F9404  38 7C 08 64 */	addi r3, r28, 0x864
/* 809F9408  38 9E 00 00 */	addi r4, r30, 0
/* 809F940C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809F9410  FC 00 00 1E */	fctiwz f0, f0
/* 809F9414  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809F9418  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809F941C  38 A0 00 00 */	li r5, 0
/* 809F9420  7F 86 E3 78 */	mr r6, r28
/* 809F9424  4B 68 A4 3D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809F9428  38 7C 0E 4C */	addi r3, r28, 0xe4c
/* 809F942C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 809F9430  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 809F9434  4B 68 B4 81 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809F9438  38 1C 08 64 */	addi r0, r28, 0x864
/* 809F943C  90 1C 0E 90 */	stw r0, 0xe90(r28)
/* 809F9440  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 809F9444  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 809F9448  90 1C 0E F0 */	stw r0, 0xef0(r28)
/* 809F944C  38 7C 0F 88 */	addi r3, r28, 0xf88
/* 809F9450  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 809F9454  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 809F9458  4B 68 B4 5D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809F945C  38 1C 08 64 */	addi r0, r28, 0x864
/* 809F9460  90 1C 0F CC */	stw r0, 0xfcc(r28)
/* 809F9464  38 7C 06 8C */	addi r3, r28, 0x68c
/* 809F9468  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F946C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F9470  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809F9474  4B 67 D6 39 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809F9478  80 1C 07 68 */	lwz r0, 0x768(r28)
/* 809F947C  90 1C 09 30 */	stw r0, 0x930(r28)
/* 809F9480  80 1C 07 6C */	lwz r0, 0x76c(r28)
/* 809F9484  90 1C 09 34 */	stw r0, 0x934(r28)
/* 809F9488  80 1C 07 70 */	lwz r0, 0x770(r28)
/* 809F948C  90 1C 09 38 */	stw r0, 0x938(r28)
/* 809F9490  88 1C 07 74 */	lbz r0, 0x774(r28)
/* 809F9494  98 1C 09 3C */	stb r0, 0x93c(r28)
/* 809F9498  A0 1C 07 7C */	lhz r0, 0x77c(r28)
/* 809F949C  B0 1C 09 44 */	sth r0, 0x944(r28)
/* 809F94A0  A0 1C 07 7E */	lhz r0, 0x77e(r28)
/* 809F94A4  B0 1C 09 46 */	sth r0, 0x946(r28)
/* 809F94A8  80 1C 07 80 */	lwz r0, 0x780(r28)
/* 809F94AC  90 1C 09 48 */	stw r0, 0x948(r28)
/* 809F94B0  80 1C 07 84 */	lwz r0, 0x784(r28)
/* 809F94B4  90 1C 09 4C */	stw r0, 0x94c(r28)
/* 809F94B8  C0 1C 07 8C */	lfs f0, 0x78c(r28)
/* 809F94BC  D0 1C 09 54 */	stfs f0, 0x954(r28)
/* 809F94C0  C0 1C 07 90 */	lfs f0, 0x790(r28)
/* 809F94C4  D0 1C 09 58 */	stfs f0, 0x958(r28)
/* 809F94C8  C0 1C 07 94 */	lfs f0, 0x794(r28)
/* 809F94CC  D0 1C 09 5C */	stfs f0, 0x95c(r28)
/* 809F94D0  80 1C 07 98 */	lwz r0, 0x798(r28)
/* 809F94D4  90 1C 09 60 */	stw r0, 0x960(r28)
/* 809F94D8  C0 1C 07 9C */	lfs f0, 0x79c(r28)
/* 809F94DC  D0 1C 09 64 */	stfs f0, 0x964(r28)
/* 809F94E0  80 1C 07 A0 */	lwz r0, 0x7a0(r28)
/* 809F94E4  90 1C 09 68 */	stw r0, 0x968(r28)
/* 809F94E8  C0 1C 07 24 */	lfs f0, 0x724(r28)
/* 809F94EC  D0 1C 0D F4 */	stfs f0, 0xdf4(r28)
/* 809F94F0  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 809F94F4  C0 1C 0D F4 */	lfs f0, 0xdf4(r28)
/* 809F94F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809F94FC  41 82 00 14 */	beq lbl_809F9510
/* 809F9500  7F 83 E3 78 */	mr r3, r28
/* 809F9504  4B 74 F7 6D */	bl setEnvTevColor__8daNpcT_cFv
/* 809F9508  7F 83 E3 78 */	mr r3, r28
/* 809F950C  4B 74 F7 C1 */	bl setRoomNo__8daNpcT_cFv
lbl_809F9510:
/* 809F9510  3B 20 00 00 */	li r25, 0
/* 809F9514  3B C0 00 00 */	li r30, 0
/* 809F9518  3B 7C 08 64 */	addi r27, r28, 0x864
lbl_809F951C:
/* 809F951C  3B 5E 11 40 */	addi r26, r30, 0x1140
/* 809F9520  7F 5C D2 14 */	add r26, r28, r26
/* 809F9524  7F 43 D3 78 */	mr r3, r26
/* 809F9528  38 9F 06 D4 */	addi r4, r31, 0x6d4
/* 809F952C  4B 68 B5 09 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 809F9530  93 7A 00 44 */	stw r27, 0x44(r26)
/* 809F9534  3B 39 00 01 */	addi r25, r25, 1
/* 809F9538  2C 19 00 04 */	cmpwi r25, 4
/* 809F953C  3B DE 01 74 */	addi r30, r30, 0x174
/* 809F9540  41 80 FF DC */	blt lbl_809F951C
/* 809F9544  38 00 00 01 */	li r0, 1
/* 809F9548  98 1C 0A 88 */	stb r0, 0xa88(r28)
/* 809F954C  7F 83 E3 78 */	mr r3, r28
/* 809F9550  48 00 06 1D */	bl Execute__13daNpc_Hanjo_cFv
/* 809F9554  38 00 00 00 */	li r0, 0
/* 809F9558  98 1C 0A 88 */	stb r0, 0xa88(r28)
lbl_809F955C:
/* 809F955C  7F A3 EB 78 */	mr r3, r29
lbl_809F9560:
/* 809F9560  39 61 00 40 */	addi r11, r1, 0x40
/* 809F9564  4B 96 8C B5 */	bl _restgpr_25
/* 809F9568  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809F956C  7C 08 03 A6 */	mtlr r0
/* 809F9570  38 21 00 40 */	addi r1, r1, 0x40
/* 809F9574  4E 80 00 20 */	blr 
