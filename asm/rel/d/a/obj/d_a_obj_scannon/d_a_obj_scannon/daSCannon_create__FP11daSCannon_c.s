lbl_80CC8E60:
/* 80CC8E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC8E64  7C 08 02 A6 */	mflr r0
/* 80CC8E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC8E6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC8E70  7C 7F 1B 78 */	mr r31, r3
/* 80CC8E74  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CC8E78  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CC8E7C  40 82 00 1C */	bne lbl_80CC8E98
/* 80CC8E80  28 1F 00 00 */	cmplwi r31, 0
/* 80CC8E84  41 82 00 08 */	beq lbl_80CC8E8C
/* 80CC8E88  4B FF DC 85 */	bl __ct__11daSCannon_cFv
lbl_80CC8E8C:
/* 80CC8E8C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CC8E90  60 00 00 08 */	ori r0, r0, 8
/* 80CC8E94  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CC8E98:
/* 80CC8E98  7F E3 FB 78 */	mr r3, r31
/* 80CC8E9C  4B FF DE 75 */	bl create__11daSCannon_cFv
/* 80CC8EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC8EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC8EA8  7C 08 03 A6 */	mtlr r0
/* 80CC8EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC8EB0  4E 80 00 20 */	blr 
