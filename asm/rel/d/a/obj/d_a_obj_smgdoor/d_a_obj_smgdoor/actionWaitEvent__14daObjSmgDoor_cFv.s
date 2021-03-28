lbl_80CDC700:
/* 80CDC700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDC704  7C 08 02 A6 */	mflr r0
/* 80CDC708  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDC70C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDC710  7C 7F 1B 78 */	mr r31, r3
/* 80CDC714  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CDC718  28 00 00 03 */	cmplwi r0, 3
/* 80CDC71C  40 82 00 38 */	bne lbl_80CDC754
/* 80CDC720  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80CDC724  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CDC728  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80CDC72C  28 00 00 01 */	cmplwi r0, 1
/* 80CDC730  40 82 00 10 */	bne lbl_80CDC740
/* 80CDC734  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80CDC738  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80CDC73C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80CDC740:
/* 80CDC740  38 00 00 01 */	li r0, 1
/* 80CDC744  98 1F 05 EA */	stb r0, 0x5ea(r31)
/* 80CDC748  7F E3 FB 78 */	mr r3, r31
/* 80CDC74C  4B FF FD FD */	bl setPos__14daObjSmgDoor_cFv
/* 80CDC750  48 00 00 2C */	b lbl_80CDC77C
lbl_80CDC754:
/* 80CDC754  48 00 02 21 */	bl checkOpen__14daObjSmgDoor_cFv
/* 80CDC758  2C 03 00 00 */	cmpwi r3, 0
/* 80CDC75C  41 82 00 20 */	beq lbl_80CDC77C
/* 80CDC760  A8 1F 05 EC */	lha r0, 0x5ec(r31)
/* 80CDC764  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 80CDC768  88 1F 05 EB */	lbz r0, 0x5eb(r31)
/* 80CDC76C  98 1F 00 FE */	stb r0, 0xfe(r31)
/* 80CDC770  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CDC774  60 00 00 04 */	ori r0, r0, 4
/* 80CDC778  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CDC77C:
/* 80CDC77C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDC780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDC784  7C 08 03 A6 */	mtlr r0
/* 80CDC788  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDC78C  4E 80 00 20 */	blr 
