lbl_8051C2B0:
/* 8051C2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C2B4  7C 08 02 A6 */	mflr r0
/* 8051C2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051C2C0  7C 7F 1B 78 */	mr r31, r3
/* 8051C2C4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8051C2C8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8051C2CC  40 82 00 1C */	bne lbl_8051C2E8
/* 8051C2D0  28 1F 00 00 */	cmplwi r31, 0
/* 8051C2D4  41 82 00 08 */	beq lbl_8051C2DC
/* 8051C2D8  4B AF C8 8D */	bl __ct__10fopAc_ac_cFv
lbl_8051C2DC:
/* 8051C2DC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8051C2E0  60 00 00 08 */	ori r0, r0, 8
/* 8051C2E4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8051C2E8:
/* 8051C2E8  7F E3 FB 78 */	mr r3, r31
/* 8051C2EC  48 00 00 19 */	bl create__9daGrass_cFv
/* 8051C2F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051C2F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C2F8  7C 08 03 A6 */	mtlr r0
/* 8051C2FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C300  4E 80 00 20 */	blr 
