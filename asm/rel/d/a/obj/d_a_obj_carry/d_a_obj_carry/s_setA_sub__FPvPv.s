lbl_8046F59C:
/* 8046F59C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046F5A0  7C 08 02 A6 */	mflr r0
/* 8046F5A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046F5A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046F5AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8046F5B0  7C 7E 1B 78 */	mr r30, r3
/* 8046F5B4  7C 9F 23 78 */	mr r31, r4
/* 8046F5B8  4B BA 97 29 */	bl fopAc_IsActor__FPv
/* 8046F5BC  2C 03 00 00 */	cmpwi r3, 0
/* 8046F5C0  41 82 00 34 */	beq lbl_8046F5F4
/* 8046F5C4  A8 1E 00 08 */	lha r0, 8(r30)
/* 8046F5C8  2C 00 01 9F */	cmpwi r0, 0x19f
/* 8046F5CC  40 82 00 28 */	bne lbl_8046F5F4
/* 8046F5D0  28 1E 00 00 */	cmplwi r30, 0
/* 8046F5D4  41 82 00 20 */	beq lbl_8046F5F4
/* 8046F5D8  28 1F 00 00 */	cmplwi r31, 0
/* 8046F5DC  41 82 00 18 */	beq lbl_8046F5F4
/* 8046F5E0  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 8046F5E4  2C 00 00 0F */	cmpwi r0, 0xf
/* 8046F5E8  40 82 00 0C */	bne lbl_8046F5F4
/* 8046F5EC  7F C3 F3 78 */	mr r3, r30
/* 8046F5F0  48 00 00 08 */	b lbl_8046F5F8
lbl_8046F5F4:
/* 8046F5F4  38 60 00 00 */	li r3, 0
lbl_8046F5F8:
/* 8046F5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046F5FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046F600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046F604  7C 08 03 A6 */	mtlr r0
/* 8046F608  38 21 00 10 */	addi r1, r1, 0x10
/* 8046F60C  4E 80 00 20 */	blr 
