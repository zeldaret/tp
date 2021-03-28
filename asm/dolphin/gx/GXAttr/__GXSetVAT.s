lbl_8035BAA0:
/* 8035BAA0  81 22 CB 80 */	lwz r9, __GXData(r2)
/* 8035BAA4  39 60 00 00 */	li r11, 0
/* 8035BAA8  39 40 00 00 */	li r10, 0
/* 8035BAAC  89 89 05 AB */	lbz r12, 0x5ab(r9)
/* 8035BAB0  3C E0 CC 01 */	lis r7, 0xcc01
lbl_8035BAB4:
/* 8035BAB4  55 80 07 FF */	clrlwi. r0, r12, 0x1f
/* 8035BAB8  41 82 00 50 */	beq lbl_8035BB08
/* 8035BABC  39 00 00 08 */	li r8, 8
/* 8035BAC0  99 07 80 00 */	stb r8, -0x8000(r7)
/* 8035BAC4  61 63 00 70 */	ori r3, r11, 0x70
/* 8035BAC8  38 0A 00 1C */	addi r0, r10, 0x1c
/* 8035BACC  98 67 80 00 */	stb r3, -0x8000(r7)
/* 8035BAD0  61 65 00 80 */	ori r5, r11, 0x80
/* 8035BAD4  38 8A 00 3C */	addi r4, r10, 0x3c
/* 8035BAD8  7C C9 00 2E */	lwzx r6, r9, r0
/* 8035BADC  61 63 00 90 */	ori r3, r11, 0x90
/* 8035BAE0  38 0A 00 5C */	addi r0, r10, 0x5c
/* 8035BAE4  90 C7 80 00 */	stw r6, -0x8000(r7)
/* 8035BAE8  99 07 80 00 */	stb r8, -0x8000(r7)
/* 8035BAEC  98 A7 80 00 */	stb r5, -0x8000(r7)
/* 8035BAF0  7C 89 20 2E */	lwzx r4, r9, r4
/* 8035BAF4  90 87 80 00 */	stw r4, -0x8000(r7)
/* 8035BAF8  99 07 80 00 */	stb r8, -0x8000(r7)
/* 8035BAFC  98 67 80 00 */	stb r3, -0x8000(r7)
/* 8035BB00  7C 09 00 2E */	lwzx r0, r9, r0
/* 8035BB04  90 07 80 00 */	stw r0, -0x8000(r7)
lbl_8035BB08:
/* 8035BB08  55 8C F8 7F */	rlwinm. r12, r12, 0x1f, 1, 0x1f
/* 8035BB0C  39 4A 00 04 */	addi r10, r10, 4
/* 8035BB10  39 6B 00 01 */	addi r11, r11, 1
/* 8035BB14  40 82 FF A0 */	bne lbl_8035BAB4
/* 8035BB18  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035BB1C  38 00 00 00 */	li r0, 0
/* 8035BB20  98 03 05 AB */	stb r0, 0x5ab(r3)
/* 8035BB24  4E 80 00 20 */	blr 
