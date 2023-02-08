lbl_8073D9EC:
/* 8073D9EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073D9F0  7C 08 02 A6 */	mflr r0
/* 8073D9F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073D9F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8073D9FC  4B C2 47 DD */	bl _savegpr_28
/* 8073DA00  7C 7F 1B 78 */	mr r31, r3
/* 8073DA04  3C 60 80 74 */	lis r3, d_a_e_ph__stringBase0@ha /* 0x80741D0C@ha */
/* 8073DA08  38 63 1D 0C */	addi r3, r3, d_a_e_ph__stringBase0@l /* 0x80741D0C@l */
/* 8073DA0C  38 80 00 14 */	li r4, 0x14
/* 8073DA10  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073DA14  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073DA18  3F 85 00 02 */	addis r28, r5, 2
/* 8073DA1C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8073DA20  7F 85 E3 78 */	mr r5, r28
/* 8073DA24  38 C0 00 80 */	li r6, 0x80
/* 8073DA28  4B 8F E8 C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8073DA2C  7C 7E 1B 78 */	mr r30, r3
/* 8073DA30  38 60 00 58 */	li r3, 0x58
/* 8073DA34  4B B9 12 19 */	bl __nw__FUl
/* 8073DA38  7C 7D 1B 79 */	or. r29, r3, r3
/* 8073DA3C  41 82 00 68 */	beq lbl_8073DAA4
/* 8073DA40  3C 60 80 74 */	lis r3, d_a_e_ph__stringBase0@ha /* 0x80741D0C@ha */
/* 8073DA44  38 63 1D 0C */	addi r3, r3, d_a_e_ph__stringBase0@l /* 0x80741D0C@l */
/* 8073DA48  38 80 00 0E */	li r4, 0xe
/* 8073DA4C  7F 85 E3 78 */	mr r5, r28
/* 8073DA50  38 C0 00 80 */	li r6, 0x80
/* 8073DA54  4B 8F E8 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8073DA58  7C 67 1B 78 */	mr r7, r3
/* 8073DA5C  38 1F 06 74 */	addi r0, r31, 0x674
/* 8073DA60  90 01 00 08 */	stw r0, 8(r1)
/* 8073DA64  3C 00 00 08 */	lis r0, 8
/* 8073DA68  90 01 00 0C */	stw r0, 0xc(r1)
/* 8073DA6C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8073DA70  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8073DA74  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073DA78  7F A3 EB 78 */	mr r3, r29
/* 8073DA7C  7F C4 F3 78 */	mr r4, r30
/* 8073DA80  38 A0 00 00 */	li r5, 0
/* 8073DA84  38 C0 00 00 */	li r6, 0
/* 8073DA88  39 00 00 02 */	li r8, 2
/* 8073DA8C  3D 20 80 74 */	lis r9, lit_3768@ha /* 0x80741BF8@ha */
/* 8073DA90  C0 29 1B F8 */	lfs f1, lit_3768@l(r9)  /* 0x80741BF8@l */
/* 8073DA94  39 20 00 00 */	li r9, 0
/* 8073DA98  39 40 FF FF */	li r10, -1
/* 8073DA9C  4B 8D 2D 35 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8073DAA0  7C 7D 1B 78 */	mr r29, r3
lbl_8073DAA4:
/* 8073DAA4  93 BF 07 1C */	stw r29, 0x71c(r31)
/* 8073DAA8  80 7F 07 1C */	lwz r3, 0x71c(r31)
/* 8073DAAC  28 03 00 00 */	cmplwi r3, 0
/* 8073DAB0  41 82 00 10 */	beq lbl_8073DAC0
/* 8073DAB4  80 03 00 04 */	lwz r0, 4(r3)
/* 8073DAB8  28 00 00 00 */	cmplwi r0, 0
/* 8073DABC  40 82 00 0C */	bne lbl_8073DAC8
lbl_8073DAC0:
/* 8073DAC0  38 60 00 00 */	li r3, 0
/* 8073DAC4  48 00 00 08 */	b lbl_8073DACC
lbl_8073DAC8:
/* 8073DAC8  38 60 00 01 */	li r3, 1
lbl_8073DACC:
/* 8073DACC  39 61 00 30 */	addi r11, r1, 0x30
/* 8073DAD0  4B C2 47 55 */	bl _restgpr_28
/* 8073DAD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073DAD8  7C 08 03 A6 */	mtlr r0
/* 8073DADC  38 21 00 30 */	addi r1, r1, 0x30
/* 8073DAE0  4E 80 00 20 */	blr 
