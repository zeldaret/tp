lbl_8000A58C:
/* 8000A58C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8000A590  7C 08 02 A6 */	mflr r0
/* 8000A594  90 01 00 44 */	stw r0, 0x44(r1)
/* 8000A598  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8000A59C  38 61 00 08 */	addi r3, r1, 8
/* 8000A5A0  48 1A D0 49 */	bl setupItem3D__17dMenu_Collect3D_cFPA4_f
/* 8000A5A4  4B FF FF 61 */	bl setLight__Fv
/* 8000A5A8  38 61 00 08 */	addi r3, r1, 8
/* 8000A5AC  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 8000A5B0  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 8000A5B4  48 33 BE FD */	bl PSMTXCopy
/* 8000A5B8  38 60 00 01 */	li r3, 1
/* 8000A5BC  48 35 60 15 */	bl GXSetClipMode
/* 8000A5C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A5C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A5C8  3B E3 5F 64 */	addi r31, r3, 0x5f64
/* 8000A5CC  7F E3 FB 78 */	mr r3, r31
/* 8000A5D0  48 04 C1 7D */	bl drawOpaListItem3d__12dDlst_list_cFv
/* 8000A5D4  7F E3 FB 78 */	mr r3, r31
/* 8000A5D8  48 04 C1 99 */	bl drawXluListItem3d__12dDlst_list_cFv
/* 8000A5DC  38 60 00 00 */	li r3, 0
/* 8000A5E0  48 35 5F F1 */	bl GXSetClipMode
/* 8000A5E4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8000A5E8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8000A5EC  48 30 61 51 */	bl reinitGX__6J3DSysFv
/* 8000A5F0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8000A5F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8000A5F8  7C 08 03 A6 */	mtlr r0
/* 8000A5FC  38 21 00 40 */	addi r1, r1, 0x40
/* 8000A600  4E 80 00 20 */	blr 
