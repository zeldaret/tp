lbl_802BBE98:
/* 802BBE98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BBE9C  7C 08 02 A6 */	mflr r0
/* 802BBEA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BBEA4  7C 64 1B 78 */	mr r4, r3
/* 802BBEA8  88 03 00 10 */	lbz r0, 0x10(r3)
/* 802BBEAC  54 00 E7 3F */	rlwinm. r0, r0, 0x1c, 0x1c, 0x1f
/* 802BBEB0  41 82 00 10 */	beq lbl_802BBEC0
/* 802BBEB4  38 64 00 14 */	addi r3, r4, 0x14
/* 802BBEB8  38 84 00 04 */	addi r4, r4, 4
/* 802BBEBC  4B FF FE 21 */	bl func_802BBCDC
lbl_802BBEC0:
/* 802BBEC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BBEC4  7C 08 03 A6 */	mtlr r0
/* 802BBEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 802BBECC  4E 80 00 20 */	blr 
