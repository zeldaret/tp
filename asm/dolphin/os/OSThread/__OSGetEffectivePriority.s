lbl_80340DAC:
/* 80340DAC  80 83 02 D4 */	lwz r4, 0x2d4(r3)
/* 80340DB0  80 A3 02 F4 */	lwz r5, 0x2f4(r3)
/* 80340DB4  48 00 00 24 */	b lbl_80340DD8
lbl_80340DB8:
/* 80340DB8  80 65 00 00 */	lwz r3, 0(r5)
/* 80340DBC  28 03 00 00 */	cmplwi r3, 0
/* 80340DC0  41 82 00 14 */	beq lbl_80340DD4
/* 80340DC4  80 03 02 D0 */	lwz r0, 0x2d0(r3)
/* 80340DC8  7C 00 20 00 */	cmpw r0, r4
/* 80340DCC  40 80 00 08 */	bge lbl_80340DD4
/* 80340DD0  7C 04 03 78 */	mr r4, r0
lbl_80340DD4:
/* 80340DD4  80 A5 00 10 */	lwz r5, 0x10(r5)
lbl_80340DD8:
/* 80340DD8  28 05 00 00 */	cmplwi r5, 0
/* 80340DDC  40 82 FF DC */	bne lbl_80340DB8
/* 80340DE0  7C 83 23 78 */	mr r3, r4
/* 80340DE4  4E 80 00 20 */	blr 
