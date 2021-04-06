lbl_80C3CC90:
/* 80C3CC90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C3CC94  7C 08 02 A6 */	mflr r0
/* 80C3CC98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C3CC9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C3CCA0  4B 72 55 35 */	bl _savegpr_27
/* 80C3CCA4  7C 7F 1B 78 */	mr r31, r3
/* 80C3CCA8  3C 60 80 C4 */	lis r3, l_arcName@ha /* 0x80C3D490@ha */
/* 80C3CCAC  38 63 D4 90 */	addi r3, r3, l_arcName@l /* 0x80C3D490@l */
/* 80C3CCB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C3CCB4  3C 80 80 C4 */	lis r4, d_a_obj_kazeneko__stringBase0@ha /* 0x80C3D474@ha */
/* 80C3CCB8  38 84 D4 74 */	addi r4, r4, d_a_obj_kazeneko__stringBase0@l /* 0x80C3D474@l */
/* 80C3CCBC  38 84 00 09 */	addi r4, r4, 9
/* 80C3CCC0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3CCC4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3CCC8  3F 85 00 02 */	addis r28, r5, 2
/* 80C3CCCC  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80C3CCD0  7F 85 E3 78 */	mr r5, r28
/* 80C3CCD4  38 C0 00 80 */	li r6, 0x80
/* 80C3CCD8  4B 3F F6 A5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C3CCDC  3C 80 00 08 */	lis r4, 8
/* 80C3CCE0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C3CCE4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C3CCE8  4B 3D 7F 6D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C3CCEC  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80C3CCF0  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80C3CCF4  28 00 00 00 */	cmplwi r0, 0
/* 80C3CCF8  40 82 00 0C */	bne lbl_80C3CD04
/* 80C3CCFC  38 60 00 00 */	li r3, 0
/* 80C3CD00  48 00 00 78 */	b lbl_80C3CD78
lbl_80C3CD04:
/* 80C3CD04  3C 60 80 C4 */	lis r3, l_arcName@ha /* 0x80C3D490@ha */
/* 80C3CD08  38 63 D4 90 */	addi r3, r3, l_arcName@l /* 0x80C3D490@l */
/* 80C3CD0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C3CD10  3C 80 80 C4 */	lis r4, d_a_obj_kazeneko__stringBase0@ha /* 0x80C3D474@ha */
/* 80C3CD14  38 84 D4 74 */	addi r4, r4, d_a_obj_kazeneko__stringBase0@l /* 0x80C3D474@l */
/* 80C3CD18  38 84 00 12 */	addi r4, r4, 0x12
/* 80C3CD1C  7F 85 E3 78 */	mr r5, r28
/* 80C3CD20  38 C0 00 80 */	li r6, 0x80
/* 80C3CD24  4B 3F F6 59 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C3CD28  7C 7B 1B 78 */	mr r27, r3
/* 80C3CD2C  3B 80 00 00 */	li r28, 0
/* 80C3CD30  7F 9E E3 78 */	mr r30, r28
/* 80C3CD34  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
lbl_80C3CD38:
/* 80C3CD38  7F 63 DB 78 */	mr r3, r27
/* 80C3CD3C  3C 80 00 08 */	lis r4, 8
/* 80C3CD40  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 80C3CD44  4B 3D 7F 11 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C3CD48  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C3CD4C  7C 7F 01 2E */	stwx r3, r31, r0
/* 80C3CD50  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80C3CD54  28 00 00 00 */	cmplwi r0, 0
/* 80C3CD58  40 82 00 0C */	bne lbl_80C3CD64
/* 80C3CD5C  38 60 00 00 */	li r3, 0
/* 80C3CD60  48 00 00 18 */	b lbl_80C3CD78
lbl_80C3CD64:
/* 80C3CD64  3B 9C 00 01 */	addi r28, r28, 1
/* 80C3CD68  2C 1C 00 04 */	cmpwi r28, 4
/* 80C3CD6C  3B DE 00 04 */	addi r30, r30, 4
/* 80C3CD70  41 80 FF C8 */	blt lbl_80C3CD38
/* 80C3CD74  38 60 00 01 */	li r3, 1
lbl_80C3CD78:
/* 80C3CD78  39 61 00 20 */	addi r11, r1, 0x20
/* 80C3CD7C  4B 72 54 A5 */	bl _restgpr_27
/* 80C3CD80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C3CD84  7C 08 03 A6 */	mtlr r0
/* 80C3CD88  38 21 00 20 */	addi r1, r1, 0x20
/* 80C3CD8C  4E 80 00 20 */	blr 
