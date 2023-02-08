lbl_804767C4:
/* 804767C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804767C8  7C 08 02 A6 */	mflr r0
/* 804767CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804767D0  4B FF FF 95 */	bl bg_damage_proc_kotubo__12daObjCarry_cFv
/* 804767D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804767D8  7C 08 03 A6 */	mtlr r0
/* 804767DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804767E0  4E 80 00 20 */	blr 
