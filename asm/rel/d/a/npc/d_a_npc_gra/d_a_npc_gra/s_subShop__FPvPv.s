lbl_809BFC00:
/* 809BFC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BFC04  7C 08 02 A6 */	mflr r0
/* 809BFC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BFC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BFC10  7C 7F 1B 78 */	mr r31, r3
/* 809BFC14  4B 65 90 CD */	bl fopAc_IsActor__FPv
/* 809BFC18  2C 03 00 00 */	cmpwi r3, 0
/* 809BFC1C  41 82 00 18 */	beq lbl_809BFC34
/* 809BFC20  A8 1F 00 08 */	lha r0, 8(r31)
/* 809BFC24  2C 00 02 37 */	cmpwi r0, 0x237
/* 809BFC28  40 82 00 0C */	bne lbl_809BFC34
/* 809BFC2C  7F E3 FB 78 */	mr r3, r31
/* 809BFC30  48 00 00 08 */	b lbl_809BFC38
lbl_809BFC34:
/* 809BFC34  38 60 00 00 */	li r3, 0
lbl_809BFC38:
/* 809BFC38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BFC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BFC40  7C 08 03 A6 */	mtlr r0
/* 809BFC44  38 21 00 10 */	addi r1, r1, 0x10
/* 809BFC48  4E 80 00 20 */	blr 
