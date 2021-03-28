lbl_809BFD60:
/* 809BFD60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BFD64  7C 08 02 A6 */	mflr r0
/* 809BFD68  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BFD6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BFD70  93 C1 00 08 */	stw r30, 8(r1)
/* 809BFD74  7C 7E 1B 78 */	mr r30, r3
/* 809BFD78  7C 9F 23 78 */	mr r31, r4
/* 809BFD7C  4B 65 8F 64 */	b fopAc_IsActor__FPv
/* 809BFD80  2C 03 00 00 */	cmpwi r3, 0
/* 809BFD84  41 82 00 2C */	beq lbl_809BFDB0
/* 809BFD88  A8 1E 00 08 */	lha r0, 8(r30)
/* 809BFD8C  2C 00 00 22 */	cmpwi r0, 0x22
/* 809BFD90  40 82 00 20 */	bne lbl_809BFDB0
/* 809BFD94  7F E3 FB 78 */	mr r3, r31
/* 809BFD98  7F C4 F3 78 */	mr r4, r30
/* 809BFD9C  48 00 00 31 */	bl checkTagGraSubCrashed__11daNpc_grA_cFP10fopAc_ac_c
/* 809BFDA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BFDA4  41 82 00 0C */	beq lbl_809BFDB0
/* 809BFDA8  7F C3 F3 78 */	mr r3, r30
/* 809BFDAC  48 00 00 08 */	b lbl_809BFDB4
lbl_809BFDB0:
/* 809BFDB0  38 60 00 00 */	li r3, 0
lbl_809BFDB4:
/* 809BFDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BFDB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BFDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BFDC0  7C 08 03 A6 */	mtlr r0
/* 809BFDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 809BFDC8  4E 80 00 20 */	blr 
