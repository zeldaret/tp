lbl_80CF4B74:
/* 80CF4B74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF4B78  7C 08 02 A6 */	mflr r0
/* 80CF4B7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF4B80  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF4B84  4B 66 D6 55 */	bl _savegpr_28
/* 80CF4B88  7C 7F 1B 78 */	mr r31, r3
/* 80CF4B8C  3C 60 80 CF */	lis r3, l_arcName@ha /* 0x80CF5A40@ha */
/* 80CF4B90  38 63 5A 40 */	addi r3, r3, l_arcName@l /* 0x80CF5A40@l */
/* 80CF4B94  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF4B98  38 80 00 05 */	li r4, 5
/* 80CF4B9C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF4BA0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF4BA4  3F C5 00 02 */	addis r30, r5, 2
/* 80CF4BA8  3B DE C2 F8 */	addi r30, r30, -15624
/* 80CF4BAC  7F C5 F3 78 */	mr r5, r30
/* 80CF4BB0  38 C0 00 80 */	li r6, 0x80
/* 80CF4BB4  4B 34 77 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF4BB8  7C 7D 1B 78 */	mr r29, r3
/* 80CF4BBC  3C 80 00 08 */	lis r4, 8
/* 80CF4BC0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80CF4BC4  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80CF4BC8  4B 32 00 8D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CF4BCC  90 7F 05 84 */	stw r3, 0x584(r31)
/* 80CF4BD0  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80CF4BD4  28 00 00 00 */	cmplwi r0, 0
/* 80CF4BD8  40 82 00 0C */	bne lbl_80CF4BE4
/* 80CF4BDC  38 60 00 00 */	li r3, 0
/* 80CF4BE0  48 00 00 A8 */	b lbl_80CF4C88
lbl_80CF4BE4:
/* 80CF4BE4  3C 60 80 CF */	lis r3, l_arcName@ha /* 0x80CF5A40@ha */
/* 80CF4BE8  38 63 5A 40 */	addi r3, r3, l_arcName@l /* 0x80CF5A40@l */
/* 80CF4BEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF4BF0  38 80 00 09 */	li r4, 9
/* 80CF4BF4  7F C5 F3 78 */	mr r5, r30
/* 80CF4BF8  38 C0 00 80 */	li r6, 0x80
/* 80CF4BFC  4B 34 76 F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF4C00  7C 7C 1B 78 */	mr r28, r3
/* 80CF4C04  38 60 00 18 */	li r3, 0x18
/* 80CF4C08  4B 5D A0 45 */	bl __nw__FUl
/* 80CF4C0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CF4C10  41 82 00 20 */	beq lbl_80CF4C30
/* 80CF4C14  3C 80 80 CF */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CF5B00@ha */
/* 80CF4C18  38 04 5B 00 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CF5B00@l */
/* 80CF4C1C  90 1E 00 00 */	stw r0, 0(r30)
/* 80CF4C20  38 80 00 00 */	li r4, 0
/* 80CF4C24  4B 63 37 D9 */	bl init__12J3DFrameCtrlFs
/* 80CF4C28  38 00 00 00 */	li r0, 0
/* 80CF4C2C  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80CF4C30:
/* 80CF4C30  93 DF 05 88 */	stw r30, 0x588(r31)
/* 80CF4C34  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF4C38  28 03 00 00 */	cmplwi r3, 0
/* 80CF4C3C  41 82 00 30 */	beq lbl_80CF4C6C
/* 80CF4C40  38 9D 00 58 */	addi r4, r29, 0x58
/* 80CF4C44  7F 85 E3 78 */	mr r5, r28
/* 80CF4C48  38 C0 00 01 */	li r6, 1
/* 80CF4C4C  38 E0 00 00 */	li r7, 0
/* 80CF4C50  3D 00 80 CF */	lis r8, lit_3969@ha /* 0x80CF5A08@ha */
/* 80CF4C54  C0 28 5A 08 */	lfs f1, lit_3969@l(r8)  /* 0x80CF5A08@l */
/* 80CF4C58  39 00 00 00 */	li r8, 0
/* 80CF4C5C  39 20 FF FF */	li r9, -1
/* 80CF4C60  4B 31 89 DD */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CF4C64  2C 03 00 00 */	cmpwi r3, 0
/* 80CF4C68  40 82 00 0C */	bne lbl_80CF4C74
lbl_80CF4C6C:
/* 80CF4C6C  38 60 00 00 */	li r3, 0
/* 80CF4C70  48 00 00 18 */	b lbl_80CF4C88
lbl_80CF4C74:
/* 80CF4C74  3C 60 80 CF */	lis r3, lit_3755@ha /* 0x80CF59F8@ha */
/* 80CF4C78  C0 03 59 F8 */	lfs f0, lit_3755@l(r3)  /* 0x80CF59F8@l */
/* 80CF4C7C  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF4C80  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF4C84  38 60 00 01 */	li r3, 1
lbl_80CF4C88:
/* 80CF4C88  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF4C8C  4B 66 D5 99 */	bl _restgpr_28
/* 80CF4C90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF4C94  7C 08 03 A6 */	mtlr r0
/* 80CF4C98  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF4C9C  4E 80 00 20 */	blr 
