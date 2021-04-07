lbl_804AD5AC:
/* 804AD5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AD5B0  7C 08 02 A6 */	mflr r0
/* 804AD5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AD5B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AD5BC  7C 7F 1B 78 */	mr r31, r3
/* 804AD5C0  4B B6 B7 21 */	bl fopAc_IsActor__FPv
/* 804AD5C4  2C 03 00 00 */	cmpwi r3, 0
/* 804AD5C8  41 82 00 18 */	beq lbl_804AD5E0
/* 804AD5CC  A8 1F 00 08 */	lha r0, 8(r31)
/* 804AD5D0  2C 00 01 16 */	cmpwi r0, 0x116
/* 804AD5D4  40 82 00 0C */	bne lbl_804AD5E0
/* 804AD5D8  7F E3 FB 78 */	mr r3, r31
/* 804AD5DC  48 00 00 08 */	b lbl_804AD5E4
lbl_804AD5E0:
/* 804AD5E0  38 60 00 00 */	li r3, 0
lbl_804AD5E4:
/* 804AD5E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AD5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AD5EC  7C 08 03 A6 */	mtlr r0
/* 804AD5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804AD5F4  4E 80 00 20 */	blr 
