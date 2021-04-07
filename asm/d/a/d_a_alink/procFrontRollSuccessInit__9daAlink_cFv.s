lbl_800C5160:
/* 800C5160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C5164  7C 08 02 A6 */	mflr r0
/* 800C5168  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C516C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C5170  93 C1 00 08 */	stw r30, 8(r1)
/* 800C5174  7C 7E 1B 78 */	mr r30, r3
/* 800C5178  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800C517C  20 00 00 78 */	subfic r0, r0, 0x78
/* 800C5180  7C 00 00 34 */	cntlzw r0, r0
/* 800C5184  54 1F DE 3E */	rlwinm r31, r0, 0x1b, 0x18, 0x1f
/* 800C5188  38 80 00 10 */	li r4, 0x10
/* 800C518C  4B FF CD E1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C5190  7F C3 F3 78 */	mr r3, r30
/* 800C5194  38 80 00 25 */	li r4, 0x25
/* 800C5198  3C A0 80 39 */	lis r5, m__23daAlinkHIO_frontRoll_c0@ha /* 0x8038D7BC@ha */
/* 800C519C  38 A5 D7 BC */	addi r5, r5, m__23daAlinkHIO_frontRoll_c0@l /* 0x8038D7BC@l */
/* 800C51A0  38 A5 00 28 */	addi r5, r5, 0x28
/* 800C51A4  4B FE 7F 51 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C51A8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C51AC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C51B0  2C 1F 00 00 */	cmpwi r31, 0
/* 800C51B4  40 82 00 20 */	bne lbl_800C51D4
/* 800C51B8  7F C3 F3 78 */	mr r3, r30
/* 800C51BC  88 9E 2F A4 */	lbz r4, 0x2fa4(r30)
/* 800C51C0  4B FF CB 2D */	bl setFrontRollCrashShock__9daAlink_cFUc
/* 800C51C4  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800C51C8  60 00 20 00 */	ori r0, r0, 0x2000
/* 800C51CC  90 1E 05 80 */	stw r0, 0x580(r30)
/* 800C51D0  48 00 00 14 */	b lbl_800C51E4
lbl_800C51D4:
/* 800C51D4  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 800C51D8  D0 1E 1F E0 */	stfs f0, 0x1fe0(r30)
/* 800C51DC  80 7E 1F 2C */	lwz r3, 0x1f2c(r30)
/* 800C51E0  D0 03 00 08 */	stfs f0, 8(r3)
lbl_800C51E4:
/* 800C51E4  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha /* 0x80425544@ha */
/* 800C51E8  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)  /* 0x80425544@l */
/* 800C51EC  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800C51F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C51F4  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 800C51F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 800C51FC  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 800C5200  38 00 00 04 */	li r0, 4
/* 800C5204  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800C5208  7F C3 F3 78 */	mr r3, r30
/* 800C520C  38 80 00 01 */	li r4, 1
/* 800C5210  48 05 BF B1 */	bl setFootEffectProcType__9daAlink_cFi
/* 800C5214  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800C5218  3C 63 00 01 */	addis r3, r3, 1
/* 800C521C  38 03 80 00 */	addi r0, r3, -32768
/* 800C5220  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800C5224  38 60 00 01 */	li r3, 1
/* 800C5228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C522C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C5230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C5234  7C 08 03 A6 */	mtlr r0
/* 800C5238  38 21 00 10 */	addi r1, r1, 0x10
/* 800C523C  4E 80 00 20 */	blr 
