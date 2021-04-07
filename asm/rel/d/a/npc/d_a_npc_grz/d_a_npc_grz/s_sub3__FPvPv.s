lbl_809EC808:
/* 809EC808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EC80C  7C 08 02 A6 */	mflr r0
/* 809EC810  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EC814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EC818  7C 7F 1B 78 */	mr r31, r3
/* 809EC81C  4B 62 C4 C5 */	bl fopAc_IsActor__FPv
/* 809EC820  2C 03 00 00 */	cmpwi r3, 0
/* 809EC824  41 82 00 18 */	beq lbl_809EC83C
/* 809EC828  A8 1F 00 08 */	lha r0, 8(r31)
/* 809EC82C  2C 00 02 36 */	cmpwi r0, 0x236
/* 809EC830  40 82 00 0C */	bne lbl_809EC83C
/* 809EC834  7F E3 FB 78 */	mr r3, r31
/* 809EC838  48 00 00 08 */	b lbl_809EC840
lbl_809EC83C:
/* 809EC83C  38 60 00 00 */	li r3, 0
lbl_809EC840:
/* 809EC840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EC844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EC848  7C 08 03 A6 */	mtlr r0
/* 809EC84C  38 21 00 10 */	addi r1, r1, 0x10
/* 809EC850  4E 80 00 20 */	blr 
