lbl_800C755C:
/* 800C755C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C7560  7C 08 02 A6 */	mflr r0
/* 800C7564  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C7568  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C756C  93 C1 00 08 */	stw r30, 8(r1)
/* 800C7570  7C 7E 1B 78 */	mr r30, r3
/* 800C7574  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800C7578  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 800C757C  2C 00 00 00 */	cmpwi r0, 0
/* 800C7580  41 82 00 74 */	beq lbl_800C75F4
/* 800C7584  38 00 00 04 */	li r0, 4
/* 800C7588  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800C758C  7F E3 FB 78 */	mr r3, r31
/* 800C7590  48 09 6F 3D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C7594  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C7598  41 82 00 14 */	beq lbl_800C75AC
/* 800C759C  7F C3 F3 78 */	mr r3, r30
/* 800C75A0  38 80 00 00 */	li r4, 0
/* 800C75A4  4B FF 2B 2D */	bl checkNextAction__9daAlink_cFi
/* 800C75A8  48 00 00 D0 */	b lbl_800C7678
lbl_800C75AC:
/* 800C75AC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800C75B0  3C 60 80 39 */	lis r3, m__23daAlinkHIO_smallJump_c0@ha
/* 800C75B4  38 63 E1 1C */	addi r3, r3, m__23daAlinkHIO_smallJump_c0@l
/* 800C75B8  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800C75BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C75C0  40 81 00 B4 */	ble lbl_800C7674
/* 800C75C4  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800C75C8  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C75CC  7F C3 F3 78 */	mr r3, r30
/* 800C75D0  38 80 00 01 */	li r4, 1
/* 800C75D4  4B FF 2A FD */	bl checkNextAction__9daAlink_cFi
/* 800C75D8  2C 03 00 00 */	cmpwi r3, 0
/* 800C75DC  41 82 00 0C */	beq lbl_800C75E8
/* 800C75E0  38 60 00 01 */	li r3, 1
/* 800C75E4  48 00 00 94 */	b lbl_800C7678
lbl_800C75E8:
/* 800C75E8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C75EC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C75F0  48 00 00 84 */	b lbl_800C7674
lbl_800C75F4:
/* 800C75F4  7F E3 FB 78 */	mr r3, r31
/* 800C75F8  48 09 6E D5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C75FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C7600  41 82 00 74 */	beq lbl_800C7674
/* 800C7604  7F C3 F3 78 */	mr r3, r30
/* 800C7608  38 80 01 28 */	li r4, 0x128
/* 800C760C  3C A0 80 39 */	lis r5, m__23daAlinkHIO_smallJump_c0@ha
/* 800C7610  38 A5 E1 1C */	addi r5, r5, m__23daAlinkHIO_smallJump_c0@l
/* 800C7614  38 A5 00 28 */	addi r5, r5, 0x28
/* 800C7618  4B FE 5A DD */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C761C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800C7620  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800C7624  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800C7628  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C762C  7C 64 02 14 */	add r3, r4, r0
/* 800C7630  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C7634  C0 3E 34 F4 */	lfs f1, 0x34f4(r30)
/* 800C7638  C0 42 93 14 */	lfs f2, lit_7307(r2)
/* 800C763C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C7640  EC 81 00 2A */	fadds f4, f1, f0
/* 800C7644  C0 7E 34 F0 */	lfs f3, 0x34f0(r30)
/* 800C7648  7C 04 04 2E */	lfsx f0, r4, r0
/* 800C764C  C0 3E 34 EC */	lfs f1, 0x34ec(r30)
/* 800C7650  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C7654  EC 01 00 2A */	fadds f0, f1, f0
/* 800C7658  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800C765C  D0 7E 04 D4 */	stfs f3, 0x4d4(r30)
/* 800C7660  D0 9E 04 D8 */	stfs f4, 0x4d8(r30)
/* 800C7664  38 00 00 50 */	li r0, 0x50
/* 800C7668  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800C766C  38 00 00 01 */	li r0, 1
/* 800C7670  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_800C7674:
/* 800C7674  38 60 00 01 */	li r3, 1
lbl_800C7678:
/* 800C7678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C767C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C7680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C7684  7C 08 03 A6 */	mtlr r0
/* 800C7688  38 21 00 10 */	addi r1, r1, 0x10
/* 800C768C  4E 80 00 20 */	blr 
