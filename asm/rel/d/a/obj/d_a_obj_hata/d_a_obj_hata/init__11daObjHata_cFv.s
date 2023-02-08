lbl_80C190FC:
/* 80C190FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C19100  7C 08 02 A6 */	mflr r0
/* 80C19104  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C19108  39 61 00 20 */	addi r11, r1, 0x20
/* 80C1910C  4B 74 90 C5 */	bl _savegpr_26
/* 80C19110  7C 7A 1B 78 */	mr r26, r3
/* 80C19114  3B 60 00 00 */	li r27, 0
/* 80C19118  3B E0 00 00 */	li r31, 0
/* 80C1911C  3C 60 80 C2 */	lis r3, lit_3788@ha /* 0x80C19478@ha */
/* 80C19120  3B A3 94 78 */	addi r29, r3, lit_3788@l /* 0x80C19478@l */
/* 80C19124  3C 60 80 C2 */	lis r3, lit_3789@ha /* 0x80C1947C@ha */
/* 80C19128  3B C3 94 7C */	addi r30, r3, lit_3789@l /* 0x80C1947C@l */
lbl_80C1912C:
/* 80C1912C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80C19130  4B 64 E8 5D */	bl cM_rndFX__Ff
/* 80C19134  7F 9A FA 14 */	add r28, r26, r31
/* 80C19138  D0 3C 05 8C */	stfs f1, 0x58c(r28)
/* 80C1913C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80C19140  4B 64 E8 4D */	bl cM_rndFX__Ff
/* 80C19144  D0 3C 05 98 */	stfs f1, 0x598(r28)
/* 80C19148  38 00 00 01 */	li r0, 1
/* 80C1914C  7C 7A DA 14 */	add r3, r26, r27
/* 80C19150  98 03 05 BC */	stb r0, 0x5bc(r3)
/* 80C19154  38 00 FF FF */	li r0, -1
/* 80C19158  98 03 05 BF */	stb r0, 0x5bf(r3)
/* 80C1915C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C19160  4B 64 E7 F5 */	bl cM_rndF__Ff
/* 80C19164  D0 3C 05 A4 */	stfs f1, 0x5a4(r28)
/* 80C19168  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C1916C  4B 64 E7 E9 */	bl cM_rndF__Ff
/* 80C19170  D0 3C 05 B0 */	stfs f1, 0x5b0(r28)
/* 80C19174  3B 7B 00 01 */	addi r27, r27, 1
/* 80C19178  2C 1B 00 03 */	cmpwi r27, 3
/* 80C1917C  3B FF 00 04 */	addi r31, r31, 4
/* 80C19180  41 80 FF AC */	blt lbl_80C1912C
/* 80C19184  39 61 00 20 */	addi r11, r1, 0x20
/* 80C19188  4B 74 90 95 */	bl _restgpr_26
/* 80C1918C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C19190  7C 08 03 A6 */	mtlr r0
/* 80C19194  38 21 00 20 */	addi r1, r1, 0x20
/* 80C19198  4E 80 00 20 */	blr 
