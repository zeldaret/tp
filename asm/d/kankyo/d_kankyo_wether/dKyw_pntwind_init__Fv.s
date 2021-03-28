lbl_8005AD44:
/* 8005AD44  38 60 00 00 */	li r3, 0
/* 8005AD48  7C 66 1B 78 */	mr r6, r3
/* 8005AD4C  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8005AD50  38 A4 CA 54 */	addi r5, r4, g_env_light@l
/* 8005AD54  38 00 00 1E */	li r0, 0x1e
/* 8005AD58  7C 09 03 A6 */	mtctr r0
lbl_8005AD5C:
/* 8005AD5C  7C 85 1A 14 */	add r4, r5, r3
/* 8005AD60  90 C4 07 D0 */	stw r6, 0x7d0(r4)
/* 8005AD64  38 63 00 04 */	addi r3, r3, 4
/* 8005AD68  42 00 FF F4 */	bdnz lbl_8005AD5C
/* 8005AD6C  38 60 00 00 */	li r3, 0
/* 8005AD70  38 C0 00 00 */	li r6, 0
/* 8005AD74  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8005AD78  38 A4 CA 54 */	addi r5, r4, g_env_light@l
/* 8005AD7C  38 00 00 05 */	li r0, 5
/* 8005AD80  7C 09 03 A6 */	mtctr r0
lbl_8005AD84:
/* 8005AD84  7C 85 1A 14 */	add r4, r5, r3
/* 8005AD88  98 C4 08 48 */	stb r6, 0x848(r4)
/* 8005AD8C  38 63 00 3C */	addi r3, r3, 0x3c
/* 8005AD90  42 00 FF F4 */	bdnz lbl_8005AD84
/* 8005AD94  4E 80 00 20 */	blr 
