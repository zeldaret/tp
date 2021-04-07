lbl_80D59AF8:
/* 80D59AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59AFC  7C 08 02 A6 */	mflr r0
/* 80D59B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59B04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D59B08  7C 7F 1B 78 */	mr r31, r3
/* 80D59B0C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D59B10  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D59B14  40 82 00 1C */	bne lbl_80D59B30
/* 80D59B18  28 1F 00 00 */	cmplwi r31, 0
/* 80D59B1C  41 82 00 08 */	beq lbl_80D59B24
/* 80D59B20  4B 2B F0 45 */	bl __ct__10fopAc_ac_cFv
lbl_80D59B24:
/* 80D59B24  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D59B28  60 00 00 08 */	ori r0, r0, 8
/* 80D59B2C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D59B30:
/* 80D59B30  38 60 00 04 */	li r3, 4
/* 80D59B34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D59B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59B3C  7C 08 03 A6 */	mtlr r0
/* 80D59B40  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59B44  4E 80 00 20 */	blr 
