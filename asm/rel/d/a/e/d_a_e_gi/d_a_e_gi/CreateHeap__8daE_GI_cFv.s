lbl_806D00E8:
/* 806D00E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806D00EC  7C 08 02 A6 */	mflr r0
/* 806D00F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D00F4  39 61 00 30 */	addi r11, r1, 0x30
/* 806D00F8  4B C9 20 E0 */	b _savegpr_28
/* 806D00FC  7C 7E 1B 78 */	mr r30, r3
/* 806D0100  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D0104  38 63 0F 78 */	addi r3, r3, stringBase0@l
/* 806D0108  38 80 00 13 */	li r4, 0x13
/* 806D010C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D0110  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D0114  3F E5 00 02 */	addis r31, r5, 2
/* 806D0118  3B FF C2 F8 */	addi r31, r31, -15624
/* 806D011C  7F E5 FB 78 */	mr r5, r31
/* 806D0120  38 C0 00 80 */	li r6, 0x80
/* 806D0124  4B 96 C1 C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D0128  7C 7C 1B 78 */	mr r28, r3
/* 806D012C  38 60 00 58 */	li r3, 0x58
/* 806D0130  4B BF EB 1C */	b __nw__FUl
/* 806D0134  7C 7D 1B 79 */	or. r29, r3, r3
/* 806D0138  41 82 00 68 */	beq lbl_806D01A0
/* 806D013C  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D0140  38 63 0F 78 */	addi r3, r3, stringBase0@l
/* 806D0144  38 80 00 0B */	li r4, 0xb
/* 806D0148  7F E5 FB 78 */	mr r5, r31
/* 806D014C  38 C0 00 80 */	li r6, 0x80
/* 806D0150  4B 96 C1 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D0154  7C 67 1B 78 */	mr r7, r3
/* 806D0158  38 1E 05 BC */	addi r0, r30, 0x5bc
/* 806D015C  90 01 00 08 */	stw r0, 8(r1)
/* 806D0160  3C 00 00 08 */	lis r0, 8
/* 806D0164  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D0168  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806D016C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806D0170  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D0174  7F A3 EB 78 */	mr r3, r29
/* 806D0178  7F 84 E3 78 */	mr r4, r28
/* 806D017C  38 A0 00 00 */	li r5, 0
/* 806D0180  38 C0 00 00 */	li r6, 0
/* 806D0184  39 00 00 00 */	li r8, 0
/* 806D0188  3D 20 80 6D */	lis r9, lit_3909@ha
/* 806D018C  C0 29 0E 68 */	lfs f1, lit_3909@l(r9)
/* 806D0190  39 20 00 00 */	li r9, 0
/* 806D0194  39 40 FF FF */	li r10, -1
/* 806D0198  4B 94 06 38 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806D019C  7C 7D 1B 78 */	mr r29, r3
lbl_806D01A0:
/* 806D01A0  93 BE 05 B4 */	stw r29, 0x5b4(r30)
/* 806D01A4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806D01A8  28 03 00 00 */	cmplwi r3, 0
/* 806D01AC  41 82 00 10 */	beq lbl_806D01BC
/* 806D01B0  80 A3 00 04 */	lwz r5, 4(r3)
/* 806D01B4  28 05 00 00 */	cmplwi r5, 0
/* 806D01B8  40 82 00 0C */	bne lbl_806D01C4
lbl_806D01BC:
/* 806D01BC  38 60 00 00 */	li r3, 0
/* 806D01C0  48 00 00 84 */	b lbl_806D0244
lbl_806D01C4:
/* 806D01C4  93 C5 00 14 */	stw r30, 0x14(r5)
/* 806D01C8  38 E0 00 01 */	li r7, 1
/* 806D01CC  3C 60 80 6D */	lis r3, JointCallBack__8daE_GI_cFP8J3DJointi@ha
/* 806D01D0  38 83 D5 94 */	addi r4, r3, JointCallBack__8daE_GI_cFP8J3DJointi@l
/* 806D01D4  48 00 00 24 */	b lbl_806D01F8
lbl_806D01D8:
/* 806D01D8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 806D01DC  28 00 00 03 */	cmplwi r0, 3
/* 806D01E0  40 82 00 14 */	bne lbl_806D01F4
/* 806D01E4  80 66 00 28 */	lwz r3, 0x28(r6)
/* 806D01E8  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 806D01EC  7C 63 00 2E */	lwzx r3, r3, r0
/* 806D01F0  90 83 00 04 */	stw r4, 4(r3)
lbl_806D01F4:
/* 806D01F4  38 E7 00 01 */	addi r7, r7, 1
lbl_806D01F8:
/* 806D01F8  80 C5 00 04 */	lwz r6, 4(r5)
/* 806D01FC  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 806D0200  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 806D0204  7C 00 18 40 */	cmplw r0, r3
/* 806D0208  41 80 FF D0 */	blt lbl_806D01D8
/* 806D020C  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D0210  38 63 0F 78 */	addi r3, r3, stringBase0@l
/* 806D0214  38 80 00 14 */	li r4, 0x14
/* 806D0218  7F E5 FB 78 */	mr r5, r31
/* 806D021C  38 C0 00 80 */	li r6, 0x80
/* 806D0220  4B 96 C0 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D0224  38 80 00 00 */	li r4, 0
/* 806D0228  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806D022C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806D0230  4B 94 4A 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806D0234  90 7E 05 B8 */	stw r3, 0x5b8(r30)
/* 806D0238  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806D023C  30 03 FF FF */	addic r0, r3, -1
/* 806D0240  7C 60 19 10 */	subfe r3, r0, r3
lbl_806D0244:
/* 806D0244  39 61 00 30 */	addi r11, r1, 0x30
/* 806D0248  4B C9 1F DC */	b _restgpr_28
/* 806D024C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806D0250  7C 08 03 A6 */	mtlr r0
/* 806D0254  38 21 00 30 */	addi r1, r1, 0x30
/* 806D0258  4E 80 00 20 */	blr 
