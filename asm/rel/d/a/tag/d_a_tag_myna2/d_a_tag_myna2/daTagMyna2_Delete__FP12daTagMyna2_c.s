lbl_80D5C9E8:
/* 80D5C9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5C9EC  7C 08 02 A6 */	mflr r0
/* 80D5C9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5C9F4  28 03 00 00 */	cmplwi r3, 0
/* 80D5C9F8  41 82 00 0C */	beq lbl_80D5CA04
/* 80D5C9FC  38 80 00 00 */	li r4, 0
/* 80D5CA00  4B 2B C2 8C */	b __dt__10fopAc_ac_cFv
lbl_80D5CA04:
/* 80D5CA04  38 60 00 01 */	li r3, 1
/* 80D5CA08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5CA0C  7C 08 03 A6 */	mtlr r0
/* 80D5CA10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5CA14  4E 80 00 20 */	blr 
