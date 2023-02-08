lbl_809D2C50:
/* 809D2C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D2C54  7C 08 02 A6 */	mflr r0
/* 809D2C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D2C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D2C60  7C 7F 1B 78 */	mr r31, r3
/* 809D2C64  4B 64 60 7D */	bl fopAc_IsActor__FPv
/* 809D2C68  2C 03 00 00 */	cmpwi r3, 0
/* 809D2C6C  41 82 00 18 */	beq lbl_809D2C84
/* 809D2C70  A8 1F 00 08 */	lha r0, 8(r31)
/* 809D2C74  2C 00 02 7A */	cmpwi r0, 0x27a
/* 809D2C78  40 82 00 0C */	bne lbl_809D2C84
/* 809D2C7C  7F E3 FB 78 */	mr r3, r31
/* 809D2C80  48 00 00 08 */	b lbl_809D2C88
lbl_809D2C84:
/* 809D2C84  38 60 00 00 */	li r3, 0
lbl_809D2C88:
/* 809D2C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D2C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D2C90  7C 08 03 A6 */	mtlr r0
/* 809D2C94  38 21 00 10 */	addi r1, r1, 0x10
/* 809D2C98  4E 80 00 20 */	blr 
