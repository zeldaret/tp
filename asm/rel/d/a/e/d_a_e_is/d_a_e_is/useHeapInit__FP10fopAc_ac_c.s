lbl_806F7274:
/* 806F7274  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806F7278  7C 08 02 A6 */	mflr r0
/* 806F727C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F7280  39 61 00 30 */	addi r11, r1, 0x30
/* 806F7284  4B C6 AF 54 */	b _savegpr_28
/* 806F7288  7C 7F 1B 78 */	mr r31, r3
/* 806F728C  38 60 00 58 */	li r3, 0x58
/* 806F7290  4B BD 79 BC */	b __nw__FUl
/* 806F7294  7C 7E 1B 79 */	or. r30, r3, r3
/* 806F7298  41 82 00 94 */	beq lbl_806F732C
/* 806F729C  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806F72A0  38 63 7C 14 */	addi r3, r3, stringBase0@l
/* 806F72A4  38 80 00 0E */	li r4, 0xe
/* 806F72A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806F72AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806F72B0  3F 85 00 02 */	addis r28, r5, 2
/* 806F72B4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 806F72B8  7F 85 E3 78 */	mr r5, r28
/* 806F72BC  38 C0 00 80 */	li r6, 0x80
/* 806F72C0  4B 94 50 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F72C4  7C 7D 1B 78 */	mr r29, r3
/* 806F72C8  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806F72CC  38 63 7C 14 */	addi r3, r3, stringBase0@l
/* 806F72D0  38 80 00 13 */	li r4, 0x13
/* 806F72D4  7F 85 E3 78 */	mr r5, r28
/* 806F72D8  38 C0 00 80 */	li r6, 0x80
/* 806F72DC  4B 94 50 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F72E0  7C 64 1B 78 */	mr r4, r3
/* 806F72E4  38 1F 05 CC */	addi r0, r31, 0x5cc
/* 806F72E8  90 01 00 08 */	stw r0, 8(r1)
/* 806F72EC  38 00 00 00 */	li r0, 0
/* 806F72F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F72F4  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020203@ha */
/* 806F72F8  38 03 02 03 */	addi r0, r3, 0x0203 /* 0x11020203@l */
/* 806F72FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F7300  7F C3 F3 78 */	mr r3, r30
/* 806F7304  38 A0 00 00 */	li r5, 0
/* 806F7308  38 C0 00 00 */	li r6, 0
/* 806F730C  7F A7 EB 78 */	mr r7, r29
/* 806F7310  39 00 00 02 */	li r8, 2
/* 806F7314  3D 20 80 6F */	lis r9, lit_3648@ha
/* 806F7318  C0 29 7B 6C */	lfs f1, lit_3648@l(r9)
/* 806F731C  39 20 00 00 */	li r9, 0
/* 806F7320  39 40 FF FF */	li r10, -1
/* 806F7324  4B 91 94 AC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806F7328  7C 7E 1B 78 */	mr r30, r3
lbl_806F732C:
/* 806F732C  93 DF 05 C8 */	stw r30, 0x5c8(r31)
/* 806F7330  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806F7334  28 03 00 00 */	cmplwi r3, 0
/* 806F7338  41 82 00 10 */	beq lbl_806F7348
/* 806F733C  80 03 00 04 */	lwz r0, 4(r3)
/* 806F7340  28 00 00 00 */	cmplwi r0, 0
/* 806F7344  40 82 00 0C */	bne lbl_806F7350
lbl_806F7348:
/* 806F7348  38 60 00 00 */	li r3, 0
/* 806F734C  48 00 00 08 */	b lbl_806F7354
lbl_806F7350:
/* 806F7350  38 60 00 01 */	li r3, 1
lbl_806F7354:
/* 806F7354  39 61 00 30 */	addi r11, r1, 0x30
/* 806F7358  4B C6 AE CC */	b _restgpr_28
/* 806F735C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F7360  7C 08 03 A6 */	mtlr r0
/* 806F7364  38 21 00 30 */	addi r1, r1, 0x30
/* 806F7368  4E 80 00 20 */	blr 
