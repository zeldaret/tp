lbl_809BFC4C:
/* 809BFC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BFC50  7C 08 02 A6 */	mflr r0
/* 809BFC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BFC58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BFC5C  7C 7F 1B 78 */	mr r31, r3
/* 809BFC60  4B 65 90 81 */	bl fopAc_IsActor__FPv
/* 809BFC64  2C 03 00 00 */	cmpwi r3, 0
/* 809BFC68  41 82 00 18 */	beq lbl_809BFC80
/* 809BFC6C  A8 1F 00 08 */	lha r0, 8(r31)
/* 809BFC70  2C 00 02 4B */	cmpwi r0, 0x24b
/* 809BFC74  40 82 00 0C */	bne lbl_809BFC80
/* 809BFC78  7F E3 FB 78 */	mr r3, r31
/* 809BFC7C  48 00 00 08 */	b lbl_809BFC84
lbl_809BFC80:
/* 809BFC80  38 60 00 00 */	li r3, 0
lbl_809BFC84:
/* 809BFC84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BFC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BFC8C  7C 08 03 A6 */	mtlr r0
/* 809BFC90  38 21 00 10 */	addi r1, r1, 0x10
/* 809BFC94  4E 80 00 20 */	blr 
