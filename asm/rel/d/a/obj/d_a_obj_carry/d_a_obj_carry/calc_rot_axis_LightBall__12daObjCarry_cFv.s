lbl_804783E4:
/* 804783E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804783E8  7C 08 02 A6 */	mflr r0
/* 804783EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804783F0  38 80 00 0A */	li r4, 0xa
/* 804783F4  4B FF F7 29 */	bl calc_rot_axis_base__12daObjCarry_cFUc
/* 804783F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804783FC  7C 08 03 A6 */	mtlr r0
/* 80478400  38 21 00 10 */	addi r1, r1, 0x10
/* 80478404  4E 80 00 20 */	blr 
