lbl_805EB090:
/* 805EB090  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805EB094  7C 08 02 A6 */	mflr r0
/* 805EB098  90 01 00 54 */	stw r0, 0x54(r1)
/* 805EB09C  39 61 00 50 */	addi r11, r1, 0x50
/* 805EB0A0  4B D7 71 38 */	b _savegpr_28
/* 805EB0A4  7C 7D 1B 78 */	mr r29, r3
/* 805EB0A8  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805EB0AC  3B E3 D0 60 */	addi r31, r3, lit_3911@l
/* 805EB0B0  38 7D 11 24 */	addi r3, r29, 0x1124
/* 805EB0B4  4B A9 87 7C */	b Move__10dCcD_GSttsFv
/* 805EB0B8  A8 1D 05 CC */	lha r0, 0x5cc(r29)
/* 805EB0BC  2C 00 00 00 */	cmpwi r0, 0
/* 805EB0C0  40 81 00 44 */	ble lbl_805EB104
/* 805EB0C4  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EB0C8  81 9D 07 14 */	lwz r12, 0x714(r29)
/* 805EB0CC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805EB0D0  7D 89 03 A6 */	mtctr r12
/* 805EB0D4  4E 80 04 21 */	bctrl 
/* 805EB0D8  38 7D 0C F8 */	addi r3, r29, 0xcf8
/* 805EB0DC  81 9D 0D 34 */	lwz r12, 0xd34(r29)
/* 805EB0E0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805EB0E4  7D 89 03 A6 */	mtctr r12
/* 805EB0E8  4E 80 04 21 */	bctrl 
/* 805EB0EC  38 7D 0B BC */	addi r3, r29, 0xbbc
/* 805EB0F0  81 9D 0B F8 */	lwz r12, 0xbf8(r29)
/* 805EB0F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805EB0F8  7D 89 03 A6 */	mtctr r12
/* 805EB0FC  4E 80 04 21 */	bctrl 
/* 805EB100  48 00 04 C8 */	b lbl_805EB5C8
lbl_805EB104:
/* 805EB104  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EB108  4B A9 93 58 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EB10C  28 03 00 00 */	cmplwi r3, 0
/* 805EB110  41 82 00 1C */	beq lbl_805EB12C
/* 805EB114  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805EB118  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805EB11C  40 82 00 10 */	bne lbl_805EB12C
/* 805EB120  7F A3 EB 78 */	mr r3, r29
/* 805EB124  4B FF F9 D9 */	bl ChanceTime__8daB_GG_cFv
/* 805EB128  48 00 04 A0 */	b lbl_805EB5C8
lbl_805EB12C:
/* 805EB12C  38 7D 0C F8 */	addi r3, r29, 0xcf8
/* 805EB130  4B A9 93 30 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EB134  28 03 00 00 */	cmplwi r3, 0
/* 805EB138  40 82 00 30 */	bne lbl_805EB168
/* 805EB13C  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805EB140  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805EB144  41 82 00 14 */	beq lbl_805EB158
/* 805EB148  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EB14C  4B A9 93 14 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EB150  28 03 00 00 */	cmplwi r3, 0
/* 805EB154  40 82 00 14 */	bne lbl_805EB168
lbl_805EB158:
/* 805EB158  38 7D 0B BC */	addi r3, r29, 0xbbc
/* 805EB15C  4B A9 93 04 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EB160  28 03 00 00 */	cmplwi r3, 0
/* 805EB164  41 82 04 5C */	beq lbl_805EB5C0
lbl_805EB168:
/* 805EB168  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805EB16C  AC 03 D7 30 */	lhau r0, data_805ED730@l(r3)
/* 805EB170  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805EB174  A8 03 00 00 */	lha r0, 0(r3)
/* 805EB178  B0 1D 05 BA */	sth r0, 0x5ba(r29)
/* 805EB17C  A8 03 00 00 */	lha r0, 0(r3)
/* 805EB180  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 805EB184  38 00 00 00 */	li r0, 0
/* 805EB188  B0 1D 06 BC */	sth r0, 0x6bc(r29)
/* 805EB18C  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
/* 805EB190  38 00 00 2A */	li r0, 0x2a
/* 805EB194  90 1D 11 5C */	stw r0, 0x115c(r29)
/* 805EB198  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EB19C  4B A9 92 C4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EB1A0  28 03 00 00 */	cmplwi r3, 0
/* 805EB1A4  41 82 00 20 */	beq lbl_805EB1C4
/* 805EB1A8  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EB1AC  4B A9 93 4C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EB1B0  90 7D 11 44 */	stw r3, 0x1144(r29)
/* 805EB1B4  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EB1B8  4B A9 93 40 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EB1BC  7C 7E 1B 78 */	mr r30, r3
/* 805EB1C0  48 00 00 48 */	b lbl_805EB208
lbl_805EB1C4:
/* 805EB1C4  38 7D 0B BC */	addi r3, r29, 0xbbc
/* 805EB1C8  4B A9 92 98 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EB1CC  28 03 00 00 */	cmplwi r3, 0
/* 805EB1D0  41 82 00 20 */	beq lbl_805EB1F0
/* 805EB1D4  38 7D 0B BC */	addi r3, r29, 0xbbc
/* 805EB1D8  4B A9 93 20 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EB1DC  90 7D 11 44 */	stw r3, 0x1144(r29)
/* 805EB1E0  38 7D 0B BC */	addi r3, r29, 0xbbc
/* 805EB1E4  4B A9 93 14 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EB1E8  7C 7E 1B 78 */	mr r30, r3
/* 805EB1EC  48 00 00 1C */	b lbl_805EB208
lbl_805EB1F0:
/* 805EB1F0  38 7D 0C F8 */	addi r3, r29, 0xcf8
/* 805EB1F4  4B A9 93 04 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EB1F8  90 7D 11 44 */	stw r3, 0x1144(r29)
/* 805EB1FC  38 7D 0C F8 */	addi r3, r29, 0xcf8
/* 805EB200  4B A9 92 F8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EB204  7C 7E 1B 78 */	mr r30, r3
lbl_805EB208:
/* 805EB208  AB 9D 05 62 */	lha r28, 0x562(r29)
/* 805EB20C  7F A3 EB 78 */	mr r3, r29
/* 805EB210  4B FF F5 3D */	bl At_Check__8daB_GG_cFv
/* 805EB214  B3 9D 05 62 */	sth r28, 0x562(r29)
/* 805EB218  38 00 00 0A */	li r0, 0xa
/* 805EB21C  B0 1D 05 CC */	sth r0, 0x5cc(r29)
/* 805EB220  88 1D 05 C6 */	lbz r0, 0x5c6(r29)
/* 805EB224  28 00 00 02 */	cmplwi r0, 2
/* 805EB228  40 82 00 B4 */	bne lbl_805EB2DC
/* 805EB22C  88 1D 05 C5 */	lbz r0, 0x5c5(r29)
/* 805EB230  28 00 00 01 */	cmplwi r0, 1
/* 805EB234  41 82 00 A8 */	beq lbl_805EB2DC
/* 805EB238  88 1D 05 C7 */	lbz r0, 0x5c7(r29)
/* 805EB23C  28 00 00 00 */	cmplwi r0, 0
/* 805EB240  41 82 00 0C */	beq lbl_805EB24C
/* 805EB244  28 00 00 0A */	cmplwi r0, 0xa
/* 805EB248  40 82 03 38 */	bne lbl_805EB580
lbl_805EB24C:
/* 805EB24C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805EB250  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 805EB254  41 82 00 18 */	beq lbl_805EB26C
/* 805EB258  38 00 00 0A */	li r0, 0xa
/* 805EB25C  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805EB260  38 00 00 03 */	li r0, 3
/* 805EB264  98 1D 05 C6 */	stb r0, 0x5c6(r29)
/* 805EB268  48 00 03 18 */	b lbl_805EB580
lbl_805EB26C:
/* 805EB26C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805EB270  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805EB274  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805EB278  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805EB27C  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805EB280  80 63 00 04 */	lwz r3, 4(r3)
/* 805EB284  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805EB288  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805EB28C  38 63 02 10 */	addi r3, r3, 0x210
/* 805EB290  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805EB294  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805EB298  4B D5 B2 18 */	b PSMTXCopy
/* 805EB29C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805EB2A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805EB2A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 805EB2A8  7C 85 23 78 */	mr r5, r4
/* 805EB2AC  4B D5 BA C0 */	b PSMTXMultVec
/* 805EB2B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EB2B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EB2B8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805EB2BC  38 80 00 02 */	li r4, 2
/* 805EB2C0  7F A5 EB 78 */	mr r5, r29
/* 805EB2C4  38 C1 00 2C */	addi r6, r1, 0x2c
/* 805EB2C8  38 E0 00 00 */	li r7, 0
/* 805EB2CC  39 00 00 00 */	li r8, 0
/* 805EB2D0  39 20 00 00 */	li r9, 0
/* 805EB2D4  4B A6 0F 44 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805EB2D8  48 00 02 A8 */	b lbl_805EB580
lbl_805EB2DC:
/* 805EB2DC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805EB2E0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805EB2E4  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 805EB2E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805EB2EC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805EB2F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805EB2F4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805EB2F8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805EB2FC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805EB300  38 61 00 14 */	addi r3, r1, 0x14
/* 805EB304  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805EB308  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805EB30C  38 C1 00 20 */	addi r6, r1, 0x20
/* 805EB310  4B C8 5A B0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805EB314  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805EB318  D0 01 00 08 */	stfs f0, 8(r1)
/* 805EB31C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805EB320  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805EB324  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805EB328  2C 00 00 18 */	cmpwi r0, 0x18
/* 805EB32C  40 82 00 0C */	bne lbl_805EB338
/* 805EB330  38 00 00 17 */	li r0, 0x17
/* 805EB334  90 1D 05 D4 */	stw r0, 0x5d4(r29)
lbl_805EB338:
/* 805EB338  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 805EB33C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 805EB340  41 82 00 20 */	beq lbl_805EB360
/* 805EB344  38 00 00 0A */	li r0, 0xa
/* 805EB348  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805EB34C  38 00 00 03 */	li r0, 3
/* 805EB350  98 1D 05 C6 */	stb r0, 0x5c6(r29)
/* 805EB354  38 00 00 00 */	li r0, 0
/* 805EB358  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805EB35C  48 00 02 24 */	b lbl_805EB580
lbl_805EB360:
/* 805EB360  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 805EB364  41 82 00 48 */	beq lbl_805EB3AC
/* 805EB368  38 00 00 01 */	li r0, 1
/* 805EB36C  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805EB370  38 00 00 03 */	li r0, 3
/* 805EB374  98 1D 05 C6 */	stb r0, 0x5c6(r29)
/* 805EB378  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EB37C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EB380  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805EB384  38 80 00 02 */	li r4, 2
/* 805EB388  7F A5 EB 78 */	mr r5, r29
/* 805EB38C  38 C1 00 14 */	addi r6, r1, 0x14
/* 805EB390  38 E0 00 00 */	li r7, 0
/* 805EB394  39 00 00 00 */	li r8, 0
/* 805EB398  39 20 00 00 */	li r9, 0
/* 805EB39C  4B A6 0E 7C */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805EB3A0  38 00 00 00 */	li r0, 0
/* 805EB3A4  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805EB3A8  48 00 01 D8 */	b lbl_805EB580
lbl_805EB3AC:
/* 805EB3AC  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 805EB3B0  41 82 00 88 */	beq lbl_805EB438
/* 805EB3B4  88 7D 05 F0 */	lbz r3, 0x5f0(r29)
/* 805EB3B8  28 03 00 01 */	cmplwi r3, 1
/* 805EB3BC  41 81 00 7C */	bgt lbl_805EB438
/* 805EB3C0  38 03 00 01 */	addi r0, r3, 1
/* 805EB3C4  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805EB3C8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805EB3CC  4B C7 C5 88 */	b cM_rndF__Ff
/* 805EB3D0  7F A3 EB 78 */	mr r3, r29
/* 805EB3D4  38 80 00 16 */	li r4, 0x16
/* 805EB3D8  38 A0 00 00 */	li r5, 0
/* 805EB3DC  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805EB3E0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805EB3E4  4B FF 3B 81 */	bl SetAnm__8daB_GG_cFiiff
/* 805EB3E8  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 805EB3EC  60 00 00 80 */	ori r0, r0, 0x80
/* 805EB3F0  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 805EB3F4  38 00 00 04 */	li r0, 4
/* 805EB3F8  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805EB3FC  38 00 00 03 */	li r0, 3
/* 805EB400  98 1D 05 C6 */	stb r0, 0x5c6(r29)
/* 805EB404  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805EB408  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805EB40C  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805EB410  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805EB414  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805EB418  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805EB41C  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805EB420  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805EB424  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805EB428  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805EB42C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805EB430  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805EB434  48 00 01 4C */	b lbl_805EB580
lbl_805EB438:
/* 805EB438  88 1D 05 C6 */	lbz r0, 0x5c6(r29)
/* 805EB43C  28 00 00 02 */	cmplwi r0, 2
/* 805EB440  41 82 00 A0 */	beq lbl_805EB4E0
/* 805EB444  38 00 00 03 */	li r0, 3
/* 805EB448  98 1D 05 C6 */	stb r0, 0x5c6(r29)
/* 805EB44C  38 00 00 00 */	li r0, 0
/* 805EB450  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805EB454  88 1D 05 C5 */	lbz r0, 0x5c5(r29)
/* 805EB458  28 00 00 01 */	cmplwi r0, 1
/* 805EB45C  40 82 00 24 */	bne lbl_805EB480
/* 805EB460  7F A3 EB 78 */	mr r3, r29
/* 805EB464  38 80 00 18 */	li r4, 0x18
/* 805EB468  38 A0 00 00 */	li r5, 0
/* 805EB46C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805EB470  FC 40 08 90 */	fmr f2, f1
/* 805EB474  4B FF 3A F1 */	bl SetAnm__8daB_GG_cFiiff
/* 805EB478  7F A3 EB 78 */	mr r3, r29
/* 805EB47C  4B FF FB AD */	bl ArmAngleSet__8daB_GG_cFv
lbl_805EB480:
/* 805EB480  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805EB484  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805EB488  41 82 00 18 */	beq lbl_805EB4A0
/* 805EB48C  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 805EB490  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805EB494  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805EB498  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805EB49C  48 00 00 10 */	b lbl_805EB4AC
lbl_805EB4A0:
/* 805EB4A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805EB4A4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805EB4A8  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
lbl_805EB4AC:
/* 805EB4AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EB4B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EB4B4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805EB4B8  38 80 00 02 */	li r4, 2
/* 805EB4BC  7F A5 EB 78 */	mr r5, r29
/* 805EB4C0  38 C1 00 14 */	addi r6, r1, 0x14
/* 805EB4C4  38 E0 00 00 */	li r7, 0
/* 805EB4C8  39 00 00 00 */	li r8, 0
/* 805EB4CC  39 20 00 00 */	li r9, 0
/* 805EB4D0  4B A6 0D 48 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805EB4D4  38 00 00 00 */	li r0, 0
/* 805EB4D8  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805EB4DC  48 00 00 A4 */	b lbl_805EB580
lbl_805EB4E0:
/* 805EB4E0  7F A3 EB 78 */	mr r3, r29
/* 805EB4E4  4B FF F2 69 */	bl At_Check__8daB_GG_cFv
/* 805EB4E8  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805EB4EC  60 00 00 01 */	ori r0, r0, 1
/* 805EB4F0  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805EB4F4  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805EB4F8  60 00 00 01 */	ori r0, r0, 1
/* 805EB4FC  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805EB500  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805EB504  60 00 00 01 */	ori r0, r0, 1
/* 805EB508  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805EB50C  38 00 00 00 */	li r0, 0
/* 805EB510  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805EB514  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805EB518  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805EB51C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805EB520  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805EB524  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805EB528  80 63 00 04 */	lwz r3, 4(r3)
/* 805EB52C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805EB530  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805EB534  38 63 02 10 */	addi r3, r3, 0x210
/* 805EB538  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805EB53C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805EB540  4B D5 AF 70 */	b PSMTXCopy
/* 805EB544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805EB548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805EB54C  38 81 00 14 */	addi r4, r1, 0x14
/* 805EB550  7C 85 23 78 */	mr r5, r4
/* 805EB554  4B D5 B8 18 */	b PSMTXMultVec
/* 805EB558  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EB55C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EB560  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805EB564  38 80 00 02 */	li r4, 2
/* 805EB568  7F A5 EB 78 */	mr r5, r29
/* 805EB56C  38 C1 00 14 */	addi r6, r1, 0x14
/* 805EB570  38 E0 00 00 */	li r7, 0
/* 805EB574  39 00 00 00 */	li r8, 0
/* 805EB578  39 20 00 00 */	li r9, 0
/* 805EB57C  4B A6 0C 9C */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_805EB580:
/* 805EB580  38 7D 0B BC */	addi r3, r29, 0xbbc
/* 805EB584  81 9D 0B F8 */	lwz r12, 0xbf8(r29)
/* 805EB588  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805EB58C  7D 89 03 A6 */	mtctr r12
/* 805EB590  4E 80 04 21 */	bctrl 
/* 805EB594  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EB598  81 9D 07 14 */	lwz r12, 0x714(r29)
/* 805EB59C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805EB5A0  7D 89 03 A6 */	mtctr r12
/* 805EB5A4  4E 80 04 21 */	bctrl 
/* 805EB5A8  38 7D 0C F8 */	addi r3, r29, 0xcf8
/* 805EB5AC  81 9D 0D 34 */	lwz r12, 0xd34(r29)
/* 805EB5B0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805EB5B4  7D 89 03 A6 */	mtctr r12
/* 805EB5B8  4E 80 04 21 */	bctrl 
/* 805EB5BC  48 00 00 0C */	b lbl_805EB5C8
lbl_805EB5C0:
/* 805EB5C0  7F A3 EB 78 */	mr r3, r29
/* 805EB5C4  4B FF F5 39 */	bl ChanceTime__8daB_GG_cFv
lbl_805EB5C8:
/* 805EB5C8  39 61 00 50 */	addi r11, r1, 0x50
/* 805EB5CC  4B D7 6C 58 */	b _restgpr_28
/* 805EB5D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805EB5D4  7C 08 03 A6 */	mtlr r0
/* 805EB5D8  38 21 00 50 */	addi r1, r1, 0x50
/* 805EB5DC  4E 80 00 20 */	blr 
