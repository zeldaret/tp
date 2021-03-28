lbl_800FC748:
/* 800FC748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FC74C  7C 08 02 A6 */	mflr r0
/* 800FC750  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FC754  80 03 32 CC */	lwz r0, 0x32cc(r3)
/* 800FC758  28 00 00 00 */	cmplwi r0, 0
/* 800FC75C  41 82 00 0C */	beq lbl_800FC768
/* 800FC760  4B FF FE 45 */	bl setDragonHangPos__9daAlink_cFv
/* 800FC764  48 00 00 08 */	b lbl_800FC76C
lbl_800FC768:
/* 800FC768  4B FF FF 4D */	bl setOctaIealHangPos__9daAlink_cFv
lbl_800FC76C:
/* 800FC76C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FC770  7C 08 03 A6 */	mtlr r0
/* 800FC774  38 21 00 10 */	addi r1, r1, 0x10
/* 800FC778  4E 80 00 20 */	blr 
