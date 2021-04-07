lbl_800E75EC:
/* 800E75EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E75F0  7C 08 02 A6 */	mflr r0
/* 800E75F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E75F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E75FC  93 C1 00 08 */	stw r30, 8(r1)
/* 800E7600  7C 7E 1B 78 */	mr r30, r3
/* 800E7604  7C 9F 23 79 */	or. r31, r4, r4
/* 800E7608  41 82 00 20 */	beq lbl_800E7628
/* 800E760C  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800E7610  28 00 00 FF */	cmplwi r0, 0xff
/* 800E7614  41 82 00 14 */	beq lbl_800E7628
/* 800E7618  38 80 00 76 */	li r4, 0x76
/* 800E761C  38 A0 00 00 */	li r5, 0
/* 800E7620  4B FD B7 BD */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 800E7624  48 00 00 A4 */	b lbl_800E76C8
lbl_800E7628:
/* 800E7628  7F C3 F3 78 */	mr r3, r30
/* 800E762C  38 80 00 76 */	li r4, 0x76
/* 800E7630  4B FD A9 3D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E7634  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E7638  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800E763C  7F C3 F3 78 */	mr r3, r30
/* 800E7640  38 80 00 EE */	li r4, 0xee
/* 800E7644  3C A0 80 39 */	lis r5, m__20daAlinkHIO_pickUp_c0@ha /* 0x8038E840@ha */
/* 800E7648  38 A5 E8 40 */	addi r5, r5, m__20daAlinkHIO_pickUp_c0@l /* 0x8038E840@l */
/* 800E764C  38 A5 00 14 */	addi r5, r5, 0x14
/* 800E7650  4B FC 5A A5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800E7654  80 7E 28 28 */	lwz r3, 0x2828(r30)
/* 800E7658  28 03 00 00 */	cmplwi r3, 0
/* 800E765C  41 82 00 20 */	beq lbl_800E767C
/* 800E7660  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800E7664  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
/* 800E7668  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 800E766C  D0 1E 37 CC */	stfs f0, 0x37cc(r30)
/* 800E7670  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 800E7674  D0 1E 37 D0 */	stfs f0, 0x37d0(r30)
/* 800E7678  48 00 00 1C */	b lbl_800E7694
lbl_800E767C:
/* 800E767C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800E7680  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
/* 800E7684  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800E7688  D0 1E 37 CC */	stfs f0, 0x37cc(r30)
/* 800E768C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800E7690  D0 1E 37 D0 */	stfs f0, 0x37d0(r30)
lbl_800E7694:
/* 800E7694  38 00 00 01 */	li r0, 1
/* 800E7698  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800E769C  B3 FE 30 0C */	sth r31, 0x300c(r30)
/* 800E76A0  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800E76A4  2C 00 00 00 */	cmpwi r0, 0
/* 800E76A8  41 82 00 10 */	beq lbl_800E76B8
/* 800E76AC  38 00 00 72 */	li r0, 0x72
/* 800E76B0  B0 1E 2F DC */	sth r0, 0x2fdc(r30)
/* 800E76B4  48 00 00 10 */	b lbl_800E76C4
lbl_800E76B8:
/* 800E76B8  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800E76BC  64 00 00 40 */	oris r0, r0, 0x40
/* 800E76C0  90 1E 05 80 */	stw r0, 0x580(r30)
lbl_800E76C4:
/* 800E76C4  38 60 00 01 */	li r3, 1
lbl_800E76C8:
/* 800E76C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E76CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E76D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E76D4  7C 08 03 A6 */	mtlr r0
/* 800E76D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E76DC  4E 80 00 20 */	blr 
