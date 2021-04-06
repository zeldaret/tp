lbl_8013712C:
/* 8013712C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80137130  7C 08 02 A6 */	mflr r0
/* 80137134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80137138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013713C  7C 7F 1B 78 */	mr r31, r3
/* 80137140  C0 23 1F E0 */	lfs f1, 0x1fe0(r3)
/* 80137144  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 80137148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013714C  4C 41 13 82 */	cror 2, 1, 2
/* 80137150  40 82 00 08 */	bne lbl_80137158
/* 80137154  EC 21 00 28 */	fsubs f1, f1, f0
lbl_80137158:
/* 80137158  C0 02 97 A4 */	lfs f0, lit_49938(r2)
/* 8013715C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80137160  48 13 04 85 */	bl cM_rad2s__Ff
/* 80137164  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80137168  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8013716C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80137170  7C 43 04 2E */	lfsx f2, r3, r0
/* 80137174  3C 60 80 39 */	lis r3, m__19daAlinkHIO_wlLie_c0@ha /* 0x8038F138@ha */
/* 80137178  38 63 F1 38 */	addi r3, r3, m__19daAlinkHIO_wlLie_c0@l /* 0x8038F138@l */
/* 8013717C  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80137180  C0 1F 1F DC */	lfs f0, 0x1fdc(r31)
/* 80137184  EC 01 00 32 */	fmuls f0, f1, f0
/* 80137188  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8013718C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80137190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80137194  7C 08 03 A6 */	mtlr r0
/* 80137198  38 21 00 10 */	addi r1, r1, 0x10
/* 8013719C  4E 80 00 20 */	blr 
