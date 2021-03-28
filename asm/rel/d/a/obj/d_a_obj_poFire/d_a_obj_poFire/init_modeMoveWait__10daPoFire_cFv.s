lbl_80CB38EC:
/* 80CB38EC  3C 80 80 CB */	lis r4, l_HIO@ha
/* 80CB38F0  38 84 41 14 */	addi r4, r4, l_HIO@l
/* 80CB38F4  88 04 00 30 */	lbz r0, 0x30(r4)
/* 80CB38F8  98 03 05 C5 */	stb r0, 0x5c5(r3)
/* 80CB38FC  38 00 00 01 */	li r0, 1
/* 80CB3900  98 03 05 94 */	stb r0, 0x594(r3)
/* 80CB3904  80 83 05 C8 */	lwz r4, 0x5c8(r3)
/* 80CB3908  98 04 05 D2 */	stb r0, 0x5d2(r4)
/* 80CB390C  38 00 00 06 */	li r0, 6
/* 80CB3910  98 03 05 92 */	stb r0, 0x592(r3)
/* 80CB3914  4E 80 00 20 */	blr 
