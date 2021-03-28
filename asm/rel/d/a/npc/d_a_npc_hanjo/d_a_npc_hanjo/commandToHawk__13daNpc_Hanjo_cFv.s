lbl_809FC1BC:
/* 809FC1BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809FC1C0  7C 08 02 A6 */	mflr r0
/* 809FC1C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 809FC1C8  39 61 00 40 */	addi r11, r1, 0x40
/* 809FC1CC  4B 96 60 10 */	b _savegpr_29
/* 809FC1D0  7C 7D 1B 78 */	mr r29, r3
/* 809FC1D4  38 7D 10 D8 */	addi r3, r29, 0x10d8
/* 809FC1D8  4B 74 95 30 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FC1DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809FC1E0  3B C0 00 00 */	li r30, 0
/* 809FC1E4  41 82 00 DC */	beq lbl_809FC2C0
/* 809FC1E8  3C 60 80 A0 */	lis r3, lit_4141@ha
/* 809FC1EC  C0 03 06 FC */	lfs f0, lit_4141@l(r3)
/* 809FC1F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809FC1F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809FC1F8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809FC1FC  88 1D 17 22 */	lbz r0, 0x1722(r29)
/* 809FC200  2C 00 00 00 */	cmpwi r0, 0
/* 809FC204  41 82 00 18 */	beq lbl_809FC21C
/* 809FC208  3C 60 80 A0 */	lis r3, lit_5887@ha
/* 809FC20C  C0 03 07 B4 */	lfs f0, lit_5887@l(r3)
/* 809FC210  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809FC214  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809FC218  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_809FC21C:
/* 809FC21C  3B C0 00 00 */	li r30, 0
/* 809FC220  38 7D 10 E0 */	addi r3, r29, 0x10e0
/* 809FC224  4B 74 94 E4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FC228  28 03 00 00 */	cmplwi r3, 0
/* 809FC22C  41 82 00 94 */	beq lbl_809FC2C0
/* 809FC230  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809FC234  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809FC238  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809FC23C  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 809FC240  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809FC244  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 809FC248  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809FC24C  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 809FC250  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809FC254  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809FC258  D0 01 00 08 */	stfs f0, 8(r1)
/* 809FC25C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809FC260  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809FC264  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 809FC268  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809FC26C  38 81 00 14 */	addi r4, r1, 0x14
/* 809FC270  38 A1 00 08 */	addi r5, r1, 8
/* 809FC274  4B A9 06 D8 */	b chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 809FC278  2C 03 00 00 */	cmpwi r3, 0
/* 809FC27C  41 82 00 08 */	beq lbl_809FC284
/* 809FC280  3B C0 00 01 */	li r30, 1
lbl_809FC284:
/* 809FC284  2C 1E 00 00 */	cmpwi r30, 0
/* 809FC288  41 82 00 20 */	beq lbl_809FC2A8
/* 809FC28C  88 1F 07 1A */	lbz r0, 0x71a(r31)
/* 809FC290  28 00 00 00 */	cmplwi r0, 0
/* 809FC294  40 82 00 2C */	bne lbl_809FC2C0
/* 809FC298  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 809FC29C  60 00 00 10 */	ori r0, r0, 0x10
/* 809FC2A0  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 809FC2A4  48 00 00 1C */	b lbl_809FC2C0
lbl_809FC2A8:
/* 809FC2A8  88 1F 07 1A */	lbz r0, 0x71a(r31)
/* 809FC2AC  28 00 00 00 */	cmplwi r0, 0
/* 809FC2B0  41 82 00 10 */	beq lbl_809FC2C0
/* 809FC2B4  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 809FC2B8  60 00 00 20 */	ori r0, r0, 0x20
/* 809FC2BC  B0 1F 06 BE */	sth r0, 0x6be(r31)
lbl_809FC2C0:
/* 809FC2C0  20 1E 00 01 */	subfic r0, r30, 1
/* 809FC2C4  7C 00 00 34 */	cntlzw r0, r0
/* 809FC2C8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 809FC2CC  39 61 00 40 */	addi r11, r1, 0x40
/* 809FC2D0  4B 96 5F 58 */	b _restgpr_29
/* 809FC2D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809FC2D8  7C 08 03 A6 */	mtlr r0
/* 809FC2DC  38 21 00 40 */	addi r1, r1, 0x40
/* 809FC2E0  4E 80 00 20 */	blr 
