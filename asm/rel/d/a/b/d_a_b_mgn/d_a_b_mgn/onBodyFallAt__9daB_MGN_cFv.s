lbl_80607CB0:
/* 80607CB0  38 80 00 00 */	li r4, 0
/* 80607CB4  38 E0 00 1F */	li r7, 0x1f
/* 80607CB8  38 C0 00 0D */	li r6, 0xd
/* 80607CBC  38 A0 00 02 */	li r5, 2
/* 80607CC0  38 00 00 0F */	li r0, 0xf
/* 80607CC4  7C 09 03 A6 */	mtctr r0
lbl_80607CC8:
/* 80607CC8  7D 03 22 14 */	add r8, r3, r4
/* 80607CCC  90 E8 0D 70 */	stw r7, 0xd70(r8)
/* 80607CD0  98 C8 0D E7 */	stb r6, 0xde7(r8)
/* 80607CD4  98 A8 0D 84 */	stb r5, 0xd84(r8)
/* 80607CD8  38 84 01 38 */	addi r4, r4, 0x138
/* 80607CDC  42 00 FF EC */	bdnz lbl_80607CC8
/* 80607CE0  4E 80 00 20 */	blr 
