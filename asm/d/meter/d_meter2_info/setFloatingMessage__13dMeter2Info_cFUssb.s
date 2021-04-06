lbl_8021C0E0:
/* 8021C0E0  3C E0 80 40 */	lis r7, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021C0E4  38 E7 61 C0 */	addi r7, r7, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021C0E8  88 07 4F AD */	lbz r0, 0x4fad(r7)
/* 8021C0EC  28 00 00 00 */	cmplwi r0, 0
/* 8021C0F0  41 82 00 0C */	beq lbl_8021C0FC
/* 8021C0F4  38 60 00 00 */	li r3, 0
/* 8021C0F8  4E 80 00 20 */	blr 
lbl_8021C0FC:
/* 8021C0FC  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 8021C100  38 07 FF FF */	addi r0, r7, 0xFFFF /* 0x0000FFFF@l */
/* 8021C104  B0 03 00 A4 */	sth r0, 0xa4(r3)
/* 8021C108  B0 83 00 A6 */	sth r4, 0xa6(r3)
/* 8021C10C  B0 A3 00 A8 */	sth r5, 0xa8(r3)
/* 8021C110  98 C3 00 F1 */	stb r6, 0xf1(r3)
/* 8021C114  38 60 00 01 */	li r3, 1
/* 8021C118  4E 80 00 20 */	blr 
