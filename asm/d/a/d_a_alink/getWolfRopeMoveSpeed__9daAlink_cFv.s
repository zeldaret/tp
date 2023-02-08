lbl_801316A4:
/* 801316A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801316A8  7C 08 02 A6 */	mflr r0
/* 801316AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801316B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801316B4  7C 7F 1B 78 */	mr r31, r3
/* 801316B8  C0 23 1F E0 */	lfs f1, 0x1fe0(r3)
/* 801316BC  C0 02 97 70 */	lfs f0, lit_47597(r2)
/* 801316C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801316C4  4C 41 13 82 */	cror 2, 1, 2
/* 801316C8  40 82 00 08 */	bne lbl_801316D0
/* 801316CC  EC 21 00 28 */	fsubs f1, f1, f0
lbl_801316D0:
/* 801316D0  C0 02 97 74 */	lfs f0, lit_47598(r2)
/* 801316D4  EC 20 00 72 */	fmuls f1, f0, f1
/* 801316D8  48 13 5F 0D */	bl cM_rad2s__Ff
/* 801316DC  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 801316E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801316E4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 801316E8  7C 43 04 2E */	lfsx f2, r3, r0
/* 801316EC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlRope_c0@ha /* 0x8038F46C@ha */
/* 801316F0  38 63 F4 6C */	addi r3, r3, m__20daAlinkHIO_wlRope_c0@l /* 0x8038F46C@l */
/* 801316F4  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 801316F8  C0 1F 1F DC */	lfs f0, 0x1fdc(r31)
/* 801316FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80131700  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80131704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80131708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013170C  7C 08 03 A6 */	mtlr r0
/* 80131710  38 21 00 10 */	addi r1, r1, 0x10
/* 80131714  4E 80 00 20 */	blr 
