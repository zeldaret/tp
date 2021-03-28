lbl_806E00D8:
/* 806E00D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E00DC  7C 08 02 A6 */	mflr r0
/* 806E00E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E00E4  39 61 00 30 */	addi r11, r1, 0x30
/* 806E00E8  4B C8 20 F0 */	b _savegpr_28
/* 806E00EC  7C 7F 1B 78 */	mr r31, r3
/* 806E00F0  38 60 00 54 */	li r3, 0x54
/* 806E00F4  4B BE EB 58 */	b __nw__FUl
/* 806E00F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 806E00FC  41 82 00 9C */	beq lbl_806E0198
/* 806E0100  3C 60 80 6E */	lis r3, stringBase0@ha
/* 806E0104  38 63 02 94 */	addi r3, r3, stringBase0@l
/* 806E0108  38 80 00 13 */	li r4, 0x13
/* 806E010C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806E0110  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806E0114  3F 85 00 02 */	addis r28, r5, 2
/* 806E0118  3B 9C C2 F8 */	addi r28, r28, -15624
/* 806E011C  7F 85 E3 78 */	mr r5, r28
/* 806E0120  38 C0 00 80 */	li r6, 0x80
/* 806E0124  4B 95 C1 C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E0128  7C 7D 1B 78 */	mr r29, r3
/* 806E012C  3C 60 80 6E */	lis r3, stringBase0@ha
/* 806E0130  38 63 02 94 */	addi r3, r3, stringBase0@l
/* 806E0134  38 80 00 18 */	li r4, 0x18
/* 806E0138  7F 85 E3 78 */	mr r5, r28
/* 806E013C  38 C0 00 80 */	li r6, 0x80
/* 806E0140  4B 95 C1 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E0144  7C 64 1B 78 */	mr r4, r3
/* 806E0148  38 00 00 01 */	li r0, 1
/* 806E014C  90 01 00 08 */	stw r0, 8(r1)
/* 806E0150  38 00 00 00 */	li r0, 0
/* 806E0154  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E0158  3C 00 00 08 */	lis r0, 8
/* 806E015C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0160  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806E0164  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806E0168  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E016C  7F C3 F3 78 */	mr r3, r30
/* 806E0170  38 A0 00 00 */	li r5, 0
/* 806E0174  38 C0 00 00 */	li r6, 0
/* 806E0178  7F A7 EB 78 */	mr r7, r29
/* 806E017C  39 00 00 02 */	li r8, 2
/* 806E0180  3D 20 80 6E */	lis r9, lit_3690@ha
/* 806E0184  C0 29 02 90 */	lfs f1, lit_3690@l(r9)
/* 806E0188  39 20 00 00 */	li r9, 0
/* 806E018C  39 40 FF FF */	li r10, -1
/* 806E0190  4B 92 FA BC */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806E0194  7C 7E 1B 78 */	mr r30, r3
lbl_806E0198:
/* 806E0198  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 806E019C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806E01A0  28 03 00 00 */	cmplwi r3, 0
/* 806E01A4  41 82 00 10 */	beq lbl_806E01B4
/* 806E01A8  80 03 00 04 */	lwz r0, 4(r3)
/* 806E01AC  28 00 00 00 */	cmplwi r0, 0
/* 806E01B0  40 82 00 0C */	bne lbl_806E01BC
lbl_806E01B4:
/* 806E01B4  38 60 00 00 */	li r3, 0
/* 806E01B8  48 00 00 08 */	b lbl_806E01C0
lbl_806E01BC:
/* 806E01BC  38 60 00 01 */	li r3, 1
lbl_806E01C0:
/* 806E01C0  39 61 00 30 */	addi r11, r1, 0x30
/* 806E01C4  4B C8 20 60 */	b _restgpr_28
/* 806E01C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E01CC  7C 08 03 A6 */	mtlr r0
/* 806E01D0  38 21 00 30 */	addi r1, r1, 0x30
/* 806E01D4  4E 80 00 20 */	blr 
