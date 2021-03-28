lbl_800C04B4:
/* 800C04B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C04B8  7C 08 02 A6 */	mflr r0
/* 800C04BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C04C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C04C4  3B E0 00 00 */	li r31, 0
/* 800C04C8  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800C04CC  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800C04D0  38 63 01 0E */	addi r3, r3, 0x10e
/* 800C04D4  4B FD D5 8D */	bl checkStageName__9daAlink_cFPCc
/* 800C04D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C04DC  41 82 00 1C */	beq lbl_800C04F8
/* 800C04E0  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 800C04E4  7C 00 07 74 */	extsb r0, r0
/* 800C04E8  2C 00 00 01 */	cmpwi r0, 1
/* 800C04EC  41 82 00 18 */	beq lbl_800C0504
/* 800C04F0  2C 00 00 02 */	cmpwi r0, 2
/* 800C04F4  41 82 00 10 */	beq lbl_800C0504
lbl_800C04F8:
/* 800C04F8  4B FF FF 55 */	bl checkLv2DungeonRoomSpecial__9daAlink_cFv
/* 800C04FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0500  41 82 00 08 */	beq lbl_800C0508
lbl_800C0504:
/* 800C0504  3B E0 00 01 */	li r31, 1
lbl_800C0508:
/* 800C0508  7F E3 FB 78 */	mr r3, r31
/* 800C050C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C0510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0514  7C 08 03 A6 */	mtlr r0
/* 800C0518  38 21 00 10 */	addi r1, r1, 0x10
/* 800C051C  4E 80 00 20 */	blr 
