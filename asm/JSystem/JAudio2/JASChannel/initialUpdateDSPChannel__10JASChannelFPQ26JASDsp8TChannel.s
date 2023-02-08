lbl_8029B004:
/* 8029B004  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8029B008  7C 08 02 A6 */	mflr r0
/* 8029B00C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8029B010  39 61 00 60 */	addi r11, r1, 0x60
/* 8029B014  48 0C 71 C5 */	bl _savegpr_28
/* 8029B018  7C 7E 1B 78 */	mr r30, r3
/* 8029B01C  7C 9F 23 78 */	mr r31, r4
/* 8029B020  A0 03 00 8C */	lhz r0, 0x8c(r3)
/* 8029B024  28 00 FF FF */	cmplwi r0, 0xffff
/* 8029B028  40 82 00 0C */	bne lbl_8029B034
/* 8029B02C  7F E3 FB 78 */	mr r3, r31
/* 8029B030  48 00 2E 95 */	bl initAutoMixer__Q26JASDsp8TChannelFv
lbl_8029B034:
/* 8029B034  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 8029B038  28 0C 00 00 */	cmplwi r12, 0
/* 8029B03C  41 82 00 1C */	beq lbl_8029B058
/* 8029B040  38 60 00 01 */	li r3, 1
/* 8029B044  7F C4 F3 78 */	mr r4, r30
/* 8029B048  7F E5 FB 78 */	mr r5, r31
/* 8029B04C  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 8029B050  7D 89 03 A6 */	mtctr r12
/* 8029B054  4E 80 04 21 */	bctrl 
lbl_8029B058:
/* 8029B058  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 8029B05C  80 03 00 00 */	lwz r0, 0(r3)
/* 8029B060  28 00 00 00 */	cmplwi r0, 0
/* 8029B064  40 82 00 28 */	bne lbl_8029B08C
/* 8029B068  80 7E 00 08 */	lwz r3, 8(r30)
/* 8029B06C  48 00 22 B5 */	bl free__13JASDSPChannelFv
/* 8029B070  38 00 00 00 */	li r0, 0
/* 8029B074  90 1E 00 08 */	stw r0, 8(r30)
/* 8029B078  7F C3 F3 78 */	mr r3, r30
/* 8029B07C  38 80 00 01 */	li r4, 1
/* 8029B080  4B FF F8 99 */	bl __dt__10JASChannelFv
/* 8029B084  38 60 FF FF */	li r3, -1
/* 8029B088  48 00 02 84 */	b lbl_8029B30C
lbl_8029B08C:
/* 8029B08C  7F C3 F3 78 */	mr r3, r30
/* 8029B090  48 00 0C 31 */	bl checkBankDispose__10JASChannelCFv
/* 8029B094  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029B098  41 82 00 28 */	beq lbl_8029B0C0
/* 8029B09C  80 7E 00 08 */	lwz r3, 8(r30)
/* 8029B0A0  48 00 22 81 */	bl free__13JASDSPChannelFv
/* 8029B0A4  38 00 00 00 */	li r0, 0
/* 8029B0A8  90 1E 00 08 */	stw r0, 8(r30)
/* 8029B0AC  7F C3 F3 78 */	mr r3, r30
/* 8029B0B0  38 80 00 01 */	li r4, 1
/* 8029B0B4  4B FF F8 65 */	bl __dt__10JASChannelFv
/* 8029B0B8  38 60 FF FF */	li r3, -1
/* 8029B0BC  48 00 02 50 */	b lbl_8029B30C
lbl_8029B0C0:
/* 8029B0C0  80 1E 00 DC */	lwz r0, 0xdc(r30)
/* 8029B0C4  2C 00 00 01 */	cmpwi r0, 1
/* 8029B0C8  41 82 00 44 */	beq lbl_8029B10C
/* 8029B0CC  40 80 00 10 */	bge lbl_8029B0DC
/* 8029B0D0  2C 00 00 00 */	cmpwi r0, 0
/* 8029B0D4  40 80 00 14 */	bge lbl_8029B0E8
/* 8029B0D8  48 00 00 34 */	b lbl_8029B10C
lbl_8029B0DC:
/* 8029B0DC  2C 00 00 03 */	cmpwi r0, 3
/* 8029B0E0  40 80 00 2C */	bge lbl_8029B10C
/* 8029B0E4  48 00 00 1C */	b lbl_8029B100
lbl_8029B0E8:
/* 8029B0E8  7F E3 FB 78 */	mr r3, r31
/* 8029B0EC  38 9E 00 E0 */	addi r4, r30, 0xe0
/* 8029B0F0  80 BE 01 04 */	lwz r5, 0x104(r30)
/* 8029B0F4  80 DE 00 D8 */	lwz r6, 0xd8(r30)
/* 8029B0F8  48 00 2C 95 */	bl setWaveInfo__Q26JASDsp8TChannelFRC11JASWaveInfoUlUl
/* 8029B0FC  48 00 00 10 */	b lbl_8029B10C
lbl_8029B100:
/* 8029B100  7F E3 FB 78 */	mr r3, r31
/* 8029B104  80 9E 01 04 */	lwz r4, 0x104(r30)
/* 8029B108  48 00 2D A5 */	bl setOscInfo__Q26JASDsp8TChannelFUl
lbl_8029B10C:
/* 8029B10C  3B A0 00 00 */	li r29, 0
/* 8029B110  48 00 00 84 */	b lbl_8029B194
lbl_8029B114:
/* 8029B114  57 A3 0D FC */	rlwinm r3, r29, 1, 0x17, 0x1e
/* 8029B118  38 03 00 8C */	addi r0, r3, 0x8c
/* 8029B11C  7C 1E 02 2E */	lhzx r0, r30, r0
/* 8029B120  B0 01 00 08 */	sth r0, 8(r1)
/* 8029B124  48 00 30 5D */	bl getOutputMode__9JASDriverFv
/* 8029B128  28 03 00 00 */	cmplwi r3, 0
/* 8029B12C  40 82 00 38 */	bne lbl_8029B164
/* 8029B130  88 01 00 08 */	lbz r0, 8(r1)
/* 8029B134  2C 00 00 09 */	cmpwi r0, 9
/* 8029B138  41 82 00 20 */	beq lbl_8029B158
/* 8029B13C  40 80 00 44 */	bge lbl_8029B180
/* 8029B140  2C 00 00 08 */	cmpwi r0, 8
/* 8029B144  40 80 00 08 */	bge lbl_8029B14C
/* 8029B148  48 00 00 38 */	b lbl_8029B180
lbl_8029B14C:
/* 8029B14C  38 00 00 0B */	li r0, 0xb
/* 8029B150  98 01 00 08 */	stb r0, 8(r1)
/* 8029B154  48 00 00 2C */	b lbl_8029B180
lbl_8029B158:
/* 8029B158  38 00 00 02 */	li r0, 2
/* 8029B15C  98 01 00 08 */	stb r0, 8(r1)
/* 8029B160  48 00 00 20 */	b lbl_8029B180
lbl_8029B164:
/* 8029B164  28 03 00 01 */	cmplwi r3, 1
/* 8029B168  40 82 00 18 */	bne lbl_8029B180
/* 8029B16C  88 01 00 08 */	lbz r0, 8(r1)
/* 8029B170  28 00 00 08 */	cmplwi r0, 8
/* 8029B174  40 82 00 0C */	bne lbl_8029B180
/* 8029B178  38 00 00 0B */	li r0, 0xb
/* 8029B17C  98 01 00 08 */	stb r0, 8(r1)
lbl_8029B180:
/* 8029B180  7F E3 FB 78 */	mr r3, r31
/* 8029B184  7F A4 EB 78 */	mr r4, r29
/* 8029B188  88 A1 00 08 */	lbz r5, 8(r1)
/* 8029B18C  48 00 2F 11 */	bl setBusConnect__Q26JASDsp8TChannelFUcUc
/* 8029B190  3B BD 00 01 */	addi r29, r29, 1
lbl_8029B194:
/* 8029B194  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8029B198  28 00 00 06 */	cmplwi r0, 6
/* 8029B19C  41 80 FF 78 */	blt lbl_8029B114
/* 8029B1A0  C0 22 BC 80 */	lfs f1, lit_544(r2)
/* 8029B1A4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8029B1A8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8029B1AC  C0 02 BC 88 */	lfs f0, lit_546(r2)
/* 8029B1B0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8029B1B4  C0 02 BC 84 */	lfs f0, lit_545(r2)
/* 8029B1B8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8029B1BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8029B1C0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8029B1C4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8029B1C8  3B 80 00 00 */	li r28, 0
/* 8029B1CC  3B A0 00 00 */	li r29, 0
lbl_8029B1D0:
/* 8029B1D0  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8029B1D4  7C 7E 1A 14 */	add r3, r30, r3
/* 8029B1D8  80 03 00 00 */	lwz r0, 0(r3)
/* 8029B1DC  28 00 00 00 */	cmplwi r0, 0
/* 8029B1E0  41 82 00 18 */	beq lbl_8029B1F8
/* 8029B1E4  48 00 0E FD */	bl update__13JASOscillatorFv
/* 8029B1E8  7F C3 F3 78 */	mr r3, r30
/* 8029B1EC  7F 84 E3 78 */	mr r4, r28
/* 8029B1F0  38 A1 00 18 */	addi r5, r1, 0x18
/* 8029B1F4  4B FF F9 F9 */	bl effectOsc__10JASChannelFUlPQ213JASOscillator12EffectParams
lbl_8029B1F8:
/* 8029B1F8  3B 9C 00 01 */	addi r28, r28, 1
/* 8029B1FC  28 1C 00 02 */	cmplwi r28, 2
/* 8029B200  3B BD 00 20 */	addi r29, r29, 0x20
/* 8029B204  41 80 FF CC */	blt lbl_8029B1D0
/* 8029B208  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8029B20C  48 00 0C 21 */	bl resetCounter__6JASLfoFv
/* 8029B210  38 7E 00 74 */	addi r3, r30, 0x74
/* 8029B214  48 00 0C 19 */	bl resetCounter__6JASLfoFv
/* 8029B218  7F C3 F3 78 */	mr r3, r30
/* 8029B21C  7F E4 FB 78 */	mr r4, r31
/* 8029B220  38 A1 00 0C */	addi r5, r1, 0xc
/* 8029B224  38 C1 00 18 */	addi r6, r1, 0x18
/* 8029B228  4B FF FB 11 */	bl updateEffectorParam__10JASChannelFPQ26JASDsp8TChannelPUsRCQ213JASOscillator12EffectParams
/* 8029B22C  3B 80 00 00 */	li r28, 0
/* 8029B230  3B A1 00 0C */	addi r29, r1, 0xc
/* 8029B234  48 00 00 20 */	b lbl_8029B254
lbl_8029B238:
/* 8029B238  7F E3 FB 78 */	mr r3, r31
/* 8029B23C  7F 84 E3 78 */	mr r4, r28
/* 8029B240  57 80 0D FC */	rlwinm r0, r28, 1, 0x17, 0x1e
/* 8029B244  7C 1D 02 2E */	lhzx r0, r29, r0
/* 8029B248  7C 05 07 34 */	extsh r5, r0
/* 8029B24C  48 00 2C E9 */	bl setMixerInitVolume__Q26JASDsp8TChannelFUcs
/* 8029B250  3B 9C 00 01 */	addi r28, r28, 1
lbl_8029B254:
/* 8029B254  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8029B258  28 00 00 06 */	cmplwi r0, 6
/* 8029B25C  41 80 FF DC */	blt lbl_8029B238
/* 8029B260  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8029B264  48 00 0A E1 */	bl getValue__6JASLfoCFv
/* 8029B268  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8029B26C  EC 60 00 72 */	fmuls f3, f0, f1
/* 8029B270  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 8029B274  A8 1E 00 C8 */	lha r0, 0xc8(r30)
/* 8029B278  C8 22 BC 98 */	lfd f1, lit_685(r2)
/* 8029B27C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8029B280  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8029B284  3C 00 43 30 */	lis r0, 0x4330
/* 8029B288  90 01 00 38 */	stw r0, 0x38(r1)
/* 8029B28C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8029B290  EC 20 08 28 */	fsubs f1, f0, f1
/* 8029B294  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 8029B298  EC 21 00 2A */	fadds f1, f1, f0
/* 8029B29C  C0 02 BC B0 */	lfs f0, lit_775(r2)
/* 8029B2A0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8029B2A4  EC 02 00 2A */	fadds f0, f2, f0
/* 8029B2A8  EC 20 18 2A */	fadds f1, f0, f3
/* 8029B2AC  4B FF 42 CD */	bl pow2__7JASCalcFf
/* 8029B2B0  C0 82 BC B4 */	lfs f4, lit_776(r2)
/* 8029B2B4  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 8029B2B8  C0 5E 00 BC */	lfs f2, 0xbc(r30)
/* 8029B2BC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8029B2C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8029B2C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029B2C8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8029B2CC  EC 24 00 32 */	fmuls f1, f4, f0
/* 8029B2D0  C0 02 BC 84 */	lfs f0, lit_545(r2)
/* 8029B2D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029B2D8  40 80 00 08 */	bge lbl_8029B2E0
/* 8029B2DC  FC 20 00 90 */	fmr f1, f0
lbl_8029B2E0:
/* 8029B2E0  7F E3 FB 78 */	mr r3, r31
/* 8029B2E4  FC 00 08 1E */	fctiwz f0, f1
/* 8029B2E8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8029B2EC  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8029B2F0  48 00 2C 2D */	bl setPitch__Q26JASDsp8TChannelFUs
/* 8029B2F4  7F E3 FB 78 */	mr r3, r31
/* 8029B2F8  88 9E 00 04 */	lbz r4, 4(r30)
/* 8029B2FC  48 00 2C 85 */	bl setPauseFlag__Q26JASDsp8TChannelFUc
/* 8029B300  38 00 00 00 */	li r0, 0
/* 8029B304  B0 1F 00 66 */	sth r0, 0x66(r31)
/* 8029B308  38 60 00 00 */	li r3, 0
lbl_8029B30C:
/* 8029B30C  39 61 00 60 */	addi r11, r1, 0x60
/* 8029B310  48 0C 6F 15 */	bl _restgpr_28
/* 8029B314  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8029B318  7C 08 03 A6 */	mtlr r0
/* 8029B31C  38 21 00 60 */	addi r1, r1, 0x60
/* 8029B320  4E 80 00 20 */	blr 
