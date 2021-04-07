lbl_8019E694:
/* 8019E694  C0 02 A2 88 */	lfs f0, lit_5077(r2)
/* 8019E698  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019E69C  38 C3 CA 54 */	addi r6, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019E6A0  D0 06 00 4C */	stfs f0, 0x4c(r6)
/* 8019E6A4  38 60 00 00 */	li r3, 0
/* 8019E6A8  7C 65 1B 78 */	mr r5, r3
/* 8019E6AC  38 00 00 64 */	li r0, 0x64
/* 8019E6B0  7C 09 03 A6 */	mtctr r0
lbl_8019E6B4:
/* 8019E6B4  7C 86 1A 14 */	add r4, r6, r3
/* 8019E6B8  90 A4 03 F8 */	stw r5, 0x3f8(r4)
/* 8019E6BC  38 63 00 04 */	addi r3, r3, 4
/* 8019E6C0  42 00 FF F4 */	bdnz lbl_8019E6B4
/* 8019E6C4  38 60 00 00 */	li r3, 0
/* 8019E6C8  38 A0 00 00 */	li r5, 0
/* 8019E6CC  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8019E6D0  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 8019E6D4  38 00 00 05 */	li r0, 5
/* 8019E6D8  7C 09 03 A6 */	mtctr r0
lbl_8019E6DC:
/* 8019E6DC  7C C4 1A 14 */	add r6, r4, r3
/* 8019E6E0  90 A6 05 88 */	stw r5, 0x588(r6)
/* 8019E6E4  90 A6 07 2C */	stw r5, 0x72c(r6)
/* 8019E6E8  38 63 00 04 */	addi r3, r3, 4
/* 8019E6EC  42 00 FF F0 */	bdnz lbl_8019E6DC
/* 8019E6F0  38 00 FF FF */	li r0, -1
/* 8019E6F4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019E6F8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019E6FC  90 03 12 A4 */	stw r0, 0x12a4(r3)
/* 8019E700  90 03 12 A8 */	stw r0, 0x12a8(r3)
/* 8019E704  4E 80 00 20 */	blr 
