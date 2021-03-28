lbl_80AD9280:
/* 80AD9280  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AD9284  7C 08 02 A6 */	mflr r0
/* 80AD9288  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD928C  39 61 00 30 */	addi r11, r1, 0x30
/* 80AD9290  4B 88 8F 48 */	b _savegpr_28
/* 80AD9294  7C 7D 1B 78 */	mr r29, r3
/* 80AD9298  7C BE 2B 78 */	mr r30, r5
/* 80AD929C  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80AD92A0  7C BF 2B 78 */	mr r31, r5
/* 80AD92A4  3C 60 80 AE */	lis r3, lit_4591@ha
/* 80AD92A8  38 83 20 70 */	addi r4, r3, lit_4591@l
/* 80AD92AC  80 64 00 00 */	lwz r3, 0(r4)
/* 80AD92B0  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD92B4  90 61 00 08 */	stw r3, 8(r1)
/* 80AD92B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AD92BC  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD92C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD92C4  2C 05 00 00 */	cmpwi r5, 0
/* 80AD92C8  40 82 00 B0 */	bne lbl_80AD9378
/* 80AD92CC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AD92D0  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD92D4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AD92D8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AD92DC  38 63 00 30 */	addi r3, r3, 0x30
/* 80AD92E0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AD92E4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AD92E8  4B 86 D1 C8 */	b PSMTXCopy
/* 80AD92EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AD92F0  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80AD92F4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AD92F8  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80AD92FC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AD9300  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80AD9304  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AD9308  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80AD930C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AD9310  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD9314  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AD9318  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AD931C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80AD9320  7F 84 E3 78 */	mr r4, r28
/* 80AD9324  4B 86 D1 8C */	b PSMTXCopy
/* 80AD9328  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AD932C  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80AD9330  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AD9334  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80AD9338  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AD933C  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80AD9340  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AD9344  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD9348  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AD934C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AD9350  38 63 00 F0 */	addi r3, r3, 0xf0
/* 80AD9354  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AD9358  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AD935C  4B 86 D1 54 */	b PSMTXCopy
/* 80AD9360  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AD9364  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80AD9368  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AD936C  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80AD9370  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AD9374  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80AD9378:
/* 80AD9378  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80AD937C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80AD9380  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80AD9384  7C 60 E2 14 */	add r3, r0, r28
/* 80AD9388  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AD938C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AD9390  4B 86 D1 20 */	b PSMTXCopy
/* 80AD9394  2C 1F 00 04 */	cmpwi r31, 4
/* 80AD9398  40 80 00 10 */	bge lbl_80AD93A8
/* 80AD939C  2C 1F 00 01 */	cmpwi r31, 1
/* 80AD93A0  41 82 00 10 */	beq lbl_80AD93B0
/* 80AD93A4  48 00 00 28 */	b lbl_80AD93CC
lbl_80AD93A8:
/* 80AD93A8  2C 1F 00 06 */	cmpwi r31, 6
/* 80AD93AC  40 80 00 20 */	bge lbl_80AD93CC
lbl_80AD93B0:
/* 80AD93B0  7F A3 EB 78 */	mr r3, r29
/* 80AD93B4  7F E4 FB 78 */	mr r4, r31
/* 80AD93B8  38 A1 00 08 */	addi r5, r1, 8
/* 80AD93BC  3C C0 80 AE */	lis r6, m__17daNpcShad_Param_c@ha
/* 80AD93C0  38 C6 1F DC */	addi r6, r6, m__17daNpcShad_Param_c@l
/* 80AD93C4  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80AD93C8  4B 67 9F B4 */	b setLookatMtx__8daNpcF_cFiPif
lbl_80AD93CC:
/* 80AD93CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AD93D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AD93D4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80AD93D8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80AD93DC  7C 80 E2 14 */	add r4, r0, r28
/* 80AD93E0  4B 86 D0 D0 */	b PSMTXCopy
/* 80AD93E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AD93E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AD93EC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80AD93F0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80AD93F4  4B 86 D0 BC */	b PSMTXCopy
/* 80AD93F8  2C 1F 00 05 */	cmpwi r31, 5
/* 80AD93FC  41 82 00 0C */	beq lbl_80AD9408
/* 80AD9400  2C 1F 00 09 */	cmpwi r31, 9
/* 80AD9404  40 82 00 2C */	bne lbl_80AD9430
lbl_80AD9408:
/* 80AD9408  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80AD940C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80AD9410  41 82 00 20 */	beq lbl_80AD9430
/* 80AD9414  83 9D 05 80 */	lwz r28, 0x580(r29)
/* 80AD9418  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AD941C  80 83 00 08 */	lwz r4, 8(r3)
/* 80AD9420  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80AD9424  4B 53 45 6C */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80AD9428  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AD942C  93 83 00 08 */	stw r28, 8(r3)
lbl_80AD9430:
/* 80AD9430  38 60 00 01 */	li r3, 1
/* 80AD9434  39 61 00 30 */	addi r11, r1, 0x30
/* 80AD9438  4B 88 8D EC */	b _restgpr_28
/* 80AD943C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD9440  7C 08 03 A6 */	mtlr r0
/* 80AD9444  38 21 00 30 */	addi r1, r1, 0x30
/* 80AD9448  4E 80 00 20 */	blr 
