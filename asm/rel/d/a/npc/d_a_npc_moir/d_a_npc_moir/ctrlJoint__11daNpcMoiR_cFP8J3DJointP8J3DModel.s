lbl_80A7CEFC:
/* 80A7CEFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A7CF00  7C 08 02 A6 */	mflr r0
/* 80A7CF04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A7CF08  39 61 00 30 */	addi r11, r1, 0x30
/* 80A7CF0C  4B 8E 52 CC */	b _savegpr_28
/* 80A7CF10  7C 7D 1B 78 */	mr r29, r3
/* 80A7CF14  7C BE 2B 78 */	mr r30, r5
/* 80A7CF18  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80A7CF1C  7C BF 2B 78 */	mr r31, r5
/* 80A7CF20  3C 60 80 A8 */	lis r3, lit_4386@ha
/* 80A7CF24  38 83 33 38 */	addi r4, r3, lit_4386@l
/* 80A7CF28  80 64 00 00 */	lwz r3, 0(r4)
/* 80A7CF2C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A7CF30  90 61 00 08 */	stw r3, 8(r1)
/* 80A7CF34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7CF38  80 04 00 08 */	lwz r0, 8(r4)
/* 80A7CF3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A7CF40  2C 05 00 00 */	cmpwi r5, 0
/* 80A7CF44  40 82 00 B0 */	bne lbl_80A7CFF4
/* 80A7CF48  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A7CF4C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A7CF50  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A7CF54  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A7CF58  38 63 00 30 */	addi r3, r3, 0x30
/* 80A7CF5C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A7CF60  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A7CF64  4B 8C 95 4C */	b PSMTXCopy
/* 80A7CF68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A7CF6C  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80A7CF70  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A7CF74  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80A7CF78  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A7CF7C  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80A7CF80  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A7CF84  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80A7CF88  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A7CF8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A7CF90  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A7CF94  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A7CF98  38 63 00 90 */	addi r3, r3, 0x90
/* 80A7CF9C  7F 84 E3 78 */	mr r4, r28
/* 80A7CFA0  4B 8C 95 10 */	b PSMTXCopy
/* 80A7CFA4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A7CFA8  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80A7CFAC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A7CFB0  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80A7CFB4  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A7CFB8  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80A7CFBC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A7CFC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80A7CFC4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A7CFC8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A7CFCC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A7CFD0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A7CFD4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A7CFD8  4B 8C 94 D8 */	b PSMTXCopy
/* 80A7CFDC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A7CFE0  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80A7CFE4  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A7CFE8  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80A7CFEC  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A7CFF0  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80A7CFF4:
/* 80A7CFF4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A7CFF8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A7CFFC  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80A7D000  7C 60 E2 14 */	add r3, r0, r28
/* 80A7D004  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A7D008  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A7D00C  4B 8C 94 A4 */	b PSMTXCopy
/* 80A7D010  2C 1F 00 02 */	cmpwi r31, 2
/* 80A7D014  41 82 00 38 */	beq lbl_80A7D04C
/* 80A7D018  40 80 00 10 */	bge lbl_80A7D028
/* 80A7D01C  2C 1F 00 01 */	cmpwi r31, 1
/* 80A7D020  40 80 00 10 */	bge lbl_80A7D030
/* 80A7D024  48 00 00 28 */	b lbl_80A7D04C
lbl_80A7D028:
/* 80A7D028  2C 1F 00 05 */	cmpwi r31, 5
/* 80A7D02C  40 80 00 20 */	bge lbl_80A7D04C
lbl_80A7D030:
/* 80A7D030  7F A3 EB 78 */	mr r3, r29
/* 80A7D034  7F E4 FB 78 */	mr r4, r31
/* 80A7D038  38 A1 00 08 */	addi r5, r1, 8
/* 80A7D03C  3C C0 80 A8 */	lis r6, m__17daNpcMoiR_Param_c@ha
/* 80A7D040  38 C6 32 AC */	addi r6, r6, m__17daNpcMoiR_Param_c@l
/* 80A7D044  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80A7D048  4B 6D 63 34 */	b setLookatMtx__8daNpcF_cFiPif
lbl_80A7D04C:
/* 80A7D04C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A7D050  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A7D054  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A7D058  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A7D05C  7C 80 E2 14 */	add r4, r0, r28
/* 80A7D060  4B 8C 94 50 */	b PSMTXCopy
/* 80A7D064  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A7D068  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A7D06C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80A7D070  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80A7D074  4B 8C 94 3C */	b PSMTXCopy
/* 80A7D078  2C 1F 00 04 */	cmpwi r31, 4
/* 80A7D07C  41 82 00 0C */	beq lbl_80A7D088
/* 80A7D080  2C 1F 00 08 */	cmpwi r31, 8
/* 80A7D084  40 82 00 2C */	bne lbl_80A7D0B0
lbl_80A7D088:
/* 80A7D088  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80A7D08C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A7D090  41 82 00 20 */	beq lbl_80A7D0B0
/* 80A7D094  83 9D 05 80 */	lwz r28, 0x580(r29)
/* 80A7D098  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A7D09C  80 83 00 08 */	lwz r4, 8(r3)
/* 80A7D0A0  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80A7D0A4  4B 59 08 EC */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80A7D0A8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A7D0AC  93 83 00 08 */	stw r28, 8(r3)
lbl_80A7D0B0:
/* 80A7D0B0  38 60 00 01 */	li r3, 1
/* 80A7D0B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A7D0B8  4B 8E 51 6C */	b _restgpr_28
/* 80A7D0BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A7D0C0  7C 08 03 A6 */	mtlr r0
/* 80A7D0C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A7D0C8  4E 80 00 20 */	blr 
