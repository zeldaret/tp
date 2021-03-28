lbl_80B2FE84:
/* 80B2FE84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B2FE88  7C 08 02 A6 */	mflr r0
/* 80B2FE8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B2FE90  39 61 00 40 */	addi r11, r1, 0x40
/* 80B2FE94  4B 83 23 38 */	b _savegpr_25
/* 80B2FE98  7C 7F 1B 78 */	mr r31, r3
/* 80B2FE9C  7C BD 2B 78 */	mr r29, r5
/* 80B2FEA0  A3 C4 00 14 */	lhz r30, 0x14(r4)
/* 80B2FEA4  88 83 0E 9B */	lbz r4, 0xe9b(r3)
/* 80B2FEA8  30 04 FF FF */	addic r0, r4, -1
/* 80B2FEAC  7C 60 01 10 */	subfe r3, r0, r0
/* 80B2FEB0  38 00 00 00 */	li r0, 0
/* 80B2FEB4  7C 05 18 78 */	andc r5, r0, r3
/* 80B2FEB8  28 04 00 00 */	cmplwi r4, 0
/* 80B2FEBC  3B 20 00 01 */	li r25, 1
/* 80B2FEC0  28 04 00 00 */	cmplwi r4, 0
/* 80B2FEC4  3B 40 00 03 */	li r26, 3
/* 80B2FEC8  28 04 00 00 */	cmplwi r4, 0
/* 80B2FECC  3B 60 00 04 */	li r27, 4
/* 80B2FED0  3C 60 80 B4 */	lis r3, lit_4467@ha
/* 80B2FED4  38 83 18 98 */	addi r4, r3, lit_4467@l
/* 80B2FED8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B2FEDC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B2FEE0  90 61 00 08 */	stw r3, 8(r1)
/* 80B2FEE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B2FEE8  80 04 00 08 */	lwz r0, 8(r4)
/* 80B2FEEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B2FEF0  93 21 00 08 */	stw r25, 8(r1)
/* 80B2FEF4  93 41 00 0C */	stw r26, 0xc(r1)
/* 80B2FEF8  93 61 00 10 */	stw r27, 0x10(r1)
/* 80B2FEFC  7C 1E 28 00 */	cmpw r30, r5
/* 80B2FF00  40 82 00 BC */	bne lbl_80B2FFBC
/* 80B2FF04  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B2FF08  80 63 00 04 */	lwz r3, 4(r3)
/* 80B2FF0C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B2FF10  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B2FF14  1C 19 00 30 */	mulli r0, r25, 0x30
/* 80B2FF18  7C 63 02 14 */	add r3, r3, r0
/* 80B2FF1C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B2FF20  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B2FF24  4B 81 65 8C */	b PSMTXCopy
/* 80B2FF28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2FF2C  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80B2FF30  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80B2FF34  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 80B2FF38  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80B2FF3C  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 80B2FF40  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80B2FF44  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 80B2FF48  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B2FF4C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B2FF50  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B2FF54  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B2FF58  1C 1A 00 30 */	mulli r0, r26, 0x30
/* 80B2FF5C  7C 63 02 14 */	add r3, r3, r0
/* 80B2FF60  7F 84 E3 78 */	mr r4, r28
/* 80B2FF64  4B 81 65 4C */	b PSMTXCopy
/* 80B2FF68  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80B2FF6C  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 80B2FF70  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80B2FF74  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 80B2FF78  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80B2FF7C  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 80B2FF80  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B2FF84  80 63 00 04 */	lwz r3, 4(r3)
/* 80B2FF88  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B2FF8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B2FF90  1C 1B 00 30 */	mulli r0, r27, 0x30
/* 80B2FF94  7C 63 02 14 */	add r3, r3, r0
/* 80B2FF98  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B2FF9C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B2FFA0  4B 81 65 10 */	b PSMTXCopy
/* 80B2FFA4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80B2FFA8  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 80B2FFAC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80B2FFB0  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 80B2FFB4  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80B2FFB8  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_80B2FFBC:
/* 80B2FFBC  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80B2FFC0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B2FFC4  1F 5E 00 30 */	mulli r26, r30, 0x30
/* 80B2FFC8  7C 60 D2 14 */	add r3, r0, r26
/* 80B2FFCC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B2FFD0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B2FFD4  4B 81 64 DC */	b PSMTXCopy
/* 80B2FFD8  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B2FFDC  28 00 00 00 */	cmplwi r0, 0
/* 80B2FFE0  40 82 00 40 */	bne lbl_80B30020
/* 80B2FFE4  2C 1E 00 02 */	cmpwi r30, 2
/* 80B2FFE8  41 82 00 70 */	beq lbl_80B30058
/* 80B2FFEC  40 80 00 10 */	bge lbl_80B2FFFC
/* 80B2FFF0  2C 1E 00 01 */	cmpwi r30, 1
/* 80B2FFF4  40 80 00 10 */	bge lbl_80B30004
/* 80B2FFF8  48 00 00 60 */	b lbl_80B30058
lbl_80B2FFFC:
/* 80B2FFFC  2C 1E 00 05 */	cmpwi r30, 5
/* 80B30000  40 80 00 58 */	bge lbl_80B30058
lbl_80B30004:
/* 80B30004  7F E3 FB 78 */	mr r3, r31
/* 80B30008  7F C4 F3 78 */	mr r4, r30
/* 80B3000C  38 A1 00 08 */	addi r5, r1, 8
/* 80B30010  80 DF 0B D8 */	lwz r6, 0xbd8(r31)
/* 80B30014  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80B30018  4B 62 33 64 */	b setLookatMtx__8daNpcF_cFiPif
/* 80B3001C  48 00 00 3C */	b lbl_80B30058
lbl_80B30020:
/* 80B30020  2C 1E 00 02 */	cmpwi r30, 2
/* 80B30024  41 82 00 34 */	beq lbl_80B30058
/* 80B30028  40 80 00 10 */	bge lbl_80B30038
/* 80B3002C  2C 1E 00 01 */	cmpwi r30, 1
/* 80B30030  40 80 00 10 */	bge lbl_80B30040
/* 80B30034  48 00 00 24 */	b lbl_80B30058
lbl_80B30038:
/* 80B30038  2C 1E 00 05 */	cmpwi r30, 5
/* 80B3003C  40 80 00 1C */	bge lbl_80B30058
lbl_80B30040:
/* 80B30040  7F E3 FB 78 */	mr r3, r31
/* 80B30044  7F C4 F3 78 */	mr r4, r30
/* 80B30048  38 A1 00 08 */	addi r5, r1, 8
/* 80B3004C  80 DF 0B D8 */	lwz r6, 0xbd8(r31)
/* 80B30050  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80B30054  4B 62 33 28 */	b setLookatMtx__8daNpcF_cFiPif
lbl_80B30058:
/* 80B30058  7C 1E C8 00 */	cmpw r30, r25
/* 80B3005C  40 82 00 30 */	bne lbl_80B3008C
/* 80B30060  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B30064  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B30068  A8 9F 09 0C */	lha r4, 0x90c(r31)
/* 80B3006C  4B 4D C3 C8 */	b mDoMtx_YrotM__FPA4_fs
/* 80B30070  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B30074  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B30078  A8 1F 09 08 */	lha r0, 0x908(r31)
/* 80B3007C  7C 00 00 D0 */	neg r0, r0
/* 80B30080  7C 04 07 34 */	extsh r4, r0
/* 80B30084  4B 4D C4 48 */	b mDoMtx_ZrotM__FPA4_fs
/* 80B30088  48 00 00 2C */	b lbl_80B300B4
lbl_80B3008C:
/* 80B3008C  7C 1E D8 00 */	cmpw r30, r27
/* 80B30090  40 82 00 24 */	bne lbl_80B300B4
/* 80B30094  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B30098  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3009C  A8 9F 09 18 */	lha r4, 0x918(r31)
/* 80B300A0  4B 4D C3 94 */	b mDoMtx_YrotM__FPA4_fs
/* 80B300A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B300A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B300AC  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 80B300B0  4B 4D C4 1C */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B300B4:
/* 80B300B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B300B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B300BC  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 80B300C0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B300C4  7C 80 D2 14 */	add r4, r0, r26
/* 80B300C8  4B 81 63 E8 */	b PSMTXCopy
/* 80B300CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B300D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B300D4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80B300D8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80B300DC  4B 81 63 D4 */	b PSMTXCopy
/* 80B300E0  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B300E4  28 00 00 00 */	cmplwi r0, 0
/* 80B300E8  38 80 00 05 */	li r4, 5
/* 80B300EC  7C 00 00 34 */	cntlzw r0, r0
/* 80B300F0  54 03 D9 7E */	srwi r3, r0, 5
/* 80B300F4  38 63 00 07 */	addi r3, r3, 7
/* 80B300F8  38 04 FF FF */	addi r0, r4, -1
/* 80B300FC  7C 1E 00 00 */	cmpw r30, r0
/* 80B30100  41 82 00 0C */	beq lbl_80B3010C
/* 80B30104  7C 1E 18 00 */	cmpw r30, r3
/* 80B30108  40 82 00 2C */	bne lbl_80B30134
lbl_80B3010C:
/* 80B3010C  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80B30110  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B30114  41 82 00 20 */	beq lbl_80B30134
/* 80B30118  83 3F 05 80 */	lwz r25, 0x580(r31)
/* 80B3011C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B30120  80 83 00 08 */	lwz r4, 8(r3)
/* 80B30124  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80B30128  4B 4D D8 68 */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80B3012C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B30130  93 23 00 08 */	stw r25, 8(r3)
lbl_80B30134:
/* 80B30134  38 60 00 01 */	li r3, 1
/* 80B30138  39 61 00 40 */	addi r11, r1, 0x40
/* 80B3013C  4B 83 20 DC */	b _restgpr_25
/* 80B30140  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B30144  7C 08 03 A6 */	mtlr r0
/* 80B30148  38 21 00 40 */	addi r1, r1, 0x40
/* 80B3014C  4E 80 00 20 */	blr 
