lbl_8007B78C:
/* 8007B78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B790  7C 08 02 A6 */	mflr r0
/* 8007B794  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007B79C  93 C1 00 08 */	stw r30, 8(r1)
/* 8007B7A0  7C 7E 1B 78 */	mr r30, r3
/* 8007B7A4  7C BF 2B 78 */	mr r31, r5
/* 8007B7A8  4B FF FB 4D */	bl GetPolyInfId__4cBgWCFi
/* 8007B7AC  80 9E 00 A0 */	lwz r4, 0xa0(r30)
/* 8007B7B0  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 8007B7B4  54 60 20 36 */	slwi r0, r3, 4
/* 8007B7B8  7C 64 02 14 */	add r3, r4, r0
/* 8007B7BC  80 03 00 04 */	lwz r0, 4(r3)
/* 8007B7C0  7F E3 00 38 */	and r3, r31, r0
/* 8007B7C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007B7C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8007B7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B7D0  7C 08 03 A6 */	mtlr r0
/* 8007B7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B7D8  4E 80 00 20 */	blr 
