lbl_80191BAC:
/* 80191BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80191BB0  7C 08 02 A6 */	mflr r0
/* 80191BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80191BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80191BBC  7C 7F 1B 78 */	mr r31, r3
/* 80191BC0  3C C0 80 3C */	lis r6, __vt__15dFile_warning_c@ha /* 0x803BB480@ha */
/* 80191BC4  38 06 B4 80 */	addi r0, r6, __vt__15dFile_warning_c@l /* 0x803BB480@l */
/* 80191BC8  90 03 00 00 */	stw r0, 0(r3)
/* 80191BCC  3C C0 80 3A */	lis r6, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 80191BD0  38 06 6F 88 */	addi r0, r6, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 80191BD4  90 03 00 08 */	stw r0, 8(r3)
/* 80191BD8  3C C0 80 3C */	lis r6, __vt__16dDlst_FileWarn_c@ha /* 0x803BB44C@ha */
/* 80191BDC  38 06 B4 4C */	addi r0, r6, __vt__16dDlst_FileWarn_c@l /* 0x803BB44C@l */
/* 80191BE0  90 03 00 08 */	stw r0, 8(r3)
/* 80191BE4  90 83 00 04 */	stw r4, 4(r3)
/* 80191BE8  98 A3 00 3E */	stb r5, 0x3e(r3)
/* 80191BEC  48 00 01 09 */	bl screenSet__15dFile_warning_cFv
/* 80191BF0  38 00 00 00 */	li r0, 0
/* 80191BF4  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80191BF8  C0 02 9F D8 */	lfs f0, lit_3741(r2)
/* 80191BFC  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80191C00  7F E3 FB 78 */	mr r3, r31
/* 80191C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80191C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80191C0C  7C 08 03 A6 */	mtlr r0
/* 80191C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80191C14  4E 80 00 20 */	blr 
