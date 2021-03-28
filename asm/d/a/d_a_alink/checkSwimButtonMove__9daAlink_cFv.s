lbl_80103F24:
/* 80103F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80103F28  7C 08 02 A6 */	mflr r0
/* 80103F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80103F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80103F34  93 C1 00 08 */	stw r30, 8(r1)
/* 80103F38  7C 7E 1B 78 */	mr r30, r3
/* 80103F3C  3B E0 00 00 */	li r31, 0
/* 80103F40  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80103F44  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80103F48  40 82 00 30 */	bne lbl_80103F78
/* 80103F4C  4B FF FF 95 */	bl checkSwimButtonAccept__9daAlink_cFv
/* 80103F50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80103F54  40 82 00 14 */	bne lbl_80103F68
/* 80103F58  7F C3 F3 78 */	mr r3, r30
/* 80103F5C  4B FF FF AD */	bl checkUpSwimButtonAccept__9daAlink_cFv
/* 80103F60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80103F64  41 82 00 14 */	beq lbl_80103F78
lbl_80103F68:
/* 80103F68  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 80103F6C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80103F70  41 82 00 08 */	beq lbl_80103F78
/* 80103F74  3B E0 00 01 */	li r31, 1
lbl_80103F78:
/* 80103F78  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80103F7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80103F80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80103F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80103F88  7C 08 03 A6 */	mtlr r0
/* 80103F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80103F90  4E 80 00 20 */	blr 
