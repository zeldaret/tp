lbl_804900C0:
/* 804900C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804900C4  7C 08 02 A6 */	mflr r0
/* 804900C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804900CC  4B FF F8 E9 */	bl destroy__11daTag_Msg_cFv
/* 804900D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804900D4  7C 08 03 A6 */	mtlr r0
/* 804900D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804900DC  4E 80 00 20 */	blr 
