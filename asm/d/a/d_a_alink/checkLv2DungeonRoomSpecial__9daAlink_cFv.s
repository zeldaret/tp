lbl_800C044C:
/* 800C044C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0450  7C 08 02 A6 */	mflr r0
/* 800C0454  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C0458  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C045C  3B E0 00 00 */	li r31, 0
/* 800C0460  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C0464  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C0468  38 63 05 2E */	addi r3, r3, 0x52e
/* 800C046C  4B FD D5 F5 */	bl checkStageName__9daAlink_cFPCc
/* 800C0470  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0474  41 82 00 28 */	beq lbl_800C049C
/* 800C0478  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 800C047C  7C 00 07 74 */	extsb r0, r0
/* 800C0480  2C 00 00 0E */	cmpwi r0, 0xe
/* 800C0484  41 82 00 14 */	beq lbl_800C0498
/* 800C0488  2C 00 00 10 */	cmpwi r0, 0x10
/* 800C048C  41 82 00 0C */	beq lbl_800C0498
/* 800C0490  2C 00 00 11 */	cmpwi r0, 0x11
/* 800C0494  40 82 00 08 */	bne lbl_800C049C
lbl_800C0498:
/* 800C0498  3B E0 00 01 */	li r31, 1
lbl_800C049C:
/* 800C049C  7F E3 FB 78 */	mr r3, r31
/* 800C04A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C04A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C04A8  7C 08 03 A6 */	mtlr r0
/* 800C04AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C04B0  4E 80 00 20 */	blr 
