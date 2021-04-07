lbl_800BA0D0:
/* 800BA0D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800BA0D4  7C 08 02 A6 */	mflr r0
/* 800BA0D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800BA0DC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800BA0E0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800BA0E4  39 61 00 20 */	addi r11, r1, 0x20
/* 800BA0E8  48 2A 80 ED */	bl _savegpr_27
/* 800BA0EC  7C 7C 1B 78 */	mr r28, r3
/* 800BA0F0  7C 9D 23 78 */	mr r29, r4
/* 800BA0F4  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800BA0F8  3B C4 D6 58 */	addi r30, r4, lit_3757@l /* 0x8038D658@l */
/* 800BA0FC  C3 E3 05 94 */	lfs f31, 0x594(r3)
/* 800BA100  38 80 00 01 */	li r4, 1
/* 800BA104  48 05 EC 79 */	bl checkDeadAction__9daAlink_cFi
/* 800BA108  2C 03 00 00 */	cmpwi r3, 0
/* 800BA10C  41 82 00 0C */	beq lbl_800BA118
/* 800BA110  38 60 00 01 */	li r3, 1
/* 800BA114  48 00 05 6C */	b lbl_800BA680
lbl_800BA118:
/* 800BA118  7F 83 E3 78 */	mr r3, r28
/* 800BA11C  4B FF FE 35 */	bl checkGroundSpecialMode__9daAlink_cFv
/* 800BA120  2C 03 00 00 */	cmpwi r3, 0
/* 800BA124  41 82 00 0C */	beq lbl_800BA130
/* 800BA128  38 60 00 01 */	li r3, 1
/* 800BA12C  48 00 05 54 */	b lbl_800BA680
lbl_800BA130:
/* 800BA130  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800BA134  28 00 00 09 */	cmplwi r0, 9
/* 800BA138  41 82 01 14 */	beq lbl_800BA24C
/* 800BA13C  2C 1D 00 00 */	cmpwi r29, 0
/* 800BA140  41 82 00 14 */	beq lbl_800BA154
/* 800BA144  C0 3C 33 AC */	lfs f1, 0x33ac(r28)
/* 800BA148  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800BA14C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BA150  40 81 00 FC */	ble lbl_800BA24C
lbl_800BA154:
/* 800BA154  28 00 00 C5 */	cmplwi r0, 0xc5
/* 800BA158  40 82 00 14 */	bne lbl_800BA16C
/* 800BA15C  7F 83 E3 78 */	mr r3, r28
/* 800BA160  48 04 E8 B9 */	bl checkHookshotWait__9daAlink_cCFv
/* 800BA164  2C 03 00 00 */	cmpwi r3, 0
/* 800BA168  41 82 00 E4 */	beq lbl_800BA24C
lbl_800BA16C:
/* 800BA16C  80 1C 27 EC */	lwz r0, 0x27ec(r28)
/* 800BA170  28 00 00 00 */	cmplwi r0, 0
/* 800BA174  40 82 00 34 */	bne lbl_800BA1A8
/* 800BA178  83 FC 27 E0 */	lwz r31, 0x27e0(r28)
/* 800BA17C  3B 60 00 01 */	li r27, 1
/* 800BA180  7F E3 FB 78 */	mr r3, r31
/* 800BA184  4B FB 96 61 */	bl LockonTruth__12dAttention_cFv
/* 800BA188  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA18C  40 82 00 14 */	bne lbl_800BA1A0
/* 800BA190  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800BA194  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800BA198  40 82 00 08 */	bne lbl_800BA1A0
/* 800BA19C  3B 60 00 00 */	li r27, 0
lbl_800BA1A0:
/* 800BA1A0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800BA1A4  41 82 00 10 */	beq lbl_800BA1B4
lbl_800BA1A8:
/* 800BA1A8  7F 83 E3 78 */	mr r3, r28
/* 800BA1AC  4B FF A2 A1 */	bl setSpeedAndAngleAtn__9daAlink_cFv
/* 800BA1B0  48 00 00 9C */	b lbl_800BA24C
lbl_800BA1B4:
/* 800BA1B4  7F 83 E3 78 */	mr r3, r28
/* 800BA1B8  48 00 0D C9 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800BA1BC  2C 03 00 00 */	cmpwi r3, 0
/* 800BA1C0  41 82 00 84 */	beq lbl_800BA244
/* 800BA1C4  A8 1C 30 8E */	lha r0, 0x308e(r28)
/* 800BA1C8  2C 00 00 00 */	cmpwi r0, 0
/* 800BA1CC  40 82 00 78 */	bne lbl_800BA244
/* 800BA1D0  7F 83 E3 78 */	mr r3, r28
/* 800BA1D4  48 02 62 D9 */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800BA1D8  2C 03 00 00 */	cmpwi r3, 0
/* 800BA1DC  41 82 00 28 */	beq lbl_800BA204
/* 800BA1E0  80 1C 28 38 */	lwz r0, 0x2838(r28)
/* 800BA1E4  28 00 00 00 */	cmplwi r0, 0
/* 800BA1E8  40 82 00 5C */	bne lbl_800BA244
/* 800BA1EC  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800BA1F0  28 00 01 02 */	cmplwi r0, 0x102
/* 800BA1F4  41 82 00 50 */	beq lbl_800BA244
/* 800BA1F8  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800BA1FC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800BA200  40 82 00 44 */	bne lbl_800BA244
lbl_800BA204:
/* 800BA204  38 60 00 00 */	li r3, 0
/* 800BA208  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800BA20C  28 00 00 46 */	cmplwi r0, 0x46
/* 800BA210  40 82 00 14 */	bne lbl_800BA224
/* 800BA214  A0 1C 1F BC */	lhz r0, 0x1fbc(r28)
/* 800BA218  28 00 00 53 */	cmplwi r0, 0x53
/* 800BA21C  40 82 00 08 */	bne lbl_800BA224
/* 800BA220  38 60 00 01 */	li r3, 1
lbl_800BA224:
/* 800BA224  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA228  41 82 00 24 */	beq lbl_800BA24C
/* 800BA22C  80 1C 28 40 */	lwz r0, 0x2840(r28)
/* 800BA230  28 00 00 00 */	cmplwi r0, 0
/* 800BA234  40 82 00 10 */	bne lbl_800BA244
/* 800BA238  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800BA23C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800BA240  41 82 00 0C */	beq lbl_800BA24C
lbl_800BA244:
/* 800BA244  7F 83 E3 78 */	mr r3, r28
/* 800BA248  4B FF 9D 8D */	bl setSpeedAndAngleNormal__9daAlink_cFv
lbl_800BA24C:
/* 800BA24C  7F 83 E3 78 */	mr r3, r28
/* 800BA250  4B FF 60 6D */	bl setFrontWallType__9daAlink_cFv
/* 800BA254  7F 83 E3 78 */	mr r3, r28
/* 800BA258  4B FF 92 A9 */	bl checkAttentionState__9daAlink_cFv
/* 800BA25C  7C 7F 1B 78 */	mr r31, r3
/* 800BA260  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA264  41 82 00 64 */	beq lbl_800BA2C8
/* 800BA268  38 60 00 00 */	li r3, 0
/* 800BA26C  A0 1C 1F BC */	lhz r0, 0x1fbc(r28)
/* 800BA270  28 00 00 62 */	cmplwi r0, 0x62
/* 800BA274  41 82 00 10 */	beq lbl_800BA284
/* 800BA278  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800BA27C  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800BA280  40 82 00 08 */	bne lbl_800BA288
lbl_800BA284:
/* 800BA284  38 60 00 01 */	li r3, 1
lbl_800BA288:
/* 800BA288  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA28C  41 82 00 10 */	beq lbl_800BA29C
/* 800BA290  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800BA294  D0 1C 05 94 */	stfs f0, 0x594(r28)
/* 800BA298  48 00 00 5C */	b lbl_800BA2F4
lbl_800BA29C:
/* 800BA29C  80 1C 27 EC */	lwz r0, 0x27ec(r28)
/* 800BA2A0  28 00 00 00 */	cmplwi r0, 0
/* 800BA2A4  41 82 00 14 */	beq lbl_800BA2B8
/* 800BA2A8  38 7E 00 BC */	addi r3, r30, 0xbc
/* 800BA2AC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800BA2B0  D0 1C 05 94 */	stfs f0, 0x594(r28)
/* 800BA2B4  48 00 00 40 */	b lbl_800BA2F4
lbl_800BA2B8:
/* 800BA2B8  38 7E 01 10 */	addi r3, r30, 0x110
/* 800BA2BC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800BA2C0  D0 1C 05 94 */	stfs f0, 0x594(r28)
/* 800BA2C4  48 00 00 30 */	b lbl_800BA2F4
lbl_800BA2C8:
/* 800BA2C8  7F 83 E3 78 */	mr r3, r28
/* 800BA2CC  4B FF 7F 21 */	bl checkSlope__9daAlink_cCFv
/* 800BA2D0  2C 03 00 00 */	cmpwi r3, 0
/* 800BA2D4  41 82 00 14 */	beq lbl_800BA2E8
/* 800BA2D8  38 7E 02 74 */	addi r3, r30, 0x274
/* 800BA2DC  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 800BA2E0  D0 1C 05 94 */	stfs f0, 0x594(r28)
/* 800BA2E4  48 00 00 10 */	b lbl_800BA2F4
lbl_800BA2E8:
/* 800BA2E8  38 7E 00 64 */	addi r3, r30, 0x64
/* 800BA2EC  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800BA2F0  D0 1C 05 94 */	stfs f0, 0x594(r28)
lbl_800BA2F4:
/* 800BA2F4  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 800BA2F8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800BA2FC  41 82 00 30 */	beq lbl_800BA32C
/* 800BA300  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 800BA304  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BA308  41 82 00 24 */	beq lbl_800BA32C
/* 800BA30C  80 9C 31 A0 */	lwz r4, 0x31a0(r28)
/* 800BA310  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800BA314  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800BA318  7C 80 00 39 */	and. r0, r4, r0
/* 800BA31C  40 82 00 10 */	bne lbl_800BA32C
/* 800BA320  7F 83 E3 78 */	mr r3, r28
/* 800BA324  48 00 E1 3D */	bl procFloorDownReboundInit__9daAlink_cFv
/* 800BA328  48 00 03 58 */	b lbl_800BA680
lbl_800BA32C:
/* 800BA32C  A0 1C 1F BC */	lhz r0, 0x1fbc(r28)
/* 800BA330  28 00 00 83 */	cmplwi r0, 0x83
/* 800BA334  40 82 00 24 */	bne lbl_800BA358
/* 800BA338  7F 83 E3 78 */	mr r3, r28
/* 800BA33C  4B FE D7 21 */	bl checkDashAnime__9daAlink_cCFv
/* 800BA340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA344  40 82 00 14 */	bne lbl_800BA358
/* 800BA348  7F 83 E3 78 */	mr r3, r28
/* 800BA34C  38 80 00 00 */	li r4, 0
/* 800BA350  48 01 AA 8D */	bl procCutTurnMoveInit__9daAlink_cFi
/* 800BA354  48 00 03 2C */	b lbl_800BA680
lbl_800BA358:
/* 800BA358  7F 83 E3 78 */	mr r3, r28
/* 800BA35C  4B FF F9 D1 */	bl checkNextActionFromButton__9daAlink_cFv
/* 800BA360  2C 03 00 00 */	cmpwi r3, 0
/* 800BA364  41 82 00 0C */	beq lbl_800BA370
/* 800BA368  38 60 00 01 */	li r3, 1
/* 800BA36C  48 00 03 14 */	b lbl_800BA680
lbl_800BA370:
/* 800BA370  2C 1D 00 00 */	cmpwi r29, 0
/* 800BA374  41 82 00 30 */	beq lbl_800BA3A4
/* 800BA378  C0 3C 33 AC */	lfs f1, 0x33ac(r28)
/* 800BA37C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800BA380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BA384  41 81 00 20 */	bgt lbl_800BA3A4
/* 800BA388  7F 83 E3 78 */	mr r3, r28
/* 800BA38C  4B FF EF B5 */	bl checkEquipAnime__9daAlink_cCFv
/* 800BA390  2C 03 00 00 */	cmpwi r3, 0
/* 800BA394  40 82 00 10 */	bne lbl_800BA3A4
/* 800BA398  D3 FC 05 94 */	stfs f31, 0x594(r28)
/* 800BA39C  38 60 00 00 */	li r3, 0
/* 800BA3A0  48 00 02 E0 */	b lbl_800BA680
lbl_800BA3A4:
/* 800BA3A4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800BA3A8  41 82 01 40 */	beq lbl_800BA4E8
/* 800BA3AC  7F 83 E3 78 */	mr r3, r28
/* 800BA3B0  48 02 46 39 */	bl checkBowAnime__9daAlink_cCFv
/* 800BA3B4  2C 03 00 00 */	cmpwi r3, 0
/* 800BA3B8  41 82 00 14 */	beq lbl_800BA3CC
/* 800BA3BC  7F 83 E3 78 */	mr r3, r28
/* 800BA3C0  48 02 54 55 */	bl checkNextActionBow__9daAlink_cFv
/* 800BA3C4  7C 7B 1B 78 */	mr r27, r3
/* 800BA3C8  48 00 02 B4 */	b lbl_800BA67C
lbl_800BA3CC:
/* 800BA3CC  7F 83 E3 78 */	mr r3, r28
/* 800BA3D0  48 02 60 71 */	bl checkBoomerangAnime__9daAlink_cCFv
/* 800BA3D4  2C 03 00 00 */	cmpwi r3, 0
/* 800BA3D8  41 82 00 20 */	beq lbl_800BA3F8
/* 800BA3DC  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800BA3E0  28 00 01 02 */	cmplwi r0, 0x102
/* 800BA3E4  41 82 00 14 */	beq lbl_800BA3F8
/* 800BA3E8  7F 83 E3 78 */	mr r3, r28
/* 800BA3EC  48 02 67 F9 */	bl checkNextActionBoomerang__9daAlink_cFv
/* 800BA3F0  7C 7B 1B 78 */	mr r27, r3
/* 800BA3F4  48 00 02 88 */	b lbl_800BA67C
lbl_800BA3F8:
/* 800BA3F8  7F 83 E3 78 */	mr r3, r28
/* 800BA3FC  48 02 71 35 */	bl checkCopyRodAnime__9daAlink_cCFv
/* 800BA400  2C 03 00 00 */	cmpwi r3, 0
/* 800BA404  41 82 00 14 */	beq lbl_800BA418
/* 800BA408  7F 83 E3 78 */	mr r3, r28
/* 800BA40C  48 02 78 39 */	bl checkNextActionCopyRod__9daAlink_cFv
/* 800BA410  7C 7B 1B 78 */	mr r27, r3
/* 800BA414  48 00 02 68 */	b lbl_800BA67C
lbl_800BA418:
/* 800BA418  38 60 00 00 */	li r3, 0
/* 800BA41C  A0 1C 1F BC */	lhz r0, 0x1fbc(r28)
/* 800BA420  28 00 01 8D */	cmplwi r0, 0x18d
/* 800BA424  41 82 00 10 */	beq lbl_800BA434
/* 800BA428  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800BA42C  28 00 01 8C */	cmplwi r0, 0x18c
/* 800BA430  40 82 00 08 */	bne lbl_800BA438
lbl_800BA434:
/* 800BA434  38 60 00 01 */	li r3, 1
lbl_800BA438:
/* 800BA438  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA43C  41 82 00 14 */	beq lbl_800BA450
/* 800BA440  7F 83 E3 78 */	mr r3, r28
/* 800BA444  48 04 F1 85 */	bl checkNextActionHookshot__9daAlink_cFv
/* 800BA448  7C 7B 1B 78 */	mr r27, r3
/* 800BA44C  48 00 02 30 */	b lbl_800BA67C
lbl_800BA450:
/* 800BA450  7F 83 E3 78 */	mr r3, r28
/* 800BA454  48 05 AC 91 */	bl checkIronBallAnime__9daAlink_cCFv
/* 800BA458  2C 03 00 00 */	cmpwi r3, 0
/* 800BA45C  41 82 00 14 */	beq lbl_800BA470
/* 800BA460  7F 83 E3 78 */	mr r3, r28
/* 800BA464  48 05 AF 95 */	bl checkNextActionIronBall__9daAlink_cFv
/* 800BA468  7C 7B 1B 78 */	mr r27, r3
/* 800BA46C  48 00 02 10 */	b lbl_800BA67C
lbl_800BA470:
/* 800BA470  80 1C 27 EC */	lwz r0, 0x27ec(r28)
/* 800BA474  28 00 00 00 */	cmplwi r0, 0
/* 800BA478  40 82 00 10 */	bne lbl_800BA488
/* 800BA47C  80 1C 06 14 */	lwz r0, 0x614(r28)
/* 800BA480  28 00 00 17 */	cmplwi r0, 0x17
/* 800BA484  40 82 00 34 */	bne lbl_800BA4B8
lbl_800BA488:
/* 800BA488  7F 83 E3 78 */	mr r3, r28
/* 800BA48C  4B FF 94 79 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800BA490  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA494  41 82 00 14 */	beq lbl_800BA4A8
/* 800BA498  7F 83 E3 78 */	mr r3, r28
/* 800BA49C  48 00 94 31 */	bl procAtnActorWaitInit__9daAlink_cFv
/* 800BA4A0  7C 7B 1B 78 */	mr r27, r3
/* 800BA4A4  48 00 01 D8 */	b lbl_800BA67C
lbl_800BA4A8:
/* 800BA4A8  7F 83 E3 78 */	mr r3, r28
/* 800BA4AC  48 00 95 41 */	bl procAtnActorMoveInit__9daAlink_cFv
/* 800BA4B0  7C 7B 1B 78 */	mr r27, r3
/* 800BA4B4  48 00 01 C8 */	b lbl_800BA67C
lbl_800BA4B8:
/* 800BA4B8  7F 83 E3 78 */	mr r3, r28
/* 800BA4BC  4B FF 94 49 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800BA4C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA4C4  41 82 00 14 */	beq lbl_800BA4D8
/* 800BA4C8  7F 83 E3 78 */	mr r3, r28
/* 800BA4CC  4B FF B4 21 */	bl checkWaitAction__9daAlink_cFv
/* 800BA4D0  7C 7B 1B 78 */	mr r27, r3
/* 800BA4D4  48 00 01 A8 */	b lbl_800BA67C
lbl_800BA4D8:
/* 800BA4D8  7F 83 E3 78 */	mr r3, r28
/* 800BA4DC  48 00 93 35 */	bl procAtnMoveInit__9daAlink_cFv
/* 800BA4E0  7C 7B 1B 78 */	mr r27, r3
/* 800BA4E4  48 00 01 98 */	b lbl_800BA67C
lbl_800BA4E8:
/* 800BA4E8  38 00 00 04 */	li r0, 4
/* 800BA4EC  98 1C 2F 98 */	stb r0, 0x2f98(r28)
/* 800BA4F0  7F 83 E3 78 */	mr r3, r28
/* 800BA4F4  4B FF 94 11 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800BA4F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA4FC  41 82 00 68 */	beq lbl_800BA564
/* 800BA500  A8 7C 2F E2 */	lha r3, 0x2fe2(r28)
/* 800BA504  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 800BA508  48 1B 69 1D */	bl cLib_distanceAngleS__Fss
/* 800BA50C  2C 03 78 00 */	cmpwi r3, 0x7800
/* 800BA510  40 81 00 44 */	ble lbl_800BA554
/* 800BA514  C0 3C 33 AC */	lfs f1, 0x33ac(r28)
/* 800BA518  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800BA51C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BA520  40 81 00 34 */	ble lbl_800BA554
/* 800BA524  7F 83 E3 78 */	mr r3, r28
/* 800BA528  48 00 95 6D */	bl procWaitTurnInit__9daAlink_cFv
/* 800BA52C  7C 7B 1B 79 */	or. r27, r3, r3
/* 800BA530  40 82 01 4C */	bne lbl_800BA67C
/* 800BA534  7F 83 E3 78 */	mr r3, r28
/* 800BA538  48 05 B6 E9 */	bl checkEventRun__9daAlink_cCFv
/* 800BA53C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA540  40 82 01 3C */	bne lbl_800BA67C
/* 800BA544  7F 83 E3 78 */	mr r3, r28
/* 800BA548  4B FF B3 A5 */	bl checkWaitAction__9daAlink_cFv
/* 800BA54C  7C 7B 1B 78 */	mr r27, r3
/* 800BA550  48 00 01 2C */	b lbl_800BA67C
lbl_800BA554:
/* 800BA554  7F 83 E3 78 */	mr r3, r28
/* 800BA558  4B FF B3 95 */	bl checkWaitAction__9daAlink_cFv
/* 800BA55C  7C 7B 1B 78 */	mr r27, r3
/* 800BA560  48 00 01 1C */	b lbl_800BA67C
lbl_800BA564:
/* 800BA564  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800BA568  28 00 00 09 */	cmplwi r0, 9
/* 800BA56C  40 82 00 28 */	bne lbl_800BA594
/* 800BA570  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 800BA574  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800BA578  7C 03 00 00 */	cmpw r3, r0
/* 800BA57C  41 82 00 18 */	beq lbl_800BA594
/* 800BA580  7F 83 E3 78 */	mr r3, r28
/* 800BA584  38 80 00 00 */	li r4, 0
/* 800BA588  48 00 96 B5 */	bl procMoveTurnInit__9daAlink_cFi
/* 800BA58C  7C 7B 1B 78 */	mr r27, r3
/* 800BA590  48 00 00 EC */	b lbl_800BA67C
lbl_800BA594:
/* 800BA594  C0 3C 33 AC */	lfs f1, 0x33ac(r28)
/* 800BA598  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800BA59C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BA5A0  40 81 00 90 */	ble lbl_800BA630
/* 800BA5A4  A8 7C 2F E2 */	lha r3, 0x2fe2(r28)
/* 800BA5A8  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 800BA5AC  48 1B 68 79 */	bl cLib_distanceAngleS__Fss
/* 800BA5B0  2C 03 78 00 */	cmpwi r3, 0x7800
/* 800BA5B4  40 81 00 7C */	ble lbl_800BA630
/* 800BA5B8  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 800BA5BC  C0 1C 05 94 */	lfs f0, 0x594(r28)
/* 800BA5C0  EC 21 00 24 */	fdivs f1, f1, f0
/* 800BA5C4  38 7E 00 64 */	addi r3, r30, 0x64
/* 800BA5C8  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800BA5CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BA5D0  40 81 00 4C */	ble lbl_800BA61C
/* 800BA5D4  88 1C 2F A8 */	lbz r0, 0x2fa8(r28)
/* 800BA5D8  28 00 00 08 */	cmplwi r0, 8
/* 800BA5DC  41 82 00 40 */	beq lbl_800BA61C
/* 800BA5E0  7F 83 E3 78 */	mr r3, r28
/* 800BA5E4  48 02 96 89 */	bl checkGrabAnime__9daAlink_cCFv
/* 800BA5E8  2C 03 00 00 */	cmpwi r3, 0
/* 800BA5EC  40 82 00 30 */	bne lbl_800BA61C
/* 800BA5F0  A8 7C 2F E0 */	lha r3, 0x2fe0(r28)
/* 800BA5F4  A8 1C 30 7C */	lha r0, 0x307c(r28)
/* 800BA5F8  7C 03 00 50 */	subf r0, r3, r0
/* 800BA5FC  7C 03 07 34 */	extsh r3, r0
/* 800BA600  4B FF 8E 95 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800BA604  2C 03 00 01 */	cmpwi r3, 1
/* 800BA608  40 82 00 14 */	bne lbl_800BA61C
/* 800BA60C  7F 83 E3 78 */	mr r3, r28
/* 800BA610  48 00 B6 19 */	bl procSlipInit__9daAlink_cFv
/* 800BA614  7C 7B 1B 78 */	mr r27, r3
/* 800BA618  48 00 00 64 */	b lbl_800BA67C
lbl_800BA61C:
/* 800BA61C  7F 83 E3 78 */	mr r3, r28
/* 800BA620  38 80 00 01 */	li r4, 1
/* 800BA624  48 00 96 19 */	bl procMoveTurnInit__9daAlink_cFi
/* 800BA628  7C 7B 1B 78 */	mr r27, r3
/* 800BA62C  48 00 00 50 */	b lbl_800BA67C
lbl_800BA630:
/* 800BA630  C0 3C 33 AC */	lfs f1, 0x33ac(r28)
/* 800BA634  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800BA638  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BA63C  40 81 00 34 */	ble lbl_800BA670
/* 800BA640  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 800BA644  A8 1C 2F E2 */	lha r0, 0x2fe2(r28)
/* 800BA648  7C 03 00 50 */	subf r0, r3, r0
/* 800BA64C  7C 03 07 34 */	extsh r3, r0
/* 800BA650  4B FF 8E 45 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800BA654  2C 03 00 01 */	cmpwi r3, 1
/* 800BA658  40 82 00 18 */	bne lbl_800BA670
/* 800BA65C  7F 83 E3 78 */	mr r3, r28
/* 800BA660  38 80 00 01 */	li r4, 1
/* 800BA664  48 00 95 D9 */	bl procMoveTurnInit__9daAlink_cFi
/* 800BA668  7C 7B 1B 78 */	mr r27, r3
/* 800BA66C  48 00 00 10 */	b lbl_800BA67C
lbl_800BA670:
/* 800BA670  7F 83 E3 78 */	mr r3, r28
/* 800BA674  48 00 90 59 */	bl procMoveInit__9daAlink_cFv
/* 800BA678  7C 7B 1B 78 */	mr r27, r3
lbl_800BA67C:
/* 800BA67C  7F 63 DB 78 */	mr r3, r27
lbl_800BA680:
/* 800BA680  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800BA684  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800BA688  39 61 00 20 */	addi r11, r1, 0x20
/* 800BA68C  48 2A 7B 95 */	bl _restgpr_27
/* 800BA690  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800BA694  7C 08 03 A6 */	mtlr r0
/* 800BA698  38 21 00 30 */	addi r1, r1, 0x30
/* 800BA69C  4E 80 00 20 */	blr 
