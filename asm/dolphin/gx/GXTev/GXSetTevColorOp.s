lbl_8035F2AC:
/* 8035F2AC  80 02 CB 80 */	lwz r0, __GXData(r2)
/* 8035F2B0  54 69 10 3A */	slwi r9, r3, 2
/* 8035F2B4  2C 04 00 01 */	cmpwi r4, 1
/* 8035F2B8  7C 60 4A 14 */	add r3, r0, r9
/* 8035F2BC  80 63 01 30 */	lwz r3, 0x130(r3)
/* 8035F2C0  50 83 93 5A */	rlwimi r3, r4, 0x12, 0xd, 0xd
/* 8035F2C4  39 43 00 00 */	addi r10, r3, 0
/* 8035F2C8  41 81 00 10 */	bgt lbl_8035F2D8
/* 8035F2CC  50 CA A2 96 */	rlwimi r10, r6, 0x14, 0xa, 0xb
/* 8035F2D0  50 AA 83 9E */	rlwimi r10, r5, 0x10, 0xe, 0xf
/* 8035F2D4  48 00 00 10 */	b lbl_8035F2E4
lbl_8035F2D8:
/* 8035F2D8  38 00 00 03 */	li r0, 3
/* 8035F2DC  50 8A 9A 96 */	rlwimi r10, r4, 0x13, 0xa, 0xb
/* 8035F2E0  50 0A 83 9E */	rlwimi r10, r0, 0x10, 0xe, 0xf
lbl_8035F2E4:
/* 8035F2E4  38 00 00 61 */	li r0, 0x61
/* 8035F2E8  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035F2EC  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 8035F2F0  98 05 80 00 */	stb r0, 0x8000(r5)  /* 0xCC008000@l */
/* 8035F2F4  50 EA 9B 18 */	rlwimi r10, r7, 0x13, 0xc, 0xc
/* 8035F2F8  51 0A B2 12 */	rlwimi r10, r8, 0x16, 8, 9
/* 8035F2FC  91 45 80 00 */	stw r10, -0x8000(r5)
/* 8035F300  7C 64 4A 14 */	add r3, r4, r9
/* 8035F304  38 00 00 00 */	li r0, 0
/* 8035F308  91 43 01 30 */	stw r10, 0x130(r3)
/* 8035F30C  B0 04 00 02 */	sth r0, 2(r4)
/* 8035F310  4E 80 00 20 */	blr 
