lbl_80019404:
/* 80019404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80019408  7C 08 02 A6 */	mflr r0
/* 8001940C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80019410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80019414  93 C1 00 08 */	stw r30, 8(r1)
/* 80019418  7C 7E 1B 78 */	mr r30, r3
/* 8001941C  3C 60 80 38 */	lis r3, f_op_f_op_actor__stringBase0@ha /* 0x80378878@ha */
/* 80019420  38 63 88 78 */	addi r3, r3, f_op_f_op_actor__stringBase0@l /* 0x80378878@l */
/* 80019424  38 80 00 25 */	li r4, 0x25
/* 80019428  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001942C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80019430  3F E5 00 02 */	addis r31, r5, 2
/* 80019434  3B FF C2 F8 */	addi r31, r31, -15624
/* 80019438  7F E5 FB 78 */	mr r5, r31
/* 8001943C  38 C0 00 80 */	li r6, 0x80
/* 80019440  48 02 2E AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80019444  3C 80 00 08 */	lis r4, 8
/* 80019448  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 8001944C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80019450  4B FF B8 05 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80019454  90 7E 05 80 */	stw r3, 0x580(r30)
/* 80019458  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 8001945C  28 04 00 00 */	cmplwi r4, 0
/* 80019460  40 82 00 0C */	bne lbl_8001946C
/* 80019464  38 60 00 00 */	li r3, 0
/* 80019468  48 00 00 7C */	b lbl_800194E4
lbl_8001946C:
/* 8001946C  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80019470  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80019474  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80019478  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001947C  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80019480  C0 03 00 08 */	lfs f0, 8(r3)
/* 80019484  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80019488  3C 60 80 38 */	lis r3, f_op_f_op_actor__stringBase0@ha /* 0x80378878@ha */
/* 8001948C  38 63 88 78 */	addi r3, r3, f_op_f_op_actor__stringBase0@l /* 0x80378878@l */
/* 80019490  38 80 00 49 */	li r4, 0x49
/* 80019494  7F E5 FB 78 */	mr r5, r31
/* 80019498  38 C0 00 80 */	li r6, 0x80
/* 8001949C  48 02 2E 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800194A0  90 7E 05 84 */	stw r3, 0x584(r30)
/* 800194A4  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 800194A8  80 83 00 04 */	lwz r4, 4(r3)
/* 800194AC  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 800194B0  48 31 1D 25 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 800194B4  3C 60 80 38 */	lis r3, f_op_f_op_actor__stringBase0@ha /* 0x80378878@ha */
/* 800194B8  38 63 88 78 */	addi r3, r3, f_op_f_op_actor__stringBase0@l /* 0x80378878@l */
/* 800194BC  38 80 00 41 */	li r4, 0x41
/* 800194C0  7F E5 FB 78 */	mr r5, r31
/* 800194C4  38 C0 00 80 */	li r6, 0x80
/* 800194C8  48 02 2E 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800194CC  90 7E 05 88 */	stw r3, 0x588(r30)
/* 800194D0  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 800194D4  80 83 00 04 */	lwz r4, 4(r3)
/* 800194D8  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 800194DC  48 31 23 A1 */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 800194E0  38 60 00 01 */	li r3, 1
lbl_800194E4:
/* 800194E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800194E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800194EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800194F0  7C 08 03 A6 */	mtlr r0
/* 800194F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800194F8  4E 80 00 20 */	blr 
