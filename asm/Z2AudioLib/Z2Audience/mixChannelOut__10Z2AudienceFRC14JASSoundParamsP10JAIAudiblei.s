lbl_802BD71C:
/* 802BD71C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802BD720  7C 08 02 A6 */	mflr r0
/* 802BD724  90 01 00 44 */	stw r0, 0x44(r1)
/* 802BD728  39 61 00 40 */	addi r11, r1, 0x40
/* 802BD72C  48 0A 4A A5 */	bl _savegpr_26
/* 802BD730  7C 7A 1B 78 */	mr r26, r3
/* 802BD734  7C 9B 23 78 */	mr r27, r4
/* 802BD738  7C DC 33 78 */	mr r28, r6
/* 802BD73C  7C BF 2B 78 */	mr r31, r5
/* 802BD740  7F E3 FB 78 */	mr r3, r31
/* 802BD744  7F 84 E3 78 */	mr r4, r28
/* 802BD748  4B FF EA BD */	bl getChannel__9Z2AudibleFi
/* 802BD74C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802BD750  41 82 01 A4 */	beq lbl_802BD8F4
/* 802BD754  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BD758  D0 01 00 08 */	stfs f0, 8(r1)
/* 802BD75C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BD760  C0 22 C0 A0 */	lfs f1, lit_848(r2)
/* 802BD764  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802BD768  C0 02 C0 A8 */	lfs f0, lit_895(r2)
/* 802BD76C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802BD770  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802BD774  7F E3 FB 78 */	mr r3, r31
/* 802BD778  4B FF EA A1 */	bl getDistVolBit__9Z2AudibleFv
/* 802BD77C  7C 7D 1B 78 */	mr r29, r3
/* 802BD780  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 802BD784  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 802BD788  41 82 00 74 */	beq lbl_802BD7FC
/* 802BD78C  7F 43 D3 78 */	mr r3, r26
/* 802BD790  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 802BD794  7F A4 EB 78 */	mr r4, r29
/* 802BD798  48 00 04 45 */	bl calcVolume___10Z2AudienceCFfi
/* 802BD79C  FC 00 08 90 */	fmr f0, f1
/* 802BD7A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 802BD7A4  80 7A 01 D0 */	lwz r3, 0x1d0(r26)
/* 802BD7A8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 802BD7AC  7F 84 E3 78 */	mr r4, r28
/* 802BD7B0  FC 40 00 18 */	frsp f2, f0
/* 802BD7B4  4B FF F8 89 */	bl calcMicVolume__9Z2SpotMicFfif
/* 802BD7B8  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BD7BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BD7C0  40 80 00 10 */	bge lbl_802BD7D0
/* 802BD7C4  7F 43 D3 78 */	mr r3, r26
/* 802BD7C8  C0 21 00 08 */	lfs f1, 8(r1)
/* 802BD7CC  4B FF FF 39 */	bl calcOffMicSound__10Z2AudienceFf
lbl_802BD7D0:
/* 802BD7D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 802BD7D4  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 802BD7D8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 802BD7DC  41 82 00 28 */	beq lbl_802BD804
/* 802BD7E0  FC 20 08 18 */	frsp f1, f1
/* 802BD7E4  C0 02 C1 2C */	lfs f0, lit_1336(r2)
/* 802BD7E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BD7EC  4C 40 13 82 */	cror 2, 0, 2
/* 802BD7F0  40 82 00 14 */	bne lbl_802BD804
/* 802BD7F4  D0 01 00 08 */	stfs f0, 8(r1)
/* 802BD7F8  48 00 00 0C */	b lbl_802BD804
lbl_802BD7FC:
/* 802BD7FC  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BD800  D0 01 00 08 */	stfs f0, 8(r1)
lbl_802BD804:
/* 802BD804  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 802BD808  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802BD80C  41 82 00 28 */	beq lbl_802BD834
/* 802BD810  80 1A 01 D4 */	lwz r0, 0x1d4(r26)
/* 802BD814  2C 00 00 01 */	cmpwi r0, 1
/* 802BD818  40 82 00 1C */	bne lbl_802BD834
/* 802BD81C  7F 43 D3 78 */	mr r3, r26
/* 802BD820  38 9E 00 14 */	addi r4, r30, 0x14
/* 802BD824  7F 85 E3 78 */	mr r5, r28
/* 802BD828  48 00 03 1D */	bl calcRelPosDolby__10Z2AudienceFRC3Veci
/* 802BD82C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802BD830  48 00 00 0C */	b lbl_802BD83C
lbl_802BD834:
/* 802BD834  C0 02 C0 A8 */	lfs f0, lit_895(r2)
/* 802BD838  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_802BD83C:
/* 802BD83C  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 802BD840  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802BD844  41 82 00 44 */	beq lbl_802BD888
/* 802BD848  80 1A 01 D4 */	lwz r0, 0x1d4(r26)
/* 802BD84C  2C 00 00 02 */	cmpwi r0, 2
/* 802BD850  40 81 00 20 */	ble lbl_802BD870
/* 802BD854  57 80 07 FF */	clrlwi. r0, r28, 0x1f
/* 802BD858  41 82 00 0C */	beq lbl_802BD864
/* 802BD85C  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BD860  48 00 00 08 */	b lbl_802BD868
lbl_802BD864:
/* 802BD864  C0 02 C0 A0 */	lfs f0, lit_848(r2)
lbl_802BD868:
/* 802BD868  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802BD86C  48 00 00 24 */	b lbl_802BD890
lbl_802BD870:
/* 802BD870  7F 43 D3 78 */	mr r3, r26
/* 802BD874  38 9E 00 14 */	addi r4, r30, 0x14
/* 802BD878  7F 85 E3 78 */	mr r5, r28
/* 802BD87C  48 00 01 C9 */	bl calcRelPosPan__10Z2AudienceFRC3Veci
/* 802BD880  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 802BD884  48 00 00 0C */	b lbl_802BD890
lbl_802BD888:
/* 802BD888  C0 02 C0 A8 */	lfs f0, lit_895(r2)
/* 802BD88C  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_802BD890:
/* 802BD890  7F 43 D3 78 */	mr r3, r26
/* 802BD894  7F C4 F3 78 */	mr r4, r30
/* 802BD898  7F E5 FB 78 */	mr r5, r31
/* 802BD89C  1C DC 00 74 */	mulli r6, r28, 0x74
/* 802BD8A0  38 C6 01 34 */	addi r6, r6, 0x134
/* 802BD8A4  7C DA 32 14 */	add r6, r26, r6
/* 802BD8A8  48 00 04 A1 */	bl calcPitch___10Z2AudienceCFP16Z2AudibleChannelPC9Z2AudiblePC13Z2AudioCamera
/* 802BD8AC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802BD8B0  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 802BD8B4  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 802BD8B8  41 82 00 18 */	beq lbl_802BD8D0
/* 802BD8BC  7F 43 D3 78 */	mr r3, r26
/* 802BD8C0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 802BD8C4  7F A4 EB 78 */	mr r4, r29
/* 802BD8C8  48 00 04 39 */	bl calcFxMix___10Z2AudienceCFfi
/* 802BD8CC  48 00 00 08 */	b lbl_802BD8D4
lbl_802BD8D0:
/* 802BD8D0  C0 22 C0 A0 */	lfs f1, lit_848(r2)
lbl_802BD8D4:
/* 802BD8D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802BD8D8  38 61 00 08 */	addi r3, r1, 8
/* 802BD8DC  4B FE 0A D5 */	bl clamp__14JASSoundParamsFv
/* 802BD8E0  7F E3 FB 78 */	mr r3, r31
/* 802BD8E4  7F 64 DB 78 */	mr r4, r27
/* 802BD8E8  38 A1 00 08 */	addi r5, r1, 8
/* 802BD8EC  7F 86 E3 78 */	mr r6, r28
/* 802BD8F0  4B FF E5 F5 */	bl setOuterParams__9Z2AudibleFRC14JASSoundParamsRC14JASSoundParamsi
lbl_802BD8F4:
/* 802BD8F4  39 61 00 40 */	addi r11, r1, 0x40
/* 802BD8F8  48 0A 49 25 */	bl _restgpr_26
/* 802BD8FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802BD900  7C 08 03 A6 */	mtlr r0
/* 802BD904  38 21 00 40 */	addi r1, r1, 0x40
/* 802BD908  4E 80 00 20 */	blr 
