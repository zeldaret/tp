lbl_80BD10D0:
/* 80BD10D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD10D4  7C 08 02 A6 */	mflr r0
/* 80BD10D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD10DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD10E0  7C 7F 1B 78 */	mr r31, r3
/* 80BD10E4  88 03 05 AF */	lbz r0, 0x5af(r3)
/* 80BD10E8  28 00 00 04 */	cmplwi r0, 4
/* 80BD10EC  41 82 00 08 */	beq lbl_80BD10F4
/* 80BD10F0  4B FF FD 2D */	bl KeyVib__14daObjCRVGATE_cFv
lbl_80BD10F4:
/* 80BD10F4  7F E3 FB 78 */	mr r3, r31
/* 80BD10F8  4B FF FE A5 */	bl DoorVib__14daObjCRVGATE_cFv
/* 80BD10FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD1100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD1104  7C 08 03 A6 */	mtlr r0
/* 80BD1108  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD110C  4E 80 00 20 */	blr 
