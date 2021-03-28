lbl_8047682C:
/* 8047682C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476830  7C 08 02 A6 */	mflr r0
/* 80476834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476838  4B FF FF 2D */	bl bg_damage_proc_kotubo__12daObjCarry_cFv
/* 8047683C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476840  7C 08 03 A6 */	mtlr r0
/* 80476844  38 21 00 10 */	addi r1, r1, 0x10
/* 80476848  4E 80 00 20 */	blr 
