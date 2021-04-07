lbl_80115674:
/* 80115674  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80115678  7C 08 02 A6 */	mflr r0
/* 8011567C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80115680  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80115684  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80115688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011568C  7C 7F 1B 78 */	mr r31, r3
/* 80115690  4B FF FA 55 */	bl checkIronBallAnime__9daAlink_cCFv
/* 80115694  2C 03 00 00 */	cmpwi r3, 0
/* 80115698  41 82 00 10 */	beq lbl_801156A8
/* 8011569C  7F E3 FB 78 */	mr r3, r31
/* 801156A0  38 80 00 12 */	li r4, 0x12
/* 801156A4  4B F9 DB AD */	bl setDoStatus__9daAlink_cFUc
lbl_801156A8:
/* 801156A8  7F E3 FB 78 */	mr r3, r31
/* 801156AC  38 80 00 00 */	li r4, 0
/* 801156B0  4B F9 E0 85 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 801156B4  7F E3 FB 78 */	mr r3, r31
/* 801156B8  38 80 00 00 */	li r4, 0
/* 801156BC  4B FA 4A 15 */	bl checkNextAction__9daAlink_cFi
/* 801156C0  2C 03 00 00 */	cmpwi r3, 0
/* 801156C4  40 82 00 98 */	bne lbl_8011575C
/* 801156C8  C3 E2 92 BC */	lfs f31, lit_6041(r2)
/* 801156CC  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 801156D0  28 00 01 9A */	cmplwi r0, 0x19a
/* 801156D4  40 82 00 0C */	bne lbl_801156E0
/* 801156D8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801156DC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_801156E0:
/* 801156E0  7F E3 FB 78 */	mr r3, r31
/* 801156E4  4B F9 E2 21 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 801156E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801156EC  41 82 00 34 */	beq lbl_80115720
/* 801156F0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 801156F4  60 00 00 01 */	ori r0, r0, 1
/* 801156F8  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 801156FC  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 80115700  28 00 00 02 */	cmplwi r0, 2
/* 80115704  41 82 00 28 */	beq lbl_8011572C
/* 80115708  38 00 00 02 */	li r0, 2
/* 8011570C  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 80115710  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 80115714  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 80115718  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 8011571C  48 00 00 10 */	b lbl_8011572C
lbl_80115720:
/* 80115720  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80115724  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80115728  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_8011572C:
/* 8011572C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80115730  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80115734  41 82 00 10 */	beq lbl_80115744
/* 80115738  7F E3 FB 78 */	mr r3, r31
/* 8011573C  4B FF FA A5 */	bl setIronBallBaseAnime__9daAlink_cFv
/* 80115740  48 00 00 10 */	b lbl_80115750
lbl_80115744:
/* 80115744  7F E3 FB 78 */	mr r3, r31
/* 80115748  FC 20 F8 90 */	fmr f1, f31
/* 8011574C  4B F9 93 25 */	bl setBlendAtnMoveAnime__9daAlink_cFf
lbl_80115750:
/* 80115750  7F E3 FB 78 */	mr r3, r31
/* 80115754  38 80 00 00 */	li r4, 0
/* 80115758  4B FA 5B 59 */	bl setBodyAngleXReadyAnime__9daAlink_cFi
lbl_8011575C:
/* 8011575C  38 60 00 01 */	li r3, 1
/* 80115760  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80115764  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80115768  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011576C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80115770  7C 08 03 A6 */	mtlr r0
/* 80115774  38 21 00 20 */	addi r1, r1, 0x20
/* 80115778  4E 80 00 20 */	blr 
