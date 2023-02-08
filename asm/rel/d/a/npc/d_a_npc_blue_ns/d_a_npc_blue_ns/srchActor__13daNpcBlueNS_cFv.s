lbl_80969C48:
/* 80969C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80969C4C  7C 08 02 A6 */	mflr r0
/* 80969C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80969C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80969C58  7C 7F 1B 78 */	mr r31, r3
/* 80969C5C  48 00 00 35 */	bl srchHollyBall__13daNpcBlueNS_cFv
/* 80969C60  88 1F 0E 11 */	lbz r0, 0xe11(r31)
/* 80969C64  2C 00 00 05 */	cmpwi r0, 5
/* 80969C68  41 82 00 0C */	beq lbl_80969C74
/* 80969C6C  40 80 00 10 */	bge lbl_80969C7C
/* 80969C70  48 00 00 0C */	b lbl_80969C7C
lbl_80969C74:
/* 80969C74  7F E3 FB 78 */	mr r3, r31
/* 80969C78  48 00 00 81 */	bl srchTagYami__13daNpcBlueNS_cFv
lbl_80969C7C:
/* 80969C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80969C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80969C84  7C 08 03 A6 */	mtlr r0
/* 80969C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80969C8C  4E 80 00 20 */	blr 
