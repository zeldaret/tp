lbl_805CDA08:
/* 805CDA08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CDA0C  7C 08 02 A6 */	mflr r0
/* 805CDA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CDA14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CDA18  7C 7F 1B 78 */	mr r31, r3
/* 805CDA1C  90 83 08 64 */	stw r4, 0x864(r3)
/* 805CDA20  7C 83 23 78 */	mr r3, r4
/* 805CDA24  38 80 03 E8 */	li r4, 0x3e8
/* 805CDA28  4B A5 24 5D */	bl fopMsgM_messageSet__FUlUl
/* 805CDA2C  90 7F 08 68 */	stw r3, 0x868(r31)
/* 805CDA30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CDA34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CDA38  7C 08 03 A6 */	mtlr r0
/* 805CDA3C  38 21 00 10 */	addi r1, r1, 0x10
/* 805CDA40  4E 80 00 20 */	blr 
