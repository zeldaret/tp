lbl_804BD274:
/* 804BD274  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BD278  7C 08 02 A6 */	mflr r0
/* 804BD27C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BD280  39 61 00 20 */	addi r11, r1, 0x20
/* 804BD284  4B EA 4F 55 */	bl _savegpr_28
/* 804BD288  7C 7F 1B 78 */	mr r31, r3
/* 804BD28C  3C 80 80 4C */	lis r4, lit_3777@ha /* 0x804C64C8@ha */
/* 804BD290  3B C4 64 C8 */	addi r30, r4, lit_3777@l /* 0x804C64C8@l */
/* 804BD294  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804BD298  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804BD29C  40 82 01 30 */	bne lbl_804BD3CC
/* 804BD2A0  7F E0 FB 79 */	or. r0, r31, r31
/* 804BD2A4  41 82 01 1C */	beq lbl_804BD3C0
/* 804BD2A8  7C 1C 03 78 */	mr r28, r0
/* 804BD2AC  4B B5 B8 B9 */	bl __ct__10fopAc_ac_cFv
/* 804BD2B0  3C 60 80 4C */	lis r3, __vt__25mDoExt_McaMorfCallBack1_c@ha /* 0x804C6C90@ha */
/* 804BD2B4  38 03 6C 90 */	addi r0, r3, __vt__25mDoExt_McaMorfCallBack1_c@l /* 0x804C6C90@l */
/* 804BD2B8  90 1C 05 7C */	stw r0, 0x57c(r28)
/* 804BD2BC  3C 60 80 4C */	lis r3, __vt__20daMidna_McaMorfCB1_c@ha /* 0x804C6CB4@ha */
/* 804BD2C0  38 03 6C B4 */	addi r0, r3, __vt__20daMidna_McaMorfCB1_c@l /* 0x804C6CB4@l */
/* 804BD2C4  90 1C 05 7C */	stw r0, 0x57c(r28)
/* 804BD2C8  3B BC 05 84 */	addi r29, r28, 0x584
/* 804BD2CC  3C 60 80 4C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x804C6CA8@ha */
/* 804BD2D0  38 03 6C A8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x804C6CA8@l */
/* 804BD2D4  90 1C 05 84 */	stw r0, 0x584(r28)
/* 804BD2D8  7F A3 EB 78 */	mr r3, r29
/* 804BD2DC  38 80 00 00 */	li r4, 0
/* 804BD2E0  4B E6 B1 1D */	bl init__12J3DFrameCtrlFs
/* 804BD2E4  38 00 00 00 */	li r0, 0
/* 804BD2E8  90 1D 00 18 */	stw r0, 0x18(r29)
/* 804BD2EC  3B BC 05 A0 */	addi r29, r28, 0x5a0
/* 804BD2F0  3C 60 80 4C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x804C6CA8@ha */
/* 804BD2F4  38 03 6C A8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x804C6CA8@l */
/* 804BD2F8  90 1C 05 A0 */	stw r0, 0x5a0(r28)
/* 804BD2FC  7F A3 EB 78 */	mr r3, r29
/* 804BD300  38 80 00 00 */	li r4, 0
/* 804BD304  4B E6 B0 F9 */	bl init__12J3DFrameCtrlFs
/* 804BD308  38 00 00 00 */	li r0, 0
/* 804BD30C  90 1D 00 18 */	stw r0, 0x18(r29)
/* 804BD310  38 7C 05 E4 */	addi r3, r28, 0x5e4
/* 804BD314  3C 80 80 4C */	lis r4, __defctor__14daPy_anmHeap_cFv@ha /* 0x804BD8F8@ha */
/* 804BD318  38 84 D8 F8 */	addi r4, r4, __defctor__14daPy_anmHeap_cFv@l /* 0x804BD8F8@l */
/* 804BD31C  3C A0 80 16 */	lis r5, __dt__14daPy_anmHeap_cFv@ha /* 0x8015ED50@ha */
/* 804BD320  38 A5 ED 50 */	addi r5, r5, __dt__14daPy_anmHeap_cFv@l /* 0x8015ED50@l */
/* 804BD324  38 C0 00 14 */	li r6, 0x14
/* 804BD328  38 E0 00 03 */	li r7, 3
/* 804BD32C  4B EA 4A 35 */	bl __construct_array
/* 804BD330  38 7C 06 20 */	addi r3, r28, 0x620
/* 804BD334  38 80 04 00 */	li r4, 0x400
/* 804BD338  4B CA 19 D9 */	bl __ct__14daPy_anmHeap_cFUl
/* 804BD33C  38 7C 06 34 */	addi r3, r28, 0x634
/* 804BD340  38 80 04 00 */	li r4, 0x400
/* 804BD344  4B CA 19 CD */	bl __ct__14daPy_anmHeap_cFUl
/* 804BD348  38 7C 06 FC */	addi r3, r28, 0x6fc
/* 804BD34C  4B E0 30 7D */	bl __ct__10Z2CreatureFv
/* 804BD350  38 7C 07 8C */	addi r3, r28, 0x78c
/* 804BD354  4B D8 CB AD */	bl __ct__10dMsgFlow_cFv
/* 804BD358  38 7C 07 D8 */	addi r3, r28, 0x7d8
/* 804BD35C  4B BB AC D5 */	bl __ct__15dBgS_LinkLinChkFv
/* 804BD360  38 7C 08 E0 */	addi r3, r28, 0x8e0
/* 804BD364  3C 80 80 4C */	lis r4, __ct__4cXyzFv@ha /* 0x804BD8F4@ha */
/* 804BD368  38 84 D8 F4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x804BD8F4@l */
/* 804BD36C  3C A0 80 4C */	lis r5, __dt__4cXyzFv@ha /* 0x804BD8B8@ha */
/* 804BD370  38 A5 D8 B8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x804BD8B8@l */
/* 804BD374  38 C0 00 0C */	li r6, 0xc
/* 804BD378  38 E0 00 05 */	li r7, 5
/* 804BD37C  4B EA 49 E5 */	bl __construct_array
/* 804BD380  38 7C 09 1C */	addi r3, r28, 0x91c
/* 804BD384  3C 80 80 4C */	lis r4, __ct__4cXyzFv@ha /* 0x804BD8F4@ha */
/* 804BD388  38 84 D8 F4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x804BD8F4@l */
/* 804BD38C  3C A0 80 4C */	lis r5, __dt__4cXyzFv@ha /* 0x804BD8B8@ha */
/* 804BD390  38 A5 D8 B8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x804BD8B8@l */
/* 804BD394  38 C0 00 0C */	li r6, 0xc
/* 804BD398  38 E0 00 05 */	li r7, 5
/* 804BD39C  4B EA 49 C5 */	bl __construct_array
/* 804BD3A0  38 7C 09 64 */	addi r3, r28, 0x964
/* 804BD3A4  3C 80 80 4C */	lis r4, __ct__4cXyzFv@ha /* 0x804BD8F4@ha */
/* 804BD3A8  38 84 D8 F4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x804BD8F4@l */
/* 804BD3AC  3C A0 80 4C */	lis r5, __dt__4cXyzFv@ha /* 0x804BD8B8@ha */
/* 804BD3B0  38 A5 D8 B8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x804BD8B8@l */
/* 804BD3B4  38 C0 00 0C */	li r6, 0xc
/* 804BD3B8  38 E0 00 05 */	li r7, 5
/* 804BD3BC  4B EA 49 A5 */	bl __construct_array
lbl_804BD3C0:
/* 804BD3C0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804BD3C4  60 00 00 08 */	ori r0, r0, 8
/* 804BD3C8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804BD3CC:
/* 804BD3CC  38 7F 05 68 */	addi r3, r31, 0x568
/* 804BD3D0  38 9E 00 0C */	addi r4, r30, 0xc
/* 804BD3D4  4B B6 FA E9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804BD3D8  7C 7C 1B 78 */	mr r28, r3
/* 804BD3DC  2C 1C 00 04 */	cmpwi r28, 4
/* 804BD3E0  40 82 04 BC */	bne lbl_804BD89C
/* 804BD3E4  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 804BD3E8  8C 03 61 94 */	lbzu r0, mDemoArcName__20dStage_roomControl_c@l(r3)  /* 0x80406194@l */
/* 804BD3EC  7C 00 07 75 */	extsb. r0, r0
/* 804BD3F0  41 82 00 2C */	beq lbl_804BD41C
/* 804BD3F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BD3F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BD3FC  3C 84 00 02 */	addis r4, r4, 2
/* 804BD400  38 A0 00 80 */	li r5, 0x80
/* 804BD404  38 84 C2 F8 */	addi r4, r4, -15624
/* 804BD408  4B B7 ED 59 */	bl syncRes__14dRes_control_cFPCcP11dRes_info_ci
/* 804BD40C  2C 03 00 00 */	cmpwi r3, 0
/* 804BD410  40 81 00 0C */	ble lbl_804BD41C
/* 804BD414  38 60 00 00 */	li r3, 0
/* 804BD418  48 00 04 88 */	b lbl_804BD8A0
lbl_804BD41C:
/* 804BD41C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00015B60@ha */
/* 804BD420  38 A3 5B 60 */	addi r5, r3, 0x5B60 /* 0x00015B60@l */
/* 804BD424  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 804BD428  88 03 61 94 */	lbz r0, mDemoArcName__20dStage_roomControl_c@l(r3)  /* 0x80406194@l */
/* 804BD42C  7C 00 07 75 */	extsb. r0, r0
/* 804BD430  41 82 00 10 */	beq lbl_804BD440
/* 804BD434  3C 60 00 05 */	lis r3, 0x0005 /* 0x0004D740@ha */
/* 804BD438  38 A3 D7 40 */	addi r5, r3, 0xD740 /* 0x0004D740@l */
/* 804BD43C  64 A5 80 00 */	oris r5, r5, 0x8000
lbl_804BD440:
/* 804BD440  7F E3 FB 78 */	mr r3, r31
/* 804BD444  3C 80 80 4C */	lis r4, daMidna_createHeap__FP10fopAc_ac_c@ha /* 0x804BD254@ha */
/* 804BD448  38 84 D2 54 */	addi r4, r4, daMidna_createHeap__FP10fopAc_ac_c@l /* 0x804BD254@l */
/* 804BD44C  4B B5 D0 65 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804BD450  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804BD454  40 82 00 0C */	bne lbl_804BD460
/* 804BD458  38 60 00 05 */	li r3, 5
/* 804BD45C  48 00 04 44 */	b lbl_804BD8A0
lbl_804BD460:
/* 804BD460  3C 60 80 4C */	lis r3, lit_4662@ha /* 0x804C6C34@ha */
/* 804BD464  38 83 6C 34 */	addi r4, r3, lit_4662@l /* 0x804C6C34@l */
/* 804BD468  80 64 00 00 */	lwz r3, 0(r4)
/* 804BD46C  80 04 00 04 */	lwz r0, 4(r4)
/* 804BD470  90 7F 09 D4 */	stw r3, 0x9d4(r31)
/* 804BD474  90 1F 09 D8 */	stw r0, 0x9d8(r31)
/* 804BD478  80 04 00 08 */	lwz r0, 8(r4)
/* 804BD47C  90 1F 09 DC */	stw r0, 0x9dc(r31)
/* 804BD480  3B A0 00 00 */	li r29, 0
/* 804BD484  48 00 00 20 */	b lbl_804BD4A4
lbl_804BD488:
/* 804BD488  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804BD48C  1C 60 00 14 */	mulli r3, r0, 0x14
/* 804BD490  38 63 05 E4 */	addi r3, r3, 0x5e4
/* 804BD494  7C 7F 1A 14 */	add r3, r31, r3
/* 804BD498  38 80 00 03 */	li r4, 3
/* 804BD49C  4B CA 19 65 */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 804BD4A0  3B BD 00 01 */	addi r29, r29, 1
lbl_804BD4A4:
/* 804BD4A4  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804BD4A8  28 00 00 03 */	cmplwi r0, 3
/* 804BD4AC  41 80 FF DC */	blt lbl_804BD488
/* 804BD4B0  38 7F 06 20 */	addi r3, r31, 0x620
/* 804BD4B4  38 80 00 01 */	li r4, 1
/* 804BD4B8  4B CA 19 49 */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 804BD4BC  38 7F 06 34 */	addi r3, r31, 0x634
/* 804BD4C0  38 80 00 02 */	li r4, 2
/* 804BD4C4  4B CA 19 3D */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 804BD4C8  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 804BD4CC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804BD4D0  38 BF 05 38 */	addi r5, r31, 0x538
/* 804BD4D4  38 C0 00 03 */	li r6, 3
/* 804BD4D8  38 E0 00 01 */	li r7, 1
/* 804BD4DC  4B E0 30 55 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 804BD4E0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BD4E4  80 03 00 04 */	lwz r0, 4(r3)
/* 804BD4E8  90 1F 05 74 */	stw r0, 0x574(r31)
/* 804BD4EC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BD4F0  93 E3 00 14 */	stw r31, 0x14(r3)
/* 804BD4F4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BD4F8  83 A3 00 04 */	lwz r29, 4(r3)
/* 804BD4FC  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804BD500  80 A3 00 00 */	lwz r5, 0(r3)
/* 804BD504  3C 60 80 4C */	lis r3, daMidna_modelCallBack__FP8J3DJointi@ha /* 0x804BC6FC@ha */
/* 804BD508  38 83 C6 FC */	addi r4, r3, daMidna_modelCallBack__FP8J3DJointi@l /* 0x804BC6FC@l */
/* 804BD50C  90 85 00 04 */	stw r4, 4(r5)
/* 804BD510  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804BD514  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 804BD518  90 83 00 04 */	stw r4, 4(r3)
/* 804BD51C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804BD520  80 63 00 10 */	lwz r3, 0x10(r3)
/* 804BD524  90 83 00 04 */	stw r4, 4(r3)
/* 804BD528  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804BD52C  80 63 00 04 */	lwz r3, 4(r3)
/* 804BD530  90 83 00 04 */	stw r4, 4(r3)
/* 804BD534  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804BD538  80 63 00 08 */	lwz r3, 8(r3)
/* 804BD53C  90 83 00 04 */	stw r4, 4(r3)
/* 804BD540  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804BD544  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804BD548  90 83 00 04 */	stw r4, 4(r3)
/* 804BD54C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804BD550  80 63 00 14 */	lwz r3, 0x14(r3)
/* 804BD554  90 83 00 04 */	stw r4, 4(r3)
/* 804BD558  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804BD55C  80 63 00 50 */	lwz r3, 0x50(r3)
/* 804BD560  90 83 00 04 */	stw r4, 4(r3)
/* 804BD564  38 A0 00 06 */	li r5, 6
/* 804BD568  48 00 00 18 */	b lbl_804BD580
lbl_804BD56C:
/* 804BD56C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804BD570  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 804BD574  7C 63 00 2E */	lwzx r3, r3, r0
/* 804BD578  90 83 00 04 */	stw r4, 4(r3)
/* 804BD57C  38 A5 00 01 */	addi r5, r5, 1
lbl_804BD580:
/* 804BD580  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 804BD584  28 00 00 0B */	cmplwi r0, 0xb
/* 804BD588  41 80 FF E4 */	blt lbl_804BD56C
/* 804BD58C  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 804BD590  80 63 00 04 */	lwz r3, 4(r3)
/* 804BD594  80 03 00 08 */	lwz r0, 8(r3)
/* 804BD598  90 1F 06 A4 */	stw r0, 0x6a4(r31)
/* 804BD59C  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 804BD5A0  80 63 00 08 */	lwz r3, 8(r3)
/* 804BD5A4  80 03 00 08 */	lwz r0, 8(r3)
/* 804BD5A8  90 1F 06 A8 */	stw r0, 0x6a8(r31)
/* 804BD5AC  7F E3 FB 78 */	mr r3, r31
/* 804BD5B0  7F A4 EB 78 */	mr r4, r29
/* 804BD5B4  38 A0 00 1B */	li r5, 0x1b
/* 804BD5B8  48 00 6E 8D */	bl setSimpleBtk__9daMidna_cFP12J3DModelDataUs
/* 804BD5BC  90 7F 06 48 */	stw r3, 0x648(r31)
/* 804BD5C0  7F E3 FB 78 */	mr r3, r31
/* 804BD5C4  7F A4 EB 78 */	mr r4, r29
/* 804BD5C8  38 A0 00 12 */	li r5, 0x12
/* 804BD5CC  48 00 6D C9 */	bl setSimpleBrk__9daMidna_cFP12J3DModelDataUs
/* 804BD5D0  90 7F 06 58 */	stw r3, 0x658(r31)
/* 804BD5D4  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 804BD5D8  83 A3 00 04 */	lwz r29, 4(r3)
/* 804BD5DC  7F E3 FB 78 */	mr r3, r31
/* 804BD5E0  7F A4 EB 78 */	mr r4, r29
/* 804BD5E4  38 A0 00 1A */	li r5, 0x1a
/* 804BD5E8  48 00 6E 5D */	bl setSimpleBtk__9daMidna_cFP12J3DModelDataUs
/* 804BD5EC  90 7F 06 4C */	stw r3, 0x64c(r31)
/* 804BD5F0  7F E3 FB 78 */	mr r3, r31
/* 804BD5F4  7F A4 EB 78 */	mr r4, r29
/* 804BD5F8  38 A0 00 15 */	li r5, 0x15
/* 804BD5FC  48 00 6D 99 */	bl setSimpleBrk__9daMidna_cFP12J3DModelDataUs
/* 804BD600  90 7F 06 5C */	stw r3, 0x65c(r31)
/* 804BD604  80 7F 06 7C */	lwz r3, 0x67c(r31)
/* 804BD608  83 A3 00 04 */	lwz r29, 4(r3)
/* 804BD60C  7F E3 FB 78 */	mr r3, r31
/* 804BD610  7F A4 EB 78 */	mr r4, r29
/* 804BD614  38 A0 00 19 */	li r5, 0x19
/* 804BD618  48 00 6E 2D */	bl setSimpleBtk__9daMidna_cFP12J3DModelDataUs
/* 804BD61C  90 7F 06 50 */	stw r3, 0x650(r31)
/* 804BD620  38 80 00 00 */	li r4, 0
/* 804BD624  48 00 00 24 */	b lbl_804BD648
lbl_804BD628:
/* 804BD628  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 804BD62C  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 804BD630  7C 63 00 2E */	lwzx r3, r3, r0
/* 804BD634  80 63 00 08 */	lwz r3, 8(r3)
/* 804BD638  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BD63C  60 00 00 01 */	ori r0, r0, 1
/* 804BD640  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BD644  38 84 00 01 */	addi r4, r4, 1
lbl_804BD648:
/* 804BD648  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804BD64C  28 00 00 04 */	cmplwi r0, 4
/* 804BD650  41 80 FF D8 */	blt lbl_804BD628
/* 804BD654  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 804BD658  83 A3 00 04 */	lwz r29, 4(r3)
/* 804BD65C  7F E3 FB 78 */	mr r3, r31
/* 804BD660  7F A4 EB 78 */	mr r4, r29
/* 804BD664  38 A0 00 18 */	li r5, 0x18
/* 804BD668  48 00 6D DD */	bl setSimpleBtk__9daMidna_cFP12J3DModelDataUs
/* 804BD66C  90 7F 06 54 */	stw r3, 0x654(r31)
/* 804BD670  7F E3 FB 78 */	mr r3, r31
/* 804BD674  7F A4 EB 78 */	mr r4, r29
/* 804BD678  38 A0 00 14 */	li r5, 0x14
/* 804BD67C  48 00 6D 19 */	bl setSimpleBrk__9daMidna_cFP12J3DModelDataUs
/* 804BD680  90 7F 06 60 */	stw r3, 0x660(r31)
/* 804BD684  80 7F 06 98 */	lwz r3, 0x698(r31)
/* 804BD688  80 83 00 04 */	lwz r4, 4(r3)
/* 804BD68C  7F E3 FB 78 */	mr r3, r31
/* 804BD690  38 A0 00 13 */	li r5, 0x13
/* 804BD694  48 00 6D 01 */	bl setSimpleBrk__9daMidna_cFP12J3DModelDataUs
/* 804BD698  90 7F 06 64 */	stw r3, 0x664(r31)
/* 804BD69C  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 804BD6A0  80 7F 06 64 */	lwz r3, 0x664(r31)
/* 804BD6A4  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BD6A8  7F E3 FB 78 */	mr r3, r31
/* 804BD6AC  4B B5 C2 19 */	bl fopAcM_setStageLayer__FPv
/* 804BD6B0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BD6B4  38 03 00 24 */	addi r0, r3, 0x24
/* 804BD6B8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 804BD6BC  C0 1E 03 98 */	lfs f0, 0x398(r30)
/* 804BD6C0  D0 1F 08 C8 */	stfs f0, 0x8c8(r31)
/* 804BD6C4  7F E3 FB 78 */	mr r3, r31
/* 804BD6C8  48 00 07 3D */	bl setMatrix__9daMidna_cFv
/* 804BD6CC  7F E3 FB 78 */	mr r3, r31
/* 804BD6D0  48 00 16 4D */	bl setRoomInfo__9daMidna_cFv
/* 804BD6D4  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 804BD6D8  93 E3 10 18 */	stw r31, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 804BD6DC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BD6E0  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 804BD6E4  4B B5 24 99 */	bl setMorf__13mDoExt_morf_cFf
/* 804BD6E8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804BD6EC  28 00 00 01 */	cmplwi r0, 1
/* 804BD6F0  40 82 00 98 */	bne lbl_804BD788
/* 804BD6F4  3B A0 00 01 */	li r29, 1
/* 804BD6F8  4B CE EE 85 */	bl dKy_darkworld_check__Fv
/* 804BD6FC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804BD700  28 00 00 01 */	cmplwi r0, 1
/* 804BD704  41 82 00 24 */	beq lbl_804BD728
/* 804BD708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BD70C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BD710  38 63 00 28 */	addi r3, r3, 0x28
/* 804BD714  38 80 00 03 */	li r4, 3
/* 804BD718  4B B7 54 D5 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 804BD71C  2C 03 00 00 */	cmpwi r3, 0
/* 804BD720  40 82 00 08 */	bne lbl_804BD728
/* 804BD724  3B A0 00 00 */	li r29, 0
lbl_804BD728:
/* 804BD728  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 804BD72C  41 82 00 5C */	beq lbl_804BD788
/* 804BD730  3B A0 00 00 */	li r29, 0
/* 804BD734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BD738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BD73C  38 63 00 28 */	addi r3, r3, 0x28
/* 804BD740  38 80 00 03 */	li r4, 3
/* 804BD744  4B B7 54 A9 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 804BD748  2C 03 00 00 */	cmpwi r3, 0
/* 804BD74C  41 82 00 24 */	beq lbl_804BD770
/* 804BD750  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BD754  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BD758  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804BD75C  38 80 1E 08 */	li r4, 0x1e08
/* 804BD760  4B B7 72 5D */	bl isEventBit__11dSv_event_cCFUs
/* 804BD764  2C 03 00 00 */	cmpwi r3, 0
/* 804BD768  40 82 00 08 */	bne lbl_804BD770
/* 804BD76C  3B A0 00 01 */	li r29, 1
lbl_804BD770:
/* 804BD770  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 804BD774  40 82 00 14 */	bne lbl_804BD788
/* 804BD778  38 00 00 03 */	li r0, 3
/* 804BD77C  98 1F 08 4F */	stb r0, 0x84f(r31)
/* 804BD780  38 00 00 0B */	li r0, 0xb
/* 804BD784  90 1F 08 C0 */	stw r0, 0x8c0(r31)
lbl_804BD788:
/* 804BD788  7F E3 FB 78 */	mr r3, r31
/* 804BD78C  48 00 5B 0D */	bl setHairAngle__9daMidna_cFv
/* 804BD790  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BD794  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 804BD798  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BD79C  7F E3 FB 78 */	mr r3, r31
/* 804BD7A0  48 00 38 9D */	bl setAnm__9daMidna_cFv
/* 804BD7A4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BD7A8  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804BD7AC  4B B5 23 D1 */	bl setMorf__13mDoExt_morf_cFf
/* 804BD7B0  7F E3 FB 78 */	mr r3, r31
/* 804BD7B4  48 00 01 89 */	bl allAnimePlay__9daMidna_cFv
/* 804BD7B8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BD7BC  4B B5 3A 31 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 804BD7C0  7F E3 FB 78 */	mr r3, r31
/* 804BD7C4  48 00 0C AD */	bl setBodyPartMatrix__9daMidna_cFv
/* 804BD7C8  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 804BD7CC  B0 1F 06 E0 */	sth r0, 0x6e0(r31)
/* 804BD7D0  38 7E 00 2C */	addi r3, r30, 0x2c
/* 804BD7D4  A8 03 00 02 */	lha r0, 2(r3)
/* 804BD7D8  B0 1F 06 E2 */	sth r0, 0x6e2(r31)
/* 804BD7DC  A8 03 00 04 */	lha r0, 4(r3)
/* 804BD7E0  B0 1F 06 E4 */	sth r0, 0x6e4(r31)
/* 804BD7E4  A8 03 00 06 */	lha r0, 6(r3)
/* 804BD7E8  B0 1F 06 E6 */	sth r0, 0x6e6(r31)
/* 804BD7EC  4B CE ED 91 */	bl dKy_darkworld_check__Fv
/* 804BD7F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804BD7F4  41 82 00 50 */	beq lbl_804BD844
/* 804BD7F8  88 1E 00 34 */	lbz r0, 0x34(r30)
/* 804BD7FC  98 1F 06 E8 */	stb r0, 0x6e8(r31)
/* 804BD800  38 7E 00 34 */	addi r3, r30, 0x34
/* 804BD804  88 03 00 01 */	lbz r0, 1(r3)
/* 804BD808  98 1F 06 E9 */	stb r0, 0x6e9(r31)
/* 804BD80C  88 03 00 02 */	lbz r0, 2(r3)
/* 804BD810  98 1F 06 EA */	stb r0, 0x6ea(r31)
/* 804BD814  88 03 00 03 */	lbz r0, 3(r3)
/* 804BD818  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 804BD81C  88 1E 00 38 */	lbz r0, 0x38(r30)
/* 804BD820  98 1F 06 EC */	stb r0, 0x6ec(r31)
/* 804BD824  38 7E 00 38 */	addi r3, r30, 0x38
/* 804BD828  88 03 00 01 */	lbz r0, 1(r3)
/* 804BD82C  98 1F 06 ED */	stb r0, 0x6ed(r31)
/* 804BD830  88 03 00 02 */	lbz r0, 2(r3)
/* 804BD834  98 1F 06 EE */	stb r0, 0x6ee(r31)
/* 804BD838  88 03 00 03 */	lbz r0, 3(r3)
/* 804BD83C  98 1F 06 EF */	stb r0, 0x6ef(r31)
/* 804BD840  48 00 00 4C */	b lbl_804BD88C
lbl_804BD844:
/* 804BD844  88 1E 00 48 */	lbz r0, 0x48(r30)
/* 804BD848  98 1F 06 E8 */	stb r0, 0x6e8(r31)
/* 804BD84C  38 7E 00 48 */	addi r3, r30, 0x48
/* 804BD850  88 03 00 01 */	lbz r0, 1(r3)
/* 804BD854  98 1F 06 E9 */	stb r0, 0x6e9(r31)
/* 804BD858  88 03 00 02 */	lbz r0, 2(r3)
/* 804BD85C  98 1F 06 EA */	stb r0, 0x6ea(r31)
/* 804BD860  88 03 00 03 */	lbz r0, 3(r3)
/* 804BD864  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 804BD868  88 1E 00 4C */	lbz r0, 0x4c(r30)
/* 804BD86C  98 1F 06 EC */	stb r0, 0x6ec(r31)
/* 804BD870  38 7E 00 4C */	addi r3, r30, 0x4c
/* 804BD874  88 03 00 01 */	lbz r0, 1(r3)
/* 804BD878  98 1F 06 ED */	stb r0, 0x6ed(r31)
/* 804BD87C  88 03 00 02 */	lbz r0, 2(r3)
/* 804BD880  98 1F 06 EE */	stb r0, 0x6ee(r31)
/* 804BD884  88 03 00 03 */	lbz r0, 3(r3)
/* 804BD888  98 1F 06 EF */	stb r0, 0x6ef(r31)
lbl_804BD88C:
/* 804BD88C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 804BD890  90 1F 05 24 */	stw r0, 0x524(r31)
/* 804BD894  7F E3 FB 78 */	mr r3, r31
/* 804BD898  48 00 71 21 */	bl setMidnaNoDrawFlg__9daMidna_cFv
lbl_804BD89C:
/* 804BD89C  7F 83 E3 78 */	mr r3, r28
lbl_804BD8A0:
/* 804BD8A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804BD8A4  4B EA 49 81 */	bl _restgpr_28
/* 804BD8A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BD8AC  7C 08 03 A6 */	mtlr r0
/* 804BD8B0  38 21 00 20 */	addi r1, r1, 0x20
/* 804BD8B4  4E 80 00 20 */	blr 
