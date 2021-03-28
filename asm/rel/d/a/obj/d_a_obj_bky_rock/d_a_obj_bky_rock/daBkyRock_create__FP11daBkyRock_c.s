lbl_80BB7D50:
/* 80BB7D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB7D54  7C 08 02 A6 */	mflr r0
/* 80BB7D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB7D5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB7D60  7C 7F 1B 78 */	mr r31, r3
/* 80BB7D64  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BB7D68  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BB7D6C  40 82 00 1C */	bne lbl_80BB7D88
/* 80BB7D70  28 1F 00 00 */	cmplwi r31, 0
/* 80BB7D74  41 82 00 08 */	beq lbl_80BB7D7C
/* 80BB7D78  4B FF EA E1 */	bl __ct__11daBkyRock_cFv
lbl_80BB7D7C:
/* 80BB7D7C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BB7D80  60 00 00 08 */	ori r0, r0, 8
/* 80BB7D84  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BB7D88:
/* 80BB7D88  7F E3 FB 78 */	mr r3, r31
/* 80BB7D8C  4B FF EE C1 */	bl create__11daBkyRock_cFv
/* 80BB7D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB7D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB7D98  7C 08 03 A6 */	mtlr r0
/* 80BB7D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB7DA0  4E 80 00 20 */	blr 
