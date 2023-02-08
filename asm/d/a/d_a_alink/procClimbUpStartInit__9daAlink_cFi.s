lbl_800FF450:
/* 800FF450  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800FF454  7C 08 02 A6 */	mflr r0
/* 800FF458  90 01 00 44 */	stw r0, 0x44(r1)
/* 800FF45C  39 61 00 40 */	addi r11, r1, 0x40
/* 800FF460  48 26 2D 7D */	bl _savegpr_29
/* 800FF464  7C 7E 1B 78 */	mr r30, r3
/* 800FF468  7C 9F 23 78 */	mr r31, r4
/* 800FF46C  4B FB 0E 51 */	bl setFrontWallType__9daAlink_cFv
/* 800FF470  88 1E 2F 91 */	lbz r0, 0x2f91(r30)
/* 800FF474  28 00 00 03 */	cmplwi r0, 3
/* 800FF478  41 82 00 0C */	beq lbl_800FF484
/* 800FF47C  38 60 00 00 */	li r3, 0
/* 800FF480  48 00 02 6C */	b lbl_800FF6EC
lbl_800FF484:
/* 800FF484  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800FF488  54 1D 03 5A */	rlwinm r29, r0, 0, 0xd, 0xd
/* 800FF48C  7F C3 F3 78 */	mr r3, r30
/* 800FF490  38 80 00 80 */	li r4, 0x80
/* 800FF494  4B FC 2A D9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FF498  7F C3 F3 78 */	mr r3, r30
/* 800FF49C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FF4A0  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 800FF4A4  38 80 00 00 */	li r4, 0
/* 800FF4A8  4B FB C2 C9 */	bl setSpecialGravity__9daAlink_cFffi
/* 800FF4AC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FF4B0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800FF4B4  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800FF4B8  2C 1F 00 00 */	cmpwi r31, 0
/* 800FF4BC  40 82 00 1C */	bne lbl_800FF4D8
/* 800FF4C0  28 1D 00 00 */	cmplwi r29, 0
/* 800FF4C4  40 82 00 14 */	bne lbl_800FF4D8
/* 800FF4C8  48 16 83 A5 */	bl cM_rnd__Fv
/* 800FF4CC  C0 02 94 A8 */	lfs f0, lit_16570(r2)
/* 800FF4D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FF4D4  40 80 00 48 */	bge lbl_800FF51C
lbl_800FF4D8:
/* 800FF4D8  7F C3 F3 78 */	mr r3, r30
/* 800FF4DC  38 80 00 A1 */	li r4, 0xa1
/* 800FF4E0  3C A0 80 39 */	lis r5, m__20daAlinkHIO_ladder_c0@ha /* 0x8038EB8C@ha */
/* 800FF4E4  38 A5 EB 8C */	addi r5, r5, m__20daAlinkHIO_ladder_c0@l /* 0x8038EB8C@l */
/* 800FF4E8  4B FA DC 0D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800FF4EC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_ladder_c0@ha /* 0x8038EB8C@ha */
/* 800FF4F0  38 63 EB 8C */	addi r3, r3, m__20daAlinkHIO_ladder_c0@l /* 0x8038EB8C@l */
/* 800FF4F4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800FF4F8  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800FF4FC  7F C3 F3 78 */	mr r3, r30
/* 800FF500  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010057@ha */
/* 800FF504  38 84 00 57 */	addi r4, r4, 0x0057 /* 0x00010057@l */
/* 800FF508  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800FF50C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800FF510  7D 89 03 A6 */	mtctr r12
/* 800FF514  4E 80 04 21 */	bctrl 
/* 800FF518  48 00 00 48 */	b lbl_800FF560
lbl_800FF51C:
/* 800FF51C  7F C3 F3 78 */	mr r3, r30
/* 800FF520  38 80 00 A7 */	li r4, 0xa7
/* 800FF524  3C A0 80 39 */	lis r5, m__20daAlinkHIO_ladder_c0@ha /* 0x8038EB8C@ha */
/* 800FF528  38 A5 EB 8C */	addi r5, r5, m__20daAlinkHIO_ladder_c0@l /* 0x8038EB8C@l */
/* 800FF52C  38 A5 00 14 */	addi r5, r5, 0x14
/* 800FF530  4B FA DB C5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800FF534  3C 60 80 39 */	lis r3, m__20daAlinkHIO_ladder_c0@ha /* 0x8038EB8C@ha */
/* 800FF538  38 63 EB 8C */	addi r3, r3, m__20daAlinkHIO_ladder_c0@l /* 0x8038EB8C@l */
/* 800FF53C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800FF540  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800FF544  7F C3 F3 78 */	mr r3, r30
/* 800FF548  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001000B@ha */
/* 800FF54C  38 84 00 0B */	addi r4, r4, 0x000B /* 0x0001000B@l */
/* 800FF550  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800FF554  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800FF558  7D 89 03 A6 */	mtctr r12
/* 800FF55C  4E 80 04 21 */	bctrl 
lbl_800FF560:
/* 800FF560  38 00 00 01 */	li r0, 1
/* 800FF564  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800FF568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FF56C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FF570  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FF574  60 00 00 08 */	ori r0, r0, 8
/* 800FF578  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FF57C  2C 1F 00 00 */	cmpwi r31, 0
/* 800FF580  41 82 00 1C */	beq lbl_800FF59C
/* 800FF584  C0 3E 34 F0 */	lfs f1, 0x34f0(r30)
/* 800FF588  3C 60 80 39 */	lis r3, m__20daAlinkHIO_ladder_c0@ha /* 0x8038EB8C@ha */
/* 800FF58C  38 63 EB 8C */	addi r3, r3, m__20daAlinkHIO_ladder_c0@l /* 0x8038EB8C@l */
/* 800FF590  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 800FF594  EC 01 00 2A */	fadds f0, f1, f0
/* 800FF598  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_800FF59C:
/* 800FF59C  38 00 00 02 */	li r0, 2
/* 800FF5A0  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FF5A4  38 00 00 01 */	li r0, 1
/* 800FF5A8  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800FF5AC  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 800FF5B0  38 83 55 14 */	addi r4, r3, l_waitBaseAnime@l /* 0x80425514@l */
/* 800FF5B4  C0 44 00 08 */	lfs f2, 8(r4)
/* 800FF5B8  C0 2D 81 18 */	lfs f1, l_ladderAnmBaseTransY(r13)
/* 800FF5BC  C0 04 00 00 */	lfs f0, 0(r4)
/* 800FF5C0  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
/* 800FF5C4  D0 3E 37 CC */	stfs f1, 0x37cc(r30)
/* 800FF5C8  D0 5E 37 D0 */	stfs f2, 0x37d0(r30)
/* 800FF5CC  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 800FF5D0  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 800FF5D4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800FF5D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FF5DC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FF5E0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FF5E4  7C 83 04 2E */	lfsx f4, r3, r0
/* 800FF5E8  7C 63 02 14 */	add r3, r3, r0
/* 800FF5EC  C0 43 00 04 */	lfs f2, 4(r3)
/* 800FF5F0  C0 65 00 1C */	lfs f3, 0x1c(r5)
/* 800FF5F4  C0 3E 34 F4 */	lfs f1, 0x34f4(r30)
/* 800FF5F8  C0 1E 37 A0 */	lfs f0, 0x37a0(r30)
/* 800FF5FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FF600  EC 40 00 B2 */	fmuls f2, f0, f2
/* 800FF604  C0 3E 34 EC */	lfs f1, 0x34ec(r30)
/* 800FF608  C0 1E 37 98 */	lfs f0, 0x3798(r30)
/* 800FF60C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FF610  EC 00 01 32 */	fmuls f0, f0, f4
/* 800FF614  EC 02 00 2A */	fadds f0, f2, f0
/* 800FF618  EC 03 00 28 */	fsubs f0, f3, f0
/* 800FF61C  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 800FF620  C0 64 00 08 */	lfs f3, 8(r4)
/* 800FF624  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 800FF628  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800FF62C  C0 1E 37 9C */	lfs f0, 0x379c(r30)
/* 800FF630  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FF634  EC 22 00 28 */	fsubs f1, f2, f0
/* 800FF638  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 800FF63C  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800FF640  D0 3E 35 8C */	stfs f1, 0x358c(r30)
/* 800FF644  D0 7E 35 90 */	stfs f3, 0x3590(r30)
/* 800FF648  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 800FF64C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 800FF650  38 61 00 20 */	addi r3, r1, 0x20
/* 800FF654  38 9E 35 88 */	addi r4, r30, 0x3588
/* 800FF658  48 16 75 2D */	bl __ml__4cXyzCFf
/* 800FF65C  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 800FF660  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 800FF664  38 61 00 14 */	addi r3, r1, 0x14
/* 800FF668  38 9E 37 C8 */	addi r4, r30, 0x37c8
/* 800FF66C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800FF670  EC 20 08 28 */	fsubs f1, f0, f1
/* 800FF674  48 16 75 11 */	bl __ml__4cXyzCFf
/* 800FF678  38 61 00 08 */	addi r3, r1, 8
/* 800FF67C  38 81 00 20 */	addi r4, r1, 0x20
/* 800FF680  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FF684  48 16 74 61 */	bl __pl__4cXyzCFRC3Vec
/* 800FF688  C0 01 00 08 */	lfs f0, 8(r1)
/* 800FF68C  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800FF690  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800FF694  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 800FF698  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800FF69C  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 800FF6A0  C0 1E 35 8C */	lfs f0, 0x358c(r30)
/* 800FF6A4  D0 1E 33 B0 */	stfs f0, 0x33b0(r30)
/* 800FF6A8  C0 1E 34 EC */	lfs f0, 0x34ec(r30)
/* 800FF6AC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800FF6B0  C0 1E 34 F4 */	lfs f0, 0x34f4(r30)
/* 800FF6B4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800FF6B8  A8 7E 30 6E */	lha r3, 0x306e(r30)
/* 800FF6BC  3C 63 00 01 */	addis r3, r3, 1
/* 800FF6C0  38 03 80 00 */	addi r0, r3, -32768
/* 800FF6C4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800FF6C8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800FF6CC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800FF6D0  38 00 00 01 */	li r0, 1
/* 800FF6D4  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800FF6D8  38 00 00 00 */	li r0, 0
/* 800FF6DC  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800FF6E0  7F C3 F3 78 */	mr r3, r30
/* 800FF6E4  4B FF EA 91 */	bl setClimbShapeOffset__9daAlink_cFv
/* 800FF6E8  38 60 00 01 */	li r3, 1
lbl_800FF6EC:
/* 800FF6EC  39 61 00 40 */	addi r11, r1, 0x40
/* 800FF6F0  48 26 2B 39 */	bl _restgpr_29
/* 800FF6F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800FF6F8  7C 08 03 A6 */	mtlr r0
/* 800FF6FC  38 21 00 40 */	addi r1, r1, 0x40
/* 800FF700  4E 80 00 20 */	blr 
