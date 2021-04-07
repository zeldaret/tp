lbl_809D4788:
/* 809D4788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D478C  7C 08 02 A6 */	mflr r0
/* 809D4790  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D4794  7C 60 1B 78 */	mr r0, r3
/* 809D4798  2C 04 00 00 */	cmpwi r4, 0
/* 809D479C  40 82 00 30 */	bne lbl_809D47CC
/* 809D47A0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 809D47A4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 809D47A8  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809D47AC  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809D47B0  28 03 00 00 */	cmplwi r3, 0
/* 809D47B4  41 82 00 18 */	beq lbl_809D47CC
/* 809D47B8  7C 04 03 78 */	mr r4, r0
/* 809D47BC  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809D47C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809D47C4  7D 89 03 A6 */	mtctr r12
/* 809D47C8  4E 80 04 21 */	bctrl 
lbl_809D47CC:
/* 809D47CC  38 60 00 01 */	li r3, 1
/* 809D47D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D47D4  7C 08 03 A6 */	mtlr r0
/* 809D47D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809D47DC  4E 80 00 20 */	blr 
