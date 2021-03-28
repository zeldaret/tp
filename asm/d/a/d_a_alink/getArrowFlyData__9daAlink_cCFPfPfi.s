lbl_800DE64C:
/* 800DE64C  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800DE650  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DE654  40 82 00 20 */	bne lbl_800DE674
/* 800DE658  3C 60 80 39 */	lis r3, m__17daAlinkHIO_bow_c0@ha
/* 800DE65C  38 63 E6 58 */	addi r3, r3, m__17daAlinkHIO_bow_c0@l
/* 800DE660  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 800DE664  D0 04 00 00 */	stfs f0, 0(r4)
/* 800DE668  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 800DE66C  D0 05 00 00 */	stfs f0, 0(r5)
/* 800DE670  4E 80 00 20 */	blr 
lbl_800DE674:
/* 800DE674  3C E0 80 40 */	lis r7, g_dComIfG_gameInfo@ha
/* 800DE678  38 E7 61 C0 */	addi r7, r7, g_dComIfG_gameInfo@l
/* 800DE67C  80 07 5F 18 */	lwz r0, 0x5f18(r7)
/* 800DE680  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 800DE684  41 82 00 20 */	beq lbl_800DE6A4
/* 800DE688  3C 60 80 39 */	lis r3, m__17daAlinkHIO_bow_c0@ha
/* 800DE68C  38 63 E6 58 */	addi r3, r3, m__17daAlinkHIO_bow_c0@l
/* 800DE690  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 800DE694  D0 04 00 00 */	stfs f0, 0(r4)
/* 800DE698  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 800DE69C  D0 05 00 00 */	stfs f0, 0(r5)
/* 800DE6A0  4E 80 00 20 */	blr 
lbl_800DE6A4:
/* 800DE6A4  A8 03 30 1C */	lha r0, 0x301c(r3)
/* 800DE6A8  2C 00 00 00 */	cmpwi r0, 0
/* 800DE6AC  41 82 00 0C */	beq lbl_800DE6B8
/* 800DE6B0  2C 06 00 00 */	cmpwi r6, 0
/* 800DE6B4  41 82 00 48 */	beq lbl_800DE6FC
lbl_800DE6B8:
/* 800DE6B8  A8 03 30 1E */	lha r0, 0x301e(r3)
/* 800DE6BC  2C 00 00 01 */	cmpwi r0, 1
/* 800DE6C0  40 82 00 20 */	bne lbl_800DE6E0
/* 800DE6C4  3C 60 80 39 */	lis r3, m__17daAlinkHIO_bow_c0@ha
/* 800DE6C8  38 63 E6 58 */	addi r3, r3, m__17daAlinkHIO_bow_c0@l
/* 800DE6CC  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 800DE6D0  D0 04 00 00 */	stfs f0, 0(r4)
/* 800DE6D4  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 800DE6D8  D0 05 00 00 */	stfs f0, 0(r5)
/* 800DE6DC  4E 80 00 20 */	blr 
lbl_800DE6E0:
/* 800DE6E0  3C 60 80 39 */	lis r3, m__17daAlinkHIO_bow_c0@ha
/* 800DE6E4  38 63 E6 58 */	addi r3, r3, m__17daAlinkHIO_bow_c0@l
/* 800DE6E8  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800DE6EC  D0 04 00 00 */	stfs f0, 0(r4)
/* 800DE6F0  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800DE6F4  D0 05 00 00 */	stfs f0, 0(r5)
/* 800DE6F8  4E 80 00 20 */	blr 
lbl_800DE6FC:
/* 800DE6FC  A8 03 30 1E */	lha r0, 0x301e(r3)
/* 800DE700  2C 00 00 01 */	cmpwi r0, 1
/* 800DE704  40 82 00 20 */	bne lbl_800DE724
/* 800DE708  3C 60 80 39 */	lis r3, m__17daAlinkHIO_bow_c0@ha
/* 800DE70C  38 63 E6 58 */	addi r3, r3, m__17daAlinkHIO_bow_c0@l
/* 800DE710  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 800DE714  D0 04 00 00 */	stfs f0, 0(r4)
/* 800DE718  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 800DE71C  D0 05 00 00 */	stfs f0, 0(r5)
/* 800DE720  4E 80 00 20 */	blr 
lbl_800DE724:
/* 800DE724  3C 60 80 39 */	lis r3, m__17daAlinkHIO_bow_c0@ha
/* 800DE728  38 63 E6 58 */	addi r3, r3, m__17daAlinkHIO_bow_c0@l
/* 800DE72C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800DE730  D0 04 00 00 */	stfs f0, 0(r4)
/* 800DE734  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 800DE738  D0 05 00 00 */	stfs f0, 0(r5)
/* 800DE73C  4E 80 00 20 */	blr 
