lbl_809D2C04:
/* 809D2C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D2C08  7C 08 02 A6 */	mflr r0
/* 809D2C0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D2C10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D2C14  7C 7F 1B 78 */	mr r31, r3
/* 809D2C18  4B 64 60 C9 */	bl fopAc_IsActor__FPv
/* 809D2C1C  2C 03 00 00 */	cmpwi r3, 0
/* 809D2C20  41 82 00 18 */	beq lbl_809D2C38
/* 809D2C24  A8 1F 00 08 */	lha r0, 8(r31)
/* 809D2C28  2C 00 02 3C */	cmpwi r0, 0x23c
/* 809D2C2C  40 82 00 0C */	bne lbl_809D2C38
/* 809D2C30  7F E3 FB 78 */	mr r3, r31
/* 809D2C34  48 00 00 08 */	b lbl_809D2C3C
lbl_809D2C38:
/* 809D2C38  38 60 00 00 */	li r3, 0
lbl_809D2C3C:
/* 809D2C3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D2C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D2C44  7C 08 03 A6 */	mtlr r0
/* 809D2C48  38 21 00 10 */	addi r1, r1, 0x10
/* 809D2C4C  4E 80 00 20 */	blr 
