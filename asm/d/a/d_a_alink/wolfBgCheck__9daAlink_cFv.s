lbl_8012A498:
/* 8012A498  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8012A49C  7C 08 02 A6 */	mflr r0
/* 8012A4A0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8012A4A4  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8012A4A8  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 8012A4AC  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8012A4B0  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 8012A4B4  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8012A4B8  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 8012A4BC  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 8012A4C0  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 8012A4C4  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 8012A4C8  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 8012A4CC  39 61 00 90 */	addi r11, r1, 0x90
/* 8012A4D0  48 23 7C FD */	bl _savegpr_25
/* 8012A4D4  7C 7A 1B 78 */	mr r26, r3
/* 8012A4D8  80 83 05 7C */	lwz r4, 0x57c(r3)
/* 8012A4DC  3C 60 FF 80 */	lis r3, 0xFF80 /* 0xFF7FFBFF@ha */
/* 8012A4E0  38 03 FB FF */	addi r0, r3, 0xFBFF /* 0xFF7FFBFF@l */
/* 8012A4E4  7C 80 00 38 */	and r0, r4, r0
/* 8012A4E8  90 1A 05 7C */	stw r0, 0x57c(r26)
/* 8012A4EC  80 9A 31 A0 */	lwz r4, 0x31a0(r26)
/* 8012A4F0  3C 60 00 22 */	lis r3, 0x0022 /* 0x00224000@ha */
/* 8012A4F4  38 03 40 00 */	addi r0, r3, 0x4000 /* 0x00224000@l */
/* 8012A4F8  7C 80 00 39 */	and. r0, r4, r0
/* 8012A4FC  40 82 00 18 */	bne lbl_8012A514
/* 8012A500  A0 1A 2F E8 */	lhz r0, 0x2fe8(r26)
/* 8012A504  28 00 01 18 */	cmplwi r0, 0x118
/* 8012A508  41 82 00 0C */	beq lbl_8012A514
/* 8012A50C  28 00 01 59 */	cmplwi r0, 0x159
/* 8012A510  40 82 00 14 */	bne lbl_8012A524
lbl_8012A514:
/* 8012A514  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 8012A518  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 8012A51C  90 1A 05 74 */	stw r0, 0x574(r26)
/* 8012A520  48 00 07 6C */	b lbl_8012AC8C
lbl_8012A524:
/* 8012A524  3B A0 00 00 */	li r29, 0
/* 8012A528  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 8012A52C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012A530  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8012A534  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8012A538  7F E3 04 2E */	lfsx f31, r3, r0
/* 8012A53C  38 A3 00 04 */	addi r5, r3, 4
/* 8012A540  7F C5 04 2E */	lfsx f30, r5, r0
/* 8012A544  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8012A548  41 82 00 10 */	beq lbl_8012A558
/* 8012A54C  C3 A2 92 C0 */	lfs f29, lit_6108(r2)
/* 8012A550  C3 82 92 B8 */	lfs f28, lit_6040(r2)
/* 8012A554  48 00 00 14 */	b lbl_8012A568
lbl_8012A558:
/* 8012A558  A8 1A 04 E4 */	lha r0, 0x4e4(r26)
/* 8012A55C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012A560  7F A3 04 2E */	lfsx f29, r3, r0
/* 8012A564  7F 85 04 2E */	lfsx f28, r5, r0
lbl_8012A568:
/* 8012A568  54 80 77 FE */	rlwinm r0, r4, 0xe, 0x1f, 0x1f
/* 8012A56C  7C 60 00 D0 */	neg r3, r0
/* 8012A570  38 00 00 02 */	li r0, 2
/* 8012A574  7C 1B 18 78 */	andc r27, r0, r3
/* 8012A578  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8012A57C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8012A580  90 01 00 64 */	stw r0, 0x64(r1)
/* 8012A584  3B 80 00 00 */	li r28, 0
/* 8012A588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8012A58C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012A590  3B C3 0F 38 */	addi r30, r3, 0xf38
lbl_8012A594:
/* 8012A594  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 8012A598  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 8012A59C  C0 1A 19 60 */	lfs f0, 0x1960(r26)
/* 8012A5A0  EC 21 00 2A */	fadds f1, f1, f0
/* 8012A5A4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 8012A5A8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8012A5AC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8012A5B0  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8012A5B4  80 1A 19 9C */	lwz r0, 0x199c(r26)
/* 8012A5B8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8012A5BC  41 82 00 10 */	beq lbl_8012A5CC
/* 8012A5C0  C0 1A 04 FC */	lfs f0, 0x4fc(r26)
/* 8012A5C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012A5C8  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_8012A5CC:
/* 8012A5CC  2C 1C 00 00 */	cmpwi r28, 0
/* 8012A5D0  40 82 00 0C */	bne lbl_8012A5DC
/* 8012A5D4  C0 82 93 CC */	lfs f4, lit_10532(r2)
/* 8012A5D8  48 00 00 08 */	b lbl_8012A5E0
lbl_8012A5DC:
/* 8012A5DC  C0 82 94 68 */	lfs f4, lit_14955(r2)
lbl_8012A5E0:
/* 8012A5E0  EC 64 07 32 */	fmuls f3, f4, f28
/* 8012A5E4  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 8012A5E8  EC 03 07 B2 */	fmuls f0, f3, f30
/* 8012A5EC  EC 41 00 2A */	fadds f2, f1, f0
/* 8012A5F0  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 8012A5F4  EC 03 07 F2 */	fmuls f0, f3, f31
/* 8012A5F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8012A5FC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8012A600  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8012A604  EC 04 07 72 */	fmuls f0, f4, f29
/* 8012A608  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012A60C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8012A610  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8012A614  7F 43 D3 78 */	mr r3, r26
/* 8012A618  38 81 00 48 */	addi r4, r1, 0x48
/* 8012A61C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8012A620  38 C1 00 30 */	addi r6, r1, 0x30
/* 8012A624  7F 67 DB 78 */	mr r7, r27
/* 8012A628  39 00 00 00 */	li r8, 0
/* 8012A62C  39 3A 2F CA */	addi r9, r26, 0x2fca
/* 8012A630  4B FC DB 91 */	bl getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc
/* 8012A634  7C 7F 1B 79 */	or. r31, r3, r3
/* 8012A638  41 82 00 7C */	beq lbl_8012A6B4
/* 8012A63C  7F C3 F3 78 */	mr r3, r30
/* 8012A640  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 8012A644  4B F4 AB 59 */	bl GetPolyAttackThrough__4dBgSFRC13cBgS_PolyInfo
/* 8012A648  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012A64C  41 82 00 10 */	beq lbl_8012A65C
/* 8012A650  80 1A 05 7C */	lwz r0, 0x57c(r26)
/* 8012A654  60 00 04 00 */	ori r0, r0, 0x400
/* 8012A658  90 1A 05 7C */	stw r0, 0x57c(r26)
lbl_8012A65C:
/* 8012A65C  7F 43 D3 78 */	mr r3, r26
/* 8012A660  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 8012A664  4B FF FD B9 */	bl checkWolfBarrierWallHit__9daAlink_cFR13cBgS_PolyInfo
/* 8012A668  2C 03 00 00 */	cmpwi r3, 0
/* 8012A66C  41 82 00 14 */	beq lbl_8012A680
/* 8012A670  7F 43 D3 78 */	mr r3, r26
/* 8012A674  38 9A 1B 48 */	addi r4, r26, 0x1b48
/* 8012A678  4B FF 98 59 */	bl setWolfBarrierHitEffect__9daAlink_cFR11dBgS_LinChk
/* 8012A67C  48 00 00 38 */	b lbl_8012A6B4
lbl_8012A680:
/* 8012A680  80 1A 05 7C */	lwz r0, 0x57c(r26)
/* 8012A684  64 00 00 80 */	oris r0, r0, 0x80
/* 8012A688  90 1A 05 7C */	stw r0, 0x57c(r26)
/* 8012A68C  7F C3 F3 78 */	mr r3, r30
/* 8012A690  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 8012A694  38 A1 00 54 */	addi r5, r1, 0x54
/* 8012A698  4B F4 A0 AD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8012A69C  C0 1A 1B 78 */	lfs f0, 0x1b78(r26)
/* 8012A6A0  D0 1A 37 8C */	stfs f0, 0x378c(r26)
/* 8012A6A4  C0 1A 1B 7C */	lfs f0, 0x1b7c(r26)
/* 8012A6A8  D0 1A 37 90 */	stfs f0, 0x3790(r26)
/* 8012A6AC  C0 1A 1B 80 */	lfs f0, 0x1b80(r26)
/* 8012A6B0  D0 1A 37 94 */	stfs f0, 0x3794(r26)
lbl_8012A6B4:
/* 8012A6B4  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8012A6B8  C0 3A 19 60 */	lfs f1, 0x1960(r26)
/* 8012A6BC  C0 1A 18 E0 */	lfs f0, 0x18e0(r26)
/* 8012A6C0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8012A6C4  EC 02 08 28 */	fsubs f0, f2, f1
/* 8012A6C8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8012A6CC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8012A6D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8012A6D4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8012A6D8  7F 43 D3 78 */	mr r3, r26
/* 8012A6DC  38 81 00 48 */	addi r4, r1, 0x48
/* 8012A6E0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8012A6E4  38 C1 00 24 */	addi r6, r1, 0x24
/* 8012A6E8  7F 67 DB 78 */	mr r7, r27
/* 8012A6EC  39 00 00 00 */	li r8, 0
/* 8012A6F0  39 3A 2F CA */	addi r9, r26, 0x2fca
/* 8012A6F4  4B FC DA CD */	bl getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc
/* 8012A6F8  7C 79 1B 79 */	or. r25, r3, r3
/* 8012A6FC  41 82 00 7C */	beq lbl_8012A778
/* 8012A700  7F C3 F3 78 */	mr r3, r30
/* 8012A704  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 8012A708  4B F4 AA 95 */	bl GetPolyAttackThrough__4dBgSFRC13cBgS_PolyInfo
/* 8012A70C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012A710  41 82 00 10 */	beq lbl_8012A720
/* 8012A714  80 1A 05 7C */	lwz r0, 0x57c(r26)
/* 8012A718  60 00 04 00 */	ori r0, r0, 0x400
/* 8012A71C  90 1A 05 7C */	stw r0, 0x57c(r26)
lbl_8012A720:
/* 8012A720  7F 43 D3 78 */	mr r3, r26
/* 8012A724  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 8012A728  4B FF FC F5 */	bl checkWolfBarrierWallHit__9daAlink_cFR13cBgS_PolyInfo
/* 8012A72C  2C 03 00 00 */	cmpwi r3, 0
/* 8012A730  41 82 00 14 */	beq lbl_8012A744
/* 8012A734  7F 43 D3 78 */	mr r3, r26
/* 8012A738  38 9A 1B 48 */	addi r4, r26, 0x1b48
/* 8012A73C  4B FF 97 95 */	bl setWolfBarrierHitEffect__9daAlink_cFR11dBgS_LinChk
/* 8012A740  48 00 00 38 */	b lbl_8012A778
lbl_8012A744:
/* 8012A744  80 1A 05 7C */	lwz r0, 0x57c(r26)
/* 8012A748  64 00 00 80 */	oris r0, r0, 0x80
/* 8012A74C  90 1A 05 7C */	stw r0, 0x57c(r26)
/* 8012A750  7F C3 F3 78 */	mr r3, r30
/* 8012A754  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 8012A758  38 A1 00 54 */	addi r5, r1, 0x54
/* 8012A75C  4B F4 9F E9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8012A760  C0 1A 1B 78 */	lfs f0, 0x1b78(r26)
/* 8012A764  D0 1A 37 8C */	stfs f0, 0x378c(r26)
/* 8012A768  C0 1A 1B 7C */	lfs f0, 0x1b7c(r26)
/* 8012A76C  D0 1A 37 90 */	stfs f0, 0x3790(r26)
/* 8012A770  C0 1A 1B 80 */	lfs f0, 0x1b80(r26)
/* 8012A774  D0 1A 37 94 */	stfs f0, 0x3794(r26)
lbl_8012A778:
/* 8012A778  2C 1F 00 00 */	cmpwi r31, 0
/* 8012A77C  40 82 00 0C */	bne lbl_8012A788
/* 8012A780  2C 19 00 00 */	cmpwi r25, 0
/* 8012A784  41 82 03 3C */	beq lbl_8012AAC0
lbl_8012A788:
/* 8012A788  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 8012A78C  64 00 20 00 */	oris r0, r0, 0x2000
/* 8012A790  90 1A 05 74 */	stw r0, 0x574(r26)
/* 8012A794  2C 1F 00 00 */	cmpwi r31, 0
/* 8012A798  41 82 00 60 */	beq lbl_8012A7F8
/* 8012A79C  2C 19 00 00 */	cmpwi r25, 0
/* 8012A7A0  41 82 00 58 */	beq lbl_8012A7F8
/* 8012A7A4  38 61 00 24 */	addi r3, r1, 0x24
/* 8012A7A8  48 21 C9 91 */	bl PSVECSquareMag
/* 8012A7AC  FF 60 08 90 */	fmr f27, f1
/* 8012A7B0  38 61 00 30 */	addi r3, r1, 0x30
/* 8012A7B4  48 21 C9 85 */	bl PSVECSquareMag
/* 8012A7B8  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 8012A7BC  40 81 00 20 */	ble lbl_8012A7DC
/* 8012A7C0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8012A7C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8012A7C8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8012A7CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8012A7D0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8012A7D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8012A7D8  48 00 00 5C */	b lbl_8012A834
lbl_8012A7DC:
/* 8012A7DC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8012A7E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8012A7E4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8012A7E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8012A7EC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8012A7F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8012A7F4  48 00 00 40 */	b lbl_8012A834
lbl_8012A7F8:
/* 8012A7F8  2C 1F 00 00 */	cmpwi r31, 0
/* 8012A7FC  41 82 00 20 */	beq lbl_8012A81C
/* 8012A800  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8012A804  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8012A808  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8012A80C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8012A810  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8012A814  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8012A818  48 00 00 1C */	b lbl_8012A834
lbl_8012A81C:
/* 8012A81C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8012A820  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8012A824  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8012A828  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8012A82C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8012A830  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_8012A834:
/* 8012A834  38 61 00 48 */	addi r3, r1, 0x48
/* 8012A838  38 81 00 18 */	addi r4, r1, 0x18
/* 8012A83C  7C 65 1B 78 */	mr r5, r3
/* 8012A840  48 21 C8 75 */	bl PSVECSubtract
/* 8012A844  38 61 00 3C */	addi r3, r1, 0x3c
/* 8012A848  38 81 00 18 */	addi r4, r1, 0x18
/* 8012A84C  7C 65 1B 78 */	mr r5, r3
/* 8012A850  48 21 C8 65 */	bl PSVECSubtract
/* 8012A854  7F 43 D3 78 */	mr r3, r26
/* 8012A858  38 81 00 48 */	addi r4, r1, 0x48
/* 8012A85C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8012A860  38 C1 00 30 */	addi r6, r1, 0x30
/* 8012A864  7F 67 DB 78 */	mr r7, r27
/* 8012A868  39 00 00 00 */	li r8, 0
/* 8012A86C  39 20 00 00 */	li r9, 0
/* 8012A870  4B FC D9 51 */	bl getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc
/* 8012A874  7C 7F 1B 78 */	mr r31, r3
/* 8012A878  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8012A87C  C0 3A 19 60 */	lfs f1, 0x1960(r26)
/* 8012A880  C0 1A 18 E0 */	lfs f0, 0x18e0(r26)
/* 8012A884  EC 21 00 28 */	fsubs f1, f1, f0
/* 8012A888  EC 02 08 2A */	fadds f0, f2, f1
/* 8012A88C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8012A890  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8012A894  EC 00 08 2A */	fadds f0, f0, f1
/* 8012A898  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8012A89C  7F 43 D3 78 */	mr r3, r26
/* 8012A8A0  38 81 00 48 */	addi r4, r1, 0x48
/* 8012A8A4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8012A8A8  38 C1 00 24 */	addi r6, r1, 0x24
/* 8012A8AC  7F 67 DB 78 */	mr r7, r27
/* 8012A8B0  39 00 00 00 */	li r8, 0
/* 8012A8B4  39 20 00 00 */	li r9, 0
/* 8012A8B8  4B FC D9 09 */	bl getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc
/* 8012A8BC  2C 1F 00 00 */	cmpwi r31, 0
/* 8012A8C0  40 82 00 0C */	bne lbl_8012A8CC
/* 8012A8C4  2C 03 00 00 */	cmpwi r3, 0
/* 8012A8C8  41 82 00 84 */	beq lbl_8012A94C
lbl_8012A8CC:
/* 8012A8CC  2C 1F 00 00 */	cmpwi r31, 0
/* 8012A8D0  41 82 00 50 */	beq lbl_8012A920
/* 8012A8D4  2C 03 00 00 */	cmpwi r3, 0
/* 8012A8D8  41 82 00 48 */	beq lbl_8012A920
/* 8012A8DC  38 61 00 24 */	addi r3, r1, 0x24
/* 8012A8E0  48 21 C8 59 */	bl PSVECSquareMag
/* 8012A8E4  FF 60 08 90 */	fmr f27, f1
/* 8012A8E8  38 61 00 30 */	addi r3, r1, 0x30
/* 8012A8EC  48 21 C8 4D */	bl PSVECSquareMag
/* 8012A8F0  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 8012A8F4  40 81 00 18 */	ble lbl_8012A90C
/* 8012A8F8  38 61 00 18 */	addi r3, r1, 0x18
/* 8012A8FC  38 81 00 30 */	addi r4, r1, 0x30
/* 8012A900  7C 65 1B 78 */	mr r5, r3
/* 8012A904  48 21 C7 8D */	bl PSVECAdd
/* 8012A908  48 00 00 44 */	b lbl_8012A94C
lbl_8012A90C:
/* 8012A90C  38 61 00 18 */	addi r3, r1, 0x18
/* 8012A910  38 81 00 24 */	addi r4, r1, 0x24
/* 8012A914  7C 65 1B 78 */	mr r5, r3
/* 8012A918  48 21 C7 79 */	bl PSVECAdd
/* 8012A91C  48 00 00 30 */	b lbl_8012A94C
lbl_8012A920:
/* 8012A920  2C 1F 00 00 */	cmpwi r31, 0
/* 8012A924  41 82 00 18 */	beq lbl_8012A93C
/* 8012A928  38 61 00 18 */	addi r3, r1, 0x18
/* 8012A92C  38 81 00 30 */	addi r4, r1, 0x30
/* 8012A930  7C 65 1B 78 */	mr r5, r3
/* 8012A934  48 21 C7 5D */	bl PSVECAdd
/* 8012A938  48 00 00 14 */	b lbl_8012A94C
lbl_8012A93C:
/* 8012A93C  38 61 00 18 */	addi r3, r1, 0x18
/* 8012A940  38 81 00 24 */	addi r4, r1, 0x24
/* 8012A944  7C 65 1B 78 */	mr r5, r3
/* 8012A948  48 21 C7 49 */	bl PSVECAdd
lbl_8012A94C:
/* 8012A94C  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8012A950  38 81 00 18 */	addi r4, r1, 0x18
/* 8012A954  7C 65 1B 78 */	mr r5, r3
/* 8012A958  48 21 C7 5D */	bl PSVECSubtract
/* 8012A95C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8012A960  FC 20 00 50 */	fneg f1, f0
/* 8012A964  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8012A968  FC 40 00 50 */	fneg f2, f0
/* 8012A96C  48 13 CD 09 */	bl cM_atan2s__Fff
/* 8012A970  B0 7A 30 92 */	sth r3, 0x3092(r26)
/* 8012A974  80 1A 05 7C */	lwz r0, 0x57c(r26)
/* 8012A978  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8012A97C  41 82 01 40 */	beq lbl_8012AABC
/* 8012A980  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8012A984  FC 20 00 50 */	fneg f1, f0
/* 8012A988  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8012A98C  FC 40 00 50 */	fneg f2, f0
/* 8012A990  48 13 CC E5 */	bl cM_atan2s__Fff
/* 8012A994  7C 7F 1B 78 */	mr r31, r3
/* 8012A998  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8012A99C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8012A9A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012A9A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8012A9A8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8012A9AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8012A9B0  38 61 00 0C */	addi r3, r1, 0xc
/* 8012A9B4  48 21 C7 85 */	bl PSVECSquareMag
/* 8012A9B8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012A9BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012A9C0  40 81 00 58 */	ble lbl_8012AA18
/* 8012A9C4  FC 00 08 34 */	frsqrte f0, f1
/* 8012A9C8  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8012A9CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8012A9D0  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8012A9D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8012A9D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8012A9DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8012A9E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8012A9E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8012A9E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8012A9EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8012A9F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8012A9F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8012A9F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8012A9FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8012AA00  FC 01 00 32 */	fmul f0, f1, f0
/* 8012AA04  FC 03 00 28 */	fsub f0, f3, f0
/* 8012AA08  FC 02 00 32 */	fmul f0, f2, f0
/* 8012AA0C  FC 41 00 32 */	fmul f2, f1, f0
/* 8012AA10  FC 40 10 18 */	frsp f2, f2
/* 8012AA14  48 00 00 90 */	b lbl_8012AAA4
lbl_8012AA18:
/* 8012AA18  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8012AA1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012AA20  40 80 00 10 */	bge lbl_8012AA30
/* 8012AA24  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012AA28  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012AA2C  48 00 00 78 */	b lbl_8012AAA4
lbl_8012AA30:
/* 8012AA30  D0 21 00 08 */	stfs f1, 8(r1)
/* 8012AA34  80 81 00 08 */	lwz r4, 8(r1)
/* 8012AA38  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8012AA3C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8012AA40  7C 03 00 00 */	cmpw r3, r0
/* 8012AA44  41 82 00 14 */	beq lbl_8012AA58
/* 8012AA48  40 80 00 40 */	bge lbl_8012AA88
/* 8012AA4C  2C 03 00 00 */	cmpwi r3, 0
/* 8012AA50  41 82 00 20 */	beq lbl_8012AA70
/* 8012AA54  48 00 00 34 */	b lbl_8012AA88
lbl_8012AA58:
/* 8012AA58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012AA5C  41 82 00 0C */	beq lbl_8012AA68
/* 8012AA60  38 00 00 01 */	li r0, 1
/* 8012AA64  48 00 00 28 */	b lbl_8012AA8C
lbl_8012AA68:
/* 8012AA68  38 00 00 02 */	li r0, 2
/* 8012AA6C  48 00 00 20 */	b lbl_8012AA8C
lbl_8012AA70:
/* 8012AA70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012AA74  41 82 00 0C */	beq lbl_8012AA80
/* 8012AA78  38 00 00 05 */	li r0, 5
/* 8012AA7C  48 00 00 10 */	b lbl_8012AA8C
lbl_8012AA80:
/* 8012AA80  38 00 00 03 */	li r0, 3
/* 8012AA84  48 00 00 08 */	b lbl_8012AA8C
lbl_8012AA88:
/* 8012AA88  38 00 00 04 */	li r0, 4
lbl_8012AA8C:
/* 8012AA8C  2C 00 00 01 */	cmpwi r0, 1
/* 8012AA90  40 82 00 10 */	bne lbl_8012AAA0
/* 8012AA94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012AA98  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012AA9C  48 00 00 08 */	b lbl_8012AAA4
lbl_8012AAA0:
/* 8012AAA0  FC 40 08 90 */	fmr f2, f1
lbl_8012AAA4:
/* 8012AAA4  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8012AAA8  48 13 CB CD */	bl cM_atan2s__Fff
/* 8012AAAC  B0 7A 31 66 */	sth r3, 0x3166(r26)
/* 8012AAB0  B3 FA 31 68 */	sth r31, 0x3168(r26)
/* 8012AAB4  38 00 00 00 */	li r0, 0
/* 8012AAB8  B0 1A 31 6A */	sth r0, 0x316a(r26)
lbl_8012AABC:
/* 8012AABC  3B BD 00 01 */	addi r29, r29, 1
lbl_8012AAC0:
/* 8012AAC0  3B 9C 00 01 */	addi r28, r28, 1
/* 8012AAC4  2C 1C 00 02 */	cmpwi r28, 2
/* 8012AAC8  41 80 FA CC */	blt lbl_8012A594
/* 8012AACC  2C 1D 00 00 */	cmpwi r29, 0
/* 8012AAD0  40 82 01 28 */	bne lbl_8012ABF8
/* 8012AAD4  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 8012AAD8  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8012AADC  41 82 01 1C */	beq lbl_8012ABF8
/* 8012AAE0  3B 20 00 00 */	li r25, 0
lbl_8012AAE4:
/* 8012AAE4  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 8012AAE8  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 8012AAEC  C0 1A 19 60 */	lfs f0, 0x1960(r26)
/* 8012AAF0  EC 21 00 2A */	fadds f1, f1, f0
/* 8012AAF4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 8012AAF8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8012AAFC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8012AB00  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8012AB04  80 1A 19 9C */	lwz r0, 0x199c(r26)
/* 8012AB08  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8012AB0C  41 82 00 10 */	beq lbl_8012AB1C
/* 8012AB10  C0 1A 04 FC */	lfs f0, 0x4fc(r26)
/* 8012AB14  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012AB18  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_8012AB1C:
/* 8012AB1C  2C 19 00 00 */	cmpwi r25, 0
/* 8012AB20  40 82 00 0C */	bne lbl_8012AB2C
/* 8012AB24  C0 62 97 18 */	lfs f3, lit_42493(r2)
/* 8012AB28  48 00 00 08 */	b lbl_8012AB30
lbl_8012AB2C:
/* 8012AB2C  C0 62 93 50 */	lfs f3, lit_8247(r2)
lbl_8012AB30:
/* 8012AB30  EC 83 07 32 */	fmuls f4, f3, f28
/* 8012AB34  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 8012AB38  EC 04 07 B2 */	fmuls f0, f4, f30
/* 8012AB3C  EC 41 00 2A */	fadds f2, f1, f0
/* 8012AB40  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 8012AB44  EC 04 07 F2 */	fmuls f0, f4, f31
/* 8012AB48  EC 01 00 2A */	fadds f0, f1, f0
/* 8012AB4C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8012AB50  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8012AB54  EC 03 07 72 */	fmuls f0, f3, f29
/* 8012AB58  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012AB5C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8012AB60  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8012AB64  7F 43 D3 78 */	mr r3, r26
/* 8012AB68  38 81 00 48 */	addi r4, r1, 0x48
/* 8012AB6C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8012AB70  38 C1 00 30 */	addi r6, r1, 0x30
/* 8012AB74  7F 67 DB 78 */	mr r7, r27
/* 8012AB78  39 00 00 00 */	li r8, 0
/* 8012AB7C  39 20 00 00 */	li r9, 0
/* 8012AB80  4B FC D6 41 */	bl getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc
/* 8012AB84  2C 03 00 00 */	cmpwi r3, 0
/* 8012AB88  40 82 00 5C */	bne lbl_8012ABE4
/* 8012AB8C  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8012AB90  C0 3A 19 60 */	lfs f1, 0x1960(r26)
/* 8012AB94  C0 1A 18 E0 */	lfs f0, 0x18e0(r26)
/* 8012AB98  EC 21 00 28 */	fsubs f1, f1, f0
/* 8012AB9C  EC 02 08 28 */	fsubs f0, f2, f1
/* 8012ABA0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8012ABA4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8012ABA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8012ABAC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8012ABB0  7F 43 D3 78 */	mr r3, r26
/* 8012ABB4  38 81 00 48 */	addi r4, r1, 0x48
/* 8012ABB8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8012ABBC  38 C1 00 24 */	addi r6, r1, 0x24
/* 8012ABC0  7F 67 DB 78 */	mr r7, r27
/* 8012ABC4  39 00 00 00 */	li r8, 0
/* 8012ABC8  39 20 00 00 */	li r9, 0
/* 8012ABCC  4B FC D5 F5 */	bl getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc
/* 8012ABD0  2C 03 00 00 */	cmpwi r3, 0
/* 8012ABD4  40 82 00 10 */	bne lbl_8012ABE4
/* 8012ABD8  3B 39 00 01 */	addi r25, r25, 1
/* 8012ABDC  2C 19 00 02 */	cmpwi r25, 2
/* 8012ABE0  41 80 FF 04 */	blt lbl_8012AAE4
lbl_8012ABE4:
/* 8012ABE4  2C 19 00 02 */	cmpwi r25, 2
/* 8012ABE8  40 82 00 10 */	bne lbl_8012ABF8
/* 8012ABEC  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 8012ABF0  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 8012ABF4  90 1A 05 74 */	stw r0, 0x574(r26)
lbl_8012ABF8:
/* 8012ABF8  2C 1D 00 02 */	cmpwi r29, 2
/* 8012ABFC  40 82 00 70 */	bne lbl_8012AC6C
/* 8012AC00  88 1A 2F A6 */	lbz r0, 0x2fa6(r26)
/* 8012AC04  28 00 00 00 */	cmplwi r0, 0
/* 8012AC08  40 82 00 58 */	bne lbl_8012AC60
/* 8012AC0C  80 1A 05 8C */	lwz r0, 0x58c(r26)
/* 8012AC10  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8012AC14  40 82 00 4C */	bne lbl_8012AC60
/* 8012AC18  A8 7A 04 E6 */	lha r3, 0x4e6(r26)
/* 8012AC1C  A8 1A 30 92 */	lha r0, 0x3092(r26)
/* 8012AC20  7C 03 00 50 */	subf r0, r3, r0
/* 8012AC24  7C 03 07 35 */	extsh. r3, r0
/* 8012AC28  41 81 00 10 */	bgt lbl_8012AC38
/* 8012AC2C  38 03 40 00 */	addi r0, r3, 0x4000
/* 8012AC30  7C 03 07 34 */	extsh r3, r0
/* 8012AC34  48 00 00 08 */	b lbl_8012AC3C
lbl_8012AC38:
/* 8012AC38  38 63 C0 00 */	addi r3, r3, -16384
lbl_8012AC3C:
/* 8012AC3C  A8 1A 2F E6 */	lha r0, 0x2fe6(r26)
/* 8012AC40  7C 00 1A 14 */	add r0, r0, r3
/* 8012AC44  B0 1A 2F E6 */	sth r0, 0x2fe6(r26)
/* 8012AC48  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 8012AC4C  7C 00 1A 14 */	add r0, r0, r3
/* 8012AC50  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 8012AC54  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 8012AC58  7C 00 1A 14 */	add r0, r0, r3
/* 8012AC5C  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
lbl_8012AC60:
/* 8012AC60  38 00 00 03 */	li r0, 3
/* 8012AC64  98 1A 2F A6 */	stb r0, 0x2fa6(r26)
/* 8012AC68  48 00 00 18 */	b lbl_8012AC80
lbl_8012AC6C:
/* 8012AC6C  88 7A 2F A6 */	lbz r3, 0x2fa6(r26)
/* 8012AC70  28 03 00 00 */	cmplwi r3, 0
/* 8012AC74  41 82 00 0C */	beq lbl_8012AC80
/* 8012AC78  38 03 FF FF */	addi r0, r3, -1
/* 8012AC7C  98 1A 2F A6 */	stb r0, 0x2fa6(r26)
lbl_8012AC80:
/* 8012AC80  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8012AC84  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8012AC88  90 01 00 64 */	stw r0, 0x64(r1)
lbl_8012AC8C:
/* 8012AC8C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 8012AC90  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8012AC94  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 8012AC98  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8012AC9C  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 8012ACA0  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8012ACA4  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 8012ACA8  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 8012ACAC  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 8012ACB0  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 8012ACB4  39 61 00 90 */	addi r11, r1, 0x90
/* 8012ACB8  48 23 75 61 */	bl _restgpr_25
/* 8012ACBC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8012ACC0  7C 08 03 A6 */	mtlr r0
/* 8012ACC4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8012ACC8  4E 80 00 20 */	blr 
