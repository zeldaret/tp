lbl_80C8B230:
/* 80C8B230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B234  7C 08 02 A6 */	mflr r0
/* 80C8B238  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B23C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8B240  7C 7F 1B 78 */	mr r31, r3
/* 80C8B244  88 03 05 EB */	lbz r0, 0x5eb(r3)
/* 80C8B248  28 00 00 00 */	cmplwi r0, 0
/* 80C8B24C  41 82 00 28 */	beq lbl_80C8B274
/* 80C8B250  48 00 02 ED */	bl setNextPoint__12daOptiLift_cFv
/* 80C8B254  A8 1F 05 CA */	lha r0, 0x5ca(r31)
/* 80C8B258  2C 00 FF FF */	cmpwi r0, -1
/* 80C8B25C  41 82 00 10 */	beq lbl_80C8B26C
/* 80C8B260  7F E3 FB 78 */	mr r3, r31
/* 80C8B264  4B FF F8 61 */	bl init_modeAcc__12daOptiLift_cFv
/* 80C8B268  48 00 00 0C */	b lbl_80C8B274
lbl_80C8B26C:
/* 80C8B26C  7F E3 FB 78 */	mr r3, r31
/* 80C8B270  48 00 00 29 */	bl init_modeStop__12daOptiLift_cFv
lbl_80C8B274:
/* 80C8B274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8B278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B27C  7C 08 03 A6 */	mtlr r0
/* 80C8B280  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B284  4E 80 00 20 */	blr 
