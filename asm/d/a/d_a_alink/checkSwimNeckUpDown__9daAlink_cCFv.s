lbl_80103FE8:
/* 80103FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80103FEC  7C 08 02 A6 */	mflr r0
/* 80103FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80103FF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80103FF8  3B E0 00 00 */	li r31, 0
/* 80103FFC  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80104000  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80104004  40 82 00 18 */	bne lbl_8010401C
/* 80104008  38 80 00 14 */	li r4, 0x14
/* 8010400C  4B FA 85 4D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80104010  2C 03 00 00 */	cmpwi r3, 0
/* 80104014  41 82 00 08 */	beq lbl_8010401C
/* 80104018  3B E0 00 01 */	li r31, 1
lbl_8010401C:
/* 8010401C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80104020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80104024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80104028  7C 08 03 A6 */	mtlr r0
/* 8010402C  38 21 00 10 */	addi r1, r1, 0x10
/* 80104030  4E 80 00 20 */	blr 
