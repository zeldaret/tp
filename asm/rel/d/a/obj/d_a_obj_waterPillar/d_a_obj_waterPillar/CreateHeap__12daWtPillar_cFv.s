lbl_80D2C858:
/* 80D2C858  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2C85C  7C 08 02 A6 */	mflr r0
/* 80D2C860  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2C864  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2C868  4B 63 59 75 */	bl _savegpr_29
/* 80D2C86C  7C 7F 1B 78 */	mr r31, r3
/* 80D2C870  3C 60 80 D3 */	lis r3, d_a_obj_waterPillar__stringBase0@ha /* 0x80D2E844@ha */
/* 80D2C874  38 63 E8 44 */	addi r3, r3, d_a_obj_waterPillar__stringBase0@l /* 0x80D2E844@l */
/* 80D2C878  38 80 00 08 */	li r4, 8
/* 80D2C87C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2C880  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2C884  3F A5 00 02 */	addis r29, r5, 2
/* 80D2C888  3B BD C2 F8 */	addi r29, r29, -15624
/* 80D2C88C  7F A5 EB 78 */	mr r5, r29
/* 80D2C890  38 C0 00 80 */	li r6, 0x80
/* 80D2C894  4B 30 FA 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2C898  7C 7E 1B 78 */	mr r30, r3
/* 80D2C89C  3C 80 00 08 */	lis r4, 8
/* 80D2C8A0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80D2C8A4  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80D2C8A8  4B 2E 83 AD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D2C8AC  90 7F 05 8C */	stw r3, 0x58c(r31)
/* 80D2C8B0  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 80D2C8B4  28 00 00 00 */	cmplwi r0, 0
/* 80D2C8B8  40 82 00 0C */	bne lbl_80D2C8C4
/* 80D2C8BC  38 60 00 00 */	li r3, 0
/* 80D2C8C0  48 00 00 88 */	b lbl_80D2C948
lbl_80D2C8C4:
/* 80D2C8C4  3C 60 80 D3 */	lis r3, d_a_obj_waterPillar__stringBase0@ha /* 0x80D2E844@ha */
/* 80D2C8C8  38 63 E8 44 */	addi r3, r3, d_a_obj_waterPillar__stringBase0@l /* 0x80D2E844@l */
/* 80D2C8CC  38 80 00 05 */	li r4, 5
/* 80D2C8D0  7F A5 EB 78 */	mr r5, r29
/* 80D2C8D4  38 C0 00 80 */	li r6, 0x80
/* 80D2C8D8  4B 30 FA 15 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2C8DC  7C 64 1B 78 */	mr r4, r3
/* 80D2C8E0  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80D2C8E4  38 A0 00 01 */	li r5, 1
/* 80D2C8E8  38 C0 00 02 */	li r6, 2
/* 80D2C8EC  3C E0 80 D3 */	lis r7, lit_3645@ha /* 0x80D2E770@ha */
/* 80D2C8F0  C0 27 E7 70 */	lfs f1, lit_3645@l(r7)  /* 0x80D2E770@l */
/* 80D2C8F4  38 E0 00 00 */	li r7, 0
/* 80D2C8F8  39 00 FF FF */	li r8, -1
/* 80D2C8FC  39 20 00 00 */	li r9, 0
/* 80D2C900  4B 2E 0E DD */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80D2C904  3C 60 80 D3 */	lis r3, d_a_obj_waterPillar__stringBase0@ha /* 0x80D2E844@ha */
/* 80D2C908  38 63 E8 44 */	addi r3, r3, d_a_obj_waterPillar__stringBase0@l /* 0x80D2E844@l */
/* 80D2C90C  38 80 00 0B */	li r4, 0xb
/* 80D2C910  7F A5 EB 78 */	mr r5, r29
/* 80D2C914  38 C0 00 80 */	li r6, 0x80
/* 80D2C918  4B 30 F9 D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2C91C  7C 65 1B 78 */	mr r5, r3
/* 80D2C920  38 7F 05 90 */	addi r3, r31, 0x590
/* 80D2C924  38 9E 00 58 */	addi r4, r30, 0x58
/* 80D2C928  38 C0 00 01 */	li r6, 1
/* 80D2C92C  38 E0 00 02 */	li r7, 2
/* 80D2C930  3D 00 80 D3 */	lis r8, lit_3645@ha /* 0x80D2E770@ha */
/* 80D2C934  C0 28 E7 70 */	lfs f1, lit_3645@l(r8)  /* 0x80D2E770@l */
/* 80D2C938  39 00 00 00 */	li r8, 0
/* 80D2C93C  39 20 FF FF */	li r9, -1
/* 80D2C940  4B 2E 0C FD */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D2C944  38 60 00 01 */	li r3, 1
lbl_80D2C948:
/* 80D2C948  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2C94C  4B 63 58 DD */	bl _restgpr_29
/* 80D2C950  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2C954  7C 08 03 A6 */	mtlr r0
/* 80D2C958  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2C95C  4E 80 00 20 */	blr 
