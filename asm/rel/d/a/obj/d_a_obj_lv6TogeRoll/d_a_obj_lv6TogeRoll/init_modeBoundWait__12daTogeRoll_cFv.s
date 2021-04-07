lbl_80C78C34:
/* 80C78C34  3C 80 80 C8 */	lis r4, l_HIO@ha /* 0x80C79D44@ha */
/* 80C78C38  38 84 9D 44 */	addi r4, r4, l_HIO@l /* 0x80C79D44@l */
/* 80C78C3C  88 04 00 06 */	lbz r0, 6(r4)
/* 80C78C40  98 03 05 DB */	stb r0, 0x5db(r3)
/* 80C78C44  38 00 00 08 */	li r0, 8
/* 80C78C48  98 03 05 D8 */	stb r0, 0x5d8(r3)
/* 80C78C4C  4E 80 00 20 */	blr 
