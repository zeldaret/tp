lbl_8025343C:
/* 8025343C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80253440  7C 08 02 A6 */	mflr r0
/* 80253444  90 01 00 14 */	stw r0, 0x14(r1)
/* 80253448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025344C  7C 7F 1B 78 */	mr r31, r3
/* 80253450  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 80253454  38 83 6F 88 */	addi r4, r3, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 80253458  90 9F 00 D8 */	stw r4, 0xd8(r31)
/* 8025345C  3C 60 80 3C */	lis r3, __vt__16dDlst_snapShot_c@ha /* 0x803C2DEC@ha */
/* 80253460  38 03 2D EC */	addi r0, r3, __vt__16dDlst_snapShot_c@l /* 0x803C2DEC@l */
/* 80253464  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 80253468  90 9F 00 DC */	stw r4, 0xdc(r31)
/* 8025346C  3C 60 80 3C */	lis r3, __vt__15dOvlpFd3_dlst_c@ha /* 0x803C2DDC@ha */
/* 80253470  38 03 2D DC */	addi r0, r3, __vt__15dOvlpFd3_dlst_c@l /* 0x803C2DDC@l */
/* 80253474  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 80253478  3C 60 80 3C */	lis r3, lit_3812@ha /* 0x803C2D70@ha */
/* 8025347C  38 83 2D 70 */	addi r4, r3, lit_3812@l /* 0x803C2D70@l */
/* 80253480  80 64 00 00 */	lwz r3, 0(r4)
/* 80253484  80 04 00 04 */	lwz r0, 4(r4)
/* 80253488  90 7F 00 CC */	stw r3, 0xcc(r31)
/* 8025348C  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80253490  80 04 00 08 */	lwz r0, 8(r4)
/* 80253494  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 80253498  38 00 00 00 */	li r0, 0
/* 8025349C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802534A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802534A4  98 03 5E B8 */	stb r0, 0x5eb8(r3)
/* 802534A8  38 00 00 02 */	li r0, 2
/* 802534AC  98 1F 01 1D */	stb r0, 0x11d(r31)
/* 802534B0  88 03 4E 1E */	lbz r0, 0x4e1e(r3)
/* 802534B4  98 1F 01 1F */	stb r0, 0x11f(r31)
/* 802534B8  88 1F 01 1F */	lbz r0, 0x11f(r31)
/* 802534BC  28 00 00 00 */	cmplwi r0, 0
/* 802534C0  40 82 00 0C */	bne lbl_802534CC
/* 802534C4  38 00 00 01 */	li r0, 1
/* 802534C8  98 1F 01 1F */	stb r0, 0x11f(r31)
lbl_802534CC:
/* 802534CC  4B F2 E1 75 */	bl dCam_getBody__Fv
/* 802534D0  4B F0 E0 01 */	bl Stop__9dCamera_cFv
/* 802534D4  88 1F 01 1F */	lbz r0, 0x11f(r31)
/* 802534D8  7C 03 0E 70 */	srawi r3, r0, 1
/* 802534DC  38 83 00 5A */	addi r4, r3, 0x5a
/* 802534E0  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 802534E4  80 63 00 04 */	lwz r3, 4(r3)
/* 802534E8  28 03 00 00 */	cmplwi r3, 0
/* 802534EC  41 82 00 14 */	beq lbl_80253500
/* 802534F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802534F4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802534F8  7D 89 03 A6 */	mtctr r12
/* 802534FC  4E 80 04 21 */	bctrl 
lbl_80253500:
/* 80253500  7F E3 FB 78 */	mr r3, r31
/* 80253504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80253508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025350C  7C 08 03 A6 */	mtlr r0
/* 80253510  38 21 00 10 */	addi r1, r1, 0x10
/* 80253514  4E 80 00 20 */	blr 
