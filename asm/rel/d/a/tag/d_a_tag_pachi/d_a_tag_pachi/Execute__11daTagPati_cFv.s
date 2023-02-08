lbl_80D5D78C:
/* 80D5D78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D790  7C 08 02 A6 */	mflr r0
/* 80D5D794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5D79C  7C 7F 1B 78 */	mr r31, r3
/* 80D5D7A0  48 00 00 29 */	bl col_set__11daTagPati_cFv
/* 80D5D7A4  7F E3 FB 78 */	mr r3, r31
/* 80D5D7A8  48 00 00 89 */	bl chk_CoHit__11daTagPati_cFv
/* 80D5D7AC  90 7F 06 E4 */	stw r3, 0x6e4(r31)
/* 80D5D7B0  38 60 00 01 */	li r3, 1
/* 80D5D7B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5D7B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D7BC  7C 08 03 A6 */	mtlr r0
/* 80D5D7C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D7C4  4E 80 00 20 */	blr 
