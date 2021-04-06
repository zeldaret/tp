lbl_80A2B784:
/* 80A2B784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2B788  7C 08 02 A6 */	mflr r0
/* 80A2B78C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2B790  7C 60 1B 78 */	mr r0, r3
/* 80A2B794  2C 04 00 00 */	cmpwi r4, 0
/* 80A2B798  40 82 00 30 */	bne lbl_80A2B7C8
/* 80A2B79C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80A2B7A0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80A2B7A4  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80A2B7A8  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80A2B7AC  28 03 00 00 */	cmplwi r3, 0
/* 80A2B7B0  41 82 00 18 */	beq lbl_80A2B7C8
/* 80A2B7B4  7C 04 03 78 */	mr r4, r0
/* 80A2B7B8  81 83 0E 40 */	lwz r12, 0xe40(r3)
/* 80A2B7BC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A2B7C0  7D 89 03 A6 */	mtctr r12
/* 80A2B7C4  4E 80 04 21 */	bctrl 
lbl_80A2B7C8:
/* 80A2B7C8  38 60 00 01 */	li r3, 1
/* 80A2B7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2B7D0  7C 08 03 A6 */	mtlr r0
/* 80A2B7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2B7D8  4E 80 00 20 */	blr 
