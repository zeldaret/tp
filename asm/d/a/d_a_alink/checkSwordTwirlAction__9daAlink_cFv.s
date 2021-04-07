lbl_800B7390:
/* 800B7390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7394  7C 08 02 A6 */	mflr r0
/* 800B7398  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B739C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B73A0  93 C1 00 08 */	stw r30, 8(r1)
/* 800B73A4  7C 7E 1B 78 */	mr r30, r3
/* 800B73A8  3B FE 20 48 */	addi r31, r30, 0x2048
/* 800B73AC  48 00 20 21 */	bl checkSwordTwirlAnime__9daAlink_cCFv
/* 800B73B0  2C 03 00 00 */	cmpwi r3, 0
/* 800B73B4  41 82 00 60 */	beq lbl_800B7414
/* 800B73B8  7F E3 FB 78 */	mr r3, r31
/* 800B73BC  48 0A 71 11 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800B73C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B73C4  41 82 00 18 */	beq lbl_800B73DC
/* 800B73C8  7F C3 F3 78 */	mr r3, r30
/* 800B73CC  38 80 00 02 */	li r4, 2
/* 800B73D0  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800B73D4  4B FF 63 51 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800B73D8  48 00 00 C0 */	b lbl_800B7498
lbl_800B73DC:
/* 800B73DC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800B73E0  C0 02 93 74 */	lfs f0, lit_8502(r2)
/* 800B73E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B73E8  4C 41 13 82 */	cror 2, 1, 2
/* 800B73EC  41 82 00 10 */	beq lbl_800B73FC
/* 800B73F0  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 800B73F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B73F8  40 80 00 10 */	bge lbl_800B7408
lbl_800B73FC:
/* 800B73FC  38 00 00 FE */	li r0, 0xfe
/* 800B7400  98 1E 2F 96 */	stb r0, 0x2f96(r30)
/* 800B7404  48 00 00 94 */	b lbl_800B7498
lbl_800B7408:
/* 800B7408  38 00 00 FF */	li r0, 0xff
/* 800B740C  98 1E 2F 96 */	stb r0, 0x2f96(r30)
/* 800B7410  48 00 00 88 */	b lbl_800B7498
lbl_800B7414:
/* 800B7414  80 7E 27 EC */	lwz r3, 0x27ec(r30)
/* 800B7418  48 02 51 31 */	bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800B741C  2C 03 00 00 */	cmpwi r3, 0
/* 800B7420  41 82 00 78 */	beq lbl_800B7498
/* 800B7424  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800B7428  28 00 01 03 */	cmplwi r0, 0x103
/* 800B742C  40 82 00 6C */	bne lbl_800B7498
/* 800B7430  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800B7434  28 00 00 01 */	cmplwi r0, 1
/* 800B7438  41 82 00 60 */	beq lbl_800B7498
/* 800B743C  7F C3 F3 78 */	mr r3, r30
/* 800B7440  48 00 1E 15 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800B7444  2C 03 00 00 */	cmpwi r3, 0
/* 800B7448  41 82 00 50 */	beq lbl_800B7498
/* 800B744C  48 1B 04 21 */	bl cM_rnd__Fv
/* 800B7450  C0 02 98 8C */	lfs f0, lit_63482(r2)
/* 800B7454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B7458  40 80 00 40 */	bge lbl_800B7498
/* 800B745C  7F C3 F3 78 */	mr r3, r30
/* 800B7460  88 9E 2F 98 */	lbz r4, 0x2f98(r30)
/* 800B7464  38 04 FF FE */	addi r0, r4, -2
/* 800B7468  30 00 FF FF */	addic r0, r0, -1
/* 800B746C  7C 80 01 10 */	subfe r4, r0, r0
/* 800B7470  38 84 00 40 */	addi r4, r4, 0x40
/* 800B7474  3C A0 80 39 */	lis r5, m__21daAlinkHIO_atnMove_c0@ha /* 0x8038D714@ha */
/* 800B7478  38 A5 D7 14 */	addi r5, r5, m__21daAlinkHIO_atnMove_c0@l /* 0x8038D714@l */
/* 800B747C  C0 25 00 08 */	lfs f1, 8(r5)
/* 800B7480  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800B7484  4B FF 5F 25 */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800B7488  7F C3 F3 78 */	mr r3, r30
/* 800B748C  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200A5@ha */
/* 800B7490  38 84 00 A5 */	addi r4, r4, 0x00A5 /* 0x000200A5@l */
/* 800B7494  48 00 7C 59 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800B7498:
/* 800B7498  38 60 00 01 */	li r3, 1
/* 800B749C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B74A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B74A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B74A8  7C 08 03 A6 */	mtlr r0
/* 800B74AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800B74B0  4E 80 00 20 */	blr 
