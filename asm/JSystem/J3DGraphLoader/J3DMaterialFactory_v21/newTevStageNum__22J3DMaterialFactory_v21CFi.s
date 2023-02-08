lbl_80333CD0:
/* 80333CD0  80 C3 00 04 */	lwz r6, 4(r3)
/* 80333CD4  80 A3 00 08 */	lwz r5, 8(r3)
/* 80333CD8  54 80 08 3C */	slwi r0, r4, 1
/* 80333CDC  7C 05 02 2E */	lhzx r0, r5, r0
/* 80333CE0  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80333CE4  7C 86 02 14 */	add r4, r6, r0
/* 80333CE8  88 04 00 04 */	lbz r0, 4(r4)
/* 80333CEC  28 00 00 FF */	cmplwi r0, 0xff
/* 80333CF0  41 82 00 10 */	beq lbl_80333D00
/* 80333CF4  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80333CF8  7C 63 00 AE */	lbzx r3, r3, r0
/* 80333CFC  4E 80 00 20 */	blr 
lbl_80333D00:
/* 80333D00  38 60 00 FF */	li r3, 0xff
/* 80333D04  4E 80 00 20 */	blr 
