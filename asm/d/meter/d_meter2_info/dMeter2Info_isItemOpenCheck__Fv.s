lbl_8021E688:
/* 8021E688  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021E68C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021E690  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8021E694  88 63 05 6A */	lbz r3, 0x56a(r3)
/* 8021E698  28 03 00 2D */	cmplwi r3, 0x2d
/* 8021E69C  41 82 00 38 */	beq lbl_8021E6D4
/* 8021E6A0  38 00 00 00 */	li r0, 0
/* 8021E6A4  28 03 00 00 */	cmplwi r3, 0
/* 8021E6A8  41 82 00 10 */	beq lbl_8021E6B8
/* 8021E6AC  28 03 00 26 */	cmplwi r3, 0x26
/* 8021E6B0  40 80 00 08 */	bge lbl_8021E6B8
/* 8021E6B4  38 00 00 01 */	li r0, 1
lbl_8021E6B8:
/* 8021E6B8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8021E6BC  40 82 00 18 */	bne lbl_8021E6D4
/* 8021E6C0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8021E6C4  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8021E6C8  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 8021E6CC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8021E6D0  41 82 00 0C */	beq lbl_8021E6DC
lbl_8021E6D4:
/* 8021E6D4  38 60 00 00 */	li r3, 0
/* 8021E6D8  4E 80 00 20 */	blr 
lbl_8021E6DC:
/* 8021E6DC  38 60 00 01 */	li r3, 1
/* 8021E6E0  4E 80 00 20 */	blr 
