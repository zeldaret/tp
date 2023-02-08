lbl_8015D9F0:
/* 8015D9F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015D9F4  7C 08 02 A6 */	mflr r0
/* 8015D9F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015D9FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015DA00  7C 7F 1B 78 */	mr r31, r3
/* 8015DA04  48 00 00 A9 */	bl initFlag__8daItem_cFv
/* 8015DA08  7F E3 FB 78 */	mr r3, r31
/* 8015DA0C  48 00 01 E5 */	bl initScale__8daItem_cFv
/* 8015DA10  7F E3 FB 78 */	mr r3, r31
/* 8015DA14  38 80 00 00 */	li r4, 0
/* 8015DA18  48 00 02 29 */	bl initSpeed__8daItem_cFi
/* 8015DA1C  7F E3 FB 78 */	mr r3, r31
/* 8015DA20  48 00 04 19 */	bl initAngle__8daItem_cFv
/* 8015DA24  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015DA28  4B F3 DD 55 */	bl isHeart__FUc
/* 8015DA2C  2C 03 00 00 */	cmpwi r3, 0
/* 8015DA30  41 82 00 5C */	beq lbl_8015DA8C
/* 8015DA34  C0 22 9B C4 */	lfs f1, lit_5050(r2)
/* 8015DA38  48 10 9F 1D */	bl cM_rndF__Ff
/* 8015DA3C  C0 02 9B CC */	lfs f0, lit_5110(r2)
/* 8015DA40  EC 20 08 2A */	fadds f1, f0, f1
/* 8015DA44  C0 02 9B 98 */	lfs f0, lit_4404(r2)
/* 8015DA48  EC 01 00 28 */	fsubs f0, f1, f0
/* 8015DA4C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8015DA50  7F E3 FB 78 */	mr r3, r31
/* 8015DA54  4B FF D6 65 */	bl getData__12daItemBase_cFv
/* 8015DA58  A8 03 00 2A */	lha r0, 0x2a(r3)
/* 8015DA5C  C8 22 9B B0 */	lfd f1, lit_4668(r2)
/* 8015DA60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8015DA64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015DA68  3C 00 43 30 */	lis r0, 0x4330
/* 8015DA6C  90 01 00 08 */	stw r0, 8(r1)
/* 8015DA70  C8 01 00 08 */	lfd f0, 8(r1)
/* 8015DA74  EC 20 08 28 */	fsubs f1, f0, f1
/* 8015DA78  48 10 9F 15 */	bl cM_rndFX__Ff
/* 8015DA7C  FC 00 08 1E */	fctiwz f0, f1
/* 8015DA80  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8015DA84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015DA88  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
lbl_8015DA8C:
/* 8015DA8C  38 00 00 00 */	li r0, 0
/* 8015DA90  98 1F 09 49 */	stb r0, 0x949(r31)
/* 8015DA94  38 60 00 01 */	li r3, 1
/* 8015DA98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015DA9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015DAA0  7C 08 03 A6 */	mtlr r0
/* 8015DAA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8015DAA8  4E 80 00 20 */	blr 
