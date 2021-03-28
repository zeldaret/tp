lbl_809F9C40:
/* 809F9C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F9C44  7C 08 02 A6 */	mflr r0
/* 809F9C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F9C4C  7C 60 1B 78 */	mr r0, r3
/* 809F9C50  2C 04 00 00 */	cmpwi r4, 0
/* 809F9C54  40 82 00 30 */	bne lbl_809F9C84
/* 809F9C58  3C 60 80 43 */	lis r3, j3dSys@ha
/* 809F9C5C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 809F9C60  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809F9C64  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809F9C68  28 03 00 00 */	cmplwi r3, 0
/* 809F9C6C  41 82 00 18 */	beq lbl_809F9C84
/* 809F9C70  7C 04 03 78 */	mr r4, r0
/* 809F9C74  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809F9C78  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F9C7C  7D 89 03 A6 */	mtctr r12
/* 809F9C80  4E 80 04 21 */	bctrl 
lbl_809F9C84:
/* 809F9C84  38 60 00 01 */	li r3, 1
/* 809F9C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F9C8C  7C 08 03 A6 */	mtlr r0
/* 809F9C90  38 21 00 10 */	addi r1, r1, 0x10
/* 809F9C94  4E 80 00 20 */	blr 
