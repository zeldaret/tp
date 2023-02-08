lbl_80BB95E4:
/* 80BB95E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB95E8  7C 08 02 A6 */	mflr r0
/* 80BB95EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB95F0  4B FF EE 7D */	bl create__12daBmWindow_cFv
/* 80BB95F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB95F8  7C 08 03 A6 */	mtlr r0
/* 80BB95FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9600  4E 80 00 20 */	blr 
