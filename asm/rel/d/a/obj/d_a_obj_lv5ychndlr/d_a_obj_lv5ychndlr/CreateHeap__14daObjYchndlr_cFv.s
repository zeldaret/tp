lbl_80C6DA5C:
/* 80C6DA5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C6DA60  7C 08 02 A6 */	mflr r0
/* 80C6DA64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C6DA68  39 61 00 20 */	addi r11, r1, 0x20
/* 80C6DA6C  4B 6F 47 68 */	b _savegpr_27
/* 80C6DA70  7C 7F 1B 78 */	mr r31, r3
/* 80C6DA74  3C 60 80 C7 */	lis r3, l_arcName@ha
/* 80C6DA78  38 63 E9 F4 */	addi r3, r3, l_arcName@l
/* 80C6DA7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6DA80  3C 80 80 C7 */	lis r4, l_bmdidx@ha
/* 80C6DA84  38 84 E9 80 */	addi r4, r4, l_bmdidx@l
/* 80C6DA88  80 84 00 00 */	lwz r4, 0(r4)
/* 80C6DA8C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C6DA90  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C6DA94  3F A5 00 02 */	addis r29, r5, 2
/* 80C6DA98  3B BD C2 F8 */	addi r29, r29, -15624
/* 80C6DA9C  7F A5 EB 78 */	mr r5, r29
/* 80C6DAA0  38 C0 00 80 */	li r6, 0x80
/* 80C6DAA4  4B 3C E8 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C6DAA8  3C 80 00 08 */	lis r4, 8
/* 80C6DAAC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C6DAB0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C6DAB4  4B 3A 71 A0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C6DAB8  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C6DABC  80 1F 06 08 */	lwz r0, 0x608(r31)
/* 80C6DAC0  28 00 00 00 */	cmplwi r0, 0
/* 80C6DAC4  40 82 00 0C */	bne lbl_80C6DAD0
/* 80C6DAC8  38 60 00 00 */	li r3, 0
/* 80C6DACC  48 00 00 78 */	b lbl_80C6DB44
lbl_80C6DAD0:
/* 80C6DAD0  3C 60 80 C7 */	lis r3, l_arcName@ha
/* 80C6DAD4  38 63 E9 F4 */	addi r3, r3, l_arcName@l
/* 80C6DAD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6DADC  3C 80 80 C7 */	lis r4, l_bmdidx@ha
/* 80C6DAE0  38 84 E9 80 */	addi r4, r4, l_bmdidx@l
/* 80C6DAE4  80 84 00 04 */	lwz r4, 4(r4)
/* 80C6DAE8  7F A5 EB 78 */	mr r5, r29
/* 80C6DAEC  38 C0 00 80 */	li r6, 0x80
/* 80C6DAF0  4B 3C E7 FC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C6DAF4  7C 7C 1B 78 */	mr r28, r3
/* 80C6DAF8  3B 60 00 00 */	li r27, 0
/* 80C6DAFC  3B C0 00 00 */	li r30, 0
/* 80C6DB00  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
lbl_80C6DB04:
/* 80C6DB04  7F 83 E3 78 */	mr r3, r28
/* 80C6DB08  3C 80 00 08 */	lis r4, 8
/* 80C6DB0C  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 80C6DB10  4B 3A 71 44 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C6DB14  38 1E 06 0C */	addi r0, r30, 0x60c
/* 80C6DB18  7C 7F 01 2E */	stwx r3, r31, r0
/* 80C6DB1C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80C6DB20  28 00 00 00 */	cmplwi r0, 0
/* 80C6DB24  40 82 00 0C */	bne lbl_80C6DB30
/* 80C6DB28  38 60 00 00 */	li r3, 0
/* 80C6DB2C  48 00 00 18 */	b lbl_80C6DB44
lbl_80C6DB30:
/* 80C6DB30  3B 7B 00 01 */	addi r27, r27, 1
/* 80C6DB34  2C 1B 00 04 */	cmpwi r27, 4
/* 80C6DB38  3B DE 00 04 */	addi r30, r30, 4
/* 80C6DB3C  41 80 FF C8 */	blt lbl_80C6DB04
/* 80C6DB40  38 60 00 01 */	li r3, 1
lbl_80C6DB44:
/* 80C6DB44  39 61 00 20 */	addi r11, r1, 0x20
/* 80C6DB48  4B 6F 46 D8 */	b _restgpr_27
/* 80C6DB4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C6DB50  7C 08 03 A6 */	mtlr r0
/* 80C6DB54  38 21 00 20 */	addi r1, r1, 0x20
/* 80C6DB58  4E 80 00 20 */	blr 
