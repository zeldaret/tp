lbl_80C8A438:
/* 80C8A438  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8A43C  7C 08 02 A6 */	mflr r0
/* 80C8A440  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8A444  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8A448  4B 6D 7D 94 */	b _savegpr_29
/* 80C8A44C  7C 7D 1B 78 */	mr r29, r3
/* 80C8A450  3C 60 80 C9 */	lis r3, stringBase0@ha
/* 80C8A454  38 63 BA 3C */	addi r3, r3, stringBase0@l
/* 80C8A458  38 80 00 05 */	li r4, 5
/* 80C8A45C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C8A460  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C8A464  3F C5 00 02 */	addis r30, r5, 2
/* 80C8A468  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C8A46C  7F C5 F3 78 */	mr r5, r30
/* 80C8A470  38 C0 00 80 */	li r6, 0x80
/* 80C8A474  4B 3B 1E 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C8A478  7C 7F 1B 78 */	mr r31, r3
/* 80C8A47C  38 80 00 00 */	li r4, 0
/* 80C8A480  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C8A484  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C8A488  4B 38 A7 CC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C8A48C  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 80C8A490  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80C8A494  28 00 00 00 */	cmplwi r0, 0
/* 80C8A498  40 82 00 0C */	bne lbl_80C8A4A4
/* 80C8A49C  38 60 00 00 */	li r3, 0
/* 80C8A4A0  48 00 00 48 */	b lbl_80C8A4E8
lbl_80C8A4A4:
/* 80C8A4A4  3C 60 80 C9 */	lis r3, stringBase0@ha
/* 80C8A4A8  38 63 BA 3C */	addi r3, r3, stringBase0@l
/* 80C8A4AC  38 80 00 08 */	li r4, 8
/* 80C8A4B0  7F C5 F3 78 */	mr r5, r30
/* 80C8A4B4  38 C0 00 80 */	li r6, 0x80
/* 80C8A4B8  4B 3B 1E 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C8A4BC  7C 65 1B 78 */	mr r5, r3
/* 80C8A4C0  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80C8A4C4  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C8A4C8  38 C0 00 01 */	li r6, 1
/* 80C8A4CC  38 E0 00 00 */	li r7, 0
/* 80C8A4D0  3D 00 80 C9 */	lis r8, lit_3695@ha
/* 80C8A4D4  C0 28 B9 F0 */	lfs f1, lit_3695@l(r8)
/* 80C8A4D8  39 00 00 00 */	li r8, 0
/* 80C8A4DC  39 20 FF FF */	li r9, -1
/* 80C8A4E0  4B 38 31 5C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C8A4E4  38 60 00 01 */	li r3, 1
lbl_80C8A4E8:
/* 80C8A4E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8A4EC  4B 6D 7D 3C */	b _restgpr_29
/* 80C8A4F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8A4F4  7C 08 03 A6 */	mtlr r0
/* 80C8A4F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8A4FC  4E 80 00 20 */	blr 
