lbl_8018366C:
/* 8018366C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80183670  7C 08 02 A6 */	mflr r0
/* 80183674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80183678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018367C  93 C1 00 08 */	stw r30, 8(r1)
/* 80183680  7C 7E 1B 78 */	mr r30, r3
/* 80183684  7C 9F 23 78 */	mr r31, r4
/* 80183688  3C 60 80 3C */	lis r3, __vt__14dFile_select_c@ha /* 0x803BB3E8@ha */
/* 8018368C  38 03 B3 E8 */	addi r0, r3, __vt__14dFile_select_c@l /* 0x803BB3E8@l */
/* 80183690  90 1E 00 00 */	stw r0, 0(r30)
/* 80183694  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 80183698  38 03 6F 88 */	addi r0, r3, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 8018369C  90 1E 00 10 */	stw r0, 0x10(r30)
/* 801836A0  3C 60 80 3C */	lis r3, __vt__15dDlst_FileSel_c@ha /* 0x803BB3A8@ha */
/* 801836A4  38 03 B3 A8 */	addi r0, r3, __vt__15dDlst_FileSel_c@l /* 0x803BB3A8@l */
/* 801836A8  90 1E 00 10 */	stw r0, 0x10(r30)
/* 801836AC  4B E9 13 45 */	bl mDoExt_getMesgFont__Fv
/* 801836B0  90 7E 00 18 */	stw r3, 0x18(r30)
/* 801836B4  4B E9 14 ED */	bl mDoExt_getSubFont__Fv
/* 801836B8  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 801836BC  38 60 00 2C */	li r3, 0x2c
/* 801836C0  48 14 B5 8D */	bl __nw__FUl
/* 801836C4  7C 60 1B 79 */	or. r0, r3, r3
/* 801836C8  41 82 00 0C */	beq lbl_801836D4
/* 801836CC  48 0C 65 55 */	bl __ct__12dMsgString_cFv
/* 801836D0  7C 60 1B 78 */	mr r0, r3
lbl_801836D4:
/* 801836D4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 801836D8  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801836DC  38 83 6F 88 */	addi r4, r3, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801836E0  90 9E 00 24 */	stw r4, 0x24(r30)
/* 801836E4  3C 60 80 3C */	lis r3, __vt__17dDlst_FileSelDt_c@ha /* 0x803BB398@ha */
/* 801836E8  38 03 B3 98 */	addi r0, r3, __vt__17dDlst_FileSelDt_c@l /* 0x803BB398@l */
/* 801836EC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 801836F0  90 9E 00 34 */	stw r4, 0x34(r30)
/* 801836F4  3C 60 80 3C */	lis r3, __vt__17dDlst_FileSelCp_c@ha /* 0x803BB388@ha */
/* 801836F8  38 03 B3 88 */	addi r0, r3, __vt__17dDlst_FileSelCp_c@l /* 0x803BB388@l */
/* 801836FC  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80183700  90 9E 00 48 */	stw r4, 0x48(r30)
/* 80183704  3C 60 80 3C */	lis r3, __vt__17dDlst_FileSelYn_c@ha /* 0x803BB378@ha */
/* 80183708  38 03 B3 78 */	addi r0, r3, __vt__17dDlst_FileSelYn_c@l /* 0x803BB378@l */
/* 8018370C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80183710  90 9E 00 54 */	stw r4, 0x54(r30)
/* 80183714  3C 60 80 3C */	lis r3, __vt__17dDlst_FileSel3m_c@ha /* 0x803BB368@ha */
/* 80183718  38 03 B3 68 */	addi r0, r3, __vt__17dDlst_FileSel3m_c@l /* 0x803BB368@l */
/* 8018371C  90 1E 00 54 */	stw r0, 0x54(r30)
/* 80183720  93 FE 00 08 */	stw r31, 8(r30)
/* 80183724  38 60 03 D0 */	li r3, 0x3d0
/* 80183728  48 14 B5 25 */	bl __nw__FUl
/* 8018372C  7C 60 1B 79 */	or. r0, r3, r3
/* 80183730  41 82 00 0C */	beq lbl_8018373C
/* 80183734  48 00 CB BD */	bl __ct__16dFile_select3D_cFv
/* 80183738  7C 60 1B 78 */	mr r0, r3
lbl_8018373C:
/* 8018373C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80183740  7F C3 F3 78 */	mr r3, r30
/* 80183744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80183748  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018374C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80183750  7C 08 03 A6 */	mtlr r0
/* 80183754  38 21 00 10 */	addi r1, r1, 0x10
/* 80183758  4E 80 00 20 */	blr 
