lbl_80AA75F4:
/* 80AA75F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA75F8  7C 08 02 A6 */	mflr r0
/* 80AA75FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA7600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA7604  7C 7F 1B 78 */	mr r31, r3
/* 80AA7608  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80AA760C  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 80AA7610  28 00 00 01 */	cmplwi r0, 1
/* 80AA7614  40 82 00 10 */	bne lbl_80AA7624
/* 80AA7618  38 00 00 01 */	li r0, 1
/* 80AA761C  90 1F 0A 3C */	stw r0, 0xa3c(r31)
/* 80AA7620  48 00 00 30 */	b lbl_80AA7650
lbl_80AA7624:
/* 80AA7624  28 00 00 02 */	cmplwi r0, 2
/* 80AA7628  40 82 00 10 */	bne lbl_80AA7638
/* 80AA762C  38 00 00 00 */	li r0, 0
/* 80AA7630  90 1F 0A 3C */	stw r0, 0xa3c(r31)
/* 80AA7634  48 00 00 1C */	b lbl_80AA7650
lbl_80AA7638:
/* 80AA7638  38 60 00 00 */	li r3, 0
/* 80AA763C  38 80 00 02 */	li r4, 2
/* 80AA7640  48 00 0F 89 */	bl func_80AA85C8
/* 80AA7644  30 03 FF FF */	addic r0, r3, -1
/* 80AA7648  7C 00 19 10 */	subfe r0, r0, r3
/* 80AA764C  90 1F 0A 3C */	stw r0, 0xa3c(r31)
lbl_80AA7650:
/* 80AA7650  38 80 00 00 */	li r4, 0
/* 80AA7654  80 1F 0A 3C */	lwz r0, 0xa3c(r31)
/* 80AA7658  28 00 00 01 */	cmplwi r0, 1
/* 80AA765C  40 82 00 48 */	bne lbl_80AA76A4
/* 80AA7660  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AA7664  54 00 27 BE */	rlwinm r0, r0, 4, 0x1e, 0x1f
/* 80AA7668  28 00 00 01 */	cmplwi r0, 1
/* 80AA766C  40 82 00 0C */	bne lbl_80AA7678
/* 80AA7670  38 80 00 00 */	li r4, 0
/* 80AA7674  48 00 00 80 */	b lbl_80AA76F4
lbl_80AA7678:
/* 80AA7678  28 00 00 02 */	cmplwi r0, 2
/* 80AA767C  40 82 00 0C */	bne lbl_80AA7688
/* 80AA7680  38 80 00 01 */	li r4, 1
/* 80AA7684  48 00 00 70 */	b lbl_80AA76F4
lbl_80AA7688:
/* 80AA7688  38 60 00 00 */	li r3, 0
/* 80AA768C  38 80 00 02 */	li r4, 2
/* 80AA7690  48 00 0F 39 */	bl func_80AA85C8
/* 80AA7694  7C 60 00 34 */	cntlzw r0, r3
/* 80AA7698  54 00 D9 7E */	srwi r0, r0, 5
/* 80AA769C  7C 04 03 78 */	mr r4, r0
/* 80AA76A0  48 00 00 54 */	b lbl_80AA76F4
lbl_80AA76A4:
/* 80AA76A4  28 00 00 00 */	cmplwi r0, 0
/* 80AA76A8  40 82 00 4C */	bne lbl_80AA76F4
/* 80AA76AC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AA76B0  54 00 17 BE */	srwi r0, r0, 0x1e
/* 80AA76B4  28 00 00 01 */	cmplwi r0, 1
/* 80AA76B8  40 82 00 0C */	bne lbl_80AA76C4
/* 80AA76BC  38 80 00 02 */	li r4, 2
/* 80AA76C0  48 00 00 34 */	b lbl_80AA76F4
lbl_80AA76C4:
/* 80AA76C4  28 00 00 02 */	cmplwi r0, 2
/* 80AA76C8  40 82 00 0C */	bne lbl_80AA76D4
/* 80AA76CC  38 80 00 03 */	li r4, 3
/* 80AA76D0  48 00 00 24 */	b lbl_80AA76F4
lbl_80AA76D4:
/* 80AA76D4  38 60 00 00 */	li r3, 0
/* 80AA76D8  38 80 00 02 */	li r4, 2
/* 80AA76DC  48 00 0E ED */	bl func_80AA85C8
/* 80AA76E0  2C 03 00 00 */	cmpwi r3, 0
/* 80AA76E4  38 00 00 03 */	li r0, 3
/* 80AA76E8  41 82 00 08 */	beq lbl_80AA76F0
/* 80AA76EC  38 00 00 02 */	li r0, 2
lbl_80AA76F0:
/* 80AA76F0  7C 04 03 78 */	mr r4, r0
lbl_80AA76F4:
/* 80AA76F4  7F E3 FB 78 */	mr r3, r31
/* 80AA76F8  80 BF 0A 24 */	lwz r5, 0xa24(r31)
/* 80AA76FC  4B 6A EB 4D */	bl getAnmP__9daNpcCd_cFii
/* 80AA7700  7C 64 1B 78 */	mr r4, r3
/* 80AA7704  7F E3 FB 78 */	mr r3, r31
/* 80AA7708  3C A0 80 AB */	lis r5, lit_3963@ha /* 0x80AA8A18@ha */
/* 80AA770C  C0 25 8A 18 */	lfs f1, lit_3963@l(r5)  /* 0x80AA8A18@l */
/* 80AA7710  3C A0 80 AB */	lis r5, lit_3964@ha /* 0x80AA8A1C@ha */
/* 80AA7714  C0 45 8A 1C */	lfs f2, lit_3964@l(r5)  /* 0x80AA8A1C@l */
/* 80AA7718  38 A0 00 02 */	li r5, 2
/* 80AA771C  38 C0 00 00 */	li r6, 0
/* 80AA7720  38 E0 FF FF */	li r7, -1
/* 80AA7724  4B 6A F6 FD */	bl setAnm__9daNpcCd_cFP18J3DAnmTransformKeyffiii
/* 80AA7728  38 00 00 00 */	li r0, 0
/* 80AA772C  98 1F 0A 43 */	stb r0, 0xa43(r31)
/* 80AA7730  38 00 00 01 */	li r0, 1
/* 80AA7734  98 1F 0A 42 */	stb r0, 0xa42(r31)
/* 80AA7738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA773C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA7740  7C 08 03 A6 */	mtlr r0
/* 80AA7744  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA7748  4E 80 00 20 */	blr 
