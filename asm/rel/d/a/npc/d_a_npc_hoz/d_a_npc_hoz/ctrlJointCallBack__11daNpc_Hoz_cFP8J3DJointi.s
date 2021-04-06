lbl_80A01E64:
/* 80A01E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A01E68  7C 08 02 A6 */	mflr r0
/* 80A01E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A01E70  7C 60 1B 78 */	mr r0, r3
/* 80A01E74  2C 04 00 00 */	cmpwi r4, 0
/* 80A01E78  40 82 00 30 */	bne lbl_80A01EA8
/* 80A01E7C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80A01E80  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80A01E84  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80A01E88  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80A01E8C  28 03 00 00 */	cmplwi r3, 0
/* 80A01E90  41 82 00 18 */	beq lbl_80A01EA8
/* 80A01E94  7C 04 03 78 */	mr r4, r0
/* 80A01E98  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A01E9C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A01EA0  7D 89 03 A6 */	mtctr r12
/* 80A01EA4  4E 80 04 21 */	bctrl 
lbl_80A01EA8:
/* 80A01EA8  38 60 00 01 */	li r3, 1
/* 80A01EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A01EB0  7C 08 03 A6 */	mtlr r0
/* 80A01EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A01EB8  4E 80 00 20 */	blr 
