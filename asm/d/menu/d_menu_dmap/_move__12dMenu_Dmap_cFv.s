lbl_801BDDA4:
/* 801BDDA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BDDA8  7C 08 02 A6 */	mflr r0
/* 801BDDAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BDDB0  39 61 00 20 */	addi r11, r1, 0x20
/* 801BDDB4  48 1A 44 29 */	bl _savegpr_29
/* 801BDDB8  7C 7D 1B 78 */	mr r29, r3
/* 801BDDBC  8B E3 01 7B */	lbz r31, 0x17b(r3)
/* 801BDDC0  80 63 00 EC */	lwz r3, 0xec(r3)
/* 801BDDC4  4B E5 14 09 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801BDDC8  7C 7E 1B 78 */	mr r30, r3
/* 801BDDCC  80 7D 00 08 */	lwz r3, 8(r29)
/* 801BDDD0  4B FF D5 65 */	bl update__14dMenu_DmapBg_cFv
/* 801BDDD4  80 7D 00 08 */	lwz r3, 8(r29)
/* 801BDDD8  38 63 00 04 */	addi r3, r3, 4
/* 801BDDDC  48 00 66 61 */	bl clearIconInfo__16dMenuMapCommon_cFv
/* 801BDDE0  7F A3 EB 78 */	mr r3, r29
/* 801BDDE4  48 00 01 89 */	bl mapControl__12dMenu_Dmap_cFv
/* 801BDDE8  88 1D 01 7E */	lbz r0, 0x17e(r29)
/* 801BDDEC  28 00 00 00 */	cmplwi r0, 0
/* 801BDDF0  40 82 00 C8 */	bne lbl_801BDEB8
/* 801BDDF4  80 7D 00 08 */	lwz r3, 8(r29)
/* 801BDDF8  88 9D 01 70 */	lbz r4, 0x170(r29)
/* 801BDDFC  88 BD 01 71 */	lbz r5, 0x171(r29)
/* 801BDE00  88 DD 01 72 */	lbz r6, 0x172(r29)
/* 801BDE04  38 FD 01 74 */	addi r7, r29, 0x174
/* 801BDE08  89 1D 01 81 */	lbz r8, 0x181(r29)
/* 801BDE0C  4B FF C2 A9 */	bl dpdMove__14dMenu_DmapBg_cFScScScPUcUc
/* 801BDE10  80 9D 00 08 */	lwz r4, 8(r29)
/* 801BDE14  80 04 0C E4 */	lwz r0, 0xce4(r4)
/* 801BDE18  28 00 00 00 */	cmplwi r0, 0
/* 801BDE1C  41 82 00 3C */	beq lbl_801BDE58
/* 801BDE20  38 7D 01 10 */	addi r3, r29, 0x110
/* 801BDE24  88 04 0D D3 */	lbz r0, 0xdd3(r4)
/* 801BDE28  28 00 00 FF */	cmplwi r0, 0xff
/* 801BDE2C  41 82 00 0C */	beq lbl_801BDE38
/* 801BDE30  C0 22 A5 E8 */	lfs f1, lit_3962(r2)
/* 801BDE34  48 00 00 08 */	b lbl_801BDE3C
lbl_801BDE38:
/* 801BDE38  C0 22 A6 54 */	lfs f1, lit_6017(r2)
lbl_801BDE3C:
/* 801BDE3C  C0 42 A5 F4 */	lfs f2, lit_4106(r2)
/* 801BDE40  C0 62 A6 0C */	lfs f3, lit_4249(r2)
/* 801BDE44  48 0B 1B F9 */	bl cLib_addCalc2__FPffff
/* 801BDE48  80 7D 00 08 */	lwz r3, 8(r29)
/* 801BDE4C  80 63 0C E4 */	lwz r3, 0xce4(r3)
/* 801BDE50  C0 3D 01 10 */	lfs f1, 0x110(r29)
/* 801BDE54  48 09 79 7D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801BDE58:
/* 801BDE58  7F A3 EB 78 */	mr r3, r29
/* 801BDE5C  88 1D 01 7B */	lbz r0, 0x17b(r29)
/* 801BDE60  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801BDE64  3C 80 80 3C */	lis r4, move_process@ha /* 0x803BC8A0@ha */
/* 801BDE68  38 04 C8 A0 */	addi r0, r4, move_process@l /* 0x803BC8A0@l */
/* 801BDE6C  7D 80 2A 14 */	add r12, r0, r5
/* 801BDE70  48 1A 42 15 */	bl __ptmf_scall
/* 801BDE74  60 00 00 00 */	nop 
/* 801BDE78  80 7D 00 08 */	lwz r3, 8(r29)
/* 801BDE7C  38 80 00 00 */	li r4, 0
/* 801BDE80  4B FF B1 15 */	bl setCButtonString__14dMenu_DmapBg_cFUl
/* 801BDE84  80 7D 00 08 */	lwz r3, 8(r29)
/* 801BDE88  38 80 00 00 */	li r4, 0
/* 801BDE8C  4B FF B2 31 */	bl setJButtonString__14dMenu_DmapBg_cFUl
/* 801BDE90  88 1D 01 7B */	lbz r0, 0x17b(r29)
/* 801BDE94  7C 00 F8 40 */	cmplw r0, r31
/* 801BDE98  41 82 00 20 */	beq lbl_801BDEB8
/* 801BDE9C  7F A3 EB 78 */	mr r3, r29
/* 801BDEA0  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801BDEA4  3C 80 80 3C */	lis r4, init_process@ha /* 0x803BC828@ha */
/* 801BDEA8  38 04 C8 28 */	addi r0, r4, init_process@l /* 0x803BC828@l */
/* 801BDEAC  7D 80 2A 14 */	add r12, r0, r5
/* 801BDEB0  48 1A 41 D5 */	bl __ptmf_scall
/* 801BDEB4  60 00 00 00 */	nop 
lbl_801BDEB8:
/* 801BDEB8  7F A3 EB 78 */	mr r3, r29
/* 801BDEBC  48 00 00 3D */	bl setMapTexture__12dMenu_Dmap_cFv
/* 801BDEC0  7F A3 EB 78 */	mr r3, r29
/* 801BDEC4  48 00 00 85 */	bl mapBgAnime__12dMenu_Dmap_cFv
/* 801BDEC8  80 7D 00 08 */	lwz r3, 8(r29)
/* 801BDECC  4B FF D5 99 */	bl calcCursor__14dMenu_DmapBg_cFv
/* 801BDED0  80 7D 00 08 */	lwz r3, 8(r29)
/* 801BDED4  4B FF CA A1 */	bl addGoldFrameAlphaRate__14dMenu_DmapBg_cFv
/* 801BDED8  7F C3 F3 78 */	mr r3, r30
/* 801BDEDC  4B E5 12 F1 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801BDEE0  39 61 00 20 */	addi r11, r1, 0x20
/* 801BDEE4  48 1A 43 45 */	bl _restgpr_29
/* 801BDEE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BDEEC  7C 08 03 A6 */	mtlr r0
/* 801BDEF0  38 21 00 20 */	addi r1, r1, 0x20
/* 801BDEF4  4E 80 00 20 */	blr 
