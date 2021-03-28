lbl_803628AC:
/* 803628AC  2C 03 00 00 */	cmpwi r3, 0
/* 803628B0  4D 80 00 20 */	bltlr 
/* 803628B4  2C 03 00 01 */	cmpwi r3, 1
/* 803628B8  4C 80 00 20 */	bgelr 
/* 803628BC  1C 83 00 0C */	mulli r4, r3, 0xc
/* 803628C0  3C 60 80 45 */	lis r3, fragmentinfo@ha
/* 803628C4  38 00 00 00 */	li r0, 0
/* 803628C8  38 63 D4 30 */	addi r3, r3, fragmentinfo@l
/* 803628CC  7C 63 22 14 */	add r3, r3, r4
/* 803628D0  90 03 00 00 */	stw r0, 0(r3)
/* 803628D4  90 03 00 04 */	stw r0, 4(r3)
/* 803628D8  90 03 00 08 */	stw r0, 8(r3)
/* 803628DC  4E 80 00 20 */	blr 
