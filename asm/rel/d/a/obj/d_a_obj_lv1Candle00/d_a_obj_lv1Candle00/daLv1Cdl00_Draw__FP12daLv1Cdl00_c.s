lbl_80C568F0:
/* 80C568F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C568F4  7C 08 02 A6 */	mflr r0
/* 80C568F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C568FC  4B FF FE F1 */	bl Draw__12daLv1Cdl00_cFv
/* 80C56900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C56904  7C 08 03 A6 */	mtlr r0
/* 80C56908  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5690C  4E 80 00 20 */	blr 
