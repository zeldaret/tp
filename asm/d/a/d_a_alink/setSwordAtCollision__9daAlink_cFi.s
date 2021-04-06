lbl_800AA2E0:
/* 800AA2E0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800AA2E4  7C 08 02 A6 */	mflr r0
/* 800AA2E8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800AA2EC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800AA2F0  48 2B 7E E1 */	bl _savegpr_26
/* 800AA2F4  7C 7F 1B 78 */	mr r31, r3
/* 800AA2F8  7C 9A 23 78 */	mr r26, r4
/* 800AA2FC  48 02 6B D1 */	bl checkCutDashAnime__9daAlink_cCFv
/* 800AA300  2C 03 00 00 */	cmpwi r3, 0
/* 800AA304  41 82 00 4C */	beq lbl_800AA350
/* 800AA308  7F E3 FB 78 */	mr r3, r31
/* 800AA30C  38 9F 12 2C */	addi r4, r31, 0x122c
/* 800AA310  48 02 6B ED */	bl checkCutDashEnemyHit__9daAlink_cFR12dCcD_GObjInf
/* 800AA314  2C 03 00 00 */	cmpwi r3, 0
/* 800AA318  40 82 00 2C */	bne lbl_800AA344
/* 800AA31C  7F E3 FB 78 */	mr r3, r31
/* 800AA320  38 9F 13 70 */	addi r4, r31, 0x1370
/* 800AA324  48 02 6B D9 */	bl checkCutDashEnemyHit__9daAlink_cFR12dCcD_GObjInf
/* 800AA328  2C 03 00 00 */	cmpwi r3, 0
/* 800AA32C  40 82 00 18 */	bne lbl_800AA344
/* 800AA330  7F E3 FB 78 */	mr r3, r31
/* 800AA334  38 9F 14 B4 */	addi r4, r31, 0x14b4
/* 800AA338  48 02 6B C5 */	bl checkCutDashEnemyHit__9daAlink_cFR12dCcD_GObjInf
/* 800AA33C  2C 03 00 00 */	cmpwi r3, 0
/* 800AA340  41 82 00 10 */	beq lbl_800AA350
lbl_800AA344:
/* 800AA344  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800AA348  64 00 04 00 */	oris r0, r0, 0x400
/* 800AA34C  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_800AA350:
/* 800AA350  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800AA354  28 00 00 23 */	cmplwi r0, 0x23
/* 800AA358  40 82 00 C8 */	bne lbl_800AA420
/* 800AA35C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800AA360  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800AA364  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800AA368  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800AA36C  7C 64 02 14 */	add r3, r4, r0
/* 800AA370  C0 03 00 04 */	lfs f0, 4(r3)
/* 800AA374  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800AA378  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutFnJU_c0@ha /* 0x8038DAEC@ha */
/* 800AA37C  38 63 DA EC */	addi r3, r3, m__21daAlinkHIO_cutFnJU_c0@l /* 0x8038DAEC@l */
/* 800AA380  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 800AA384  EC 04 00 32 */	fmuls f0, f4, f0
/* 800AA388  EC 61 00 2A */	fadds f3, f1, f0
/* 800AA38C  C0 5F 34 78 */	lfs f2, 0x3478(r31)
/* 800AA390  7C 04 04 2E */	lfsx f0, r4, r0
/* 800AA394  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800AA398  EC 04 00 32 */	fmuls f0, f4, f0
/* 800AA39C  EC 01 00 2A */	fadds f0, f1, f0
/* 800AA3A0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 800AA3A4  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 800AA3A8  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 800AA3AC  C0 1F 05 C0 */	lfs f0, 0x5c0(r31)
/* 800AA3B0  EC 20 10 28 */	fsubs f1, f0, f2
/* 800AA3B4  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800AA3B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AA3BC  40 80 00 08 */	bge lbl_800AA3C4
/* 800AA3C0  FC 20 00 90 */	fmr f1, f0
lbl_800AA3C4:
/* 800AA3C4  38 7F 12 14 */	addi r3, r31, 0x1214
/* 800AA3C8  48 1C 4E 31 */	bl SetH__8cM3dGCylFf
/* 800AA3CC  2C 1A 00 00 */	cmpwi r26, 0
/* 800AA3D0  41 82 00 14 */	beq lbl_800AA3E4
/* 800AA3D4  38 7F 10 F0 */	addi r3, r31, 0x10f0
/* 800AA3D8  38 81 00 74 */	addi r4, r1, 0x74
/* 800AA3DC  4B FD A5 2D */	bl StartCAt__8dCcD_CylFR4cXyz
/* 800AA3E0  48 00 00 10 */	b lbl_800AA3F0
lbl_800AA3E4:
/* 800AA3E4  38 7F 10 F0 */	addi r3, r31, 0x10f0
/* 800AA3E8  38 81 00 74 */	addi r4, r1, 0x74
/* 800AA3EC  4B FD A5 69 */	bl MoveCAt__8dCcD_CylFR4cXyz
lbl_800AA3F0:
/* 800AA3F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AA3F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AA3F8  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AA3FC  38 9F 10 F0 */	addi r4, r31, 0x10f0
/* 800AA400  48 1B A7 A9 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AA404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AA408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AA40C  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 800AA410  38 9F 10 F0 */	addi r4, r31, 0x10f0
/* 800AA414  38 A0 00 01 */	li r5, 1
/* 800AA418  4B FD B9 81 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AA41C  48 00 01 B4 */	b lbl_800AA5D0
lbl_800AA420:
/* 800AA420  38 61 00 50 */	addi r3, r1, 0x50
/* 800AA424  38 9F 05 BC */	addi r4, r31, 0x5bc
/* 800AA428  38 BF 34 98 */	addi r5, r31, 0x3498
/* 800AA42C  48 1B C7 09 */	bl __mi__4cXyzCFRC3Vec
/* 800AA430  38 61 00 44 */	addi r3, r1, 0x44
/* 800AA434  38 81 00 50 */	addi r4, r1, 0x50
/* 800AA438  C0 3F 33 D0 */	lfs f1, 0x33d0(r31)
/* 800AA43C  48 1B C7 49 */	bl __ml__4cXyzCFf
/* 800AA440  38 61 00 38 */	addi r3, r1, 0x38
/* 800AA444  38 81 00 44 */	addi r4, r1, 0x44
/* 800AA448  38 BF 34 98 */	addi r5, r31, 0x3498
/* 800AA44C  48 1B C6 99 */	bl __pl__4cXyzCFRC3Vec
/* 800AA450  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800AA454  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 800AA458  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800AA45C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 800AA460  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800AA464  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 800AA468  38 61 00 2C */	addi r3, r1, 0x2c
/* 800AA46C  38 9F 34 B0 */	addi r4, r31, 0x34b0
/* 800AA470  38 BF 34 BC */	addi r5, r31, 0x34bc
/* 800AA474  48 1B C6 C1 */	bl __mi__4cXyzCFRC3Vec
/* 800AA478  38 61 00 20 */	addi r3, r1, 0x20
/* 800AA47C  38 81 00 2C */	addi r4, r1, 0x2c
/* 800AA480  C0 3F 33 D0 */	lfs f1, 0x33d0(r31)
/* 800AA484  48 1B C7 01 */	bl __ml__4cXyzCFf
/* 800AA488  38 61 00 14 */	addi r3, r1, 0x14
/* 800AA48C  38 81 00 20 */	addi r4, r1, 0x20
/* 800AA490  38 BF 34 BC */	addi r5, r31, 0x34bc
/* 800AA494  48 1B C6 51 */	bl __pl__4cXyzCFRC3Vec
/* 800AA498  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800AA49C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800AA4A0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800AA4A4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800AA4A8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800AA4AC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800AA4B0  38 7F 13 50 */	addi r3, r31, 0x1350
/* 800AA4B4  38 9F 34 98 */	addi r4, r31, 0x3498
/* 800AA4B8  38 A1 00 74 */	addi r5, r1, 0x74
/* 800AA4BC  48 1C 4E 2D */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 800AA4C0  38 7F 14 94 */	addi r3, r31, 0x1494
/* 800AA4C4  38 81 00 68 */	addi r4, r1, 0x68
/* 800AA4C8  38 A1 00 74 */	addi r5, r1, 0x74
/* 800AA4CC  48 1C 4E 1D */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 800AA4D0  38 7F 15 D8 */	addi r3, r31, 0x15d8
/* 800AA4D4  38 9F 34 98 */	addi r4, r31, 0x3498
/* 800AA4D8  38 A1 00 68 */	addi r5, r1, 0x68
/* 800AA4DC  48 1C 4E 0D */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 800AA4E0  80 1F 12 2C */	lwz r0, 0x122c(r31)
/* 800AA4E4  60 00 00 01 */	ori r0, r0, 1
/* 800AA4E8  90 1F 12 2C */	stw r0, 0x122c(r31)
/* 800AA4EC  2C 1A 00 00 */	cmpwi r26, 0
/* 800AA4F0  41 82 00 24 */	beq lbl_800AA514
/* 800AA4F4  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 800AA4F8  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 800AA4FC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800AA500  C0 03 00 04 */	lfs f0, 4(r3)
/* 800AA504  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800AA508  C0 03 00 08 */	lfs f0, 8(r3)
/* 800AA50C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 800AA510  48 00 00 44 */	b lbl_800AA554
lbl_800AA514:
/* 800AA514  38 61 00 08 */	addi r3, r1, 8
/* 800AA518  38 9F 05 BC */	addi r4, r31, 0x5bc
/* 800AA51C  38 BF 34 B0 */	addi r5, r31, 0x34b0
/* 800AA520  48 1B C6 15 */	bl __mi__4cXyzCFRC3Vec
/* 800AA524  C0 01 00 08 */	lfs f0, 8(r1)
/* 800AA528  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800AA52C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800AA530  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800AA534  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800AA538  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 800AA53C  80 1F 13 70 */	lwz r0, 0x1370(r31)
/* 800AA540  60 00 00 01 */	ori r0, r0, 1
/* 800AA544  90 1F 13 70 */	stw r0, 0x1370(r31)
/* 800AA548  80 1F 14 B4 */	lwz r0, 0x14b4(r31)
/* 800AA54C  60 00 00 01 */	ori r0, r0, 1
/* 800AA550  90 1F 14 B4 */	stw r0, 0x14b4(r31)
lbl_800AA554:
/* 800AA554  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 800AA558  D0 5F 12 B0 */	stfs f2, 0x12b0(r31)
/* 800AA55C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 800AA560  D0 3F 12 B4 */	stfs f1, 0x12b4(r31)
/* 800AA564  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 800AA568  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 800AA56C  D0 5F 13 F4 */	stfs f2, 0x13f4(r31)
/* 800AA570  D0 3F 13 F8 */	stfs f1, 0x13f8(r31)
/* 800AA574  D0 1F 13 FC */	stfs f0, 0x13fc(r31)
/* 800AA578  D0 5F 15 38 */	stfs f2, 0x1538(r31)
/* 800AA57C  D0 3F 15 3C */	stfs f1, 0x153c(r31)
/* 800AA580  D0 1F 15 40 */	stfs f0, 0x1540(r31)
/* 800AA584  3B 40 00 00 */	li r26, 0
/* 800AA588  3B C0 00 00 */	li r30, 0
/* 800AA58C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AA590  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AA594  3B A3 23 3C */	addi r29, r3, 0x233c
/* 800AA598  3B 83 4B 88 */	addi r28, r3, 0x4b88
lbl_800AA59C:
/* 800AA59C  7F A3 EB 78 */	mr r3, r29
/* 800AA5A0  3B 7E 12 2C */	addi r27, r30, 0x122c
/* 800AA5A4  7F 7F DA 14 */	add r27, r31, r27
/* 800AA5A8  7F 64 DB 78 */	mr r4, r27
/* 800AA5AC  48 1B A5 FD */	bl Set__4cCcSFP8cCcD_Obj
/* 800AA5B0  7F 83 E3 78 */	mr r3, r28
/* 800AA5B4  7F 64 DB 78 */	mr r4, r27
/* 800AA5B8  38 A0 00 01 */	li r5, 1
/* 800AA5BC  4B FD B7 DD */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AA5C0  3B 5A 00 01 */	addi r26, r26, 1
/* 800AA5C4  2C 1A 00 03 */	cmpwi r26, 3
/* 800AA5C8  3B DE 01 44 */	addi r30, r30, 0x144
/* 800AA5CC  41 80 FF D0 */	blt lbl_800AA59C
lbl_800AA5D0:
/* 800AA5D0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800AA5D4  48 2B 7C 49 */	bl _restgpr_26
/* 800AA5D8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800AA5DC  7C 08 03 A6 */	mtlr r0
/* 800AA5E0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800AA5E4  4E 80 00 20 */	blr 
