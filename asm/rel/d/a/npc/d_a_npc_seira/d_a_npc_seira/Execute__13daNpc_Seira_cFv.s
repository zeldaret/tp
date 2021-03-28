lbl_80ACC130:
/* 80ACC130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACC134  7C 08 02 A6 */	mflr r0
/* 80ACC138  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACC13C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACC140  7C 7F 1B 78 */	mr r31, r3
/* 80ACC144  88 03 10 FE */	lbz r0, 0x10fe(r3)
/* 80ACC148  28 00 00 00 */	cmplwi r0, 0
/* 80ACC14C  40 82 00 A8 */	bne lbl_80ACC1F4
/* 80ACC150  88 1F 0A 88 */	lbz r0, 0xa88(r31)
/* 80ACC154  28 00 00 00 */	cmplwi r0, 0
/* 80ACC158  40 82 00 9C */	bne lbl_80ACC1F4
/* 80ACC15C  4B 6C E9 C8 */	b checkShopOpen__13dShopSystem_cFv
/* 80ACC160  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC164  40 82 00 90 */	bne lbl_80ACC1F4
/* 80ACC168  88 1F 10 FD */	lbz r0, 0x10fd(r31)
/* 80ACC16C  28 00 00 00 */	cmplwi r0, 0
/* 80ACC170  40 82 00 84 */	bne lbl_80ACC1F4
/* 80ACC174  7F E3 FB 78 */	mr r3, r31
/* 80ACC178  48 00 1A F5 */	bl checkStageIsSeirasShop__13daNpc_Seira_cFv
/* 80ACC17C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC180  41 82 00 74 */	beq lbl_80ACC1F4
/* 80ACC184  88 1F 10 C0 */	lbz r0, 0x10c0(r31)
/* 80ACC188  28 00 00 00 */	cmplwi r0, 0
/* 80ACC18C  40 82 00 14 */	bne lbl_80ACC1A0
/* 80ACC190  38 60 00 95 */	li r3, 0x95
/* 80ACC194  4B 68 09 18 */	b daNpcT_chkEvtBit__FUl
/* 80ACC198  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC19C  41 82 00 58 */	beq lbl_80ACC1F4
lbl_80ACC1A0:
/* 80ACC1A0  7F E3 FB 78 */	mr r3, r31
/* 80ACC1A4  4B 6C B1 94 */	b initShopSystem__13dShopSystem_cFv
/* 80ACC1A8  38 00 00 00 */	li r0, 0
/* 80ACC1AC  98 1F 0F 77 */	stb r0, 0xf77(r31)
/* 80ACC1B0  7F E3 FB 78 */	mr r3, r31
/* 80ACC1B4  48 00 1B 31 */	bl getShopItemType__13daNpc_Seira_cFv
/* 80ACC1B8  7C 64 1B 78 */	mr r4, r3
/* 80ACC1BC  7F E3 FB 78 */	mr r3, r31
/* 80ACC1C0  4B 6C E0 78 */	b createShopItem__13dShopSystem_cFi
/* 80ACC1C4  38 00 00 00 */	li r0, 0
/* 80ACC1C8  B0 1F 0F 4E */	sth r0, 0xf4e(r31)
/* 80ACC1CC  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80ACC1D0  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80ACC1D4  80 64 00 00 */	lwz r3, 0(r4)
/* 80ACC1D8  80 04 00 04 */	lwz r0, 4(r4)
/* 80ACC1DC  90 7F 0E 78 */	stw r3, 0xe78(r31)
/* 80ACC1E0  90 1F 0E 7C */	stw r0, 0xe7c(r31)
/* 80ACC1E4  80 04 00 08 */	lwz r0, 8(r4)
/* 80ACC1E8  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80ACC1EC  38 00 00 01 */	li r0, 1
/* 80ACC1F0  98 1F 10 FD */	stb r0, 0x10fd(r31)
lbl_80ACC1F4:
/* 80ACC1F4  7F E3 FB 78 */	mr r3, r31
/* 80ACC1F8  4B 67 C3 34 */	b execute__8daNpcT_cFv
/* 80ACC1FC  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 80ACC200  4B 6C A2 C8 */	b move__16ShopCam_action_cFv
/* 80ACC204  38 60 00 01 */	li r3, 1
/* 80ACC208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACC20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACC210  7C 08 03 A6 */	mtlr r0
/* 80ACC214  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACC218  4E 80 00 20 */	blr 
