lbl_805A6E44:
/* 805A6E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6E48  7C 08 02 A6 */	mflr r0
/* 805A6E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6E50  4B FF FC A5 */	bl create__13daTagSpring_cFv
/* 805A6E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6E58  7C 08 03 A6 */	mtlr r0
/* 805A6E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6E60  4E 80 00 20 */	blr 
