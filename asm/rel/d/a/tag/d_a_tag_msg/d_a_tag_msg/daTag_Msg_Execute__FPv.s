lbl_804900E0:
/* 804900E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804900E4  7C 08 02 A6 */	mflr r0
/* 804900E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804900EC  4B FF F8 FD */	bl execute__11daTag_Msg_cFv
/* 804900F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804900F4  7C 08 03 A6 */	mtlr r0
/* 804900F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804900FC  4E 80 00 20 */	blr 
