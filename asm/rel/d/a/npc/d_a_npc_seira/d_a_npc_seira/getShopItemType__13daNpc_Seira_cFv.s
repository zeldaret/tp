lbl_80ACDCE4:
/* 80ACDCE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACDCE8  7C 08 02 A6 */	mflr r0
/* 80ACDCEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACDCF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACDCF4  3B E0 00 00 */	li r31, 0
/* 80ACDCF8  38 60 02 58 */	li r3, 0x258
/* 80ACDCFC  4B 67 ED B1 */	bl daNpcT_chkEvtBit__FUl
/* 80ACDD00  2C 03 00 00 */	cmpwi r3, 0
/* 80ACDD04  41 82 00 08 */	beq lbl_80ACDD0C
/* 80ACDD08  3B E0 00 01 */	li r31, 1
lbl_80ACDD0C:
/* 80ACDD0C  7F E3 FB 78 */	mr r3, r31
/* 80ACDD10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACDD14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACDD18  7C 08 03 A6 */	mtlr r0
/* 80ACDD1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACDD20  4E 80 00 20 */	blr 
