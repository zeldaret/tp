lbl_8019E708:
/* 8019E708  38 60 00 00 */	li r3, 0
/* 8019E70C  7C 66 1B 78 */	mr r6, r3
/* 8019E710  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8019E714  38 A4 CA 54 */	addi r5, r4, g_env_light@l
/* 8019E718  38 00 00 0A */	li r0, 0xa
/* 8019E71C  7C 09 03 A6 */	mtctr r0
lbl_8019E720:
/* 8019E720  7C 85 1A 14 */	add r4, r5, r3
/* 8019E724  90 C4 09 90 */	stw r6, 0x990(r4)
/* 8019E728  38 63 00 04 */	addi r3, r3, 4
/* 8019E72C  42 00 FF F4 */	bdnz lbl_8019E720
/* 8019E730  4E 80 00 20 */	blr 
