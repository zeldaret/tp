lbl_801BE670:
/* 801BE670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BE674  7C 08 02 A6 */	mflr r0
/* 801BE678  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BE67C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801BE680  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801BE684  7C 7E 1B 78 */	mr r30, r3
/* 801BE688  3B E0 00 01 */	li r31, 1
/* 801BE68C  38 80 00 00 */	li r4, 0
/* 801BE690  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801BE694  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801BE698  A8 A3 00 96 */	lha r5, 0x96(r3)
/* 801BE69C  A8 1E 01 64 */	lha r0, 0x164(r30)
/* 801BE6A0  7C 00 28 00 */	cmpw r0, r5
/* 801BE6A4  40 82 00 08 */	bne lbl_801BE6AC
/* 801BE6A8  38 80 00 01 */	li r4, 1
lbl_801BE6AC:
/* 801BE6AC  A8 7E 01 64 */	lha r3, 0x164(r30)
/* 801BE6B0  38 03 FF FF */	addi r0, r3, -1
/* 801BE6B4  B0 1E 01 64 */	sth r0, 0x164(r30)
/* 801BE6B8  A8 DE 01 64 */	lha r6, 0x164(r30)
/* 801BE6BC  C8 42 A5 F8 */	lfd f2, lit_4108(r2)
/* 801BE6C0  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 801BE6C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BE6C8  3C 60 43 30 */	lis r3, 0x4330
/* 801BE6CC  90 61 00 08 */	stw r3, 8(r1)
/* 801BE6D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801BE6D4  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BE6D8  7C A0 07 34 */	extsh r0, r5
/* 801BE6DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BE6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BE6E4  90 61 00 10 */	stw r3, 0x10(r1)
/* 801BE6E8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801BE6EC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801BE6F0  EC 41 00 24 */	fdivs f2, f1, f0
/* 801BE6F4  7C C0 07 35 */	extsh. r0, r6
/* 801BE6F8  41 81 00 10 */	bgt lbl_801BE708
/* 801BE6FC  38 00 00 00 */	li r0, 0
/* 801BE700  B0 1E 01 64 */	sth r0, 0x164(r30)
/* 801BE704  48 00 00 08 */	b lbl_801BE70C
lbl_801BE708:
/* 801BE708  3B E0 00 00 */	li r31, 0
lbl_801BE70C:
/* 801BE70C  88 1E 01 7A */	lbz r0, 0x17a(r30)
/* 801BE710  28 00 00 01 */	cmplwi r0, 1
/* 801BE714  40 82 00 24 */	bne lbl_801BE738
/* 801BE718  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BE71C  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BE720  C0 02 A6 24 */	lfs f0, lit_4784(r2)
/* 801BE724  EC 01 00 32 */	fmuls f0, f1, f0
/* 801BE728  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 801BE72C  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BE730  D0 1E 01 08 */	stfs f0, 0x108(r30)
/* 801BE734  48 00 00 78 */	b lbl_801BE7AC
lbl_801BE738:
/* 801BE738  28 00 00 03 */	cmplwi r0, 3
/* 801BE73C  40 82 00 24 */	bne lbl_801BE760
/* 801BE740  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BE744  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BE748  C0 02 A6 44 */	lfs f0, lit_4926(r2)
/* 801BE74C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801BE750  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 801BE754  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BE758  D0 1E 01 08 */	stfs f0, 0x108(r30)
/* 801BE75C  48 00 00 50 */	b lbl_801BE7AC
lbl_801BE760:
/* 801BE760  28 00 00 02 */	cmplwi r0, 2
/* 801BE764  40 82 00 24 */	bne lbl_801BE788
/* 801BE768  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BE76C  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 801BE770  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BE774  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BE778  C0 02 A6 28 */	lfs f0, lit_4785(r2)
/* 801BE77C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801BE780  D0 1E 01 08 */	stfs f0, 0x108(r30)
/* 801BE784  48 00 00 28 */	b lbl_801BE7AC
lbl_801BE788:
/* 801BE788  28 00 00 00 */	cmplwi r0, 0
/* 801BE78C  40 82 00 20 */	bne lbl_801BE7AC
/* 801BE790  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BE794  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 801BE798  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BE79C  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BE7A0  C0 02 A6 48 */	lfs f0, lit_4927(r2)
/* 801BE7A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801BE7A8  D0 1E 01 08 */	stfs f0, 0x108(r30)
lbl_801BE7AC:
/* 801BE7AC  D0 5E 01 0C */	stfs f2, 0x10c(r30)
/* 801BE7B0  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BE7B4  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 801BE7B8  4B FF BE 55 */	bl setAllAlphaRate__14dMenu_DmapBg_cFfb
/* 801BE7BC  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BE7C0  4B FF C2 8D */	bl decGoldFrameAlphaRate__14dMenu_DmapBg_cFv
/* 801BE7C4  7F E3 FB 78 */	mr r3, r31
/* 801BE7C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801BE7CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801BE7D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BE7D4  7C 08 03 A6 */	mtlr r0
/* 801BE7D8  38 21 00 20 */	addi r1, r1, 0x20
/* 801BE7DC  4E 80 00 20 */	blr 
