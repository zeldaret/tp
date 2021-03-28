lbl_800C83A0:
/* 800C83A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C83A4  7C 08 02 A6 */	mflr r0
/* 800C83A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C83AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C83B0  7C 7F 1B 78 */	mr r31, r3
/* 800C83B4  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 800C83B8  2C 00 00 00 */	cmpwi r0, 0
/* 800C83BC  40 82 00 18 */	bne lbl_800C83D4
/* 800C83C0  38 00 00 04 */	li r0, 4
/* 800C83C4  98 1F 2F BF */	stb r0, 0x2fbf(r31)
/* 800C83C8  38 00 00 01 */	li r0, 1
/* 800C83CC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800C83D0  48 00 00 78 */	b lbl_800C8448
lbl_800C83D4:
/* 800C83D4  88 1F 2F BF */	lbz r0, 0x2fbf(r31)
/* 800C83D8  28 00 00 00 */	cmplwi r0, 0
/* 800C83DC  40 82 00 6C */	bne lbl_800C8448
/* 800C83E0  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800C83E4  2C 00 00 00 */	cmpwi r0, 0
/* 800C83E8  40 82 00 4C */	bne lbl_800C8434
/* 800C83EC  38 00 00 01 */	li r0, 1
/* 800C83F0  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800C83F4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800C83F8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C83FC  41 82 00 20 */	beq lbl_800C841C
/* 800C8400  38 80 00 00 */	li r4, 0
/* 800C8404  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlMoveNoP_c0@ha
/* 800C8408  38 A5 EF 28 */	addi r5, r5, m__23daAlinkHIO_wlMoveNoP_c0@l
/* 800C840C  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 800C8410  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800C8414  48 06 12 C5 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 800C8418  48 00 00 1C */	b lbl_800C8434
lbl_800C841C:
/* 800C841C  38 80 00 19 */	li r4, 0x19
/* 800C8420  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha
/* 800C8424  38 A5 D6 BC */	addi r5, r5, m__18daAlinkHIO_move_c0@l
/* 800C8428  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 800C842C  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800C8430  4B FE 4B B1 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800C8434:
/* 800C8434  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800C8438  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800C843C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800C8440  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 800C8444  4B F7 FD 39 */	bl cutEnd__16dEvent_manager_cFi
lbl_800C8448:
/* 800C8448  38 60 00 01 */	li r3, 1
/* 800C844C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C8450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C8454  7C 08 03 A6 */	mtlr r0
/* 800C8458  38 21 00 10 */	addi r1, r1, 0x10
/* 800C845C  4E 80 00 20 */	blr 
