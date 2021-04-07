lbl_80C7A6B0:
/* 80C7A6B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7A6B4  7C 08 02 A6 */	mflr r0
/* 80C7A6B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7A6BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7A6C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7A6C4  41 82 00 24 */	beq lbl_80C7A6E8
/* 80C7A6C8  4B 39 E6 19 */	bl fopAc_IsActor__FPv
/* 80C7A6CC  2C 03 00 00 */	cmpwi r3, 0
/* 80C7A6D0  41 82 00 18 */	beq lbl_80C7A6E8
/* 80C7A6D4  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80C7A6D8  2C 00 01 98 */	cmpwi r0, 0x198
/* 80C7A6DC  40 82 00 0C */	bne lbl_80C7A6E8
/* 80C7A6E0  7F E3 FB 78 */	mr r3, r31
/* 80C7A6E4  48 00 00 08 */	b lbl_80C7A6EC
lbl_80C7A6E8:
/* 80C7A6E8  38 60 00 00 */	li r3, 0
lbl_80C7A6EC:
/* 80C7A6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7A6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7A6F4  7C 08 03 A6 */	mtlr r0
/* 80C7A6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7A6FC  4E 80 00 20 */	blr 
