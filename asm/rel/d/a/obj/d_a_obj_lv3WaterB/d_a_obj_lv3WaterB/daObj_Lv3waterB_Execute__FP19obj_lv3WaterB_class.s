lbl_80C5B89C:
/* 80C5B89C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B8A0  7C 08 02 A6 */	mflr r0
/* 80C5B8A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B8A8  4B FF FE 75 */	bl action__FP19obj_lv3WaterB_class
/* 80C5B8AC  38 60 00 01 */	li r3, 1
/* 80C5B8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B8B4  7C 08 03 A6 */	mtlr r0
/* 80C5B8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B8BC  4E 80 00 20 */	blr 
