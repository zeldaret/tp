lbl_80BF94CC:
/* 80BF94CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF94D0  7C 08 02 A6 */	mflr r0
/* 80BF94D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF94D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF94DC  4B 76 8D 01 */	bl _savegpr_29
/* 80BF94E0  7C 7F 1B 78 */	mr r31, r3
/* 80BF94E4  3C 60 80 C0 */	lis r3, d_a_obj_glowSphere__stringBase0@ha /* 0x80BFA9C4@ha */
/* 80BF94E8  38 63 A9 C4 */	addi r3, r3, d_a_obj_glowSphere__stringBase0@l /* 0x80BFA9C4@l */
/* 80BF94EC  38 80 00 05 */	li r4, 5
/* 80BF94F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF94F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF94F8  3F A5 00 02 */	addis r29, r5, 2
/* 80BF94FC  3B BD C2 F8 */	addi r29, r29, -15624
/* 80BF9500  7F A5 EB 78 */	mr r5, r29
/* 80BF9504  38 C0 00 80 */	li r6, 0x80
/* 80BF9508  4B 44 2D E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF950C  7C 7E 1B 78 */	mr r30, r3
/* 80BF9510  3C 80 00 08 */	lis r4, 8
/* 80BF9514  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80BF9518  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80BF951C  4B 41 B7 39 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BF9520  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80BF9524  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80BF9528  28 00 00 00 */	cmplwi r0, 0
/* 80BF952C  40 82 00 0C */	bne lbl_80BF9538
/* 80BF9530  38 60 00 00 */	li r3, 0
/* 80BF9534  48 00 00 88 */	b lbl_80BF95BC
lbl_80BF9538:
/* 80BF9538  3C 60 80 C0 */	lis r3, d_a_obj_glowSphere__stringBase0@ha /* 0x80BFA9C4@ha */
/* 80BF953C  38 63 A9 C4 */	addi r3, r3, d_a_obj_glowSphere__stringBase0@l /* 0x80BFA9C4@l */
/* 80BF9540  38 80 00 08 */	li r4, 8
/* 80BF9544  7F A5 EB 78 */	mr r5, r29
/* 80BF9548  38 C0 00 80 */	li r6, 0x80
/* 80BF954C  4B 44 2D A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF9550  7C 65 1B 78 */	mr r5, r3
/* 80BF9554  38 7F 05 8C */	addi r3, r31, 0x58c
/* 80BF9558  38 9E 00 58 */	addi r4, r30, 0x58
/* 80BF955C  38 C0 00 01 */	li r6, 1
/* 80BF9560  38 E0 00 02 */	li r7, 2
/* 80BF9564  3D 00 80 C0 */	lis r8, lit_3714@ha /* 0x80BFA9A8@ha */
/* 80BF9568  C0 28 A9 A8 */	lfs f1, lit_3714@l(r8)  /* 0x80BFA9A8@l */
/* 80BF956C  39 00 00 00 */	li r8, 0
/* 80BF9570  39 20 FF FF */	li r9, -1
/* 80BF9574  4B 41 41 99 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BF9578  3C 60 80 C0 */	lis r3, d_a_obj_glowSphere__stringBase0@ha /* 0x80BFA9C4@ha */
/* 80BF957C  38 63 A9 C4 */	addi r3, r3, d_a_obj_glowSphere__stringBase0@l /* 0x80BFA9C4@l */
/* 80BF9580  38 80 00 0B */	li r4, 0xb
/* 80BF9584  7F A5 EB 78 */	mr r5, r29
/* 80BF9588  38 C0 00 80 */	li r6, 0x80
/* 80BF958C  4B 44 2D 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF9590  7C 65 1B 78 */	mr r5, r3
/* 80BF9594  38 7F 05 74 */	addi r3, r31, 0x574
/* 80BF9598  38 9E 00 58 */	addi r4, r30, 0x58
/* 80BF959C  38 C0 00 01 */	li r6, 1
/* 80BF95A0  38 E0 00 02 */	li r7, 2
/* 80BF95A4  3D 00 80 C0 */	lis r8, lit_3714@ha /* 0x80BFA9A8@ha */
/* 80BF95A8  C0 28 A9 A8 */	lfs f1, lit_3714@l(r8)  /* 0x80BFA9A8@l */
/* 80BF95AC  39 00 00 00 */	li r8, 0
/* 80BF95B0  39 20 FF FF */	li r9, -1
/* 80BF95B4  4B 41 40 89 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BF95B8  38 60 00 01 */	li r3, 1
lbl_80BF95BC:
/* 80BF95BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF95C0  4B 76 8C 69 */	bl _restgpr_29
/* 80BF95C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF95C8  7C 08 03 A6 */	mtlr r0
/* 80BF95CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF95D0  4E 80 00 20 */	blr 
