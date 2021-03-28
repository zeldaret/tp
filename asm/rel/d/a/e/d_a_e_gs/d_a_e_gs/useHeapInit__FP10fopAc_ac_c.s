lbl_806DFAB8:
/* 806DFAB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806DFABC  7C 08 02 A6 */	mflr r0
/* 806DFAC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806DFAC4  39 61 00 30 */	addi r11, r1, 0x30
/* 806DFAC8  4B C8 27 10 */	b _savegpr_28
/* 806DFACC  7C 7F 1B 78 */	mr r31, r3
/* 806DFAD0  38 60 00 58 */	li r3, 0x58
/* 806DFAD4  4B BE F1 78 */	b __nw__FUl
/* 806DFAD8  7C 7E 1B 79 */	or. r30, r3, r3
/* 806DFADC  41 82 00 94 */	beq lbl_806DFB70
/* 806DFAE0  3C 60 80 6E */	lis r3, stringBase0@ha
/* 806DFAE4  38 63 FE 2C */	addi r3, r3, stringBase0@l
/* 806DFAE8  38 80 00 06 */	li r4, 6
/* 806DFAEC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806DFAF0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806DFAF4  3F 85 00 02 */	addis r28, r5, 2
/* 806DFAF8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 806DFAFC  7F 85 E3 78 */	mr r5, r28
/* 806DFB00  38 C0 00 80 */	li r6, 0x80
/* 806DFB04  4B 95 C7 E8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806DFB08  7C 7D 1B 78 */	mr r29, r3
/* 806DFB0C  3C 60 80 6E */	lis r3, stringBase0@ha
/* 806DFB10  38 63 FE 2C */	addi r3, r3, stringBase0@l
/* 806DFB14  38 80 00 09 */	li r4, 9
/* 806DFB18  7F 85 E3 78 */	mr r5, r28
/* 806DFB1C  38 C0 00 80 */	li r6, 0x80
/* 806DFB20  4B 95 C7 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806DFB24  7C 64 1B 78 */	mr r4, r3
/* 806DFB28  38 1F 05 DC */	addi r0, r31, 0x5dc
/* 806DFB2C  90 01 00 08 */	stw r0, 8(r1)
/* 806DFB30  3C 00 00 08 */	lis r0, 8
/* 806DFB34  90 01 00 0C */	stw r0, 0xc(r1)
/* 806DFB38  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806DFB3C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806DFB40  90 01 00 10 */	stw r0, 0x10(r1)
/* 806DFB44  7F C3 F3 78 */	mr r3, r30
/* 806DFB48  38 A0 00 00 */	li r5, 0
/* 806DFB4C  38 C0 00 00 */	li r6, 0
/* 806DFB50  7F A7 EB 78 */	mr r7, r29
/* 806DFB54  39 00 00 02 */	li r8, 2
/* 806DFB58  3D 20 80 6E */	lis r9, lit_3687@ha
/* 806DFB5C  C0 29 FE 0C */	lfs f1, lit_3687@l(r9)
/* 806DFB60  39 20 00 00 */	li r9, 0
/* 806DFB64  39 40 FF FF */	li r10, -1
/* 806DFB68  4B 93 0C 68 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806DFB6C  7C 7E 1B 78 */	mr r30, r3
lbl_806DFB70:
/* 806DFB70  93 DF 05 C8 */	stw r30, 0x5c8(r31)
/* 806DFB74  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806DFB78  28 03 00 00 */	cmplwi r3, 0
/* 806DFB7C  41 82 00 10 */	beq lbl_806DFB8C
/* 806DFB80  80 83 00 04 */	lwz r4, 4(r3)
/* 806DFB84  28 04 00 00 */	cmplwi r4, 0
/* 806DFB88  40 82 00 0C */	bne lbl_806DFB94
lbl_806DFB8C:
/* 806DFB8C  38 60 00 00 */	li r3, 0
/* 806DFB90  48 00 00 58 */	b lbl_806DFBE8
lbl_806DFB94:
/* 806DFB94  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 806DFB98  38 A0 00 01 */	li r5, 1
/* 806DFB9C  4B 92 E9 A0 */	b create__21mDoExt_invisibleModelFP8J3DModelUc
/* 806DFBA0  2C 03 00 00 */	cmpwi r3, 0
/* 806DFBA4  40 82 00 0C */	bne lbl_806DFBB0
/* 806DFBA8  38 60 00 00 */	li r3, 0
/* 806DFBAC  48 00 00 3C */	b lbl_806DFBE8
lbl_806DFBB0:
/* 806DFBB0  3C 60 80 6E */	lis r3, lit_3663@ha
/* 806DFBB4  C0 23 FE 04 */	lfs f1, lit_3663@l(r3)
/* 806DFBB8  FC 40 08 90 */	fmr f2, f1
/* 806DFBBC  FC 60 08 90 */	fmr f3, f1
/* 806DFBC0  38 60 00 00 */	li r3, 0
/* 806DFBC4  4B B9 12 E0 */	b MtxScale__FfffUc
/* 806DFBC8  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806DFBCC  80 83 00 04 */	lwz r4, 4(r3)
/* 806DFBD0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806DFBD4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806DFBD8  80 63 00 00 */	lwz r3, 0(r3)
/* 806DFBDC  38 84 00 24 */	addi r4, r4, 0x24
/* 806DFBE0  4B C6 68 D0 */	b PSMTXCopy
/* 806DFBE4  38 60 00 01 */	li r3, 1
lbl_806DFBE8:
/* 806DFBE8  39 61 00 30 */	addi r11, r1, 0x30
/* 806DFBEC  4B C8 26 38 */	b _restgpr_28
/* 806DFBF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806DFBF4  7C 08 03 A6 */	mtlr r0
/* 806DFBF8  38 21 00 30 */	addi r1, r1, 0x30
/* 806DFBFC  4E 80 00 20 */	blr 
