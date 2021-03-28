lbl_80C8C81C:
/* 80C8C81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8C820  7C 08 02 A6 */	mflr r0
/* 80C8C824  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8C828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8C82C  7C 7F 1B 78 */	mr r31, r3
/* 80C8C830  38 80 00 00 */	li r4, 0
/* 80C8C834  4B FF FB 21 */	bl colorAnm__11daUdFloor_cFi
/* 80C8C838  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C8C83C  28 00 00 01 */	cmplwi r0, 1
/* 80C8C840  40 82 00 0C */	bne lbl_80C8C84C
/* 80C8C844  7F E3 FB 78 */	mr r3, r31
/* 80C8C848  48 00 00 19 */	bl init_modeDownMove__11daUdFloor_cFv
lbl_80C8C84C:
/* 80C8C84C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8C850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8C854  7C 08 03 A6 */	mtlr r0
/* 80C8C858  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8C85C  4E 80 00 20 */	blr 
