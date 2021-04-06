lbl_809D7B38:
/* 809D7B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D7B3C  7C 08 02 A6 */	mflr r0
/* 809D7B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D7B44  7C 60 1B 78 */	mr r0, r3
/* 809D7B48  2C 04 00 00 */	cmpwi r4, 0
/* 809D7B4C  40 82 00 30 */	bne lbl_809D7B7C
/* 809D7B50  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 809D7B54  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 809D7B58  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809D7B5C  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809D7B60  28 03 00 00 */	cmplwi r3, 0
/* 809D7B64  41 82 00 18 */	beq lbl_809D7B7C
/* 809D7B68  7C 04 03 78 */	mr r4, r0
/* 809D7B6C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809D7B70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809D7B74  7D 89 03 A6 */	mtctr r12
/* 809D7B78  4E 80 04 21 */	bctrl 
lbl_809D7B7C:
/* 809D7B7C  38 60 00 01 */	li r3, 1
/* 809D7B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D7B84  7C 08 03 A6 */	mtlr r0
/* 809D7B88  38 21 00 10 */	addi r1, r1, 0x10
/* 809D7B8C  4E 80 00 20 */	blr 
