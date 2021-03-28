lbl_80CDBE1C:
/* 80CDBE1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDBE20  7C 08 02 A6 */	mflr r0
/* 80CDBE24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDBE28  39 61 00 20 */	addi r11, r1, 0x20
/* 80CDBE2C  4B 68 63 A8 */	b _savegpr_27
/* 80CDBE30  7C 7B 1B 78 */	mr r27, r3
/* 80CDBE34  88 03 05 E8 */	lbz r0, 0x5e8(r3)
/* 80CDBE38  54 00 10 3A */	slwi r0, r0, 2
/* 80CDBE3C  3C 60 80 CE */	lis r3, l_arcName@ha
/* 80CDBE40  38 63 CC E4 */	addi r3, r3, l_arcName@l
/* 80CDBE44  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CDBE48  3C 80 80 CE */	lis r4, l_bmd@ha
/* 80CDBE4C  38 84 CC EC */	addi r4, r4, l_bmd@l
/* 80CDBE50  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CDBE54  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CDBE58  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CDBE5C  3C A5 00 02 */	addis r5, r5, 2
/* 80CDBE60  38 C0 00 80 */	li r6, 0x80
/* 80CDBE64  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CDBE68  4B 36 05 14 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CDBE6C  7C 7D 1B 78 */	mr r29, r3
/* 80CDBE70  3B 80 00 00 */	li r28, 0
/* 80CDBE74  3B E0 00 00 */	li r31, 0
/* 80CDBE78  3F C0 11 00 */	lis r30, 0x1100 /* 0x11000084@ha */
lbl_80CDBE7C:
/* 80CDBE7C  7F A3 EB 78 */	mr r3, r29
/* 80CDBE80  3C 80 00 08 */	lis r4, 8
/* 80CDBE84  38 BE 00 84 */	addi r5, r30, 0x0084 /* 0x11000084@l */
/* 80CDBE88  4B 33 8D CC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CDBE8C  38 1F 05 A8 */	addi r0, r31, 0x5a8
/* 80CDBE90  7C 7B 01 2E */	stwx r3, r27, r0
/* 80CDBE94  7C 1B 00 2E */	lwzx r0, r27, r0
/* 80CDBE98  28 00 00 00 */	cmplwi r0, 0
/* 80CDBE9C  40 82 00 0C */	bne lbl_80CDBEA8
/* 80CDBEA0  38 60 00 00 */	li r3, 0
/* 80CDBEA4  48 00 00 18 */	b lbl_80CDBEBC
lbl_80CDBEA8:
/* 80CDBEA8  3B 9C 00 01 */	addi r28, r28, 1
/* 80CDBEAC  2C 1C 00 02 */	cmpwi r28, 2
/* 80CDBEB0  3B FF 00 04 */	addi r31, r31, 4
/* 80CDBEB4  41 80 FF C8 */	blt lbl_80CDBE7C
/* 80CDBEB8  38 60 00 01 */	li r3, 1
lbl_80CDBEBC:
/* 80CDBEBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CDBEC0  4B 68 63 60 */	b _restgpr_27
/* 80CDBEC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDBEC8  7C 08 03 A6 */	mtlr r0
/* 80CDBECC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDBED0  4E 80 00 20 */	blr 
