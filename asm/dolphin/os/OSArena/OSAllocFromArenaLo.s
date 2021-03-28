lbl_8033B2AC:
/* 8033B2AC  80 0D 84 18 */	lwz r0, __OSArenaLo(r13)
/* 8033B2B0  38 84 FF FF */	addi r4, r4, -1
/* 8033B2B4  7C 85 20 F8 */	nor r5, r4, r4
/* 8033B2B8  7C 00 22 14 */	add r0, r0, r4
/* 8033B2BC  7C A6 00 38 */	and r6, r5, r0
/* 8033B2C0  7C 06 1A 14 */	add r0, r6, r3
/* 8033B2C4  7C 00 22 14 */	add r0, r0, r4
/* 8033B2C8  7C A0 00 38 */	and r0, r5, r0
/* 8033B2CC  90 0D 84 18 */	stw r0, __OSArenaLo(r13)
/* 8033B2D0  7C C3 33 78 */	mr r3, r6
/* 8033B2D4  4E 80 00 20 */	blr 
