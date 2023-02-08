lbl_80121388:
/* 80121388  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8012138C  7C 08 02 A6 */	mflr r0
/* 80121390  90 01 01 04 */	stw r0, 0x104(r1)
/* 80121394  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80121398  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 8012139C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 801213A0  48 24 0E 35 */	bl _savegpr_27
/* 801213A4  7C 7B 1B 78 */	mr r27, r3
/* 801213A8  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 801213AC  3B E4 D6 58 */	addi r31, r4, lit_3757@l /* 0x8038D658@l */
/* 801213B0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 801213B4  28 00 00 28 */	cmplwi r0, 0x28
/* 801213B8  41 82 00 0C */	beq lbl_801213C4
/* 801213BC  28 00 00 AD */	cmplwi r0, 0xad
/* 801213C0  40 82 00 10 */	bne lbl_801213D0
lbl_801213C4:
/* 801213C4  7F 63 DB 78 */	mr r3, r27
/* 801213C8  48 00 1B B1 */	bl setCutTurnEffect__9daAlink_cFv
/* 801213CC  48 00 00 30 */	b lbl_801213FC
lbl_801213D0:
/* 801213D0  28 00 00 43 */	cmplwi r0, 0x43
/* 801213D4  40 82 00 0C */	bne lbl_801213E0
/* 801213D8  48 00 1F CD */	bl setHorseCutTurnEffect__9daAlink_cFv
/* 801213DC  48 00 00 20 */	b lbl_801213FC
lbl_801213E0:
/* 801213E0  28 00 01 21 */	cmplwi r0, 0x121
/* 801213E4  40 82 00 0C */	bne lbl_801213F0
/* 801213E8  48 00 25 15 */	bl setWolfRollAttackEffect__9daAlink_cFv
/* 801213EC  48 00 00 10 */	b lbl_801213FC
lbl_801213F0:
/* 801213F0  28 00 01 42 */	cmplwi r0, 0x142
/* 801213F4  40 82 00 08 */	bne lbl_801213FC
/* 801213F8  48 00 17 C5 */	bl setElecDamageEffect__9daAlink_cFv
lbl_801213FC:
/* 801213FC  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 80121400  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 80121404  40 82 00 34 */	bne lbl_80121438
/* 80121408  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 8012140C  41 82 00 68 */	beq lbl_80121474
/* 80121410  80 1B 19 9C */	lwz r0, 0x199c(r27)
/* 80121414  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80121418  41 82 00 5C */	beq lbl_80121474
/* 8012141C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80121420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80121424  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80121428  38 9B 1A 60 */	addi r4, r27, 0x1a60
/* 8012142C  4B F5 38 E1 */	bl GetMagnetCode__4dBgSFRC13cBgS_PolyInfo
/* 80121430  2C 03 00 02 */	cmpwi r3, 2
/* 80121434  40 82 00 40 */	bne lbl_80121474
lbl_80121438:
/* 80121438  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 8012143C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80121440  40 82 00 28 */	bne lbl_80121468
/* 80121444  80 1B 05 7C */	lwz r0, 0x57c(r27)
/* 80121448  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8012144C  40 82 00 1C */	bne lbl_80121468
/* 80121450  38 7B 2C A8 */	addi r3, r27, 0x2ca8
/* 80121454  38 80 00 01 */	li r4, 1
/* 80121458  48 1A 26 95 */	bl setMagnetized__14Z2CreatureLinkFb
/* 8012145C  80 1B 05 7C */	lwz r0, 0x57c(r27)
/* 80121460  60 00 00 01 */	ori r0, r0, 1
/* 80121464  90 1B 05 7C */	stw r0, 0x57c(r27)
lbl_80121468:
/* 80121468  7F 63 DB 78 */	mr r3, r27
/* 8012146C  48 00 13 11 */	bl setMagneBootsEffect__9daAlink_cFv
/* 80121470  48 00 00 28 */	b lbl_80121498
lbl_80121474:
/* 80121474  80 1B 05 7C */	lwz r0, 0x57c(r27)
/* 80121478  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8012147C  41 82 00 1C */	beq lbl_80121498
/* 80121480  80 1B 05 7C */	lwz r0, 0x57c(r27)
/* 80121484  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80121488  90 1B 05 7C */	stw r0, 0x57c(r27)
/* 8012148C  38 7B 2C A8 */	addi r3, r27, 0x2ca8
/* 80121490  38 80 00 00 */	li r4, 0
/* 80121494  48 1A 26 59 */	bl setMagnetized__14Z2CreatureLinkFb
lbl_80121498:
/* 80121498  38 00 00 00 */	li r0, 0
/* 8012149C  88 7B 05 6A */	lbz r3, 0x56a(r27)
/* 801214A0  28 03 00 00 */	cmplwi r3, 0
/* 801214A4  41 82 00 10 */	beq lbl_801214B4
/* 801214A8  28 03 00 26 */	cmplwi r3, 0x26
/* 801214AC  40 80 00 08 */	bge lbl_801214B4
/* 801214B0  38 00 00 01 */	li r0, 1
lbl_801214B4:
/* 801214B4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801214B8  41 82 00 10 */	beq lbl_801214C8
/* 801214BC  7F 63 DB 78 */	mr r3, r27
/* 801214C0  48 00 0D 31 */	bl setSumouEffect__9daAlink_cFv
/* 801214C4  48 00 00 0C */	b lbl_801214D0
lbl_801214C8:
/* 801214C8  7F 63 DB 78 */	mr r3, r27
/* 801214CC  48 00 11 89 */	bl setWaterfallEffect__9daAlink_cFv
lbl_801214D0:
/* 801214D0  7F 63 DB 78 */	mr r3, r27
/* 801214D4  48 00 14 21 */	bl setSwordChargeEffect__9daAlink_cFv
/* 801214D8  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 801214DC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801214E0  41 82 00 18 */	beq lbl_801214F8
/* 801214E4  7F 63 DB 78 */	mr r3, r27
/* 801214E8  48 00 27 A5 */	bl setWolfLockAttackEffect__9daAlink_cFv
/* 801214EC  7F 63 DB 78 */	mr r3, r27
/* 801214F0  48 00 28 99 */	bl setWolfJumpAttackEffect__9daAlink_cFv
/* 801214F4  48 00 00 0C */	b lbl_80121500
lbl_801214F8:
/* 801214F8  7F 63 DB 78 */	mr r3, r27
/* 801214FC  48 00 21 C1 */	bl setBootsLightEffect__9daAlink_cFv
lbl_80121500:
/* 80121500  7F 63 DB 78 */	mr r3, r27
/* 80121504  48 00 22 A5 */	bl setLightningSwordEffect__9daAlink_cFv
/* 80121508  80 1B 19 9C */	lwz r0, 0x199c(r27)
/* 8012150C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80121510  41 82 00 DC */	beq lbl_801215EC
/* 80121514  3B 9B 18 B0 */	addi r28, r27, 0x18b0
/* 80121518  3B A0 00 00 */	li r29, 0
lbl_8012151C:
/* 8012151C  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80121520  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80121524  41 82 00 B8 */	beq lbl_801215DC
/* 80121528  7F 63 DB 78 */	mr r3, r27
/* 8012152C  7F 84 E3 78 */	mr r4, r28
/* 80121530  48 00 8E ED */	bl checkWolfBarrierWallHit__9daAlink_cFR13cBgS_PolyInfo
/* 80121534  2C 03 00 00 */	cmpwi r3, 0
/* 80121538  41 82 00 A4 */	beq lbl_801215DC
/* 8012153C  C0 9B 04 D8 */	lfs f4, 0x4d8(r27)
/* 80121540  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80121544  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80121548  EC 61 00 2A */	fadds f3, f1, f0
/* 8012154C  C0 5B 04 D0 */	lfs f2, 0x4d0(r27)
/* 80121550  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 80121554  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 80121558  D0 81 00 C8 */	stfs f4, 0xc8(r1)
/* 8012155C  A8 1C 00 3C */	lha r0, 0x3c(r28)
/* 80121560  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80121564  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80121568  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8012156C  7C 64 02 14 */	add r3, r4, r0
/* 80121570  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80121574  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 80121578  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8012157C  EC C1 00 2A */	fadds f6, f1, f0
/* 80121580  EC 06 01 72 */	fmuls f0, f6, f5
/* 80121584  EC 24 00 28 */	fsubs f1, f4, f0
/* 80121588  7C 04 04 2E */	lfsx f0, r4, r0
/* 8012158C  EC 06 00 32 */	fmuls f0, f6, f0
/* 80121590  EC 02 00 28 */	fsubs f0, f2, f0
/* 80121594  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80121598  D0 61 00 B8 */	stfs f3, 0xb8(r1)
/* 8012159C  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 801215A0  7F 63 DB 78 */	mr r3, r27
/* 801215A4  38 81 00 C0 */	addi r4, r1, 0xc0
/* 801215A8  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 801215AC  4B F8 0B ED */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 801215B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801215B4  41 82 00 28 */	beq lbl_801215DC
/* 801215B8  7F 63 DB 78 */	mr r3, r27
/* 801215BC  38 9B 1B 5C */	addi r4, r27, 0x1b5c
/* 801215C0  48 00 8E 5D */	bl checkWolfBarrierWallHit__9daAlink_cFR13cBgS_PolyInfo
/* 801215C4  2C 03 00 00 */	cmpwi r3, 0
/* 801215C8  41 82 00 14 */	beq lbl_801215DC
/* 801215CC  7F 63 DB 78 */	mr r3, r27
/* 801215D0  38 9B 1B 48 */	addi r4, r27, 0x1b48
/* 801215D4  48 00 28 FD */	bl setWolfBarrierHitEffect__9daAlink_cFR11dBgS_LinChk
/* 801215D8  48 00 00 14 */	b lbl_801215EC
lbl_801215DC:
/* 801215DC  3B BD 00 01 */	addi r29, r29, 1
/* 801215E0  2C 1D 00 03 */	cmpwi r29, 3
/* 801215E4  3B 9C 00 40 */	addi r28, r28, 0x40
/* 801215E8  41 80 FF 34 */	blt lbl_8012151C
lbl_801215EC:
/* 801215EC  7F 63 DB 78 */	mr r3, r27
/* 801215F0  48 00 2B F1 */	bl setWaterDropEffect__9daAlink_cFv
/* 801215F4  7F 63 DB 78 */	mr r3, r27
/* 801215F8  48 00 2E ED */	bl setSwordUpColorEffect__9daAlink_cFv
/* 801215FC  7F 63 DB 78 */	mr r3, r27
/* 80121600  48 00 2F ED */	bl setSwordCutSplash__9daAlink_cFv
/* 80121604  7F 63 DB 78 */	mr r3, r27
/* 80121608  48 00 3F 1D */	bl setWoodShieldBurnEffect__9daAlink_cFv
/* 8012160C  7F 63 DB 78 */	mr r3, r27
/* 80121610  48 00 3D 29 */	bl setFreezeEffect__9daAlink_cFv
/* 80121614  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 80121618  28 00 01 4D */	cmplwi r0, 0x14d
/* 8012161C  40 82 00 10 */	bne lbl_8012162C
/* 80121620  7F 63 DB 78 */	mr r3, r27
/* 80121624  48 00 31 85 */	bl setMetamorphoseEffect__9daAlink_cFv
/* 80121628  48 00 00 0C */	b lbl_80121634
lbl_8012162C:
/* 8012162C  7F 63 DB 78 */	mr r3, r27
/* 80121630  48 00 32 79 */	bl setRunSplash__9daAlink_cFv
lbl_80121634:
/* 80121634  7F 63 DB 78 */	mr r3, r27
/* 80121638  48 00 35 6D */	bl setBottleEffect__9daAlink_cFv
/* 8012163C  80 1B 05 88 */	lwz r0, 0x588(r27)
/* 80121640  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80121644  40 82 00 14 */	bne lbl_80121658
/* 80121648  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012164C  C0 1B 34 6C */	lfs f0, 0x346c(r27)
/* 80121650  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80121654  41 82 00 C8 */	beq lbl_8012171C
lbl_80121658:
/* 80121658  28 00 00 00 */	cmplwi r0, 0
/* 8012165C  41 82 00 20 */	beq lbl_8012167C
/* 80121660  C0 3B 34 6C */	lfs f1, 0x346c(r27)
/* 80121664  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80121668  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012166C  40 80 00 10 */	bge lbl_8012167C
/* 80121670  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80121674  EC 01 00 32 */	fmuls f0, f1, f0
/* 80121678  D0 1B 34 6C */	stfs f0, 0x346c(r27)
lbl_8012167C:
/* 8012167C  C0 3B 34 6C */	lfs f1, 0x346c(r27)
/* 80121680  C0 02 96 88 */	lfs f0, lit_40561(r2)
/* 80121684  EC 01 00 2A */	fadds f0, f1, f0
/* 80121688  D0 1B 34 6C */	stfs f0, 0x346c(r27)
/* 8012168C  C0 3B 34 6C */	lfs f1, 0x346c(r27)
/* 80121690  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80121694  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121698  40 81 00 84 */	ble lbl_8012171C
/* 8012169C  80 1B 05 7C */	lwz r0, 0x57c(r27)
/* 801216A0  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 801216A4  41 82 00 70 */	beq lbl_80121714
/* 801216A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801216AC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801216B0  38 64 01 14 */	addi r3, r4, 0x114
/* 801216B4  88 84 4E 0C */	lbz r4, 0x4e0c(r4)
/* 801216B8  4B F1 2C 89 */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 801216BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801216C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801216C4  88 84 5E A1 */	lbz r4, 0x5ea1(r4)
/* 801216C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801216CC  7C 04 00 40 */	cmplw r4, r0
/* 801216D0  40 82 00 44 */	bne lbl_80121714
/* 801216D4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 801216D8  D0 1B 34 6C */	stfs f0, 0x346c(r27)
/* 801216DC  7F 63 DB 78 */	mr r3, r27
/* 801216E0  4B FF 45 41 */	bl checkEventRun__9daAlink_cCFv
/* 801216E4  2C 03 00 00 */	cmpwi r3, 0
/* 801216E8  41 82 00 34 */	beq lbl_8012171C
/* 801216EC  38 00 00 03 */	li r0, 3
/* 801216F0  B0 1B 06 04 */	sth r0, 0x604(r27)
/* 801216F4  38 60 00 00 */	li r3, 0
/* 801216F8  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 801216FC  38 00 00 5E */	li r0, 0x5e
/* 80121700  90 1B 06 14 */	stw r0, 0x614(r27)
/* 80121704  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 80121708  90 7B 06 10 */	stw r3, 0x610(r27)
/* 8012170C  B0 7B 06 0A */	sth r3, 0x60a(r27)
/* 80121710  48 00 00 0C */	b lbl_8012171C
lbl_80121714:
/* 80121714  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80121718  D0 1B 34 6C */	stfs f0, 0x346c(r27)
lbl_8012171C:
/* 8012171C  C0 9B 04 D0 */	lfs f4, 0x4d0(r27)
/* 80121720  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 80121724  C0 7B 04 D4 */	lfs f3, 0x4d4(r27)
/* 80121728  D0 61 00 AC */	stfs f3, 0xac(r1)
/* 8012172C  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 80121730  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 80121734  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 80121738  D0 61 00 A0 */	stfs f3, 0xa0(r1)
/* 8012173C  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 80121740  80 7B 31 A0 */	lwz r3, 0x31a0(r27)
/* 80121744  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 80121748  41 82 00 B8 */	beq lbl_80121800
/* 8012174C  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 80121750  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80121754  41 82 00 50 */	beq lbl_801217A4
/* 80121758  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8012175C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80121760  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80121764  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80121768  7C 03 04 2E */	lfsx f0, r3, r0
/* 8012176C  C0 22 93 D4 */	lfs f1, lit_11442(r2)
/* 80121770  EC 01 00 32 */	fmuls f0, f1, f0
/* 80121774  EC 04 00 2A */	fadds f0, f4, f0
/* 80121778  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8012177C  7C 63 02 14 */	add r3, r3, r0
/* 80121780  C0 03 00 04 */	lfs f0, 4(r3)
/* 80121784  EC 01 00 32 */	fmuls f0, f1, f0
/* 80121788  EC 02 00 2A */	fadds f0, f2, f0
/* 8012178C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80121790  38 7F 22 5C */	addi r3, r31, 0x225c
/* 80121794  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80121798  EC 03 00 28 */	fsubs f0, f3, f0
/* 8012179C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801217A0  48 00 00 14 */	b lbl_801217B4
lbl_801217A4:
/* 801217A4  38 7F 16 D4 */	addi r3, r31, 0x16d4
/* 801217A8  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801217AC  EC 03 00 28 */	fsubs f0, f3, f0
/* 801217B0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
lbl_801217B4:
/* 801217B4  C0 1B 33 B4 */	lfs f0, 0x33b4(r27)
/* 801217B8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 801217BC  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 801217C0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 801217C4  41 82 00 30 */	beq lbl_801217F4
/* 801217C8  C0 3B 33 98 */	lfs f1, 0x3398(r27)
/* 801217CC  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 801217D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801217D4  40 81 00 20 */	ble lbl_801217F4
/* 801217D8  7F 63 DB 78 */	mr r3, r27
/* 801217DC  38 9B 31 C0 */	addi r4, r27, 0x31c0
/* 801217E0  38 A0 01 BC */	li r5, 0x1bc
/* 801217E4  38 DB 1A F0 */	addi r6, r27, 0x1af0
/* 801217E8  38 E1 00 A8 */	addi r7, r1, 0xa8
/* 801217EC  39 1B 04 DC */	addi r8, r27, 0x4dc
/* 801217F0  4B FF EE 45 */	bl setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz
lbl_801217F4:
/* 801217F4  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 801217F8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 801217FC  48 00 00 DC */	b lbl_801218D8
lbl_80121800:
/* 80121800  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80121804  41 82 00 D4 */	beq lbl_801218D8
/* 80121808  A8 1B 30 10 */	lha r0, 0x3010(r27)
/* 8012180C  2C 00 00 00 */	cmpwi r0, 0
/* 80121810  41 82 00 C8 */	beq lbl_801218D8
/* 80121814  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80121818  C0 1B 1F DC */	lfs f0, 0x1fdc(r27)
/* 8012181C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80121820  41 82 00 B8 */	beq lbl_801218D8
/* 80121824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80121828  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012182C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80121830  38 9B 1E 1C */	addi r4, r27, 0x1e1c
/* 80121834  4B F5 2E 2D */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 80121838  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012183C  41 82 00 9C */	beq lbl_801218D8
/* 80121840  38 7B 1E 1C */	addi r3, r27, 0x1e1c
/* 80121844  48 08 9A 4D */	bl dKy_pol_efftype_get__FPC13cBgS_PolyInfo
/* 80121848  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8012184C  28 00 00 01 */	cmplwi r0, 1
/* 80121850  41 82 00 18 */	beq lbl_80121868
/* 80121854  38 7B 1E 1C */	addi r3, r27, 0x1e1c
/* 80121858  48 08 9A 39 */	bl dKy_pol_efftype_get__FPC13cBgS_PolyInfo
/* 8012185C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80121860  28 00 00 01 */	cmplwi r0, 1
/* 80121864  40 82 00 74 */	bne lbl_801218D8
lbl_80121868:
/* 80121868  38 7B 1E 1C */	addi r3, r27, 0x1e1c
/* 8012186C  48 08 9A 25 */	bl dKy_pol_efftype_get__FPC13cBgS_PolyInfo
/* 80121870  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80121874  20 60 00 01 */	subfic r3, r0, 1
/* 80121878  30 03 FF FF */	addic r0, r3, -1
/* 8012187C  7C 00 19 10 */	subfe r0, r0, r3
/* 80121880  90 01 00 08 */	stw r0, 8(r1)
/* 80121884  38 60 00 00 */	li r3, 0
/* 80121888  90 61 00 0C */	stw r3, 0xc(r1)
/* 8012188C  38 00 FF FF */	li r0, -1
/* 80121890  90 01 00 10 */	stw r0, 0x10(r1)
/* 80121894  90 61 00 14 */	stw r3, 0x14(r1)
/* 80121898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8012189C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801218A0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 801218A4  80 9B 31 C0 */	lwz r4, 0x31c0(r27)
/* 801218A8  38 A0 03 33 */	li r5, 0x333
/* 801218AC  38 DB 1E 1C */	addi r6, r27, 0x1e1c
/* 801218B0  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 801218B4  39 1B 01 0C */	addi r8, r27, 0x10c
/* 801218B8  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 801218BC  39 40 00 00 */	li r10, 0
/* 801218C0  4B F2 BD E5 */	bl setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 801218C4  90 7B 31 C0 */	stw r3, 0x31c0(r27)
/* 801218C8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 801218CC  38 63 02 10 */	addi r3, r3, 0x210
/* 801218D0  80 9B 31 C0 */	lwz r4, 0x31c0(r27)
/* 801218D4  4B F2 9F E1 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
lbl_801218D8:
/* 801218D8  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 801218DC  28 00 01 50 */	cmplwi r0, 0x150
/* 801218E0  40 82 00 80 */	bne lbl_80121960
/* 801218E4  88 1B 2F 9D */	lbz r0, 0x2f9d(r27)
/* 801218E8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801218EC  41 82 00 74 */	beq lbl_80121960
/* 801218F0  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 801218F4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801218F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801218FC  A8 1B 30 10 */	lha r0, 0x3010(r27)
/* 80121900  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80121904  7C 63 02 14 */	add r3, r3, r0
/* 80121908  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8012190C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80121910  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80121914  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80121918  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8012191C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80121920  38 7B 1D 08 */	addi r3, r27, 0x1d08
/* 80121924  38 81 00 9C */	addi r4, r1, 0x9c
/* 80121928  48 14 64 01 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8012192C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80121930  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80121934  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80121938  38 9B 1D 08 */	addi r4, r27, 0x1d08
/* 8012193C  4B F5 2B 65 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80121940  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80121944  EC 00 08 28 */	fsubs f0, f0, f1
/* 80121948  FC 00 02 10 */	fabs f0, f0
/* 8012194C  FC 40 00 18 */	frsp f2, f0
/* 80121950  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 80121954  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80121958  40 80 00 08 */	bge lbl_80121960
/* 8012195C  D0 21 00 A0 */	stfs f1, 0xa0(r1)
lbl_80121960:
/* 80121960  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 80121964  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80121968  40 82 01 60 */	bne lbl_80121AC8
/* 8012196C  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 80121970  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80121974  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80121978  A0 1B 30 B4 */	lhz r0, 0x30b4(r27)
/* 8012197C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80121980  7C 63 02 14 */	add r3, r3, r0
/* 80121984  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80121988  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8012198C  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80121990  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 80121994  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80121998  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8012199C  C0 3B 33 B4 */	lfs f1, 0x33b4(r27)
/* 801219A0  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 801219A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801219A8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801219AC  40 80 00 30 */	bge lbl_801219DC
/* 801219B0  7F 63 DB 78 */	mr r3, r27
/* 801219B4  38 9B 31 BC */	addi r4, r27, 0x31bc
/* 801219B8  38 A0 01 E8 */	li r5, 0x1e8
/* 801219BC  38 DB 1A F0 */	addi r6, r27, 0x1af0
/* 801219C0  38 E1 00 90 */	addi r7, r1, 0x90
/* 801219C4  39 1B 04 E4 */	addi r8, r27, 0x4e4
/* 801219C8  4B FF EC 6D */	bl setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz
/* 801219CC  28 03 00 00 */	cmplwi r3, 0
/* 801219D0  41 82 00 0C */	beq lbl_801219DC
/* 801219D4  38 0D 89 24 */	la r0, mWaterBubblePcallBack__13dPa_control_c(r13) /* 80450EA4-_SDA_BASE_ */
/* 801219D8  90 03 00 F0 */	stw r0, 0xf0(r3)
lbl_801219DC:
/* 801219DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801219E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801219E4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 801219E8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801219EC  41 82 00 54 */	beq lbl_80121A40
/* 801219F0  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 801219F4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801219F8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801219FC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80121A00  7C 03 04 2E */	lfsx f0, r3, r0
/* 80121A04  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 80121A08  C0 42 92 E0 */	lfs f2, lit_6845(r2)
/* 80121A0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80121A10  EC 01 00 28 */	fsubs f0, f1, f0
/* 80121A14  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80121A18  7C 63 02 14 */	add r3, r3, r0
/* 80121A1C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80121A20  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 80121A24  EC 02 00 32 */	fmuls f0, f2, f0
/* 80121A28  EC 01 00 28 */	fsubs f0, f1, f0
/* 80121A2C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80121A30  C0 1B 05 E4 */	lfs f0, 0x5e4(r27)
/* 80121A34  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80121A38  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80121A3C  48 00 00 8C */	b lbl_80121AC8
lbl_80121A40:
/* 80121A40  80 63 5F 1C */	lwz r3, 0x5f1c(r3)
/* 80121A44  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80121A48  41 82 00 6C */	beq lbl_80121AB4
/* 80121A4C  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80121A50  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80121A54  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80121A58  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80121A5C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80121A60  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 80121A64  C0 42 93 B4 */	lfs f2, lit_10040(r2)
/* 80121A68  EC 02 00 32 */	fmuls f0, f2, f0
/* 80121A6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80121A70  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80121A74  7C 63 02 14 */	add r3, r3, r0
/* 80121A78  C0 03 00 04 */	lfs f0, 4(r3)
/* 80121A7C  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 80121A80  EC 02 00 32 */	fmuls f0, f2, f0
/* 80121A84  EC 01 00 2A */	fadds f0, f1, f0
/* 80121A88  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80121A8C  C0 1B 05 F0 */	lfs f0, 0x5f0(r27)
/* 80121A90  C0 3B 05 E4 */	lfs f1, 0x5e4(r27)
/* 80121A94  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80121A98  40 80 00 0C */	bge lbl_80121AA4
/* 80121A9C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80121AA0  48 00 00 08 */	b lbl_80121AA8
lbl_80121AA4:
/* 80121AA4  D0 21 00 A0 */	stfs f1, 0xa0(r1)
lbl_80121AA8:
/* 80121AA8  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80121AAC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80121AB0  48 00 00 18 */	b lbl_80121AC8
lbl_80121AB4:
/* 80121AB4  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80121AB8  41 82 00 10 */	beq lbl_80121AC8
/* 80121ABC  C0 1B 05 E4 */	lfs f0, 0x5e4(r27)
/* 80121AC0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80121AC4  D0 01 00 AC */	stfs f0, 0xac(r1)
lbl_80121AC8:
/* 80121AC8  3B C0 00 00 */	li r30, 0
/* 80121ACC  3B A0 00 00 */	li r29, 0
/* 80121AD0  C0 1B 05 EC */	lfs f0, 0x5ec(r27)
/* 80121AD4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80121AD8  C0 DB 05 F0 */	lfs f6, 0x5f0(r27)
/* 80121ADC  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 80121AE0  C0 1B 05 F4 */	lfs f0, 0x5f4(r27)
/* 80121AE4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80121AE8  C0 1B 05 E0 */	lfs f0, 0x5e0(r27)
/* 80121AEC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80121AF0  C0 BB 05 E4 */	lfs f5, 0x5e4(r27)
/* 80121AF4  D0 A1 00 7C */	stfs f5, 0x7c(r1)
/* 80121AF8  C0 1B 05 E8 */	lfs f0, 0x5e8(r27)
/* 80121AFC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80121B00  C0 1B 05 D4 */	lfs f0, 0x5d4(r27)
/* 80121B04  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80121B08  C0 9B 05 D8 */	lfs f4, 0x5d8(r27)
/* 80121B0C  D0 81 00 70 */	stfs f4, 0x70(r1)
/* 80121B10  C0 1B 05 DC */	lfs f0, 0x5dc(r27)
/* 80121B14  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80121B18  C0 1B 05 C8 */	lfs f0, 0x5c8(r27)
/* 80121B1C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80121B20  C0 7B 05 CC */	lfs f3, 0x5cc(r27)
/* 80121B24  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 80121B28  C0 1B 05 D0 */	lfs f0, 0x5d0(r27)
/* 80121B2C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80121B30  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80121B34  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80121B38  C0 41 00 A0 */	lfs f2, 0xa0(r1)
/* 80121B3C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80121B40  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80121B44  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80121B48  88 1B 2F 9E */	lbz r0, 0x2f9e(r27)
/* 80121B4C  28 00 00 05 */	cmplwi r0, 5
/* 80121B50  40 82 00 28 */	bne lbl_80121B78
/* 80121B54  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 80121B58  28 00 00 D4 */	cmplwi r0, 0xd4
/* 80121B5C  41 82 00 0C */	beq lbl_80121B68
/* 80121B60  28 00 00 D3 */	cmplwi r0, 0xd3
/* 80121B64  40 82 00 D4 */	bne lbl_80121C38
lbl_80121B68:
/* 80121B68  3B C0 00 01 */	li r30, 1
/* 80121B6C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80121B70  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80121B74  48 00 00 C4 */	b lbl_80121C38
lbl_80121B78:
/* 80121B78  28 00 00 04 */	cmplwi r0, 4
/* 80121B7C  40 82 00 0C */	bne lbl_80121B88
/* 80121B80  63 DE 00 3B */	ori r30, r30, 0x3b
/* 80121B84  48 00 00 B4 */	b lbl_80121C38
lbl_80121B88:
/* 80121B88  28 00 00 00 */	cmplwi r0, 0
/* 80121B8C  40 82 00 20 */	bne lbl_80121BAC
/* 80121B90  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 80121B94  28 00 00 0C */	cmplwi r0, 0xc
/* 80121B98  40 82 00 08 */	bne lbl_80121BA0
/* 80121B9C  63 BD 00 04 */	ori r29, r29, 4
lbl_80121BA0:
/* 80121BA0  63 DE 00 04 */	ori r30, r30, 4
/* 80121BA4  67 BD 00 01 */	oris r29, r29, 1
/* 80121BA8  48 00 00 90 */	b lbl_80121C38
lbl_80121BAC:
/* 80121BAC  28 00 00 01 */	cmplwi r0, 1
/* 80121BB0  40 82 00 44 */	bne lbl_80121BF4
/* 80121BB4  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 80121BB8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80121BBC  41 82 00 30 */	beq lbl_80121BEC
/* 80121BC0  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 80121BC4  EC 06 08 28 */	fsubs f0, f6, f1
/* 80121BC8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80121BCC  EC 05 08 28 */	fsubs f0, f5, f1
/* 80121BD0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80121BD4  EC 04 08 28 */	fsubs f0, f4, f1
/* 80121BD8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80121BDC  EC 03 08 28 */	fsubs f0, f3, f1
/* 80121BE0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80121BE4  EC 02 08 28 */	fsubs f0, f2, f1
/* 80121BE8  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_80121BEC:
/* 80121BEC  67 BD 00 01 */	oris r29, r29, 1
/* 80121BF0  48 00 00 48 */	b lbl_80121C38
lbl_80121BF4:
/* 80121BF4  28 00 00 03 */	cmplwi r0, 3
/* 80121BF8  40 82 00 24 */	bne lbl_80121C1C
/* 80121BFC  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 80121C00  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80121C04  41 82 00 34 */	beq lbl_80121C38
/* 80121C08  88 1B 2F 9D */	lbz r0, 0x2f9d(r27)
/* 80121C0C  28 00 00 00 */	cmplwi r0, 0
/* 80121C10  41 82 00 28 */	beq lbl_80121C38
/* 80121C14  67 BD 00 01 */	oris r29, r29, 1
/* 80121C18  48 00 00 20 */	b lbl_80121C38
lbl_80121C1C:
/* 80121C1C  28 00 00 02 */	cmplwi r0, 2
/* 80121C20  40 82 00 18 */	bne lbl_80121C38
/* 80121C24  63 DE 00 38 */	ori r30, r30, 0x38
/* 80121C28  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 80121C2C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80121C30  41 82 00 08 */	beq lbl_80121C38
/* 80121C34  63 DE 00 03 */	ori r30, r30, 3
lbl_80121C38:
/* 80121C38  7F 63 DB 78 */	mr r3, r27
/* 80121C3C  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80121C40  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 80121C44  7D 89 03 A6 */	mtctr r12
/* 80121C48  4E 80 04 21 */	bctrl 
/* 80121C4C  28 03 00 00 */	cmplwi r3, 0
/* 80121C50  40 82 00 10 */	bne lbl_80121C60
/* 80121C54  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 80121C58  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80121C5C  41 82 00 08 */	beq lbl_80121C64
lbl_80121C60:
/* 80121C60  67 BD 00 04 */	oris r29, r29, 4
lbl_80121C64:
/* 80121C64  3B 80 00 00 */	li r28, 0
/* 80121C68  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 80121C6C  28 00 00 CF */	cmplwi r0, 0xcf
/* 80121C70  40 82 00 34 */	bne lbl_80121CA4
/* 80121C74  80 1B 31 98 */	lwz r0, 0x3198(r27)
/* 80121C78  2C 00 01 4C */	cmpwi r0, 0x14c
/* 80121C7C  41 82 00 14 */	beq lbl_80121C90
/* 80121C80  2C 00 01 4D */	cmpwi r0, 0x14d
/* 80121C84  41 82 00 0C */	beq lbl_80121C90
/* 80121C88  2C 00 01 55 */	cmpwi r0, 0x155
/* 80121C8C  40 82 00 18 */	bne lbl_80121CA4
lbl_80121C90:
/* 80121C90  3B 80 00 01 */	li r28, 1
/* 80121C94  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 80121C98  3C 63 00 01 */	addis r3, r3, 1
/* 80121C9C  38 03 80 00 */	addi r0, r3, -32768
/* 80121CA0  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_80121CA4:
/* 80121CA4  C0 5B 37 A0 */	lfs f2, 0x37a0(r27)
/* 80121CA8  C0 1B 37 98 */	lfs f0, 0x3798(r27)
/* 80121CAC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80121CB0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80121CB4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80121CB8  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80121CBC  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 80121CC0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80121CC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80121CC8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80121CCC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80121CD0  38 61 00 24 */	addi r3, r1, 0x24
/* 80121CD4  38 81 00 30 */	addi r4, r1, 0x30
/* 80121CD8  48 22 56 C5 */	bl PSVECSquareDistance
/* 80121CDC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80121CE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121CE4  40 81 00 58 */	ble lbl_80121D3C
/* 80121CE8  FC 00 08 34 */	frsqrte f0, f1
/* 80121CEC  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80121CF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80121CF4  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80121CF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80121CFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80121D00  FC 03 00 28 */	fsub f0, f3, f0
/* 80121D04  FC 02 00 32 */	fmul f0, f2, f0
/* 80121D08  FC 44 00 32 */	fmul f2, f4, f0
/* 80121D0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80121D10  FC 01 00 32 */	fmul f0, f1, f0
/* 80121D14  FC 03 00 28 */	fsub f0, f3, f0
/* 80121D18  FC 02 00 32 */	fmul f0, f2, f0
/* 80121D1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80121D20  FC 00 00 32 */	fmul f0, f0, f0
/* 80121D24  FC 01 00 32 */	fmul f0, f1, f0
/* 80121D28  FC 03 00 28 */	fsub f0, f3, f0
/* 80121D2C  FC 02 00 32 */	fmul f0, f2, f0
/* 80121D30  FF E1 00 32 */	fmul f31, f1, f0
/* 80121D34  FF E0 F8 18 */	frsp f31, f31
/* 80121D38  48 00 00 90 */	b lbl_80121DC8
lbl_80121D3C:
/* 80121D3C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80121D40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121D44  40 80 00 10 */	bge lbl_80121D54
/* 80121D48  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80121D4C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80121D50  48 00 00 78 */	b lbl_80121DC8
lbl_80121D54:
/* 80121D54  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80121D58  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80121D5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80121D60  3C 00 7F 80 */	lis r0, 0x7f80
/* 80121D64  7C 03 00 00 */	cmpw r3, r0
/* 80121D68  41 82 00 14 */	beq lbl_80121D7C
/* 80121D6C  40 80 00 40 */	bge lbl_80121DAC
/* 80121D70  2C 03 00 00 */	cmpwi r3, 0
/* 80121D74  41 82 00 20 */	beq lbl_80121D94
/* 80121D78  48 00 00 34 */	b lbl_80121DAC
lbl_80121D7C:
/* 80121D7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80121D80  41 82 00 0C */	beq lbl_80121D8C
/* 80121D84  38 00 00 01 */	li r0, 1
/* 80121D88  48 00 00 28 */	b lbl_80121DB0
lbl_80121D8C:
/* 80121D8C  38 00 00 02 */	li r0, 2
/* 80121D90  48 00 00 20 */	b lbl_80121DB0
lbl_80121D94:
/* 80121D94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80121D98  41 82 00 0C */	beq lbl_80121DA4
/* 80121D9C  38 00 00 05 */	li r0, 5
/* 80121DA0  48 00 00 10 */	b lbl_80121DB0
lbl_80121DA4:
/* 80121DA4  38 00 00 03 */	li r0, 3
/* 80121DA8  48 00 00 08 */	b lbl_80121DB0
lbl_80121DAC:
/* 80121DAC  38 00 00 04 */	li r0, 4
lbl_80121DB0:
/* 80121DB0  2C 00 00 01 */	cmpwi r0, 1
/* 80121DB4  40 82 00 10 */	bne lbl_80121DC4
/* 80121DB8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80121DBC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80121DC0  48 00 00 08 */	b lbl_80121DC8
lbl_80121DC4:
/* 80121DC4  FF E0 08 90 */	fmr f31, f1
lbl_80121DC8:
/* 80121DC8  80 9B 31 A0 */	lwz r4, 0x31a0(r27)
/* 80121DCC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 80121DD0  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 80121DD4  7C 80 00 39 */	and. r0, r4, r0
/* 80121DD8  40 82 00 1C */	bne lbl_80121DF4
/* 80121DDC  80 1B 19 9C */	lwz r0, 0x199c(r27)
/* 80121DE0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80121DE4  40 82 00 50 */	bne lbl_80121E34
/* 80121DE8  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 80121DEC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80121DF0  40 82 00 44 */	bne lbl_80121E34
lbl_80121DF4:
/* 80121DF4  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 80121DF8  28 00 00 D3 */	cmplwi r0, 0xd3
/* 80121DFC  41 82 00 38 */	beq lbl_80121E34
/* 80121E00  7F 63 DB 78 */	mr r3, r27
/* 80121E04  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80121E08  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 80121E0C  7D 89 03 A6 */	mtctr r12
/* 80121E10  4E 80 04 21 */	bctrl 
/* 80121E14  28 03 00 00 */	cmplwi r3, 0
/* 80121E18  41 82 00 10 */	beq lbl_80121E28
/* 80121E1C  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 80121E20  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80121E24  41 82 00 10 */	beq lbl_80121E34
lbl_80121E28:
/* 80121E28  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 80121E2C  28 00 01 18 */	cmplwi r0, 0x118
/* 80121E30  40 82 01 98 */	bne lbl_80121FC8
lbl_80121E34:
/* 80121E34  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80121E38  7C 05 07 74 */	extsb r5, r0
/* 80121E3C  88 1B 2F 9D */	lbz r0, 0x2f9d(r27)
/* 80121E40  54 03 D7 FE */	rlwinm r3, r0, 0x1a, 0x1f, 0x1f
/* 80121E44  7C 83 00 D0 */	neg r4, r3
/* 80121E48  38 61 00 84 */	addi r3, r1, 0x84
/* 80121E4C  7C 66 20 38 */	and r6, r3, r4
/* 80121E50  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 80121E54  7C 83 00 D0 */	neg r4, r3
/* 80121E58  38 61 00 78 */	addi r3, r1, 0x78
/* 80121E5C  7C 67 20 38 */	and r7, r3, r4
/* 80121E60  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 80121E64  7C 83 00 D0 */	neg r4, r3
/* 80121E68  38 61 00 6C */	addi r3, r1, 0x6c
/* 80121E6C  7C 6A 20 38 */	and r10, r3, r4
/* 80121E70  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
/* 80121E74  7C 83 00 D0 */	neg r4, r3
/* 80121E78  38 61 00 60 */	addi r3, r1, 0x60
/* 80121E7C  7C 69 20 38 */	and r9, r3, r4
/* 80121E80  90 E1 00 08 */	stw r7, 8(r1)
/* 80121E84  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80121E88  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 80121E8C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80121E90  38 60 00 00 */	li r3, 0
/* 80121E94  90 61 00 14 */	stw r3, 0x14(r1)
/* 80121E98  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80121E9C  38 7B 2E 54 */	addi r3, r27, 0x2e54
/* 80121EA0  38 9B 01 0C */	addi r4, r27, 0x10c
/* 80121EA4  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 80121EA8  7F C6 F3 78 */	mr r6, r30
/* 80121EAC  7F A7 EB 78 */	mr r7, r29
/* 80121EB0  54 00 F7 FE */	rlwinm r0, r0, 0x1e, 0x1f, 0x1f
/* 80121EB4  7D 00 00 D0 */	neg r8, r0
/* 80121EB8  38 01 00 54 */	addi r0, r1, 0x54
/* 80121EBC  7C 08 40 38 */	and r8, r0, r8
/* 80121EC0  C0 3B 34 20 */	lfs f1, 0x3420(r27)
/* 80121EC4  FC 40 F8 90 */	fmr f2, f31
/* 80121EC8  4B F2 F4 21 */	bl setEffectFour__8dPaPoF_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff
/* 80121ECC  7F 63 DB 78 */	mr r3, r27
/* 80121ED0  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80121ED4  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 80121ED8  7D 89 03 A6 */	mtctr r12
/* 80121EDC  4E 80 04 21 */	bctrl 
/* 80121EE0  28 03 00 00 */	cmplwi r3, 0
/* 80121EE4  41 82 01 34 */	beq lbl_80122018
/* 80121EE8  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 80121EEC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80121EF0  40 81 01 28 */	ble lbl_80122018
/* 80121EF4  88 1B 2F BB */	lbz r0, 0x2fbb(r27)
/* 80121EF8  28 00 00 0D */	cmplwi r0, 0xd
/* 80121EFC  40 82 01 1C */	bne lbl_80122018
/* 80121F00  7F 63 DB 78 */	mr r3, r27
/* 80121F04  38 9B 31 C0 */	addi r4, r27, 0x31c0
/* 80121F08  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B8F@ha */
/* 80121F0C  38 A5 8B 8F */	addi r5, r5, 0x8B8F /* 0x00008B8F@l */
/* 80121F10  38 DB 1A 60 */	addi r6, r27, 0x1a60
/* 80121F14  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 80121F18  39 1B 04 E4 */	addi r8, r27, 0x4e4
/* 80121F1C  4B FF E7 19 */	bl setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz
/* 80121F20  28 03 00 00 */	cmplwi r3, 0
/* 80121F24  41 82 00 F4 */	beq lbl_80122018
/* 80121F28  38 9F 12 18 */	addi r4, r31, 0x1218
/* 80121F2C  C0 04 00 98 */	lfs f0, 0x98(r4)
/* 80121F30  EC 5F 00 24 */	fdivs f2, f31, f0
/* 80121F34  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80121F38  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80121F3C  40 81 00 08 */	ble lbl_80121F44
/* 80121F40  FC 40 00 90 */	fmr f2, f0
lbl_80121F44:
/* 80121F44  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80121F48  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 80121F4C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80121F50  EC 01 00 2A */	fadds f0, f1, f0
/* 80121F54  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80121F58  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 80121F5C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80121F60  EC 01 00 2A */	fadds f0, f1, f0
/* 80121F64  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80121F68  C0 22 93 A8 */	lfs f1, lit_9652(r2)
/* 80121F6C  C0 02 94 A8 */	lfs f0, lit_16570(r2)
/* 80121F70  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80121F74  EC 01 00 2A */	fadds f0, f1, f0
/* 80121F78  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80121F7C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80121F80  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80121F84  E0 21 00 48 */	psq_l f1, 72(r1), 0, 0 /* qr0 */
/* 80121F88  FC 00 00 18 */	frsp f0, f0
/* 80121F8C  F0 21 00 3C */	psq_st f1, 60(r1), 0, 0 /* qr0 */
/* 80121F90  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80121F94  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80121F98  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80121F9C  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80121FA0  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 80121FA4  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 80121FA8  C0 02 96 8C */	lfs f0, lit_40562(r2)
/* 80121FAC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80121FB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80121FB4  FC 00 00 1E */	fctiwz f0, f0
/* 80121FB8  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80121FBC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80121FC0  98 03 00 BB */	stb r0, 0xbb(r3)
/* 80121FC4  48 00 00 54 */	b lbl_80122018
lbl_80121FC8:
/* 80121FC8  38 60 00 00 */	li r3, 0
/* 80121FCC  90 61 00 08 */	stw r3, 8(r1)
/* 80121FD0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80121FD4  38 1B 04 DC */	addi r0, r27, 0x4dc
/* 80121FD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80121FDC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80121FE0  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80121FE4  7C 00 07 74 */	extsb r0, r0
/* 80121FE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80121FEC  38 7B 2E 54 */	addi r3, r27, 0x2e54
/* 80121FF0  38 9B 01 0C */	addi r4, r27, 0x10c
/* 80121FF4  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 80121FF8  7F C6 F3 78 */	mr r6, r30
/* 80121FFC  7F A7 EB 78 */	mr r7, r29
/* 80122000  39 00 00 00 */	li r8, 0
/* 80122004  39 20 00 00 */	li r9, 0
/* 80122008  39 40 00 00 */	li r10, 0
/* 8012200C  C0 3B 34 20 */	lfs f1, 0x3420(r27)
/* 80122010  FC 40 F8 90 */	fmr f2, f31
/* 80122014  4B F2 F2 D5 */	bl setEffectFour__8dPaPoF_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff
lbl_80122018:
/* 80122018  88 1B 2F 9E */	lbz r0, 0x2f9e(r27)
/* 8012201C  28 00 00 06 */	cmplwi r0, 6
/* 80122020  41 82 00 20 */	beq lbl_80122040
/* 80122024  7F 63 DB 78 */	mr r3, r27
/* 80122028  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8012202C  3C 80 80 3B */	lis r4, m_fEffParamProc__9daAlink_c@ha /* 0x803B2CEC@ha */
/* 80122030  38 04 2C EC */	addi r0, r4, m_fEffParamProc__9daAlink_c@l /* 0x803B2CEC@l */
/* 80122034  7D 80 2A 14 */	add r12, r0, r5
/* 80122038  48 24 00 4D */	bl __ptmf_scall
/* 8012203C  60 00 00 00 */	nop 
lbl_80122040:
/* 80122040  C0 3B 33 B4 */	lfs f1, 0x33b4(r27)
/* 80122044  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80122048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012204C  40 81 00 0C */	ble lbl_80122058
/* 80122050  38 00 00 96 */	li r0, 0x96
/* 80122054  98 1B 2F C4 */	stb r0, 0x2fc4(r27)
lbl_80122058:
/* 80122058  80 1B 05 84 */	lwz r0, 0x584(r27)
/* 8012205C  54 00 06 BB */	rlwinm. r0, r0, 0, 0x1a, 0x1d
/* 80122060  40 82 00 1C */	bne lbl_8012207C
/* 80122064  88 1B 2F C1 */	lbz r0, 0x2fc1(r27)
/* 80122068  28 00 00 06 */	cmplwi r0, 6
/* 8012206C  41 82 01 44 */	beq lbl_801221B0
/* 80122070  88 1B 2F 8C */	lbz r0, 0x2f8c(r27)
/* 80122074  28 00 00 02 */	cmplwi r0, 2
/* 80122078  41 82 01 38 */	beq lbl_801221B0
lbl_8012207C:
/* 8012207C  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80122080  C0 1B 33 B4 */	lfs f0, 0x33b4(r27)
/* 80122084  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122088  40 81 01 28 */	ble lbl_801221B0
/* 8012208C  88 1B 2F C4 */	lbz r0, 0x2fc4(r27)
/* 80122090  28 00 00 00 */	cmplwi r0, 0
/* 80122094  40 82 00 24 */	bne lbl_801220B8
/* 80122098  C0 3B 2B A8 */	lfs f1, 0x2ba8(r27)
/* 8012209C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801220A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801220A4  40 80 01 0C */	bge lbl_801221B0
/* 801220A8  C0 02 94 34 */	lfs f0, lit_14624(r2)
/* 801220AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801220B0  4C 41 13 82 */	cror 2, 1, 2
/* 801220B4  40 82 00 FC */	bne lbl_801221B0
lbl_801220B8:
/* 801220B8  C0 3B 2B A8 */	lfs f1, 0x2ba8(r27)
/* 801220BC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801220C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801220C4  40 80 00 30 */	bge lbl_801220F4
/* 801220C8  C0 02 94 34 */	lfs f0, lit_14624(r2)
/* 801220CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801220D0  4C 41 13 82 */	cror 2, 1, 2
/* 801220D4  40 82 00 20 */	bne lbl_801220F4
/* 801220D8  88 1B 2F BB */	lbz r0, 0x2fbb(r27)
/* 801220DC  28 00 00 03 */	cmplwi r0, 3
/* 801220E0  40 82 00 0C */	bne lbl_801220EC
/* 801220E4  3B A0 00 01 */	li r29, 1
/* 801220E8  48 00 00 10 */	b lbl_801220F8
lbl_801220EC:
/* 801220EC  3B A0 00 02 */	li r29, 2
/* 801220F0  48 00 00 08 */	b lbl_801220F8
lbl_801220F4:
/* 801220F4  3B A0 00 00 */	li r29, 0
lbl_801220F8:
/* 801220F8  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 801220FC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80122100  41 82 00 30 */	beq lbl_80122130
/* 80122104  88 9B 2F C1 */	lbz r4, 0x2fc1(r27)
/* 80122108  28 04 00 06 */	cmplwi r4, 6
/* 8012210C  41 82 00 24 */	beq lbl_80122130
/* 80122110  7F 63 DB 78 */	mr r3, r27
/* 80122114  4B FF F1 01 */	bl setWolfFootOn__9daAlink_cFi
/* 80122118  88 1B 2F C1 */	lbz r0, 0x2fc1(r27)
/* 8012211C  28 00 00 04 */	cmplwi r0, 4
/* 80122120  40 82 00 10 */	bne lbl_80122130
/* 80122124  7F 63 DB 78 */	mr r3, r27
/* 80122128  38 80 00 05 */	li r4, 5
/* 8012212C  4B FF F0 E9 */	bl setWolfFootOn__9daAlink_cFi
lbl_80122130:
/* 80122130  80 1B 05 84 */	lwz r0, 0x584(r27)
/* 80122134  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80122138  41 82 00 18 */	beq lbl_80122150
/* 8012213C  7F 63 DB 78 */	mr r3, r27
/* 80122140  38 9B 05 E0 */	addi r4, r27, 0x5e0
/* 80122144  A0 BB 30 BC */	lhz r5, 0x30bc(r27)
/* 80122148  7F A6 EB 78 */	mr r6, r29
/* 8012214C  4B FF F1 B9 */	bl setFootMark__9daAlink_cFP4cXyzUsi
lbl_80122150:
/* 80122150  80 1B 05 84 */	lwz r0, 0x584(r27)
/* 80122154  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80122158  41 82 00 18 */	beq lbl_80122170
/* 8012215C  7F 63 DB 78 */	mr r3, r27
/* 80122160  38 9B 05 EC */	addi r4, r27, 0x5ec
/* 80122164  A0 BB 30 BE */	lhz r5, 0x30be(r27)
/* 80122168  7F A6 EB 78 */	mr r6, r29
/* 8012216C  4B FF F1 99 */	bl setFootMark__9daAlink_cFP4cXyzUsi
lbl_80122170:
/* 80122170  80 1B 05 84 */	lwz r0, 0x584(r27)
/* 80122174  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80122178  41 82 00 18 */	beq lbl_80122190
/* 8012217C  7F 63 DB 78 */	mr r3, r27
/* 80122180  38 9B 05 C8 */	addi r4, r27, 0x5c8
/* 80122184  A0 BB 30 B8 */	lhz r5, 0x30b8(r27)
/* 80122188  7F A6 EB 78 */	mr r6, r29
/* 8012218C  4B FF F1 79 */	bl setFootMark__9daAlink_cFP4cXyzUsi
lbl_80122190:
/* 80122190  80 1B 05 84 */	lwz r0, 0x584(r27)
/* 80122194  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80122198  41 82 00 18 */	beq lbl_801221B0
/* 8012219C  7F 63 DB 78 */	mr r3, r27
/* 801221A0  38 9B 05 D4 */	addi r4, r27, 0x5d4
/* 801221A4  A0 BB 30 BA */	lhz r5, 0x30ba(r27)
/* 801221A8  7F A6 EB 78 */	mr r6, r29
/* 801221AC  4B FF F1 59 */	bl setFootMark__9daAlink_cFP4cXyzUsi
lbl_801221B0:
/* 801221B0  2C 1C 00 00 */	cmpwi r28, 0
/* 801221B4  41 82 00 14 */	beq lbl_801221C8
/* 801221B8  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 801221BC  3C 63 00 01 */	addis r3, r3, 1
/* 801221C0  38 03 80 00 */	addi r0, r3, -32768
/* 801221C4  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_801221C8:
/* 801221C8  7F 63 DB 78 */	mr r3, r27
/* 801221CC  48 00 2F 5D */	bl setFirePointDamageEffect__9daAlink_cFv
/* 801221D0  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 801221D4  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 801221D8  39 61 00 F0 */	addi r11, r1, 0xf0
/* 801221DC  48 24 00 45 */	bl _restgpr_27
/* 801221E0  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801221E4  7C 08 03 A6 */	mtlr r0
/* 801221E8  38 21 01 00 */	addi r1, r1, 0x100
/* 801221EC  4E 80 00 20 */	blr 
