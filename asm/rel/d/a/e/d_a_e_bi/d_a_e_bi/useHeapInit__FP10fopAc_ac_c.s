lbl_8068CB08:
/* 8068CB08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8068CB0C  7C 08 02 A6 */	mflr r0
/* 8068CB10  90 01 00 34 */	stw r0, 0x34(r1)
/* 8068CB14  39 61 00 30 */	addi r11, r1, 0x30
/* 8068CB18  4B CD 56 C0 */	b _savegpr_28
/* 8068CB1C  7C 7F 1B 78 */	mr r31, r3
/* 8068CB20  38 60 00 58 */	li r3, 0x58
/* 8068CB24  4B C4 21 28 */	b __nw__FUl
/* 8068CB28  7C 7E 1B 79 */	or. r30, r3, r3
/* 8068CB2C  41 82 00 94 */	beq lbl_8068CBC0
/* 8068CB30  3C 60 80 69 */	lis r3, stringBase0@ha
/* 8068CB34  38 63 D8 D8 */	addi r3, r3, stringBase0@l
/* 8068CB38  38 80 00 08 */	li r4, 8
/* 8068CB3C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8068CB40  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8068CB44  3F 85 00 02 */	addis r28, r5, 2
/* 8068CB48  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8068CB4C  7F 85 E3 78 */	mr r5, r28
/* 8068CB50  38 C0 00 80 */	li r6, 0x80
/* 8068CB54  4B 9A F7 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8068CB58  7C 7D 1B 78 */	mr r29, r3
/* 8068CB5C  3C 60 80 69 */	lis r3, stringBase0@ha
/* 8068CB60  38 63 D8 D8 */	addi r3, r3, stringBase0@l
/* 8068CB64  38 80 00 0E */	li r4, 0xe
/* 8068CB68  7F 85 E3 78 */	mr r5, r28
/* 8068CB6C  38 C0 00 80 */	li r6, 0x80
/* 8068CB70  4B 9A F7 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8068CB74  7C 64 1B 78 */	mr r4, r3
/* 8068CB78  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 8068CB7C  90 01 00 08 */	stw r0, 8(r1)
/* 8068CB80  3C 00 00 08 */	lis r0, 8
/* 8068CB84  90 01 00 0C */	stw r0, 0xc(r1)
/* 8068CB88  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8068CB8C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8068CB90  90 01 00 10 */	stw r0, 0x10(r1)
/* 8068CB94  7F C3 F3 78 */	mr r3, r30
/* 8068CB98  38 A0 00 00 */	li r5, 0
/* 8068CB9C  38 C0 00 00 */	li r6, 0
/* 8068CBA0  7F A7 EB 78 */	mr r7, r29
/* 8068CBA4  39 00 00 02 */	li r8, 2
/* 8068CBA8  3D 20 80 69 */	lis r9, lit_3905@ha
/* 8068CBAC  C0 29 D7 F4 */	lfs f1, lit_3905@l(r9)
/* 8068CBB0  39 20 00 00 */	li r9, 0
/* 8068CBB4  39 40 FF FF */	li r10, -1
/* 8068CBB8  4B 98 3C 18 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8068CBBC  7C 7E 1B 78 */	mr r30, r3
lbl_8068CBC0:
/* 8068CBC0  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 8068CBC4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068CBC8  28 03 00 00 */	cmplwi r3, 0
/* 8068CBCC  41 82 00 10 */	beq lbl_8068CBDC
/* 8068CBD0  80 03 00 04 */	lwz r0, 4(r3)
/* 8068CBD4  28 00 00 00 */	cmplwi r0, 0
/* 8068CBD8  40 82 00 0C */	bne lbl_8068CBE4
lbl_8068CBDC:
/* 8068CBDC  38 60 00 00 */	li r3, 0
/* 8068CBE0  48 00 00 08 */	b lbl_8068CBE8
lbl_8068CBE4:
/* 8068CBE4  38 60 00 01 */	li r3, 1
lbl_8068CBE8:
/* 8068CBE8  39 61 00 30 */	addi r11, r1, 0x30
/* 8068CBEC  4B CD 56 38 */	b _restgpr_28
/* 8068CBF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8068CBF4  7C 08 03 A6 */	mtlr r0
/* 8068CBF8  38 21 00 30 */	addi r1, r1, 0x30
/* 8068CBFC  4E 80 00 20 */	blr 
