lbl_8066F4E4:
/* 8066F4E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8066F4E8  7C 08 02 A6 */	mflr r0
/* 8066F4EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8066F4F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8066F4F4  4B CF 2C E4 */	b _savegpr_28
/* 8066F4F8  7C 7E 1B 78 */	mr r30, r3
/* 8066F4FC  4B FF FF 59 */	bl getDoorModelData__9daBdoor_cFv
/* 8066F500  3C 80 00 08 */	lis r4, 8
/* 8066F504  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8066F508  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8066F50C  4B 9A 57 48 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8066F510  90 7E 05 70 */	stw r3, 0x570(r30)
/* 8066F514  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8066F518  28 00 00 00 */	cmplwi r0, 0
/* 8066F51C  40 82 00 0C */	bne lbl_8066F528
/* 8066F520  38 60 00 00 */	li r3, 0
/* 8066F524  48 00 01 B4 */	b lbl_8066F6D8
lbl_8066F528:
/* 8066F528  7F C3 F3 78 */	mr r3, r30
/* 8066F52C  4B FF FE ED */	bl getArcName__9daBdoor_cFv
/* 8066F530  3C 80 80 67 */	lis r4, stringBase0@ha
/* 8066F534  38 84 09 84 */	addi r4, r4, stringBase0@l
/* 8066F538  38 84 00 36 */	addi r4, r4, 0x36
/* 8066F53C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8066F540  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8066F544  3F E5 00 02 */	addis r31, r5, 2
/* 8066F548  3B FF C2 F8 */	addi r31, r31, -15624
/* 8066F54C  7F E5 FB 78 */	mr r5, r31
/* 8066F550  38 C0 00 80 */	li r6, 0x80
/* 8066F554  4B 9C CE 28 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8066F558  3C 80 00 08 */	lis r4, 8
/* 8066F55C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8066F560  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8066F564  4B 9A 56 F0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8066F568  90 7E 05 74 */	stw r3, 0x574(r30)
/* 8066F56C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8066F570  28 00 00 00 */	cmplwi r0, 0
/* 8066F574  40 82 00 0C */	bne lbl_8066F580
/* 8066F578  38 60 00 00 */	li r3, 0
/* 8066F57C  48 00 01 5C */	b lbl_8066F6D8
lbl_8066F580:
/* 8066F580  7F C3 F3 78 */	mr r3, r30
/* 8066F584  4B FF FE 95 */	bl getArcName__9daBdoor_cFv
/* 8066F588  3C 80 80 67 */	lis r4, stringBase0@ha
/* 8066F58C  38 84 09 84 */	addi r4, r4, stringBase0@l
/* 8066F590  38 84 00 41 */	addi r4, r4, 0x41
/* 8066F594  7F E5 FB 78 */	mr r5, r31
/* 8066F598  38 C0 00 80 */	li r6, 0x80
/* 8066F59C  4B 9C CD E0 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8066F5A0  7C 7C 1B 78 */	mr r28, r3
/* 8066F5A4  38 60 00 1C */	li r3, 0x1c
/* 8066F5A8  4B C5 F6 A4 */	b __nw__FUl
/* 8066F5AC  7C 7D 1B 79 */	or. r29, r3, r3
/* 8066F5B0  41 82 00 20 */	beq lbl_8066F5D0
/* 8066F5B4  3C 80 80 67 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8066F5B8  38 04 0B A4 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8066F5BC  90 1D 00 00 */	stw r0, 0(r29)
/* 8066F5C0  38 80 00 00 */	li r4, 0
/* 8066F5C4  4B CB 8E 38 */	b init__12J3DFrameCtrlFs
/* 8066F5C8  38 00 00 00 */	li r0, 0
/* 8066F5CC  90 1D 00 18 */	stw r0, 0x18(r29)
lbl_8066F5D0:
/* 8066F5D0  93 BE 05 78 */	stw r29, 0x578(r30)
/* 8066F5D4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8066F5D8  28 03 00 00 */	cmplwi r3, 0
/* 8066F5DC  41 82 00 30 */	beq lbl_8066F60C
/* 8066F5E0  7F 84 E3 78 */	mr r4, r28
/* 8066F5E4  38 A0 00 01 */	li r5, 1
/* 8066F5E8  38 C0 00 00 */	li r6, 0
/* 8066F5EC  3C E0 80 67 */	lis r7, lit_3726@ha
/* 8066F5F0  C0 27 09 14 */	lfs f1, lit_3726@l(r7)
/* 8066F5F4  38 E0 00 00 */	li r7, 0
/* 8066F5F8  39 00 FF FF */	li r8, -1
/* 8066F5FC  39 20 00 00 */	li r9, 0
/* 8066F600  4B 99 E1 DC */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 8066F604  2C 03 00 00 */	cmpwi r3, 0
/* 8066F608  40 82 00 0C */	bne lbl_8066F614
lbl_8066F60C:
/* 8066F60C  38 60 00 00 */	li r3, 0
/* 8066F610  48 00 00 C8 */	b lbl_8066F6D8
lbl_8066F614:
/* 8066F614  38 60 00 28 */	li r3, 0x28
/* 8066F618  4B C5 F6 34 */	b __nw__FUl
/* 8066F61C  7C 64 1B 79 */	or. r4, r3, r3
/* 8066F620  41 82 00 0C */	beq lbl_8066F62C
/* 8066F624  4B CB D3 48 */	b __ct__13J3DSkinDeformFv
/* 8066F628  7C 64 1B 78 */	mr r4, r3
lbl_8066F62C:
/* 8066F62C  28 04 00 00 */	cmplwi r4, 0
/* 8066F630  40 82 00 0C */	bne lbl_8066F63C
/* 8066F634  38 60 00 00 */	li r3, 0
/* 8066F638  48 00 00 A0 */	b lbl_8066F6D8
lbl_8066F63C:
/* 8066F63C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8066F640  38 A0 00 01 */	li r5, 1
/* 8066F644  4B CB 84 5C */	b setSkinDeform__8J3DModelFP13J3DSkinDeformUl
/* 8066F648  2C 03 00 04 */	cmpwi r3, 4
/* 8066F64C  40 82 00 0C */	bne lbl_8066F658
/* 8066F650  38 60 00 00 */	li r3, 0
/* 8066F654  48 00 00 84 */	b lbl_8066F6D8
lbl_8066F658:
/* 8066F658  38 60 00 C0 */	li r3, 0xc0
/* 8066F65C  4B C5 F5 F0 */	b __nw__FUl
/* 8066F660  7C 60 1B 79 */	or. r0, r3, r3
/* 8066F664  41 82 00 0C */	beq lbl_8066F670
/* 8066F668  4B A0 C3 08 */	b __ct__4dBgWFv
/* 8066F66C  7C 60 1B 78 */	mr r0, r3
lbl_8066F670:
/* 8066F670  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 8066F674  7F C3 F3 78 */	mr r3, r30
/* 8066F678  4B FF FD BD */	bl getDzb__9daBdoor_cFv
/* 8066F67C  7C 7D 1B 78 */	mr r29, r3
/* 8066F680  7F C3 F3 78 */	mr r3, r30
/* 8066F684  4B FF FD 95 */	bl getArcName__9daBdoor_cFv
/* 8066F688  7F A4 EB 78 */	mr r4, r29
/* 8066F68C  7F E5 FB 78 */	mr r5, r31
/* 8066F690  38 C0 00 80 */	li r6, 0x80
/* 8066F694  4B 9C CC E8 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8066F698  7C 7C 1B 79 */	or. r28, r3, r3
/* 8066F69C  40 82 00 0C */	bne lbl_8066F6A8
/* 8066F6A0  38 60 00 00 */	li r3, 0
/* 8066F6A4  48 00 00 34 */	b lbl_8066F6D8
lbl_8066F6A8:
/* 8066F6A8  7F C3 F3 78 */	mr r3, r30
/* 8066F6AC  48 00 00 8D */	bl calcMtx__9daBdoor_cFv
/* 8066F6B0  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8066F6B4  38 C3 00 24 */	addi r6, r3, 0x24
/* 8066F6B8  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 8066F6BC  7F 84 E3 78 */	mr r4, r28
/* 8066F6C0  38 A0 00 01 */	li r5, 1
/* 8066F6C4  4B A0 A8 74 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8066F6C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8066F6CC  20 60 00 01 */	subfic r3, r0, 1
/* 8066F6D0  30 03 FF FF */	addic r0, r3, -1
/* 8066F6D4  7C 60 19 10 */	subfe r3, r0, r3
lbl_8066F6D8:
/* 8066F6D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8066F6DC  4B CF 2B 48 */	b _restgpr_28
/* 8066F6E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8066F6E4  7C 08 03 A6 */	mtlr r0
/* 8066F6E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8066F6EC  4E 80 00 20 */	blr 
