lbl_809EC770:
/* 809EC770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EC774  7C 08 02 A6 */	mflr r0
/* 809EC778  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EC77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EC780  7C 7F 1B 78 */	mr r31, r3
/* 809EC784  4B 62 C5 5D */	bl fopAc_IsActor__FPv
/* 809EC788  2C 03 00 00 */	cmpwi r3, 0
/* 809EC78C  41 82 00 18 */	beq lbl_809EC7A4
/* 809EC790  A8 1F 00 08 */	lha r0, 8(r31)
/* 809EC794  2C 00 00 8A */	cmpwi r0, 0x8a
/* 809EC798  40 82 00 0C */	bne lbl_809EC7A4
/* 809EC79C  7F E3 FB 78 */	mr r3, r31
/* 809EC7A0  48 00 00 08 */	b lbl_809EC7A8
lbl_809EC7A4:
/* 809EC7A4  38 60 00 00 */	li r3, 0
lbl_809EC7A8:
/* 809EC7A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EC7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EC7B0  7C 08 03 A6 */	mtlr r0
/* 809EC7B4  38 21 00 10 */	addi r1, r1, 0x10
/* 809EC7B8  4E 80 00 20 */	blr 
