lbl_80BC2B6C:
/* 80BC2B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC2B70  7C 08 02 A6 */	mflr r0
/* 80BC2B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC2B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC2B7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC2B80  7C 7E 1B 78 */	mr r30, r3
/* 80BC2B84  7C 9F 23 78 */	mr r31, r4
/* 80BC2B88  48 00 00 35 */	bl moveGate__10daBsGate_cFv
/* 80BC2B8C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BC2B90  38 03 00 24 */	addi r0, r3, 0x24
/* 80BC2B94  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC2B98  7F C3 F3 78 */	mr r3, r30
/* 80BC2B9C  4B FF FD 75 */	bl setBaseMtx__10daBsGate_cFv
/* 80BC2BA0  38 60 00 01 */	li r3, 1
/* 80BC2BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC2BA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC2BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC2BB0  7C 08 03 A6 */	mtlr r0
/* 80BC2BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC2BB8  4E 80 00 20 */	blr 
