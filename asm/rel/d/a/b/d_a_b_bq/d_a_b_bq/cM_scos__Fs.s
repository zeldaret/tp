lbl_805B8A0C:
/* 805B8A0C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 805B8A10  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 805B8A14  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 805B8A18  7C 64 02 14 */	add r3, r4, r0
/* 805B8A1C  C0 23 00 04 */	lfs f1, 4(r3)
/* 805B8A20  4E 80 00 20 */	blr 
