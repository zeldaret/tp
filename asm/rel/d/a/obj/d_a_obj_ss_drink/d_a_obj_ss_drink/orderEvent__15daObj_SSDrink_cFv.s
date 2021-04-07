lbl_80CE63AC:
/* 80CE63AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE63B0  7C 08 02 A6 */	mflr r0
/* 80CE63B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE63B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE63BC  7C 7F 1B 78 */	mr r31, r3
/* 80CE63C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE63C4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE63C8  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80CE63CC  80 04 05 74 */	lwz r0, 0x574(r4)
/* 80CE63D0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CE63D4  40 82 00 30 */	bne lbl_80CE6404
/* 80CE63D8  88 1F 0B 0C */	lbz r0, 0xb0c(r31)
/* 80CE63DC  28 00 00 60 */	cmplwi r0, 0x60
/* 80CE63E0  41 82 00 24 */	beq lbl_80CE6404
/* 80CE63E4  4B FF F7 59 */	bl getFlowNodeNum__15daObj_SSDrink_cFv
/* 80CE63E8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80CE63EC  2C 00 FF FF */	cmpwi r0, -1
/* 80CE63F0  41 82 00 14 */	beq lbl_80CE6404
/* 80CE63F4  3C 60 40 00 */	lis r3, 0x4000 /* 0x40000008@ha */
/* 80CE63F8  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x40000008@l */
/* 80CE63FC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CE6400  48 00 00 0C */	b lbl_80CE640C
lbl_80CE6404:
/* 80CE6404  38 00 00 00 */	li r0, 0
/* 80CE6408  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80CE640C:
/* 80CE640C  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 80CE6410  3C 03 C0 00 */	addis r0, r3, 0xc000
/* 80CE6414  28 00 00 08 */	cmplwi r0, 8
/* 80CE6418  40 82 00 1C */	bne lbl_80CE6434
/* 80CE641C  38 00 00 06 */	li r0, 6
/* 80CE6420  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80CE6424  98 1F 05 47 */	stb r0, 0x547(r31)
/* 80CE6428  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CE642C  60 00 00 01 */	ori r0, r0, 1
/* 80CE6430  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CE6434:
/* 80CE6434  38 60 00 01 */	li r3, 1
/* 80CE6438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE643C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6440  7C 08 03 A6 */	mtlr r0
/* 80CE6444  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE6448  4E 80 00 20 */	blr 
