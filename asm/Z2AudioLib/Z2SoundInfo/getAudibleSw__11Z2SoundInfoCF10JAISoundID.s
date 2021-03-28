lbl_802BB448:
/* 802BB448  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802BB44C  7C 08 02 A6 */	mflr r0
/* 802BB450  90 01 00 54 */	stw r0, 0x54(r1)
/* 802BB454  39 61 00 50 */	addi r11, r1, 0x50
/* 802BB458  48 0A 6D 81 */	bl _savegpr_28
/* 802BB45C  7C 7E 1B 78 */	mr r30, r3
/* 802BB460  7C 9F 23 78 */	mr r31, r4
/* 802BB464  80 04 00 00 */	lwz r0, 0(r4)
/* 802BB468  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BB46C  80 6D 85 D8 */	lwz r3, data_80450B58(r13)
/* 802BB470  38 81 00 34 */	addi r4, r1, 0x34
/* 802BB474  4B FE BC ED */	bl getTypeID__13JAUSoundTableCF10JAISoundID
/* 802BB478  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802BB47C  2C 00 00 51 */	cmpwi r0, 0x51
/* 802BB480  41 82 00 08 */	beq lbl_802BB488
/* 802BB484  48 00 02 2C */	b lbl_802BB6B0
lbl_802BB488:
/* 802BB488  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB48C  90 01 00 30 */	stw r0, 0x30(r1)
/* 802BB490  7F C3 F3 78 */	mr r3, r30
/* 802BB494  38 81 00 30 */	addi r4, r1, 0x30
/* 802BB498  48 00 06 31 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB49C  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB4A0  50 60 E6 36 */	rlwimi r0, r3, 0x1c, 0x18, 0x1b
/* 802BB4A4  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB4A8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB4AC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802BB4B0  7F C3 F3 78 */	mr r3, r30
/* 802BB4B4  38 81 00 2C */	addi r4, r1, 0x2c
/* 802BB4B8  48 00 06 11 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB4BC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 802BB4C0  41 82 00 18 */	beq lbl_802BB4D8
/* 802BB4C4  38 60 00 00 */	li r3, 0
/* 802BB4C8  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB4CC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802BB4D0  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB4D4  48 00 00 14 */	b lbl_802BB4E8
lbl_802BB4D8:
/* 802BB4D8  38 60 00 01 */	li r3, 1
/* 802BB4DC  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB4E0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802BB4E4  98 01 00 38 */	stb r0, 0x38(r1)
lbl_802BB4E8:
/* 802BB4E8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB4EC  90 01 00 28 */	stw r0, 0x28(r1)
/* 802BB4F0  7F C3 F3 78 */	mr r3, r30
/* 802BB4F4  38 81 00 28 */	addi r4, r1, 0x28
/* 802BB4F8  48 00 05 D1 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB4FC  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 802BB500  41 82 00 18 */	beq lbl_802BB518
/* 802BB504  38 60 00 00 */	li r3, 0
/* 802BB508  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB50C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 802BB510  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB514  48 00 00 14 */	b lbl_802BB528
lbl_802BB518:
/* 802BB518  38 60 00 01 */	li r3, 1
/* 802BB51C  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB520  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 802BB524  98 01 00 38 */	stb r0, 0x38(r1)
lbl_802BB528:
/* 802BB528  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB52C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BB530  7F C3 F3 78 */	mr r3, r30
/* 802BB534  38 81 00 24 */	addi r4, r1, 0x24
/* 802BB538  48 00 05 91 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB53C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 802BB540  41 82 00 18 */	beq lbl_802BB558
/* 802BB544  38 60 00 00 */	li r3, 0
/* 802BB548  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB54C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802BB550  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB554  48 00 00 14 */	b lbl_802BB568
lbl_802BB558:
/* 802BB558  38 60 00 01 */	li r3, 1
/* 802BB55C  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB560  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802BB564  98 01 00 38 */	stb r0, 0x38(r1)
lbl_802BB568:
/* 802BB568  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB56C  90 01 00 20 */	stw r0, 0x20(r1)
/* 802BB570  7F C3 F3 78 */	mr r3, r30
/* 802BB574  38 81 00 20 */	addi r4, r1, 0x20
/* 802BB578  48 00 05 51 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB57C  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 802BB580  41 82 00 18 */	beq lbl_802BB598
/* 802BB584  38 60 00 01 */	li r3, 1
/* 802BB588  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB58C  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 802BB590  98 01 00 38 */	stb r0, 0x38(r1)
/* 802BB594  48 00 00 14 */	b lbl_802BB5A8
lbl_802BB598:
/* 802BB598  38 60 00 00 */	li r3, 0
/* 802BB59C  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BB5A0  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 802BB5A4  98 01 00 38 */	stb r0, 0x38(r1)
lbl_802BB5A8:
/* 802BB5A8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB5AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802BB5B0  7F C3 F3 78 */	mr r3, r30
/* 802BB5B4  38 81 00 1C */	addi r4, r1, 0x1c
/* 802BB5B8  48 00 05 11 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB5BC  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 802BB5C0  41 82 00 18 */	beq lbl_802BB5D8
/* 802BB5C4  38 60 00 00 */	li r3, 0
/* 802BB5C8  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802BB5CC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802BB5D0  98 01 00 39 */	stb r0, 0x39(r1)
/* 802BB5D4  48 00 00 14 */	b lbl_802BB5E8
lbl_802BB5D8:
/* 802BB5D8  38 60 00 01 */	li r3, 1
/* 802BB5DC  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802BB5E0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802BB5E4  98 01 00 39 */	stb r0, 0x39(r1)
lbl_802BB5E8:
/* 802BB5E8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB5EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802BB5F0  7F C3 F3 78 */	mr r3, r30
/* 802BB5F4  38 81 00 18 */	addi r4, r1, 0x18
/* 802BB5F8  48 00 04 D1 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB5FC  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 802BB600  41 82 00 18 */	beq lbl_802BB618
/* 802BB604  38 60 00 00 */	li r3, 0
/* 802BB608  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802BB60C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BB610  98 01 00 39 */	stb r0, 0x39(r1)
/* 802BB614  48 00 00 14 */	b lbl_802BB628
lbl_802BB618:
/* 802BB618  38 60 00 01 */	li r3, 1
/* 802BB61C  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802BB620  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BB624  98 01 00 39 */	stb r0, 0x39(r1)
lbl_802BB628:
/* 802BB628  3B 80 00 00 */	li r28, 0
/* 802BB62C  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB630  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BB634  7F C3 F3 78 */	mr r3, r30
/* 802BB638  38 81 00 14 */	addi r4, r1, 0x14
/* 802BB63C  48 00 04 8D */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB640  54 60 03 19 */	rlwinm. r0, r3, 0, 0xc, 0xc
/* 802BB644  41 82 00 08 */	beq lbl_802BB64C
/* 802BB648  3B 80 00 08 */	li r28, 8
lbl_802BB64C:
/* 802BB64C  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB650  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BB654  7F C3 F3 78 */	mr r3, r30
/* 802BB658  38 81 00 10 */	addi r4, r1, 0x10
/* 802BB65C  48 00 04 6D */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB660  54 7D 87 7E */	rlwinm r29, r3, 0x10, 0x1d, 0x1f
/* 802BB664  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB668  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BB66C  7F C3 F3 78 */	mr r3, r30
/* 802BB670  38 81 00 0C */	addi r4, r1, 0xc
/* 802BB674  48 00 04 55 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB678  54 60 86 76 */	rlwinm r0, r3, 0x10, 0x19, 0x1b
/* 802BB67C  7F BD 02 14 */	add r29, r29, r0
/* 802BB680  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BB684  90 01 00 08 */	stw r0, 8(r1)
/* 802BB688  7F C3 F3 78 */	mr r3, r30
/* 802BB68C  38 81 00 08 */	addi r4, r1, 8
/* 802BB690  48 00 04 39 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB694  54 60 85 2E */	rlwinm r0, r3, 0x10, 0x14, 0x17
/* 802BB698  7F BD 02 14 */	add r29, r29, r0
/* 802BB69C  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802BB6A0  53 80 06 BE */	rlwimi r0, r28, 0, 0x1a, 0x1f
/* 802BB6A4  98 01 00 39 */	stb r0, 0x39(r1)
/* 802BB6A8  B3 A1 00 3A */	sth r29, 0x3a(r1)
/* 802BB6AC  48 00 00 14 */	b lbl_802BB6C0
lbl_802BB6B0:
/* 802BB6B0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802BB6B4  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802BB6B8  B0 01 00 38 */	sth r0, 0x38(r1)
/* 802BB6BC  B0 01 00 3A */	sth r0, 0x3a(r1)
lbl_802BB6C0:
/* 802BB6C0  A0 61 00 38 */	lhz r3, 0x38(r1)
/* 802BB6C4  39 61 00 50 */	addi r11, r1, 0x50
/* 802BB6C8  48 0A 6B 5D */	bl _restgpr_28
/* 802BB6CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802BB6D0  7C 08 03 A6 */	mtlr r0
/* 802BB6D4  38 21 00 50 */	addi r1, r1, 0x50
/* 802BB6D8  4E 80 00 20 */	blr 
