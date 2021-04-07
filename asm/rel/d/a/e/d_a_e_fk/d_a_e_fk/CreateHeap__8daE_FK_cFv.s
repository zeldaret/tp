lbl_806B93CC:
/* 806B93CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B93D0  7C 08 02 A6 */	mflr r0
/* 806B93D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B93D8  39 61 00 30 */	addi r11, r1, 0x30
/* 806B93DC  4B CA 8D FD */	bl _savegpr_28
/* 806B93E0  7C 7E 1B 78 */	mr r30, r3
/* 806B93E4  3C 60 80 6C */	lis r3, d_a_e_fk__stringBase0@ha /* 0x806BB81C@ha */
/* 806B93E8  38 63 B8 1C */	addi r3, r3, d_a_e_fk__stringBase0@l /* 0x806BB81C@l */
/* 806B93EC  38 80 00 0F */	li r4, 0xf
/* 806B93F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B93F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B93F8  3F E5 00 02 */	addis r31, r5, 2
/* 806B93FC  3B FF C2 F8 */	addi r31, r31, -15624
/* 806B9400  7F E5 FB 78 */	mr r5, r31
/* 806B9404  38 C0 00 80 */	li r6, 0x80
/* 806B9408  4B 98 2E E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B940C  7C 7C 1B 78 */	mr r28, r3
/* 806B9410  38 60 00 58 */	li r3, 0x58
/* 806B9414  4B C1 58 39 */	bl __nw__FUl
/* 806B9418  7C 7D 1B 79 */	or. r29, r3, r3
/* 806B941C  41 82 00 68 */	beq lbl_806B9484
/* 806B9420  3C 60 80 6C */	lis r3, d_a_e_fk__stringBase0@ha /* 0x806BB81C@ha */
/* 806B9424  38 63 B8 1C */	addi r3, r3, d_a_e_fk__stringBase0@l /* 0x806BB81C@l */
/* 806B9428  38 80 00 0C */	li r4, 0xc
/* 806B942C  7F E5 FB 78 */	mr r5, r31
/* 806B9430  38 C0 00 80 */	li r6, 0x80
/* 806B9434  4B 98 2E B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B9438  7C 67 1B 78 */	mr r7, r3
/* 806B943C  38 1E 0C 4C */	addi r0, r30, 0xc4c
/* 806B9440  90 01 00 08 */	stw r0, 8(r1)
/* 806B9444  3C 00 00 08 */	lis r0, 8
/* 806B9448  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B944C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806B9450  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806B9454  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B9458  7F A3 EB 78 */	mr r3, r29
/* 806B945C  7F 84 E3 78 */	mr r4, r28
/* 806B9460  38 A0 00 00 */	li r5, 0
/* 806B9464  38 C0 00 00 */	li r6, 0
/* 806B9468  39 00 00 02 */	li r8, 2
/* 806B946C  3D 20 80 6C */	lis r9, lit_3828@ha /* 0x806BB6D8@ha */
/* 806B9470  C0 29 B6 D8 */	lfs f1, lit_3828@l(r9)  /* 0x806BB6D8@l */
/* 806B9474  39 20 00 00 */	li r9, 0
/* 806B9478  39 40 FF FF */	li r10, -1
/* 806B947C  4B 95 73 55 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806B9480  7C 7D 1B 78 */	mr r29, r3
lbl_806B9484:
/* 806B9484  93 BE 0C 30 */	stw r29, 0xc30(r30)
/* 806B9488  80 7E 0C 30 */	lwz r3, 0xc30(r30)
/* 806B948C  28 03 00 00 */	cmplwi r3, 0
/* 806B9490  41 82 00 10 */	beq lbl_806B94A0
/* 806B9494  80 83 00 04 */	lwz r4, 4(r3)
/* 806B9498  28 04 00 00 */	cmplwi r4, 0
/* 806B949C  40 82 00 0C */	bne lbl_806B94A8
lbl_806B94A0:
/* 806B94A0  38 60 00 00 */	li r3, 0
/* 806B94A4  48 00 00 58 */	b lbl_806B94FC
lbl_806B94A8:
/* 806B94A8  38 7E 0C 34 */	addi r3, r30, 0xc34
/* 806B94AC  38 A0 00 01 */	li r5, 1
/* 806B94B0  4B 95 50 8D */	bl create__21mDoExt_invisibleModelFP8J3DModelUc
/* 806B94B4  2C 03 00 00 */	cmpwi r3, 0
/* 806B94B8  40 82 00 0C */	bne lbl_806B94C4
/* 806B94BC  38 60 00 00 */	li r3, 0
/* 806B94C0  48 00 00 3C */	b lbl_806B94FC
lbl_806B94C4:
/* 806B94C4  3C 60 80 6C */	lis r3, d_a_e_fk__stringBase0@ha /* 0x806BB81C@ha */
/* 806B94C8  38 63 B8 1C */	addi r3, r3, d_a_e_fk__stringBase0@l /* 0x806BB81C@l */
/* 806B94CC  38 80 00 10 */	li r4, 0x10
/* 806B94D0  7F E5 FB 78 */	mr r5, r31
/* 806B94D4  38 C0 00 80 */	li r6, 0x80
/* 806B94D8  4B 98 2E 15 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B94DC  3C 80 00 08 */	lis r4, 8
/* 806B94E0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806B94E4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806B94E8  4B 95 B7 6D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806B94EC  90 7E 0C 3C */	stw r3, 0xc3c(r30)
/* 806B94F0  80 7E 0C 3C */	lwz r3, 0xc3c(r30)
/* 806B94F4  30 03 FF FF */	addic r0, r3, -1
/* 806B94F8  7C 60 19 10 */	subfe r3, r0, r3
lbl_806B94FC:
/* 806B94FC  39 61 00 30 */	addi r11, r1, 0x30
/* 806B9500  4B CA 8D 25 */	bl _restgpr_28
/* 806B9504  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B9508  7C 08 03 A6 */	mtlr r0
/* 806B950C  38 21 00 30 */	addi r1, r1, 0x30
/* 806B9510  4E 80 00 20 */	blr 
