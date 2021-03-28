lbl_800D00BC:
/* 800D00BC  80 A3 00 08 */	lwz r5, 8(r3)
/* 800D00C0  54 83 18 38 */	slwi r3, r4, 3
/* 800D00C4  38 03 00 04 */	addi r0, r3, 4
/* 800D00C8  7C 65 00 2E */	lwzx r3, r5, r0
/* 800D00CC  4E 80 00 20 */	blr 
