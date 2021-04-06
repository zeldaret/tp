lbl_80B0B004:
/* 80B0B004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0B008  7C 08 02 A6 */	mflr r0
/* 80B0B00C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0B010  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B0B014  7C 7F 1B 78 */	mr r31, r3
/* 80B0B018  A0 83 06 BE */	lhz r4, 0x6be(r3)
/* 80B0B01C  28 04 00 00 */	cmplwi r4, 0
/* 80B0B020  41 82 02 50 */	beq lbl_80B0B270
/* 80B0B024  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80B0B028  41 82 00 34 */	beq lbl_80B0B05C
/* 80B0B02C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0B030  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0B034  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 80B0B038  A8 04 02 30 */	lha r0, 0x230(r4)
/* 80B0B03C  7C 00 00 D0 */	neg r0, r0
/* 80B0B040  B0 1F 06 9E */	sth r0, 0x69e(r31)
/* 80B0B044  38 80 00 03 */	li r4, 3
/* 80B0B048  4B FF 68 31 */	bl setActionMode__10daNPC_TK_cFi
/* 80B0B04C  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 80B0B050  68 00 00 01 */	xori r0, r0, 1
/* 80B0B054  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80B0B058  48 00 02 18 */	b lbl_80B0B270
lbl_80B0B05C:
/* 80B0B05C  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80B0B060  41 82 00 50 */	beq lbl_80B0B0B0
/* 80B0B064  38 00 00 00 */	li r0, 0
/* 80B0B068  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80B0B06C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050027@ha */
/* 80B0B070  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00050027@l */
/* 80B0B074  90 01 00 08 */	stw r0, 8(r1)
/* 80B0B078  38 7F 05 74 */	addi r3, r31, 0x574
/* 80B0B07C  38 81 00 08 */	addi r4, r1, 8
/* 80B0B080  38 A0 FF FF */	li r5, -1
/* 80B0B084  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 80B0B088  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B0B08C  7D 89 03 A6 */	mtctr r12
/* 80B0B090  4E 80 04 21 */	bctrl 
/* 80B0B094  7F E3 FB 78 */	mr r3, r31
/* 80B0B098  38 80 00 04 */	li r4, 4
/* 80B0B09C  4B FF 67 DD */	bl setActionMode__10daNPC_TK_cFi
/* 80B0B0A0  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 80B0B0A4  68 00 00 02 */	xori r0, r0, 2
/* 80B0B0A8  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80B0B0AC  48 00 01 C4 */	b lbl_80B0B270
lbl_80B0B0B0:
/* 80B0B0B0  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 80B0B0B4  41 82 00 1C */	beq lbl_80B0B0D0
/* 80B0B0B8  38 80 00 01 */	li r4, 1
/* 80B0B0BC  4B FF 6D 8D */	bl setAwayAction__10daNPC_TK_cFi
/* 80B0B0C0  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 80B0B0C4  68 00 00 04 */	xori r0, r0, 4
/* 80B0B0C8  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80B0B0CC  48 00 01 A4 */	b lbl_80B0B270
lbl_80B0B0D0:
/* 80B0B0D0  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 80B0B0D4  41 82 00 24 */	beq lbl_80B0B0F8
/* 80B0B0D8  38 80 00 01 */	li r4, 1
/* 80B0B0DC  4B FF 67 9D */	bl setActionMode__10daNPC_TK_cFi
/* 80B0B0E0  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 80B0B0E4  68 00 00 08 */	xori r0, r0, 8
/* 80B0B0E8  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80B0B0EC  38 00 00 00 */	li r0, 0
/* 80B0B0F0  90 1F 06 38 */	stw r0, 0x638(r31)
/* 80B0B0F4  48 00 01 7C */	b lbl_80B0B270
lbl_80B0B0F8:
/* 80B0B0F8  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 80B0B0FC  41 82 00 34 */	beq lbl_80B0B130
/* 80B0B100  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80B0B104  2C 00 00 06 */	cmpwi r0, 6
/* 80B0B108  41 82 00 0C */	beq lbl_80B0B114
/* 80B0B10C  2C 00 00 08 */	cmpwi r0, 8
/* 80B0B110  40 82 00 10 */	bne lbl_80B0B120
lbl_80B0B114:
/* 80B0B114  7F E3 FB 78 */	mr r3, r31
/* 80B0B118  38 80 00 07 */	li r4, 7
/* 80B0B11C  4B FF 67 5D */	bl setActionMode__10daNPC_TK_cFi
lbl_80B0B120:
/* 80B0B120  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 80B0B124  68 00 00 10 */	xori r0, r0, 0x10
/* 80B0B128  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80B0B12C  48 00 01 44 */	b lbl_80B0B270
lbl_80B0B130:
/* 80B0B130  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 80B0B134  41 82 00 48 */	beq lbl_80B0B17C
/* 80B0B138  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80B0B13C  2C 00 00 07 */	cmpwi r0, 7
/* 80B0B140  40 82 00 2C */	bne lbl_80B0B16C
/* 80B0B144  80 1F 06 94 */	lwz r0, 0x694(r31)
/* 80B0B148  2C 00 00 00 */	cmpwi r0, 0
/* 80B0B14C  41 82 00 20 */	beq lbl_80B0B16C
/* 80B0B150  80 1F 06 B4 */	lwz r0, 0x6b4(r31)
/* 80B0B154  2C 00 00 00 */	cmpwi r0, 0
/* 80B0B158  40 82 00 14 */	bne lbl_80B0B16C
/* 80B0B15C  38 00 00 00 */	li r0, 0
/* 80B0B160  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80B0B164  38 80 00 08 */	li r4, 8
/* 80B0B168  4B FF 67 11 */	bl setActionMode__10daNPC_TK_cFi
lbl_80B0B16C:
/* 80B0B16C  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 80B0B170  68 00 00 20 */	xori r0, r0, 0x20
/* 80B0B174  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80B0B178  48 00 00 F8 */	b lbl_80B0B270
lbl_80B0B17C:
/* 80B0B17C  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 80B0B180  41 82 00 24 */	beq lbl_80B0B1A4
/* 80B0B184  38 00 00 00 */	li r0, 0
/* 80B0B188  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80B0B18C  38 80 00 0A */	li r4, 0xa
/* 80B0B190  4B FF 66 E9 */	bl setActionMode__10daNPC_TK_cFi
/* 80B0B194  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 80B0B198  68 00 00 40 */	xori r0, r0, 0x40
/* 80B0B19C  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80B0B1A0  48 00 00 D0 */	b lbl_80B0B270
lbl_80B0B1A4:
/* 80B0B1A4  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 80B0B1A8  41 82 00 20 */	beq lbl_80B0B1C8
/* 80B0B1AC  68 80 00 80 */	xori r0, r4, 0x80
/* 80B0B1B0  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80B0B1B4  38 80 00 0B */	li r4, 0xb
/* 80B0B1B8  4B FF 66 C1 */	bl setActionMode__10daNPC_TK_cFi
/* 80B0B1BC  38 00 00 00 */	li r0, 0
/* 80B0B1C0  90 1F 06 38 */	stw r0, 0x638(r31)
/* 80B0B1C4  48 00 00 AC */	b lbl_80B0B270
lbl_80B0B1C8:
/* 80B0B1C8  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 80B0B1CC  41 82 00 18 */	beq lbl_80B0B1E4
/* 80B0B1D0  68 80 01 00 */	xori r0, r4, 0x100
/* 80B0B1D4  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80B0B1D8  38 80 00 0D */	li r4, 0xd
/* 80B0B1DC  4B FF 66 9D */	bl setActionMode__10daNPC_TK_cFi
/* 80B0B1E0  48 00 00 90 */	b lbl_80B0B270
lbl_80B0B1E4:
/* 80B0B1E4  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 80B0B1E8  41 82 00 88 */	beq lbl_80B0B270
/* 80B0B1EC  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80B0B1F0  2C 00 00 00 */	cmpwi r0, 0
/* 80B0B1F4  41 82 00 0C */	beq lbl_80B0B200
/* 80B0B1F8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B0B1FC  40 82 00 68 */	bne lbl_80B0B264
lbl_80B0B200:
/* 80B0B200  38 61 00 0C */	addi r3, r1, 0xc
/* 80B0B204  7F E4 FB 78 */	mr r4, r31
/* 80B0B208  4B FF A9 C9 */	bl getHanjoHandPos__10daNPC_TK_cFv
/* 80B0B20C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B0B210  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80B0B214  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B0B218  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80B0B21C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B0B220  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80B0B224  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B0B228  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80B0B22C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B0B230  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80B0B234  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B0B238  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80B0B23C  80 1F 09 C4 */	lwz r0, 0x9c4(r31)
/* 80B0B240  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B0B244  90 1F 09 C4 */	stw r0, 0x9c4(r31)
/* 80B0B248  3C 60 80 B1 */	lis r3, lit_4024@ha /* 0x80B0C1F4@ha */
/* 80B0B24C  C0 03 C1 F4 */	lfs f0, lit_4024@l(r3)  /* 0x80B0C1F4@l */
/* 80B0B250  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B0B254  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B0B258  7F E3 FB 78 */	mr r3, r31
/* 80B0B25C  38 80 00 07 */	li r4, 7
/* 80B0B260  4B FF 66 19 */	bl setActionMode__10daNPC_TK_cFi
lbl_80B0B264:
/* 80B0B264  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 80B0B268  68 00 02 00 */	xori r0, r0, 0x200
/* 80B0B26C  B0 1F 06 BE */	sth r0, 0x6be(r31)
lbl_80B0B270:
/* 80B0B270  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B0B274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0B278  7C 08 03 A6 */	mtlr r0
/* 80B0B27C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0B280  4E 80 00 20 */	blr 
