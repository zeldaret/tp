lbl_804A8F20:
/* 804A8F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8F24  7C 08 02 A6 */	mflr r0
/* 804A8F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A8F30  7C 7F 1B 78 */	mr r31, r3
/* 804A8F34  4B B6 FD AD */	bl fopAc_IsActor__FPv
/* 804A8F38  2C 03 00 00 */	cmpwi r3, 0
/* 804A8F3C  41 82 00 18 */	beq lbl_804A8F54
/* 804A8F40  A8 1F 00 08 */	lha r0, 8(r31)
/* 804A8F44  2C 00 00 60 */	cmpwi r0, 0x60
/* 804A8F48  40 82 00 0C */	bne lbl_804A8F54
/* 804A8F4C  38 00 00 01 */	li r0, 1
/* 804A8F50  B0 1F 05 62 */	sth r0, 0x562(r31)
lbl_804A8F54:
/* 804A8F54  38 60 00 00 */	li r3, 0
/* 804A8F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A8F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8F60  7C 08 03 A6 */	mtlr r0
/* 804A8F64  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8F68  4E 80 00 20 */	blr 
