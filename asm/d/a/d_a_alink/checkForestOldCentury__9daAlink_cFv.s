lbl_800E1408:
/* 800E1408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E140C  7C 08 02 A6 */	mflr r0
/* 800E1410  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E1418  3B E0 00 00 */	li r31, 0
/* 800E141C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800E1420  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800E1424  38 63 00 60 */	addi r3, r3, 0x60
/* 800E1428  4B FB C6 39 */	bl checkStageName__9daAlink_cFPCc
/* 800E142C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1430  41 82 00 14 */	beq lbl_800E1444
/* 800E1434  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 800E1438  2C 00 00 02 */	cmpwi r0, 2
/* 800E143C  40 82 00 08 */	bne lbl_800E1444
/* 800E1440  3B E0 00 01 */	li r31, 1
lbl_800E1444:
/* 800E1444  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800E1448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E144C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1450  7C 08 03 A6 */	mtlr r0
/* 800E1454  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1458  4E 80 00 20 */	blr 
