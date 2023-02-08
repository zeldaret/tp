lbl_8058DC7C:
/* 8058DC7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DC80  7C 08 02 A6 */	mflr r0
/* 8058DC84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DC88  4B FF F8 71 */	bl Mthd_Delete__Q211daObjLadder5Act_cFv
/* 8058DC8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DC90  7C 08 03 A6 */	mtlr r0
/* 8058DC94  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DC98  4E 80 00 20 */	blr 
