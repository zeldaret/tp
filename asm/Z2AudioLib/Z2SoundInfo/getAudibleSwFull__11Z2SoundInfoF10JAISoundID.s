lbl_802BB158:
/* 802BB158  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802BB15C  7C 08 02 A6 */	mflr r0
/* 802BB160  90 01 00 54 */	stw r0, 0x54(r1)
/* 802BB164  39 61 00 50 */	addi r11, r1, 0x50
/* 802BB168  48 0A 70 71 */	bl _savegpr_28
/* 802BB16C  7C 7E 1B 78 */	mr r30, r3
/* 802BB170  7C 9F 23 78 */	mr r31, r4
/* 802BB174  80 04 00 00 */	lwz r0, 0(r4)
/* 802BB178  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BB17C  80 6D 85 D8 */	lwz r3, data_80450B58(r13)
/* 802BB180  38 81 00 34 */	addi r4, r1, 0x34
/* 802BB184  4B FE BF DD */	bl getTypeID__13JAUSoundTableCF10JAISoundID
/* 802BB188  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802BB18C  2C 00 00 51 */	cmpwi r0, 0x51
/* 802BB190  41 82 00 08 */	beq lbl_802BB198
/* 802BB194  48 00 02 2C */	b lbl_802BB3C0
lbl_802BB198:
/* 802BB198  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB19C  90 01 00 30 */	stw r0, 0x30(r1)
/* 802BB1A0  7F C3 F3 78 */	mr r3, r30
/* 802BB1A4  38 81 00 30 */	addi r4, r1, 0x30
/* 802BB1A8  48 00 09 21 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB1AC  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB1B0  50 60 E6 36 */	rlwimi r0, r3, 0x1c, 0x18, 0x1b
/* 802BB1B4  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB1B8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB1BC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802BB1C0  7F C3 F3 78 */	mr r3, r30
/* 802BB1C4  38 81 00 2C */	addi r4, r1, 0x2c
/* 802BB1C8  48 00 09 01 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB1CC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 802BB1D0  41 82 00 18 */	beq lbl_802BB1E8
/* 802BB1D4  38 60 00 00 */	li r3, 0
/* 802BB1D8  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB1DC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802BB1E0  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB1E4  48 00 00 14 */	b lbl_802BB1F8
lbl_802BB1E8:
/* 802BB1E8  38 60 00 01 */	li r3, 1
/* 802BB1EC  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB1F0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802BB1F4  98 01 00 38 */	stb r0, 0x38(r1)
lbl_802BB1F8:
/* 802BB1F8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB1FC  90 01 00 28 */	stw r0, 0x28(r1)
/* 802BB200  7F C3 F3 78 */	mr r3, r30
/* 802BB204  38 81 00 28 */	addi r4, r1, 0x28
/* 802BB208  48 00 08 C1 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB20C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 802BB210  41 82 00 18 */	beq lbl_802BB228
/* 802BB214  38 60 00 00 */	li r3, 0
/* 802BB218  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB21C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 802BB220  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB224  48 00 00 14 */	b lbl_802BB238
lbl_802BB228:
/* 802BB228  38 60 00 01 */	li r3, 1
/* 802BB22C  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB230  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 802BB234  98 01 00 38 */	stb r0, 0x38(r1)
lbl_802BB238:
/* 802BB238  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB23C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BB240  7F C3 F3 78 */	mr r3, r30
/* 802BB244  38 81 00 24 */	addi r4, r1, 0x24
/* 802BB248  48 00 08 81 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB24C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 802BB250  41 82 00 18 */	beq lbl_802BB268
/* 802BB254  38 60 00 00 */	li r3, 0
/* 802BB258  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB25C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802BB260  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB264  48 00 00 14 */	b lbl_802BB278
lbl_802BB268:
/* 802BB268  38 60 00 01 */	li r3, 1
/* 802BB26C  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB270  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802BB274  98 01 00 38 */	stb r0, 0x38(r1)
lbl_802BB278:
/* 802BB278  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB27C  90 01 00 20 */	stw r0, 0x20(r1)
/* 802BB280  7F C3 F3 78 */	mr r3, r30
/* 802BB284  38 81 00 20 */	addi r4, r1, 0x20
/* 802BB288  48 00 08 41 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB28C  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 802BB290  41 82 00 18 */	beq lbl_802BB2A8
/* 802BB294  38 60 00 01 */	li r3, 1
/* 802BB298  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB29C  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 802BB2A0  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB2A4  48 00 00 14 */	b lbl_802BB2B8
lbl_802BB2A8:
/* 802BB2A8  38 60 00 00 */	li r3, 0
/* 802BB2AC  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB2B0  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 802BB2B4  98 01 00 38 */	stb r0, 0x38(r1)
lbl_802BB2B8:
/* 802BB2B8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB2BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802BB2C0  7F C3 F3 78 */	mr r3, r30
/* 802BB2C4  38 81 00 1C */	addi r4, r1, 0x1c
/* 802BB2C8  48 00 08 01 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB2CC  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 802BB2D0  41 82 00 18 */	beq lbl_802BB2E8
/* 802BB2D4  38 60 00 00 */	li r3, 0
/* 802BB2D8  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802BB2DC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802BB2E0  98 01 00 39 */	stb r0, 0x39(r1)
/* 802BB2E4  48 00 00 14 */	b lbl_802BB2F8
lbl_802BB2E8:
/* 802BB2E8  38 60 00 01 */	li r3, 1
/* 802BB2EC  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802BB2F0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802BB2F4  98 01 00 39 */	stb r0, 0x39(r1)
lbl_802BB2F8:
/* 802BB2F8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB2FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802BB300  7F C3 F3 78 */	mr r3, r30
/* 802BB304  38 81 00 18 */	addi r4, r1, 0x18
/* 802BB308  48 00 07 C1 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB30C  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 802BB310  41 82 00 18 */	beq lbl_802BB328
/* 802BB314  38 60 00 00 */	li r3, 0
/* 802BB318  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802BB31C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BB320  98 01 00 39 */	stb r0, 0x39(r1)
/* 802BB324  48 00 00 14 */	b lbl_802BB338
lbl_802BB328:
/* 802BB328  38 60 00 01 */	li r3, 1
/* 802BB32C  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802BB330  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BB334  98 01 00 39 */	stb r0, 0x39(r1)
lbl_802BB338:
/* 802BB338  3B 80 00 00 */	li r28, 0
/* 802BB33C  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB340  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BB344  7F C3 F3 78 */	mr r3, r30
/* 802BB348  38 81 00 14 */	addi r4, r1, 0x14
/* 802BB34C  48 00 07 7D */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB350  54 60 03 19 */	rlwinm. r0, r3, 0, 0xc, 0xc
/* 802BB354  41 82 00 08 */	beq lbl_802BB35C
/* 802BB358  3B 80 00 08 */	li r28, 8
lbl_802BB35C:
/* 802BB35C  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB360  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BB364  7F C3 F3 78 */	mr r3, r30
/* 802BB368  38 81 00 10 */	addi r4, r1, 0x10
/* 802BB36C  48 00 07 5D */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB370  54 7D 87 7E */	rlwinm r29, r3, 0x10, 0x1d, 0x1f
/* 802BB374  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB378  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BB37C  7F C3 F3 78 */	mr r3, r30
/* 802BB380  38 81 00 0C */	addi r4, r1, 0xc
/* 802BB384  48 00 07 45 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB388  54 60 86 76 */	rlwinm r0, r3, 0x10, 0x19, 0x1b
/* 802BB38C  7F BD 02 14 */	add r29, r29, r0
/* 802BB390  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB394  90 01 00 08 */	stw r0, 8(r1)
/* 802BB398  7F C3 F3 78 */	mr r3, r30
/* 802BB39C  38 81 00 08 */	addi r4, r1, 8
/* 802BB3A0  48 00 07 29 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB3A4  54 60 85 2E */	rlwinm r0, r3, 0x10, 0x14, 0x17
/* 802BB3A8  7F BD 02 14 */	add r29, r29, r0
/* 802BB3AC  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802BB3B0  53 80 06 BE */	rlwimi r0, r28, 0, 0x1a, 0x1f
/* 802BB3B4  98 01 00 39 */	stb r0, 0x39(r1)
/* 802BB3B8  B3 A1 00 3A */	sth r29, 0x3a(r1)
/* 802BB3BC  48 00 00 70 */	b lbl_802BB42C
lbl_802BB3C0:
/* 802BB3C0  38 80 00 00 */	li r4, 0
/* 802BB3C4  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB3C8  50 80 26 36 */	rlwimi r0, r4, 4, 0x18, 0x1b
/* 802BB3CC  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB3D0  38 60 00 01 */	li r3, 1
/* 802BB3D4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802BB3D8  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802BB3DC  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB3E0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802BB3E4  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 802BB3E8  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB3EC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802BB3F0  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802BB3F4  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB3F8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802BB3FC  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 802BB400  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB404  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802BB408  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802BB40C  98 01 00 39 */	stb r0, 0x39(r1)
/* 802BB410  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802BB414  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BB418  98 01 00 39 */	stb r0, 0x39(r1)
/* 802BB41C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802BB420  50 80 06 BE */	rlwimi r0, r4, 0, 0x1a, 0x1f
/* 802BB424  98 01 00 39 */	stb r0, 0x39(r1)
/* 802BB428  B0 81 00 3A */	sth r4, 0x3a(r1)
lbl_802BB42C:
/* 802BB42C  80 61 00 38 */	lwz r3, 0x38(r1)
/* 802BB430  39 61 00 50 */	addi r11, r1, 0x50
/* 802BB434  48 0A 6D F1 */	bl _restgpr_28
/* 802BB438  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802BB43C  7C 08 03 A6 */	mtlr r0
/* 802BB440  38 21 00 50 */	addi r1, r1, 0x50
/* 802BB444  4E 80 00 20 */	blr 
