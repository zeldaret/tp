lbl_8058DC5C:
/* 8058DC5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DC60  7C 08 02 A6 */	mflr r0
/* 8058DC64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DC68  4B FF F7 11 */	bl Mthd_Create__Q211daObjLadder5Act_cFv
/* 8058DC6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DC70  7C 08 03 A6 */	mtlr r0
/* 8058DC74  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DC78  4E 80 00 20 */	blr 
