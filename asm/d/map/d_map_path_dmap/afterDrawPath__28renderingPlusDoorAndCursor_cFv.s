lbl_800402FC:
/* 800402FC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80040300  7C 08 02 A6 */	mflr r0
/* 80040304  90 01 00 54 */	stw r0, 0x54(r1)
/* 80040308  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8004030C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80040310  39 61 00 40 */	addi r11, r1, 0x40
/* 80040314  48 32 1E C9 */	bl _savegpr_29
/* 80040318  7C 7F 1B 78 */	mr r31, r3
/* 8004031C  48 00 01 FD */	bl afterDrawPath__19renderingPlusDoor_cFv
/* 80040320  7F E3 FB 78 */	mr r3, r31
/* 80040324  81 9F 00 00 */	lwz r12, 0(r31)
/* 80040328  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8004032C  7D 89 03 A6 */	mtctr r12
/* 80040330  4E 80 04 21 */	bctrl 
/* 80040334  7C 7E 1B 78 */	mr r30, r3
/* 80040338  7F E3 FB 78 */	mr r3, r31
/* 8004033C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80040340  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80040344  7D 89 03 A6 */	mtctr r12
/* 80040348  4E 80 04 21 */	bctrl 
/* 8004034C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80040350  41 82 00 D8 */	beq lbl_80040428
/* 80040354  7F E3 FB 78 */	mr r3, r31
/* 80040358  81 9F 00 00 */	lwz r12, 0(r31)
/* 8004035C  81 8C 00 98 */	lwz r12, 0x98(r12)
/* 80040360  7D 89 03 A6 */	mtctr r12
/* 80040364  4E 80 04 21 */	bctrl 
/* 80040368  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8004036C  41 82 00 BC */	beq lbl_80040428
/* 80040370  3B A0 00 01 */	li r29, 1
/* 80040374  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80040378  41 82 00 44 */	beq lbl_800403BC
/* 8004037C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80040380  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80040384  88 03 0D B4 */	lbz r0, 0xdb4(r3)
/* 80040388  7C 1E 07 74 */	extsb r30, r0
/* 8004038C  38 61 00 20 */	addi r3, r1, 0x20
/* 80040390  4B FF EC 9D */	bl getMapRestartPos__10dMapInfo_nFv
/* 80040394  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80040398  38 60 00 01 */	li r3, 1
/* 8004039C  7F C4 F3 78 */	mr r4, r30
/* 800403A0  4B FF F0 6D */	bl calcFloorNo__10dMapInfo_cFfbi
/* 800403A4  7C 63 07 74 */	extsb r3, r3
/* 800403A8  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 800403AC  7C 00 07 74 */	extsb r0, r0
/* 800403B0  7C 03 00 00 */	cmpw r3, r0
/* 800403B4  41 82 00 08 */	beq lbl_800403BC
/* 800403B8  3B A0 00 00 */	li r29, 0
lbl_800403BC:
/* 800403BC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800403C0  41 82 00 68 */	beq lbl_80040428
/* 800403C4  3B A0 00 1F */	li r29, 0x1f
/* 800403C8  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 800403CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800403D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800403D4  88 03 0D B4 */	lbz r0, 0xdb4(r3)
/* 800403D8  7C 00 07 74 */	extsb r0, r0
/* 800403DC  7C 04 00 00 */	cmpw r4, r0
/* 800403E0  41 82 00 08 */	beq lbl_800403E8
/* 800403E4  3B A0 00 20 */	li r29, 0x20
lbl_800403E8:
/* 800403E8  7F E3 FB 78 */	mr r3, r31
/* 800403EC  81 9F 00 00 */	lwz r12, 0(r31)
/* 800403F0  81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 800403F4  7D 89 03 A6 */	mtctr r12
/* 800403F8  4E 80 04 21 */	bctrl 
/* 800403FC  FF E0 08 90 */	fmr f31, f1
/* 80040400  4B FF EC F9 */	bl getMapRestartAngleY__10dMapInfo_nFv
/* 80040404  7C 7E 1B 78 */	mr r30, r3
/* 80040408  38 61 00 14 */	addi r3, r1, 0x14
/* 8004040C  4B FF EC 21 */	bl getMapRestartPos__10dMapInfo_nFv
/* 80040410  7F E3 FB 78 */	mr r3, r31
/* 80040414  38 81 00 14 */	addi r4, r1, 0x14
/* 80040418  7F C5 F3 78 */	mr r5, r30
/* 8004041C  7F A6 EB 78 */	mr r6, r29
/* 80040420  FC 20 F8 90 */	fmr f1, f31
/* 80040424  48 00 0E 9D */	bl drawCursor__28renderingPlusDoorAndCursor_cFRC3Vecsif
lbl_80040428:
/* 80040428  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8004042C  2C 00 00 00 */	cmpwi r0, 0
/* 80040430  41 80 00 28 */	blt lbl_80040458
/* 80040434  7F E3 FB 78 */	mr r3, r31
/* 80040438  81 9F 00 00 */	lwz r12, 0(r31)
/* 8004043C  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 80040440  7D 89 03 A6 */	mtctr r12
/* 80040444  4E 80 04 21 */	bctrl 
/* 80040448  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8004044C  41 82 00 0C */	beq lbl_80040458
/* 80040450  7F E3 FB 78 */	mr r3, r31
/* 80040454  48 00 06 AD */	bl drawTreasure__28renderingPlusDoorAndCursor_cFv
lbl_80040458:
/* 80040458  7F E3 FB 78 */	mr r3, r31
/* 8004045C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80040460  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80040464  7D 89 03 A6 */	mtctr r12
/* 80040468  4E 80 04 21 */	bctrl 
/* 8004046C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80040470  41 82 00 58 */	beq lbl_800404C8
/* 80040474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80040478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8004047C  80 03 5D AC */	lwz r0, 0x5dac(r3)
/* 80040480  28 00 00 00 */	cmplwi r0, 0
/* 80040484  41 82 00 44 */	beq lbl_800404C8
/* 80040488  7F E3 FB 78 */	mr r3, r31
/* 8004048C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80040490  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 80040494  7D 89 03 A6 */	mtctr r12
/* 80040498  4E 80 04 21 */	bctrl 
/* 8004049C  FF E0 08 90 */	fmr f31, f1
/* 800404A0  4B FF EA 81 */	bl getMapPlayerAngleY__10dMapInfo_nFv
/* 800404A4  7C 7E 1B 78 */	mr r30, r3
/* 800404A8  38 61 00 08 */	addi r3, r1, 8
/* 800404AC  4B FF E9 B1 */	bl getMapPlayerPos__10dMapInfo_nFv
/* 800404B0  7F E3 FB 78 */	mr r3, r31
/* 800404B4  38 81 00 08 */	addi r4, r1, 8
/* 800404B8  7F C5 F3 78 */	mr r5, r30
/* 800404BC  38 C0 00 1E */	li r6, 0x1e
/* 800404C0  FC 20 F8 90 */	fmr f1, f31
/* 800404C4  48 00 0D FD */	bl drawCursor__28renderingPlusDoorAndCursor_cFRC3Vecsif
lbl_800404C8:
/* 800404C8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 800404CC  2C 00 00 00 */	cmpwi r0, 0
/* 800404D0  41 80 00 28 */	blt lbl_800404F8
/* 800404D4  7F E3 FB 78 */	mr r3, r31
/* 800404D8  81 9F 00 00 */	lwz r12, 0(r31)
/* 800404DC  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 800404E0  7D 89 03 A6 */	mtctr r12
/* 800404E4  4E 80 04 21 */	bctrl 
/* 800404E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800404EC  41 82 00 0C */	beq lbl_800404F8
/* 800404F0  7F E3 FB 78 */	mr r3, r31
/* 800404F4  48 00 09 91 */	bl drawTreasureAfterPlayer__28renderingPlusDoorAndCursor_cFv
lbl_800404F8:
/* 800404F8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800404FC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80040500  39 61 00 40 */	addi r11, r1, 0x40
/* 80040504  48 32 1D 25 */	bl _restgpr_29
/* 80040508  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8004050C  7C 08 03 A6 */	mtlr r0
/* 80040510  38 21 00 50 */	addi r1, r1, 0x50
/* 80040514  4E 80 00 20 */	blr 
