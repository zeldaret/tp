lbl_80AEAE9C:
/* 80AEAE9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEAEA0  7C 08 02 A6 */	mflr r0
/* 80AEAEA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEAEA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEAEAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEAEB0  7C 7E 1B 78 */	mr r30, r3
/* 80AEAEB4  3C 80 80 AF */	lis r4, l_bmdFileName@ha /* 0x80AEBC78@ha */
/* 80AEAEB8  83 E4 BC 78 */	lwz r31, l_bmdFileName@l(r4)  /* 0x80AEBC78@l */
/* 80AEAEBC  48 00 02 D5 */	bl getResName__13daNpc_Shop0_cFv
/* 80AEAEC0  7F E4 FB 78 */	mr r4, r31
/* 80AEAEC4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AEAEC8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AEAECC  3C A5 00 02 */	addis r5, r5, 2
/* 80AEAED0  38 C0 00 80 */	li r6, 0x80
/* 80AEAED4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AEAED8  4B 55 14 A5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80AEAEDC  3C 80 00 08 */	lis r4, 8
/* 80AEAEE0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80AEAEE4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80AEAEE8  4B 52 9D 6D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80AEAEEC  90 7E 05 E8 */	stw r3, 0x5e8(r30)
/* 80AEAEF0  80 1E 05 E8 */	lwz r0, 0x5e8(r30)
/* 80AEAEF4  28 00 00 00 */	cmplwi r0, 0
/* 80AEAEF8  40 82 00 0C */	bne lbl_80AEAF04
/* 80AEAEFC  38 60 00 00 */	li r3, 0
/* 80AEAF00  48 00 00 74 */	b lbl_80AEAF74
lbl_80AEAF04:
/* 80AEAF04  38 60 00 04 */	li r3, 4
/* 80AEAF08  4B 7E 3D 45 */	bl __nw__FUl
/* 80AEAF0C  28 03 00 00 */	cmplwi r3, 0
/* 80AEAF10  41 82 00 10 */	beq lbl_80AEAF20
/* 80AEAF14  3C 80 80 AF */	lis r4, __vt__19daNpc_Shop0_Param_c@ha /* 0x80AEBD0C@ha */
/* 80AEAF18  38 04 BD 0C */	addi r0, r4, __vt__19daNpc_Shop0_Param_c@l /* 0x80AEBD0C@l */
/* 80AEAF1C  90 03 00 00 */	stw r0, 0(r3)
lbl_80AEAF20:
/* 80AEAF20  90 7E 06 44 */	stw r3, 0x644(r30)
/* 80AEAF24  80 1E 06 44 */	lwz r0, 0x644(r30)
/* 80AEAF28  28 00 00 00 */	cmplwi r0, 0
/* 80AEAF2C  40 82 00 0C */	bne lbl_80AEAF38
/* 80AEAF30  38 60 00 00 */	li r3, 0
/* 80AEAF34  48 00 00 40 */	b lbl_80AEAF74
lbl_80AEAF38:
/* 80AEAF38  7F C3 F3 78 */	mr r3, r30
/* 80AEAF3C  38 80 00 00 */	li r4, 0
/* 80AEAF40  3C A0 80 AF */	lis r5, l_bckFileNameTBL@ha /* 0x80AEBC7C@ha */
/* 80AEAF44  38 A5 BC 7C */	addi r5, r5, l_bckFileNameTBL@l /* 0x80AEBC7C@l */
/* 80AEAF48  48 00 03 E5 */	bl getTrnsfrmAnmP__13daNpc_Shop0_cFiPPc
/* 80AEAF4C  7C 64 1B 78 */	mr r4, r3
/* 80AEAF50  7F C3 F3 78 */	mr r3, r30
/* 80AEAF54  3C A0 80 AF */	lis r5, lit_4004@ha /* 0x80AEBC24@ha */
/* 80AEAF58  C0 25 BC 24 */	lfs f1, lit_4004@l(r5)  /* 0x80AEBC24@l */
/* 80AEAF5C  38 A0 00 02 */	li r5, 2
/* 80AEAF60  38 C0 00 00 */	li r6, 0
/* 80AEAF64  38 E0 FF FF */	li r7, -1
/* 80AEAF68  39 00 00 00 */	li r8, 0
/* 80AEAF6C  48 00 04 3D */	bl setBckAnm__13daNpc_Shop0_cFP15J3DAnmTransformfiiib
/* 80AEAF70  38 60 00 01 */	li r3, 1
lbl_80AEAF74:
/* 80AEAF74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEAF78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEAF7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEAF80  7C 08 03 A6 */	mtlr r0
/* 80AEAF84  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEAF88  4E 80 00 20 */	blr 
