lbl_80111894:
/* 80111894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80111898  7C 08 02 A6 */	mflr r0
/* 8011189C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801118A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801118A4  7C 7F 1B 78 */	mr r31, r3
/* 801118A8  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 801118AC  28 00 00 FF */	cmplwi r0, 0xff
/* 801118B0  41 82 00 14 */	beq lbl_801118C4
/* 801118B4  38 80 00 B9 */	li r4, 0xb9
/* 801118B8  80 BF 27 F4 */	lwz r5, 0x27f4(r31)
/* 801118BC  4B FB 15 21 */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 801118C0  48 00 01 04 */	b lbl_801119C4
lbl_801118C4:
/* 801118C4  38 80 00 B9 */	li r4, 0xb9
/* 801118C8  4B FB 06 A5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 801118CC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801118D0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 801118D4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801118D8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801118DC  38 00 00 04 */	li r0, 4
/* 801118E0  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 801118E4  7F E3 FB 78 */	mr r3, r31
/* 801118E8  38 80 01 08 */	li r4, 0x108
/* 801118EC  3C A0 80 39 */	lis r5, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 801118F0  38 A5 E9 0C */	addi r5, r5, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 801118F4  38 A5 00 50 */	addi r5, r5, 0x50
/* 801118F8  4B F9 B7 FD */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 801118FC  38 00 00 FE */	li r0, 0xfe
/* 80111900  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 80111904  38 7F 28 0C */	addi r3, r31, 0x280c
/* 80111908  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8011190C  48 04 D3 AD */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 80111910  80 BF 27 F4 */	lwz r5, 0x27f4(r31)
/* 80111914  88 05 04 99 */	lbz r0, 0x499(r5)
/* 80111918  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 8011191C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80111920  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 80111924  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80111928  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011192C  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 80111930  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80111934  7C 03 07 74 */	extsb r3, r0
/* 80111938  7C 03 00 D0 */	neg r0, r3
/* 8011193C  7C 00 18 78 */	andc r0, r0, r3
/* 80111940  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80111944  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 80111948  A8 65 04 E6 */	lha r3, 0x4e6(r5)
/* 8011194C  3C 63 00 01 */	addis r3, r3, 1
/* 80111950  38 03 80 00 */	addi r0, r3, -32768
/* 80111954  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 80111958  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8011195C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80111960  A8 05 04 E6 */	lha r0, 0x4e6(r5)
/* 80111964  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80111968  7C 64 02 14 */	add r3, r4, r0
/* 8011196C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80111970  C0 25 04 D8 */	lfs f1, 0x4d8(r5)
/* 80111974  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 80111978  EC 02 00 32 */	fmuls f0, f2, f0
/* 8011197C  EC 81 00 2A */	fadds f4, f1, f0
/* 80111980  C0 05 04 D4 */	lfs f0, 0x4d4(r5)
/* 80111984  EC 62 00 2A */	fadds f3, f2, f0
/* 80111988  7C 04 04 2E */	lfsx f0, r4, r0
/* 8011198C  C0 25 04 D0 */	lfs f1, 0x4d0(r5)
/* 80111990  EC 02 00 32 */	fmuls f0, f2, f0
/* 80111994  EC 01 00 2A */	fadds f0, f1, f0
/* 80111998  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 8011199C  D0 7F 37 CC */	stfs f3, 0x37cc(r31)
/* 801119A0  D0 9F 37 D0 */	stfs f4, 0x37d0(r31)
/* 801119A4  7F E3 FB 78 */	mr r3, r31
/* 801119A8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001001D@ha */
/* 801119AC  38 84 00 1D */	addi r4, r4, 0x001D /* 0x0001001D@l */
/* 801119B0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 801119B4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 801119B8  7D 89 03 A6 */	mtctr r12
/* 801119BC  4E 80 04 21 */	bctrl 
/* 801119C0  38 60 00 01 */	li r3, 1
lbl_801119C4:
/* 801119C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801119C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801119CC  7C 08 03 A6 */	mtlr r0
/* 801119D0  38 21 00 10 */	addi r1, r1, 0x10
/* 801119D4  4E 80 00 20 */	blr 
