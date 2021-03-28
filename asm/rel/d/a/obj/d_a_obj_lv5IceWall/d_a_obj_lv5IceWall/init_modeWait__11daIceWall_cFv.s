lbl_80C6BC50:
/* 80C6BC50  3C 80 80 C7 */	lis r4, l_HIO@ha
/* 80C6BC54  38 84 C8 3C */	addi r4, r4, l_HIO@l
/* 80C6BC58  88 04 00 10 */	lbz r0, 0x10(r4)
/* 80C6BC5C  98 03 08 66 */	stb r0, 0x866(r3)
/* 80C6BC60  38 00 00 00 */	li r0, 0
/* 80C6BC64  98 03 08 64 */	stb r0, 0x864(r3)
/* 80C6BC68  4E 80 00 20 */	blr 
