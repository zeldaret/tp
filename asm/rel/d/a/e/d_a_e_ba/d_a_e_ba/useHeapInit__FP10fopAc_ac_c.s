lbl_806817A0:
/* 806817A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806817A4  7C 08 02 A6 */	mflr r0
/* 806817A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 806817AC  39 61 00 30 */	addi r11, r1, 0x30
/* 806817B0  4B CE 0A 28 */	b _savegpr_28
/* 806817B4  7C 7C 1B 78 */	mr r28, r3
/* 806817B8  38 60 00 58 */	li r3, 0x58
/* 806817BC  4B C4 D4 90 */	b __nw__FUl
/* 806817C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806817C4  41 82 00 8C */	beq lbl_80681850
/* 806817C8  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 806817CC  38 80 00 0A */	li r4, 0xa
/* 806817D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806817D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806817D8  3F A5 00 02 */	addis r29, r5, 2
/* 806817DC  3B BD C2 F8 */	addi r29, r29, -15624
/* 806817E0  7F A5 EB 78 */	mr r5, r29
/* 806817E4  38 C0 00 80 */	li r6, 0x80
/* 806817E8  4B 9B AB 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806817EC  7C 7E 1B 78 */	mr r30, r3
/* 806817F0  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 806817F4  38 80 00 0D */	li r4, 0xd
/* 806817F8  7F A5 EB 78 */	mr r5, r29
/* 806817FC  38 C0 00 80 */	li r6, 0x80
/* 80681800  4B 9B AA EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80681804  7C 64 1B 78 */	mr r4, r3
/* 80681808  38 1C 05 C8 */	addi r0, r28, 0x5c8
/* 8068180C  90 01 00 08 */	stw r0, 8(r1)
/* 80681810  3C 00 00 08 */	lis r0, 8
/* 80681814  90 01 00 0C */	stw r0, 0xc(r1)
/* 80681818  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8068181C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80681820  90 01 00 10 */	stw r0, 0x10(r1)
/* 80681824  7F E3 FB 78 */	mr r3, r31
/* 80681828  38 A0 00 00 */	li r5, 0
/* 8068182C  38 C0 00 00 */	li r6, 0
/* 80681830  7F C7 F3 78 */	mr r7, r30
/* 80681834  39 00 00 02 */	li r8, 2
/* 80681838  3D 20 80 68 */	lis r9, lit_3949@ha
/* 8068183C  C0 29 23 C4 */	lfs f1, lit_3949@l(r9)
/* 80681840  39 20 00 00 */	li r9, 0
/* 80681844  39 40 FF FF */	li r10, -1
/* 80681848  4B 98 EF 88 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8068184C  7C 7F 1B 78 */	mr r31, r3
lbl_80681850:
/* 80681850  93 FC 05 C4 */	stw r31, 0x5c4(r28)
/* 80681854  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 80681858  28 03 00 00 */	cmplwi r3, 0
/* 8068185C  41 82 00 10 */	beq lbl_8068186C
/* 80681860  80 03 00 04 */	lwz r0, 4(r3)
/* 80681864  28 00 00 00 */	cmplwi r0, 0
/* 80681868  40 82 00 0C */	bne lbl_80681874
lbl_8068186C:
/* 8068186C  38 60 00 00 */	li r3, 0
/* 80681870  48 00 00 08 */	b lbl_80681878
lbl_80681874:
/* 80681874  38 60 00 01 */	li r3, 1
lbl_80681878:
/* 80681878  39 61 00 30 */	addi r11, r1, 0x30
/* 8068187C  4B CE 09 A8 */	b _restgpr_28
/* 80681880  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80681884  7C 08 03 A6 */	mtlr r0
/* 80681888  38 21 00 30 */	addi r1, r1, 0x30
/* 8068188C  4E 80 00 20 */	blr 
