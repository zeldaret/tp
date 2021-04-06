lbl_8094DD10:
/* 8094DD10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094DD14  7C 08 02 A6 */	mflr r0
/* 8094DD18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094DD1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8094DD20  7C 7F 1B 78 */	mr r31, r3
/* 8094DD24  4B 6C AF BD */	bl fopAc_IsActor__FPv
/* 8094DD28  2C 03 00 00 */	cmpwi r3, 0
/* 8094DD2C  41 82 00 30 */	beq lbl_8094DD5C
/* 8094DD30  A8 1F 00 08 */	lha r0, 8(r31)
/* 8094DD34  2C 00 00 FE */	cmpwi r0, 0xfe
/* 8094DD38  40 82 00 24 */	bne lbl_8094DD5C
/* 8094DD3C  4B 81 1B 61 */	bl checkBoomerangCharge__9daPy_py_cFv
/* 8094DD40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8094DD44  41 82 00 18 */	beq lbl_8094DD5C
/* 8094DD48  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8094DD4C  28 00 00 01 */	cmplwi r0, 1
/* 8094DD50  40 82 00 0C */	bne lbl_8094DD5C
/* 8094DD54  7F E3 FB 78 */	mr r3, r31
/* 8094DD58  48 00 00 08 */	b lbl_8094DD60
lbl_8094DD5C:
/* 8094DD5C  38 60 00 00 */	li r3, 0
lbl_8094DD60:
/* 8094DD60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8094DD64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094DD68  7C 08 03 A6 */	mtlr r0
/* 8094DD6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8094DD70  4E 80 00 20 */	blr 
