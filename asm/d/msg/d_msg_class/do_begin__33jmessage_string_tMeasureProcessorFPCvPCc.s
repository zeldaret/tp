lbl_8022FBE4:
/* 8022FBE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022FBE8  7C 08 02 A6 */	mflr r0
/* 8022FBEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022FBF0  38 00 00 00 */	li r0, 0
/* 8022FBF4  80 83 00 38 */	lwz r4, 0x38(r3)
/* 8022FBF8  B0 04 00 80 */	sth r0, 0x80(r4)
/* 8022FBFC  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8022FC00  4B FF FE 35 */	bl resetCharactor__26jmessage_string_tReferenceFv
/* 8022FC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022FC08  7C 08 03 A6 */	mtlr r0
/* 8022FC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8022FC10  4E 80 00 20 */	blr 
