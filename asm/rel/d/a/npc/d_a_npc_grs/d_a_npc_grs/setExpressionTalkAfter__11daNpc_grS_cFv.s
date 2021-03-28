lbl_809E6B00:
/* 809E6B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E6B04  7C 08 02 A6 */	mflr r0
/* 809E6B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E6B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E6B10  7C 7F 1B 78 */	mr r31, r3
/* 809E6B14  A8 03 09 DE */	lha r0, 0x9de(r3)
/* 809E6B18  2C 00 00 01 */	cmpwi r0, 1
/* 809E6B1C  41 82 00 08 */	beq lbl_809E6B24
/* 809E6B20  48 00 00 20 */	b lbl_809E6B40
lbl_809E6B24:
/* 809E6B24  38 80 00 02 */	li r4, 2
/* 809E6B28  3C A0 80 9E */	lis r5, lit_4746@ha
/* 809E6B2C  C0 25 7E 5C */	lfs f1, lit_4746@l(r5)
/* 809E6B30  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809E6B34  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E6B38  7D 89 03 A6 */	mtctr r12
/* 809E6B3C  4E 80 04 21 */	bctrl 
lbl_809E6B40:
/* 809E6B40  7F E3 FB 78 */	mr r3, r31
/* 809E6B44  38 80 00 03 */	li r4, 3
/* 809E6B48  3C A0 80 9E */	lis r5, lit_4746@ha
/* 809E6B4C  C0 25 7E 5C */	lfs f1, lit_4746@l(r5)
/* 809E6B50  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E6B54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E6B58  7D 89 03 A6 */	mtctr r12
/* 809E6B5C  4E 80 04 21 */	bctrl 
/* 809E6B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E6B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E6B68  7C 08 03 A6 */	mtlr r0
/* 809E6B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 809E6B70  4E 80 00 20 */	blr 
