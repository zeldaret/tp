lbl_809BFB54:
/* 809BFB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BFB58  7C 08 02 A6 */	mflr r0
/* 809BFB5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BFB60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BFB64  93 C1 00 08 */	stw r30, 8(r1)
/* 809BFB68  7C 7E 1B 78 */	mr r30, r3
/* 809BFB6C  7C 9F 23 78 */	mr r31, r4
/* 809BFB70  4B 65 91 71 */	bl fopAc_IsActor__FPv
/* 809BFB74  2C 03 00 00 */	cmpwi r3, 0
/* 809BFB78  41 82 00 2C */	beq lbl_809BFBA4
/* 809BFB7C  A8 1E 00 08 */	lha r0, 8(r30)
/* 809BFB80  2C 00 00 22 */	cmpwi r0, 0x22
/* 809BFB84  40 82 00 20 */	bne lbl_809BFBA4
/* 809BFB88  7F E3 FB 78 */	mr r3, r31
/* 809BFB8C  7F C4 F3 78 */	mr r4, r30
/* 809BFB90  48 00 00 31 */	bl checkTagGraSub2__11daNpc_grA_cFP10fopAc_ac_c
/* 809BFB94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BFB98  41 82 00 0C */	beq lbl_809BFBA4
/* 809BFB9C  7F C3 F3 78 */	mr r3, r30
/* 809BFBA0  48 00 00 08 */	b lbl_809BFBA8
lbl_809BFBA4:
/* 809BFBA4  38 60 00 00 */	li r3, 0
lbl_809BFBA8:
/* 809BFBA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BFBAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BFBB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BFBB4  7C 08 03 A6 */	mtlr r0
/* 809BFBB8  38 21 00 10 */	addi r1, r1, 0x10
/* 809BFBBC  4E 80 00 20 */	blr 
