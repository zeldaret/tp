lbl_804767E4:
/* 804767E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804767E8  7C 08 02 A6 */	mflr r0
/* 804767EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804767F0  4B FF FF 75 */	bl bg_damage_proc_kotubo__12daObjCarry_cFv
/* 804767F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804767F8  7C 08 03 A6 */	mtlr r0
/* 804767FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80476800  4E 80 00 20 */	blr 
