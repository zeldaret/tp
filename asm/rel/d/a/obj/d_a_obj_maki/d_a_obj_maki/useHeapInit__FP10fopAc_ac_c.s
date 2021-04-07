lbl_80C903F0:
/* 80C903F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C903F4  7C 08 02 A6 */	mflr r0
/* 80C903F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C903FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C90400  4B 6D 1D DD */	bl _savegpr_29
/* 80C90404  7C 7E 1B 78 */	mr r30, r3
/* 80C90408  3C 60 80 C9 */	lis r3, d_a_obj_maki__stringBase0@ha /* 0x80C90960@ha */
/* 80C9040C  38 63 09 60 */	addi r3, r3, d_a_obj_maki__stringBase0@l /* 0x80C90960@l */
/* 80C90410  38 80 00 04 */	li r4, 4
/* 80C90414  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C90418  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9041C  3F E5 00 02 */	addis r31, r5, 2
/* 80C90420  3B FF C2 F8 */	addi r31, r31, -15624
/* 80C90424  7F E5 FB 78 */	mr r5, r31
/* 80C90428  38 C0 00 80 */	li r6, 0x80
/* 80C9042C  4B 3A BE C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C90430  3C 80 00 08 */	lis r4, 8
/* 80C90434  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C90438  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C9043C  4B 38 48 19 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C90440  90 7E 05 70 */	stw r3, 0x570(r30)
/* 80C90444  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80C90448  28 00 00 00 */	cmplwi r0, 0
/* 80C9044C  40 82 00 0C */	bne lbl_80C90458
/* 80C90450  38 60 00 00 */	li r3, 0
/* 80C90454  48 00 00 D8 */	b lbl_80C9052C
lbl_80C90458:
/* 80C90458  38 60 00 18 */	li r3, 0x18
/* 80C9045C  4B 63 E7 F1 */	bl __nw__FUl
/* 80C90460  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C90464  41 82 00 20 */	beq lbl_80C90484
/* 80C90468  3C 80 80 C9 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C90A2C@ha */
/* 80C9046C  38 04 0A 2C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C90A2C@l */
/* 80C90470  90 1D 00 00 */	stw r0, 0(r29)
/* 80C90474  38 80 00 00 */	li r4, 0
/* 80C90478  4B 69 7F 85 */	bl init__12J3DFrameCtrlFs
/* 80C9047C  38 00 00 00 */	li r0, 0
/* 80C90480  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C90484:
/* 80C90484  93 BE 05 74 */	stw r29, 0x574(r30)
/* 80C90488  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80C9048C  28 00 00 00 */	cmplwi r0, 0
/* 80C90490  40 82 00 0C */	bne lbl_80C9049C
/* 80C90494  38 60 00 00 */	li r3, 0
/* 80C90498  48 00 00 94 */	b lbl_80C9052C
lbl_80C9049C:
/* 80C9049C  3C 60 80 C9 */	lis r3, d_a_obj_maki__stringBase0@ha /* 0x80C90960@ha */
/* 80C904A0  38 63 09 60 */	addi r3, r3, d_a_obj_maki__stringBase0@l /* 0x80C90960@l */
/* 80C904A4  38 80 00 08 */	li r4, 8
/* 80C904A8  7F E5 FB 78 */	mr r5, r31
/* 80C904AC  38 C0 00 80 */	li r6, 0x80
/* 80C904B0  4B 3A BE 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C904B4  7C 65 1B 78 */	mr r5, r3
/* 80C904B8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C904BC  80 83 00 04 */	lwz r4, 4(r3)
/* 80C904C0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C904C4  38 84 00 58 */	addi r4, r4, 0x58
/* 80C904C8  38 C0 00 01 */	li r6, 1
/* 80C904CC  38 E0 00 02 */	li r7, 2
/* 80C904D0  3D 00 80 C9 */	lis r8, lit_3928@ha /* 0x80C90934@ha */
/* 80C904D4  C0 28 09 34 */	lfs f1, lit_3928@l(r8)  /* 0x80C90934@l */
/* 80C904D8  39 00 00 00 */	li r8, 0
/* 80C904DC  39 20 FF FF */	li r9, -1
/* 80C904E0  4B 37 D2 2D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C904E4  2C 03 00 00 */	cmpwi r3, 0
/* 80C904E8  40 82 00 0C */	bne lbl_80C904F4
/* 80C904EC  38 60 00 00 */	li r3, 0
/* 80C904F0  48 00 00 3C */	b lbl_80C9052C
lbl_80C904F4:
/* 80C904F4  3C 60 80 C9 */	lis r3, d_a_obj_maki__stringBase0@ha /* 0x80C90960@ha */
/* 80C904F8  38 63 09 60 */	addi r3, r3, d_a_obj_maki__stringBase0@l /* 0x80C90960@l */
/* 80C904FC  38 80 00 05 */	li r4, 5
/* 80C90500  7F E5 FB 78 */	mr r5, r31
/* 80C90504  38 C0 00 80 */	li r6, 0x80
/* 80C90508  4B 3A BD E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9050C  3C 80 00 08 */	lis r4, 8
/* 80C90510  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C90514  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C90518  4B 38 47 3D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C9051C  90 7E 05 78 */	stw r3, 0x578(r30)
/* 80C90520  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C90524  30 03 FF FF */	addic r0, r3, -1
/* 80C90528  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C9052C:
/* 80C9052C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C90530  4B 6D 1C F9 */	bl _restgpr_29
/* 80C90534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C90538  7C 08 03 A6 */	mtlr r0
/* 80C9053C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C90540  4E 80 00 20 */	blr 
