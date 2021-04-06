lbl_8019E854:
/* 8019E854  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019E858  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019E85C  38 00 00 02 */	li r0, 2
/* 8019E860  7C 09 03 A6 */	mtctr r0
lbl_8019E864:
/* 8019E864  38 00 00 00 */	li r0, 0
/* 8019E868  42 00 FF FC */	bdnz lbl_8019E864
/* 8019E86C  90 03 07 80 */	stw r0, 0x780(r3)
/* 8019E870  4E 80 00 20 */	blr 
