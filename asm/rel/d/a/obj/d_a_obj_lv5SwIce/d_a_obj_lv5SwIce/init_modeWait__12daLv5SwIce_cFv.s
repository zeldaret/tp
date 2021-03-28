lbl_80C6CEB4:
/* 80C6CEB4  3C 80 80 C7 */	lis r4, l_HIO@ha
/* 80C6CEB8  38 84 D6 D4 */	addi r4, r4, l_HIO@l
/* 80C6CEBC  88 04 00 04 */	lbz r0, 4(r4)
/* 80C6CEC0  98 03 07 25 */	stb r0, 0x725(r3)
/* 80C6CEC4  38 00 00 00 */	li r0, 0
/* 80C6CEC8  98 03 07 24 */	stb r0, 0x724(r3)
/* 80C6CECC  4E 80 00 20 */	blr 
