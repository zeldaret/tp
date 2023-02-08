lbl_80C11B68:
/* 80C11B68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C11B6C  7C 08 02 A6 */	mflr r0
/* 80C11B70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C11B74  39 61 00 20 */	addi r11, r1, 0x20
/* 80C11B78  4B 75 06 65 */	bl _savegpr_29
/* 80C11B7C  7C 7F 1B 78 */	mr r31, r3
/* 80C11B80  3C 60 80 C1 */	lis r3, l_arcName@ha /* 0x80C1249C@ha */
/* 80C11B84  38 63 24 9C */	addi r3, r3, l_arcName@l /* 0x80C1249C@l */
/* 80C11B88  80 63 00 00 */	lwz r3, 0(r3)
/* 80C11B8C  3C 80 80 C1 */	lis r4, d_a_obj_gra_rock__stringBase0@ha /* 0x80C12440@ha */
/* 80C11B90  38 84 24 40 */	addi r4, r4, d_a_obj_gra_rock__stringBase0@l /* 0x80C12440@l */
/* 80C11B94  38 84 00 2B */	addi r4, r4, 0x2b
/* 80C11B98  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C11B9C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C11BA0  3F A5 00 02 */	addis r29, r5, 2
/* 80C11BA4  3B BD C2 F8 */	addi r29, r29, -15624
/* 80C11BA8  7F A5 EB 78 */	mr r5, r29
/* 80C11BAC  38 C0 00 80 */	li r6, 0x80
/* 80C11BB0  4B 42 A7 CD */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C11BB4  7C 7E 1B 78 */	mr r30, r3
/* 80C11BB8  3C 80 00 08 */	lis r4, 8
/* 80C11BBC  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020084@ha */
/* 80C11BC0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11020084@l */
/* 80C11BC4  4B 40 30 91 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C11BC8  90 7F 05 C8 */	stw r3, 0x5c8(r31)
/* 80C11BCC  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 80C11BD0  28 00 00 00 */	cmplwi r0, 0
/* 80C11BD4  40 82 00 0C */	bne lbl_80C11BE0
/* 80C11BD8  38 60 00 00 */	li r3, 0
/* 80C11BDC  48 00 00 70 */	b lbl_80C11C4C
lbl_80C11BE0:
/* 80C11BE0  3C 60 80 C1 */	lis r3, l_arcName@ha /* 0x80C1249C@ha */
/* 80C11BE4  38 63 24 9C */	addi r3, r3, l_arcName@l /* 0x80C1249C@l */
/* 80C11BE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C11BEC  3C 80 80 C1 */	lis r4, d_a_obj_gra_rock__stringBase0@ha /* 0x80C12440@ha */
/* 80C11BF0  38 84 24 40 */	addi r4, r4, d_a_obj_gra_rock__stringBase0@l /* 0x80C12440@l */
/* 80C11BF4  38 84 00 3B */	addi r4, r4, 0x3b
/* 80C11BF8  7F A5 EB 78 */	mr r5, r29
/* 80C11BFC  38 C0 00 80 */	li r6, 0x80
/* 80C11C00  4B 42 A7 7D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C11C04  7C 65 1B 78 */	mr r5, r3
/* 80C11C08  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C11C0C  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C11C10  38 C0 00 01 */	li r6, 1
/* 80C11C14  38 E0 00 02 */	li r7, 2
/* 80C11C18  3D 00 80 C1 */	lis r8, lit_3860@ha /* 0x80C1240C@ha */
/* 80C11C1C  C0 28 24 0C */	lfs f1, lit_3860@l(r8)  /* 0x80C1240C@l */
/* 80C11C20  39 00 00 00 */	li r8, 0
/* 80C11C24  39 20 FF FF */	li r9, -1
/* 80C11C28  4B 3F B9 25 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80C11C2C  2C 03 00 00 */	cmpwi r3, 0
/* 80C11C30  40 82 00 0C */	bne lbl_80C11C3C
/* 80C11C34  38 60 00 00 */	li r3, 0
/* 80C11C38  48 00 00 14 */	b lbl_80C11C4C
lbl_80C11C3C:
/* 80C11C3C  3C 60 80 C1 */	lis r3, lit_3860@ha /* 0x80C1240C@ha */
/* 80C11C40  C0 03 24 0C */	lfs f0, lit_3860@l(r3)  /* 0x80C1240C@l */
/* 80C11C44  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 80C11C48  38 60 00 01 */	li r3, 1
lbl_80C11C4C:
/* 80C11C4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C11C50  4B 75 05 D9 */	bl _restgpr_29
/* 80C11C54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C11C58  7C 08 03 A6 */	mtlr r0
/* 80C11C5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C11C60  4E 80 00 20 */	blr 
