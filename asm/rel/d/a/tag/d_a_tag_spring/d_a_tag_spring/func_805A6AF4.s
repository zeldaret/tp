lbl_805A6AF4:
/* 805A6AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6AF8  7C 08 02 A6 */	mflr r0
/* 805A6AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6B00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A6B04  7C 7F 1B 78 */	mr r31, r3
/* 805A6B08  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A6B0C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A6B10  40 82 00 1C */	bne lbl_805A6B2C
/* 805A6B14  28 1F 00 00 */	cmplwi r31, 0
/* 805A6B18  41 82 00 08 */	beq lbl_805A6B20
/* 805A6B1C  4B A7 20 48 */	b __ct__10fopAc_ac_cFv
lbl_805A6B20:
/* 805A6B20  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805A6B24  60 00 00 08 */	ori r0, r0, 8
/* 805A6B28  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805A6B2C:
/* 805A6B2C  7F E3 FB 78 */	mr r3, r31
/* 805A6B30  4B FF FF A1 */	bl Create__13daTagSpring_cFv
/* 805A6B34  2C 03 00 00 */	cmpwi r3, 0
/* 805A6B38  40 82 00 0C */	bne lbl_805A6B44
/* 805A6B3C  38 60 00 05 */	li r3, 5
/* 805A6B40  48 00 00 08 */	b lbl_805A6B48
lbl_805A6B44:
/* 805A6B44  38 60 00 04 */	li r3, 4
lbl_805A6B48:
/* 805A6B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A6B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6B50  7C 08 03 A6 */	mtlr r0
/* 805A6B54  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6B58  4E 80 00 20 */	blr 
