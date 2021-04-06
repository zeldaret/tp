lbl_800D6374:
/* 800D6374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D6378  7C 08 02 A6 */	mflr r0
/* 800D637C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D6380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D6384  7C 7F 1B 78 */	mr r31, r3
/* 800D6388  80 03 06 14 */	lwz r0, 0x614(r3)
/* 800D638C  28 00 00 56 */	cmplwi r0, 0x56
/* 800D6390  40 82 00 20 */	bne lbl_800D63B0
/* 800D6394  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800D6398  28 00 00 30 */	cmplwi r0, 0x30
/* 800D639C  41 82 00 0C */	beq lbl_800D63A8
/* 800D63A0  28 00 00 31 */	cmplwi r0, 0x31
/* 800D63A4  40 82 00 0C */	bne lbl_800D63B0
lbl_800D63A8:
/* 800D63A8  38 60 00 01 */	li r3, 1
/* 800D63AC  48 00 00 C4 */	b lbl_800D6470
lbl_800D63B0:
/* 800D63B0  7F E3 FB 78 */	mr r3, r31
/* 800D63B4  38 80 00 30 */	li r4, 0x30
/* 800D63B8  4B FE BB B5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D63BC  7F E3 FB 78 */	mr r3, r31
/* 800D63C0  38 80 01 8C */	li r4, 0x18c
/* 800D63C4  3C A0 80 39 */	lis r5, m__26daAlinkHIO_cutLargeJump_c0@ha /* 0x8038DE18@ha */
/* 800D63C8  38 A5 DE 18 */	addi r5, r5, m__26daAlinkHIO_cutLargeJump_c0@l /* 0x8038DE18@l */
/* 800D63CC  38 A5 00 14 */	addi r5, r5, 0x14
/* 800D63D0  4B FD 6D 25 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D63D4  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha /* 0x80425544@ha */
/* 800D63D8  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)  /* 0x80425544@l */
/* 800D63DC  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800D63E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D63E4  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800D63E8  C0 03 00 08 */	lfs f0, 8(r3)
/* 800D63EC  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800D63F0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D63F4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D63F8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D63FC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800D6400  38 00 00 00 */	li r0, 0
/* 800D6404  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800D6408  7F E3 FB 78 */	mr r3, r31
/* 800D640C  38 80 00 00 */	li r4, 0
/* 800D6410  38 A0 00 01 */	li r5, 1
/* 800D6414  38 C0 00 01 */	li r6, 1
/* 800D6418  38 E0 00 02 */	li r7, 2
/* 800D641C  3D 00 80 39 */	lis r8, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D6420  39 08 DE 8C */	addi r8, r8, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D6424  C0 28 00 74 */	lfs f1, 0x74(r8)
/* 800D6428  C0 48 00 78 */	lfs f2, 0x78(r8)
/* 800D642C  4B FF B2 5D */	bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
/* 800D6430  7F E3 FB 78 */	mr r3, r31
/* 800D6434  38 80 00 12 */	li r4, 0x12
/* 800D6438  4B FF B0 F5 */	bl setCutType__9daAlink_cFUc
/* 800D643C  7F E3 FB 78 */	mr r3, r31
/* 800D6440  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001009B@ha */
/* 800D6444  38 84 00 9B */	addi r4, r4, 0x009B /* 0x0001009B@l */
/* 800D6448  4B FF BE 3D */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800D644C  7F E3 FB 78 */	mr r3, r31
/* 800D6450  48 04 DC F5 */	bl setCutWaterDropEffect__9daAlink_cFv
/* 800D6454  38 00 00 04 */	li r0, 4
/* 800D6458  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800D645C  38 00 00 00 */	li r0, 0
/* 800D6460  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800D6464  38 00 00 02 */	li r0, 2
/* 800D6468  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800D646C  38 60 00 01 */	li r3, 1
lbl_800D6470:
/* 800D6470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D6474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D6478  7C 08 03 A6 */	mtlr r0
/* 800D647C  38 21 00 10 */	addi r1, r1, 0x10
/* 800D6480  4E 80 00 20 */	blr 
