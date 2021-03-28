lbl_801019B8:
/* 801019B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801019BC  7C 08 02 A6 */	mflr r0
/* 801019C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801019C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801019C8  93 C1 00 08 */	stw r30, 8(r1)
/* 801019CC  7C 7E 1B 78 */	mr r30, r3
/* 801019D0  3B E0 00 00 */	li r31, 0
/* 801019D4  38 80 00 C9 */	li r4, 0xc9
/* 801019D8  4B FA AB 81 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 801019DC  2C 03 00 00 */	cmpwi r3, 0
/* 801019E0  40 82 00 18 */	bne lbl_801019F8
/* 801019E4  7F C3 F3 78 */	mr r3, r30
/* 801019E8  38 80 00 C8 */	li r4, 0xc8
/* 801019EC  4B FA AB 6D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 801019F0  2C 03 00 00 */	cmpwi r3, 0
/* 801019F4  41 82 00 08 */	beq lbl_801019FC
lbl_801019F8:
/* 801019F8  3B E0 00 01 */	li r31, 1
lbl_801019FC:
/* 801019FC  7F E3 FB 78 */	mr r3, r31
/* 80101A00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80101A04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80101A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80101A0C  7C 08 03 A6 */	mtlr r0
/* 80101A10  38 21 00 10 */	addi r1, r1, 0x10
/* 80101A14  4E 80 00 20 */	blr 
