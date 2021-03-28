lbl_80A0F0BC:
/* 80A0F0BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A0F0C0  7C 08 02 A6 */	mflr r0
/* 80A0F0C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A0F0C8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A0F0CC  4B 95 31 0C */	b _savegpr_28
/* 80A0F0D0  7C 7D 1B 78 */	mr r29, r3
/* 80A0F0D4  7C BE 2B 78 */	mr r30, r5
/* 80A0F0D8  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80A0F0DC  7C BF 2B 78 */	mr r31, r5
/* 80A0F0E0  3C 60 80 A1 */	lis r3, lit_4507@ha
/* 80A0F0E4  38 83 3E F4 */	addi r4, r3, lit_4507@l
/* 80A0F0E8  80 64 00 00 */	lwz r3, 0(r4)
/* 80A0F0EC  80 04 00 04 */	lwz r0, 4(r4)
/* 80A0F0F0  90 61 00 08 */	stw r3, 8(r1)
/* 80A0F0F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A0F0F8  80 04 00 08 */	lwz r0, 8(r4)
/* 80A0F0FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A0F100  2C 05 00 00 */	cmpwi r5, 0
/* 80A0F104  40 82 00 B0 */	bne lbl_80A0F1B4
/* 80A0F108  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A0F10C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A0F110  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A0F114  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A0F118  38 63 00 30 */	addi r3, r3, 0x30
/* 80A0F11C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A0F120  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A0F124  4B 93 73 8C */	b PSMTXCopy
/* 80A0F128  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A0F12C  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80A0F130  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A0F134  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80A0F138  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A0F13C  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80A0F140  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A0F144  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80A0F148  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A0F14C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A0F150  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A0F154  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A0F158  38 63 00 90 */	addi r3, r3, 0x90
/* 80A0F15C  7F 84 E3 78 */	mr r4, r28
/* 80A0F160  4B 93 73 50 */	b PSMTXCopy
/* 80A0F164  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A0F168  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80A0F16C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A0F170  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80A0F174  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A0F178  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80A0F17C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A0F180  80 63 00 04 */	lwz r3, 4(r3)
/* 80A0F184  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A0F188  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A0F18C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A0F190  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A0F194  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A0F198  4B 93 73 18 */	b PSMTXCopy
/* 80A0F19C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A0F1A0  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80A0F1A4  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A0F1A8  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80A0F1AC  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A0F1B0  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80A0F1B4:
/* 80A0F1B4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A0F1B8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A0F1BC  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80A0F1C0  7C 60 E2 14 */	add r3, r0, r28
/* 80A0F1C4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A0F1C8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A0F1CC  4B 93 72 E4 */	b PSMTXCopy
/* 80A0F1D0  2C 1F 00 02 */	cmpwi r31, 2
/* 80A0F1D4  41 82 00 38 */	beq lbl_80A0F20C
/* 80A0F1D8  40 80 00 10 */	bge lbl_80A0F1E8
/* 80A0F1DC  2C 1F 00 01 */	cmpwi r31, 1
/* 80A0F1E0  40 80 00 10 */	bge lbl_80A0F1F0
/* 80A0F1E4  48 00 00 28 */	b lbl_80A0F20C
lbl_80A0F1E8:
/* 80A0F1E8  2C 1F 00 05 */	cmpwi r31, 5
/* 80A0F1EC  40 80 00 20 */	bge lbl_80A0F20C
lbl_80A0F1F0:
/* 80A0F1F0  7F A3 EB 78 */	mr r3, r29
/* 80A0F1F4  7F E4 FB 78 */	mr r4, r31
/* 80A0F1F8  38 A1 00 08 */	addi r5, r1, 8
/* 80A0F1FC  3C C0 80 A1 */	lis r6, m__16daNpcIns_Param_c@ha
/* 80A0F200  38 C6 3E 6C */	addi r6, r6, m__16daNpcIns_Param_c@l
/* 80A0F204  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80A0F208  4B 74 41 74 */	b setLookatMtx__8daNpcF_cFiPif
lbl_80A0F20C:
/* 80A0F20C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A0F210  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A0F214  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A0F218  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A0F21C  7C 80 E2 14 */	add r4, r0, r28
/* 80A0F220  4B 93 72 90 */	b PSMTXCopy
/* 80A0F224  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A0F228  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A0F22C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80A0F230  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80A0F234  4B 93 72 7C */	b PSMTXCopy
/* 80A0F238  2C 1F 00 04 */	cmpwi r31, 4
/* 80A0F23C  41 82 00 0C */	beq lbl_80A0F248
/* 80A0F240  2C 1F 00 08 */	cmpwi r31, 8
/* 80A0F244  40 82 00 2C */	bne lbl_80A0F270
lbl_80A0F248:
/* 80A0F248  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80A0F24C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A0F250  41 82 00 20 */	beq lbl_80A0F270
/* 80A0F254  83 9D 05 80 */	lwz r28, 0x580(r29)
/* 80A0F258  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A0F25C  80 83 00 08 */	lwz r4, 8(r3)
/* 80A0F260  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80A0F264  4B 5F E7 2C */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80A0F268  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A0F26C  93 83 00 08 */	stw r28, 8(r3)
lbl_80A0F270:
/* 80A0F270  38 60 00 01 */	li r3, 1
/* 80A0F274  39 61 00 30 */	addi r11, r1, 0x30
/* 80A0F278  4B 95 2F AC */	b _restgpr_28
/* 80A0F27C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A0F280  7C 08 03 A6 */	mtlr r0
/* 80A0F284  38 21 00 30 */	addi r1, r1, 0x30
/* 80A0F288  4E 80 00 20 */	blr 
