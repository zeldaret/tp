lbl_8072D640:
/* 8072D640  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8072D644  7C 08 02 A6 */	mflr r0
/* 8072D648  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8072D64C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8072D650  4B C3 4B 88 */	b _savegpr_28
/* 8072D654  7C 7E 1B 78 */	mr r30, r3
/* 8072D658  38 61 00 2C */	addi r3, r1, 0x2c
/* 8072D65C  4B 94 A6 0C */	b __ct__11dBgS_LinChkFv
/* 8072D660  7F C3 F3 78 */	mr r3, r30
/* 8072D664  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8072D668  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 8072D66C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8072D670  4B 8E D0 A0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072D674  7C 7D 1B 78 */	mr r29, r3
/* 8072D678  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8072D67C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8072D680  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8072D684  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8072D688  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8072D68C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8072D690  3C 60 80 73 */	lis r3, lit_3911@ha
/* 8072D694  C0 43 5B 28 */	lfs f2, lit_3911@l(r3)
/* 8072D698  EC 01 10 2A */	fadds f0, f1, f2
/* 8072D69C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8072D6A0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8072D6A4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8072D6A8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8072D6AC  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8072D6B0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8072D6B4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8072D6B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8072D6BC  EC 01 10 2A */	fadds f0, f1, f2
/* 8072D6C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8072D6C4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8072D6C8  38 81 00 20 */	addi r4, r1, 0x20
/* 8072D6CC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8072D6D0  38 C0 00 00 */	li r6, 0
/* 8072D6D4  4B 94 A6 90 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8072D6D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072D6DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072D6E0  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8072D6E4  7F E3 FB 78 */	mr r3, r31
/* 8072D6E8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8072D6EC  4B 94 6C C8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8072D6F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072D6F4  40 82 00 18 */	bne lbl_8072D70C
/* 8072D6F8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8072D6FC  38 80 FF FF */	li r4, -1
/* 8072D700  4B 94 A5 DC */	b __dt__11dBgS_LinChkFv
/* 8072D704  38 60 00 00 */	li r3, 0
/* 8072D708  48 00 01 5C */	b lbl_8072D864
lbl_8072D70C:
/* 8072D70C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8072D710  D0 01 00 08 */	stfs f0, 8(r1)
/* 8072D714  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8072D718  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8072D71C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8072D720  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8072D724  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8072D728  3C 60 80 73 */	lis r3, lit_4463@ha
/* 8072D72C  C0 43 5B CC */	lfs f2, lit_4463@l(r3)
/* 8072D730  7F BD 07 34 */	extsh r29, r29
/* 8072D734  38 1D 40 00 */	addi r0, r29, 0x4000
/* 8072D738  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8072D73C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8072D740  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8072D744  7C 03 04 2E */	lfsx f0, r3, r0
/* 8072D748  EC 02 00 32 */	fmuls f0, f2, f0
/* 8072D74C  EC 01 00 2A */	fadds f0, f1, f0
/* 8072D750  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8072D754  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8072D758  3B 83 00 04 */	addi r28, r3, 4
/* 8072D75C  7C 1C 04 2E */	lfsx f0, r28, r0
/* 8072D760  EC 02 00 32 */	fmuls f0, f2, f0
/* 8072D764  EC 01 00 2A */	fadds f0, f1, f0
/* 8072D768  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8072D76C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8072D770  38 81 00 20 */	addi r4, r1, 0x20
/* 8072D774  38 A1 00 14 */	addi r5, r1, 0x14
/* 8072D778  38 C0 00 00 */	li r6, 0
/* 8072D77C  4B 94 A5 E8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8072D780  7F E3 FB 78 */	mr r3, r31
/* 8072D784  38 81 00 2C */	addi r4, r1, 0x2c
/* 8072D788  4B 94 6C 2C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8072D78C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072D790  40 82 00 28 */	bne lbl_8072D7B8
/* 8072D794  38 61 00 20 */	addi r3, r1, 0x20
/* 8072D798  38 81 00 14 */	addi r4, r1, 0x14
/* 8072D79C  4B B4 34 68 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8072D7A0  B0 7E 06 DA */	sth r3, 0x6da(r30)
/* 8072D7A4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8072D7A8  38 80 FF FF */	li r4, -1
/* 8072D7AC  4B 94 A5 30 */	b __dt__11dBgS_LinChkFv
/* 8072D7B0  38 60 00 01 */	li r3, 1
/* 8072D7B4  48 00 00 B0 */	b lbl_8072D864
lbl_8072D7B8:
/* 8072D7B8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8072D7BC  3C 60 80 73 */	lis r3, lit_4463@ha
/* 8072D7C0  C0 43 5B CC */	lfs f2, lit_4463@l(r3)
/* 8072D7C4  38 1D C0 00 */	addi r0, r29, -16384
/* 8072D7C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8072D7CC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8072D7D0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8072D7D4  7C 03 04 2E */	lfsx f0, r3, r0
/* 8072D7D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8072D7DC  EC 01 00 2A */	fadds f0, f1, f0
/* 8072D7E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8072D7E4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8072D7E8  7C 1C 04 2E */	lfsx f0, r28, r0
/* 8072D7EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8072D7F0  EC 01 00 2A */	fadds f0, f1, f0
/* 8072D7F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8072D7F8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8072D7FC  38 81 00 20 */	addi r4, r1, 0x20
/* 8072D800  38 A1 00 08 */	addi r5, r1, 8
/* 8072D804  38 C0 00 00 */	li r6, 0
/* 8072D808  4B 94 A5 5C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8072D80C  7F E3 FB 78 */	mr r3, r31
/* 8072D810  38 81 00 2C */	addi r4, r1, 0x2c
/* 8072D814  4B 94 6B A0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8072D818  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072D81C  40 82 00 28 */	bne lbl_8072D844
/* 8072D820  38 61 00 20 */	addi r3, r1, 0x20
/* 8072D824  38 81 00 08 */	addi r4, r1, 8
/* 8072D828  4B B4 33 DC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8072D82C  B0 7E 06 DA */	sth r3, 0x6da(r30)
/* 8072D830  38 61 00 2C */	addi r3, r1, 0x2c
/* 8072D834  38 80 FF FF */	li r4, -1
/* 8072D838  4B 94 A4 A4 */	b __dt__11dBgS_LinChkFv
/* 8072D83C  38 60 00 01 */	li r3, 1
/* 8072D840  48 00 00 24 */	b lbl_8072D864
lbl_8072D844:
/* 8072D844  38 61 00 20 */	addi r3, r1, 0x20
/* 8072D848  38 81 00 14 */	addi r4, r1, 0x14
/* 8072D84C  4B B4 33 B8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8072D850  B0 7E 06 DA */	sth r3, 0x6da(r30)
/* 8072D854  38 61 00 2C */	addi r3, r1, 0x2c
/* 8072D858  38 80 FF FF */	li r4, -1
/* 8072D85C  4B 94 A4 80 */	b __dt__11dBgS_LinChkFv
/* 8072D860  38 60 00 01 */	li r3, 1
lbl_8072D864:
/* 8072D864  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8072D868  4B C3 49 BC */	b _restgpr_28
/* 8072D86C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8072D870  7C 08 03 A6 */	mtlr r0
/* 8072D874  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8072D878  4E 80 00 20 */	blr 
