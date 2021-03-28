lbl_80478828:
/* 80478828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047882C  7C 08 02 A6 */	mflr r0
/* 80478830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80478834  4B FF FB F9 */	bl set_wind_power__12daObjCarry_cFv
/* 80478838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047883C  7C 08 03 A6 */	mtlr r0
/* 80478840  38 21 00 10 */	addi r1, r1, 0x10
/* 80478844  4E 80 00 20 */	blr 
