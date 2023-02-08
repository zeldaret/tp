lbl_8035E750:
/* 8035E750  81 02 CB 80 */	lwz r8, __GXData(r2)
/* 8035E754  54 63 10 3A */	slwi r3, r3, 2
/* 8035E758  54 80 10 3A */	slwi r0, r4, 2
/* 8035E75C  7C 68 1A 14 */	add r3, r8, r3
/* 8035E760  80 83 05 14 */	lwz r4, 0x514(r3)
/* 8035E764  7C E8 02 14 */	add r7, r8, r0
/* 8035E768  80 07 00 B8 */	lwz r0, 0xb8(r7)
/* 8035E76C  38 A0 00 61 */	li r5, 0x61
/* 8035E770  54 86 05 BE */	clrlwi r6, r4, 0x16
/* 8035E774  50 C0 04 3E */	rlwimi r0, r6, 0, 0x10, 0x1f
/* 8035E778  90 07 00 B8 */	stw r0, 0xb8(r7)
/* 8035E77C  54 84 B5 BE */	rlwinm r4, r4, 0x16, 0x16, 0x1f
/* 8035E780  80 07 00 D8 */	lwz r0, 0xd8(r7)
/* 8035E784  50 80 04 3E */	rlwimi r0, r4, 0, 0x10, 0x1f
/* 8035E788  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8035E78C  90 07 00 D8 */	stw r0, 0xd8(r7)
/* 8035E790  38 00 00 00 */	li r0, 0
/* 8035E794  81 23 05 34 */	lwz r9, 0x534(r3)
/* 8035E798  80 67 00 B8 */	lwz r3, 0xb8(r7)
/* 8035E79C  55 26 07 BE */	clrlwi r6, r9, 0x1e
/* 8035E7A0  20 C6 00 01 */	subfic r6, r6, 1
/* 8035E7A4  7C C6 00 34 */	cntlzw r6, r6
/* 8035E7A8  54 CA DE 3E */	rlwinm r10, r6, 0x1b, 0x18, 0x1f
/* 8035E7AC  55 26 F7 BE */	rlwinm r6, r9, 0x1e, 0x1e, 0x1f
/* 8035E7B0  51 43 83 DE */	rlwimi r3, r10, 0x10, 0xf, 0xf
/* 8035E7B4  20 C6 00 01 */	subfic r6, r6, 1
/* 8035E7B8  90 67 00 B8 */	stw r3, 0xb8(r7)
/* 8035E7BC  7C C3 00 34 */	cntlzw r3, r6
/* 8035E7C0  54 66 DE 3E */	rlwinm r6, r3, 0x1b, 0x18, 0x1f
/* 8035E7C4  80 67 00 D8 */	lwz r3, 0xd8(r7)
/* 8035E7C8  50 C3 83 DE */	rlwimi r3, r6, 0x10, 0xf, 0xf
/* 8035E7CC  90 67 00 D8 */	stw r3, 0xd8(r7)
/* 8035E7D0  98 A4 80 00 */	stb r5, 0x8000(r4)  /* 0xCC008000@l */
/* 8035E7D4  80 67 00 B8 */	lwz r3, 0xb8(r7)
/* 8035E7D8  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8035E7DC  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8035E7E0  80 67 00 D8 */	lwz r3, 0xd8(r7)
/* 8035E7E4  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8035E7E8  B0 08 00 02 */	sth r0, 2(r8)
/* 8035E7EC  4E 80 00 20 */	blr 
