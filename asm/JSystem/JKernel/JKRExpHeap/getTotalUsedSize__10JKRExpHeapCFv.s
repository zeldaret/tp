lbl_802CFD64:
/* 802CFD64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CFD68  7C 08 02 A6 */	mflr r0
/* 802CFD6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CFD70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CFD74  93 C1 00 08 */	stw r30, 8(r1)
/* 802CFD78  7C 7E 1B 78 */	mr r30, r3
/* 802CFD7C  38 7E 00 18 */	addi r3, r30, 0x18
/* 802CFD80  48 06 F2 C1 */	bl OSLockMutex
/* 802CFD84  3B E0 00 00 */	li r31, 0
/* 802CFD88  80 7E 00 80 */	lwz r3, 0x80(r30)
/* 802CFD8C  48 00 00 14 */	b lbl_802CFDA0
lbl_802CFD90:
/* 802CFD90  80 03 00 04 */	lwz r0, 4(r3)
/* 802CFD94  7F E0 FA 14 */	add r31, r0, r31
/* 802CFD98  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802CFD9C  3B FF 00 10 */	addi r31, r31, 0x10
lbl_802CFDA0:
/* 802CFDA0  28 03 00 00 */	cmplwi r3, 0
/* 802CFDA4  40 82 FF EC */	bne lbl_802CFD90
/* 802CFDA8  38 7E 00 18 */	addi r3, r30, 0x18
/* 802CFDAC  48 06 F3 71 */	bl OSUnlockMutex
/* 802CFDB0  7F E3 FB 78 */	mr r3, r31
/* 802CFDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CFDB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CFDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CFDC0  7C 08 03 A6 */	mtlr r0
/* 802CFDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CFDC8  4E 80 00 20 */	blr 
