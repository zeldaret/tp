lbl_80C88860:
/* 80C88860  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C88864  7C 08 02 A6 */	mflr r0
/* 80C88868  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8886C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C88870  4B 6D 99 6D */	bl _savegpr_29
/* 80C88874  7C 7D 1B 78 */	mr r29, r3
/* 80C88878  3C 60 80 C9 */	lis r3, d_a_obj_lv8Lift__stringBase0@ha /* 0x80C89FFC@ha */
/* 80C8887C  38 63 9F FC */	addi r3, r3, d_a_obj_lv8Lift__stringBase0@l /* 0x80C89FFC@l */
/* 80C88880  38 80 00 05 */	li r4, 5
/* 80C88884  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C88888  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8888C  3F C5 00 02 */	addis r30, r5, 2
/* 80C88890  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C88894  7F C5 F3 78 */	mr r5, r30
/* 80C88898  38 C0 00 80 */	li r6, 0x80
/* 80C8889C  4B 3B 3A 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C888A0  7C 7F 1B 78 */	mr r31, r3
/* 80C888A4  38 80 00 00 */	li r4, 0
/* 80C888A8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C888AC  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C888B0  4B 38 C3 A5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C888B4  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 80C888B8  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80C888BC  28 00 00 00 */	cmplwi r0, 0
/* 80C888C0  40 82 00 0C */	bne lbl_80C888CC
/* 80C888C4  38 60 00 00 */	li r3, 0
/* 80C888C8  48 00 00 48 */	b lbl_80C88910
lbl_80C888CC:
/* 80C888CC  3C 60 80 C9 */	lis r3, d_a_obj_lv8Lift__stringBase0@ha /* 0x80C89FFC@ha */
/* 80C888D0  38 63 9F FC */	addi r3, r3, d_a_obj_lv8Lift__stringBase0@l /* 0x80C89FFC@l */
/* 80C888D4  38 80 00 08 */	li r4, 8
/* 80C888D8  7F C5 F3 78 */	mr r5, r30
/* 80C888DC  38 C0 00 80 */	li r6, 0x80
/* 80C888E0  4B 3B 3A 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C888E4  7C 65 1B 78 */	mr r5, r3
/* 80C888E8  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80C888EC  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C888F0  38 C0 00 01 */	li r6, 1
/* 80C888F4  38 E0 00 00 */	li r7, 0
/* 80C888F8  3D 00 80 C9 */	lis r8, lit_3661@ha /* 0x80C89FA4@ha */
/* 80C888FC  C0 28 9F A4 */	lfs f1, lit_3661@l(r8)  /* 0x80C89FA4@l */
/* 80C88900  39 00 00 00 */	li r8, 0
/* 80C88904  39 20 FF FF */	li r9, -1
/* 80C88908  4B 38 4D 35 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C8890C  38 60 00 01 */	li r3, 1
lbl_80C88910:
/* 80C88910  39 61 00 20 */	addi r11, r1, 0x20
/* 80C88914  4B 6D 99 15 */	bl _restgpr_29
/* 80C88918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8891C  7C 08 03 A6 */	mtlr r0
/* 80C88920  38 21 00 20 */	addi r1, r1, 0x20
/* 80C88924  4E 80 00 20 */	blr 
