lbl_8047680C:
/* 8047680C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476810  7C 08 02 A6 */	mflr r0
/* 80476814  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476818  4B FF FF 4D */	bl bg_damage_proc_kotubo__12daObjCarry_cFv
/* 8047681C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476820  7C 08 03 A6 */	mtlr r0
/* 80476824  38 21 00 10 */	addi r1, r1, 0x10
/* 80476828  4E 80 00 20 */	blr 
