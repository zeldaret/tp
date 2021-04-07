lbl_8085B7C0:
/* 8085B7C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8085B7C4  7C 08 02 A6 */	mflr r0
/* 8085B7C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8085B7CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8085B7D0  4B B0 6A 0D */	bl _savegpr_29
/* 8085B7D4  7C 7D 1B 78 */	mr r29, r3
/* 8085B7D8  3C 60 80 86 */	lis r3, d_a_kytag09__stringBase0@ha /* 0x8085BA4C@ha */
/* 8085B7DC  38 63 BA 4C */	addi r3, r3, d_a_kytag09__stringBase0@l /* 0x8085BA4C@l */
/* 8085B7E0  38 63 00 08 */	addi r3, r3, 8
/* 8085B7E4  38 80 00 04 */	li r4, 4
/* 8085B7E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085B7EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085B7F0  3F C5 00 02 */	addis r30, r5, 2
/* 8085B7F4  3B DE C2 F8 */	addi r30, r30, -15624
/* 8085B7F8  7F C5 F3 78 */	mr r5, r30
/* 8085B7FC  38 C0 00 80 */	li r6, 0x80
/* 8085B800  4B 7E 0A ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8085B804  7C 7F 1B 78 */	mr r31, r3
/* 8085B808  3C 80 00 08 */	lis r4, 8
/* 8085B80C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 8085B810  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 8085B814  4B 7B 94 41 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8085B818  90 7D 05 68 */	stw r3, 0x568(r29)
/* 8085B81C  80 1D 05 68 */	lwz r0, 0x568(r29)
/* 8085B820  28 00 00 00 */	cmplwi r0, 0
/* 8085B824  40 82 00 0C */	bne lbl_8085B830
/* 8085B828  38 60 00 00 */	li r3, 0
/* 8085B82C  48 00 00 50 */	b lbl_8085B87C
lbl_8085B830:
/* 8085B830  3C 60 80 86 */	lis r3, d_a_kytag09__stringBase0@ha /* 0x8085BA4C@ha */
/* 8085B834  38 63 BA 4C */	addi r3, r3, d_a_kytag09__stringBase0@l /* 0x8085BA4C@l */
/* 8085B838  38 63 00 08 */	addi r3, r3, 8
/* 8085B83C  38 80 00 07 */	li r4, 7
/* 8085B840  7F C5 F3 78 */	mr r5, r30
/* 8085B844  38 C0 00 80 */	li r6, 0x80
/* 8085B848  4B 7E 0A A5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8085B84C  7C 65 1B 78 */	mr r5, r3
/* 8085B850  38 7D 05 74 */	addi r3, r29, 0x574
/* 8085B854  38 9F 00 58 */	addi r4, r31, 0x58
/* 8085B858  38 C0 00 01 */	li r6, 1
/* 8085B85C  38 E0 00 02 */	li r7, 2
/* 8085B860  3D 00 80 86 */	lis r8, lit_3906@ha /* 0x8085BA48@ha */
/* 8085B864  C0 28 BA 48 */	lfs f1, lit_3906@l(r8)  /* 0x8085BA48@l */
/* 8085B868  39 00 00 00 */	li r8, 0
/* 8085B86C  39 20 FF FF */	li r9, -1
/* 8085B870  4B 7B 1D CD */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8085B874  30 03 FF FF */	addic r0, r3, -1
/* 8085B878  7C 60 19 10 */	subfe r3, r0, r3
lbl_8085B87C:
/* 8085B87C  39 61 00 20 */	addi r11, r1, 0x20
/* 8085B880  4B B0 69 A9 */	bl _restgpr_29
/* 8085B884  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8085B888  7C 08 03 A6 */	mtlr r0
/* 8085B88C  38 21 00 20 */	addi r1, r1, 0x20
/* 8085B890  4E 80 00 20 */	blr 
