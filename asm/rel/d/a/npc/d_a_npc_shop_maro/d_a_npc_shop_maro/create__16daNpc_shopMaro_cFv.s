lbl_80AEBEB4:
/* 80AEBEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBEB8  7C 08 02 A6 */	mflr r0
/* 80AEBEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBEC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEBEC4  7C 7F 1B 78 */	mr r31, r3
/* 80AEBEC8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AEBECC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AEBED0  40 82 00 1C */	bne lbl_80AEBEEC
/* 80AEBED4  28 1F 00 00 */	cmplwi r31, 0
/* 80AEBED8  41 82 00 08 */	beq lbl_80AEBEE0
/* 80AEBEDC  48 00 00 29 */	bl __ct__16daNpc_shopMaro_cFv
lbl_80AEBEE0:
/* 80AEBEE0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80AEBEE4  60 00 00 08 */	ori r0, r0, 8
/* 80AEBEE8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80AEBEEC:
/* 80AEBEEC  38 60 00 05 */	li r3, 5
/* 80AEBEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEBEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBEF8  7C 08 03 A6 */	mtlr r0
/* 80AEBEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBF00  4E 80 00 20 */	blr 
