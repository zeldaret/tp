lbl_80C69C28:
/* 80C69C28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C69C2C  7C 08 02 A6 */	mflr r0
/* 80C69C30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C69C34  39 61 00 20 */	addi r11, r1, 0x20
/* 80C69C38  4B 6F 85 A1 */	bl _savegpr_28
/* 80C69C3C  7C 7C 1B 78 */	mr r28, r3
/* 80C69C40  3C 60 80 C7 */	lis r3, l_arcName@ha /* 0x80C6A400@ha */
/* 80C69C44  38 63 A4 00 */	addi r3, r3, l_arcName@l /* 0x80C6A400@l */
/* 80C69C48  80 63 00 00 */	lwz r3, 0(r3)
/* 80C69C4C  38 80 00 05 */	li r4, 5
/* 80C69C50  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C69C54  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C69C58  3F E5 00 02 */	addis r31, r5, 2
/* 80C69C5C  3B FF C2 F8 */	addi r31, r31, -15624
/* 80C69C60  7F E5 FB 78 */	mr r5, r31
/* 80C69C64  38 C0 00 80 */	li r6, 0x80
/* 80C69C68  4B 3D 26 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C69C6C  7C 7E 1B 78 */	mr r30, r3
/* 80C69C70  3C 80 00 08 */	lis r4, 8
/* 80C69C74  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C69C78  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C69C7C  4B 3A AF D9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C69C80  90 7C 05 B8 */	stw r3, 0x5b8(r28)
/* 80C69C84  80 1C 05 B8 */	lwz r0, 0x5b8(r28)
/* 80C69C88  28 00 00 00 */	cmplwi r0, 0
/* 80C69C8C  40 82 00 0C */	bne lbl_80C69C98
/* 80C69C90  38 60 00 00 */	li r3, 0
/* 80C69C94  48 00 00 98 */	b lbl_80C69D2C
lbl_80C69C98:
/* 80C69C98  3C 60 80 C7 */	lis r3, l_arcName@ha /* 0x80C6A400@ha */
/* 80C69C9C  38 63 A4 00 */	addi r3, r3, l_arcName@l /* 0x80C6A400@l */
/* 80C69CA0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C69CA4  38 80 00 08 */	li r4, 8
/* 80C69CA8  7F E5 FB 78 */	mr r5, r31
/* 80C69CAC  38 C0 00 80 */	li r6, 0x80
/* 80C69CB0  4B 3D 26 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C69CB4  7C 7D 1B 78 */	mr r29, r3
/* 80C69CB8  38 60 00 18 */	li r3, 0x18
/* 80C69CBC  4B 66 4F 91 */	bl __nw__FUl
/* 80C69CC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C69CC4  41 82 00 20 */	beq lbl_80C69CE4
/* 80C69CC8  3C 80 80 C7 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C6A4B4@ha */
/* 80C69CCC  38 04 A4 B4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C6A4B4@l */
/* 80C69CD0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C69CD4  38 80 00 00 */	li r4, 0
/* 80C69CD8  4B 6B E7 25 */	bl init__12J3DFrameCtrlFs
/* 80C69CDC  38 00 00 00 */	li r0, 0
/* 80C69CE0  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_80C69CE4:
/* 80C69CE4  93 FC 05 BC */	stw r31, 0x5bc(r28)
/* 80C69CE8  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80C69CEC  28 03 00 00 */	cmplwi r3, 0
/* 80C69CF0  41 82 00 30 */	beq lbl_80C69D20
/* 80C69CF4  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C69CF8  7F A5 EB 78 */	mr r5, r29
/* 80C69CFC  38 C0 00 01 */	li r6, 1
/* 80C69D00  38 E0 00 02 */	li r7, 2
/* 80C69D04  3D 00 80 C7 */	lis r8, lit_3710@ha /* 0x80C6A3C0@ha */
/* 80C69D08  C0 28 A3 C0 */	lfs f1, lit_3710@l(r8)  /* 0x80C6A3C0@l */
/* 80C69D0C  39 00 00 00 */	li r8, 0
/* 80C69D10  39 20 FF FF */	li r9, -1
/* 80C69D14  4B 3A 39 29 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C69D18  2C 03 00 00 */	cmpwi r3, 0
/* 80C69D1C  40 82 00 0C */	bne lbl_80C69D28
lbl_80C69D20:
/* 80C69D20  38 60 00 00 */	li r3, 0
/* 80C69D24  48 00 00 08 */	b lbl_80C69D2C
lbl_80C69D28:
/* 80C69D28  38 60 00 01 */	li r3, 1
lbl_80C69D2C:
/* 80C69D2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C69D30  4B 6F 84 F5 */	bl _restgpr_28
/* 80C69D34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C69D38  7C 08 03 A6 */	mtlr r0
/* 80C69D3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C69D40  4E 80 00 20 */	blr 
