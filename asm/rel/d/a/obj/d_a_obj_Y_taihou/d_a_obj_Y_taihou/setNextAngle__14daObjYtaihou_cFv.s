lbl_80BA0060:
/* 80BA0060  A8 A3 04 B6 */	lha r5, 0x4b6(r3)
/* 80BA0064  88 03 07 75 */	lbz r0, 0x775(r3)
/* 80BA0068  54 00 08 3C */	slwi r0, r0, 1
/* 80BA006C  3C 80 80 BA */	lis r4, l_offsetAngle@ha /* 0x80BA1228@ha */
/* 80BA0070  38 84 12 28 */	addi r4, r4, l_offsetAngle@l /* 0x80BA1228@l */
/* 80BA0074  7C 04 02 2E */	lhzx r0, r4, r0
/* 80BA0078  7C 05 02 14 */	add r0, r5, r0
/* 80BA007C  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80BA0080  4E 80 00 20 */	blr 
