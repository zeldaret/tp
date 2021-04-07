lbl_8085B658:
/* 8085B658  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8085B65C  7C 08 02 A6 */	mflr r0
/* 8085B660  90 01 00 24 */	stw r0, 0x24(r1)
/* 8085B664  39 61 00 20 */	addi r11, r1, 0x20
/* 8085B668  4B B0 6B 71 */	bl _savegpr_28
/* 8085B66C  7C 7E 1B 78 */	mr r30, r3
/* 8085B670  3C 60 80 86 */	lis r3, d_a_kytag09__stringBase0@ha /* 0x8085BA4C@ha */
/* 8085B674  38 63 BA 4C */	addi r3, r3, d_a_kytag09__stringBase0@l /* 0x8085BA4C@l */
/* 8085B678  38 80 00 04 */	li r4, 4
/* 8085B67C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085B680  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085B684  3F E5 00 02 */	addis r31, r5, 2
/* 8085B688  3B FF C2 F8 */	addi r31, r31, -15624
/* 8085B68C  7F E5 FB 78 */	mr r5, r31
/* 8085B690  38 C0 00 80 */	li r6, 0x80
/* 8085B694  4B 7E 0C 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8085B698  7C 7D 1B 78 */	mr r29, r3
/* 8085B69C  3C 60 80 86 */	lis r3, d_a_kytag09__stringBase0@ha /* 0x8085BA4C@ha */
/* 8085B6A0  38 63 BA 4C */	addi r3, r3, d_a_kytag09__stringBase0@l /* 0x8085BA4C@l */
/* 8085B6A4  38 80 00 05 */	li r4, 5
/* 8085B6A8  7F E5 FB 78 */	mr r5, r31
/* 8085B6AC  38 C0 00 80 */	li r6, 0x80
/* 8085B6B0  4B 7E 0C 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8085B6B4  7C 7C 1B 78 */	mr r28, r3
/* 8085B6B8  7F A3 EB 78 */	mr r3, r29
/* 8085B6BC  3C 80 00 08 */	lis r4, 8
/* 8085B6C0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 8085B6C4  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 8085B6C8  4B 7B 95 8D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8085B6CC  90 7E 05 68 */	stw r3, 0x568(r30)
/* 8085B6D0  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 8085B6D4  28 00 00 00 */	cmplwi r0, 0
/* 8085B6D8  40 82 00 0C */	bne lbl_8085B6E4
/* 8085B6DC  38 60 00 00 */	li r3, 0
/* 8085B6E0  48 00 00 C8 */	b lbl_8085B7A8
lbl_8085B6E4:
/* 8085B6E4  3C 60 80 86 */	lis r3, d_a_kytag09__stringBase0@ha /* 0x8085BA4C@ha */
/* 8085B6E8  38 63 BA 4C */	addi r3, r3, d_a_kytag09__stringBase0@l /* 0x8085BA4C@l */
/* 8085B6EC  38 80 00 09 */	li r4, 9
/* 8085B6F0  7F E5 FB 78 */	mr r5, r31
/* 8085B6F4  38 C0 00 80 */	li r6, 0x80
/* 8085B6F8  4B 7E 0B F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8085B6FC  7C 65 1B 78 */	mr r5, r3
/* 8085B700  38 7E 05 74 */	addi r3, r30, 0x574
/* 8085B704  38 9D 00 58 */	addi r4, r29, 0x58
/* 8085B708  38 C0 00 01 */	li r6, 1
/* 8085B70C  38 E0 00 02 */	li r7, 2
/* 8085B710  3D 00 80 86 */	lis r8, lit_3906@ha /* 0x8085BA48@ha */
/* 8085B714  C0 28 BA 48 */	lfs f1, lit_3906@l(r8)  /* 0x8085BA48@l */
/* 8085B718  39 00 00 00 */	li r8, 0
/* 8085B71C  39 20 FF FF */	li r9, -1
/* 8085B720  4B 7B 1F 1D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8085B724  2C 03 00 00 */	cmpwi r3, 0
/* 8085B728  40 82 00 0C */	bne lbl_8085B734
/* 8085B72C  38 60 00 00 */	li r3, 0
/* 8085B730  48 00 00 78 */	b lbl_8085B7A8
lbl_8085B734:
/* 8085B734  7F 83 E3 78 */	mr r3, r28
/* 8085B738  3C 80 00 08 */	lis r4, 8
/* 8085B73C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 8085B740  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 8085B744  4B 7B 95 11 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8085B748  90 7E 05 6C */	stw r3, 0x56c(r30)
/* 8085B74C  80 1E 05 6C */	lwz r0, 0x56c(r30)
/* 8085B750  28 00 00 00 */	cmplwi r0, 0
/* 8085B754  40 82 00 0C */	bne lbl_8085B760
/* 8085B758  38 60 00 00 */	li r3, 0
/* 8085B75C  48 00 00 4C */	b lbl_8085B7A8
lbl_8085B760:
/* 8085B760  3C 60 80 86 */	lis r3, d_a_kytag09__stringBase0@ha /* 0x8085BA4C@ha */
/* 8085B764  38 63 BA 4C */	addi r3, r3, d_a_kytag09__stringBase0@l /* 0x8085BA4C@l */
/* 8085B768  38 80 00 0A */	li r4, 0xa
/* 8085B76C  7F E5 FB 78 */	mr r5, r31
/* 8085B770  38 C0 00 80 */	li r6, 0x80
/* 8085B774  4B 7E 0B 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8085B778  7C 65 1B 78 */	mr r5, r3
/* 8085B77C  38 7E 05 8C */	addi r3, r30, 0x58c
/* 8085B780  38 9C 00 58 */	addi r4, r28, 0x58
/* 8085B784  38 C0 00 01 */	li r6, 1
/* 8085B788  38 E0 00 02 */	li r7, 2
/* 8085B78C  3D 00 80 86 */	lis r8, lit_3906@ha /* 0x8085BA48@ha */
/* 8085B790  C0 28 BA 48 */	lfs f1, lit_3906@l(r8)  /* 0x8085BA48@l */
/* 8085B794  39 00 00 00 */	li r8, 0
/* 8085B798  39 20 FF FF */	li r9, -1
/* 8085B79C  4B 7B 1E A1 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8085B7A0  30 03 FF FF */	addic r0, r3, -1
/* 8085B7A4  7C 60 19 10 */	subfe r3, r0, r3
lbl_8085B7A8:
/* 8085B7A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8085B7AC  4B B0 6A 79 */	bl _restgpr_28
/* 8085B7B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8085B7B4  7C 08 03 A6 */	mtlr r0
/* 8085B7B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8085B7BC  4E 80 00 20 */	blr 
