lbl_800D0E98:
/* 800D0E98  38 80 00 00 */	li r4, 0
/* 800D0E9C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800D0EA0  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800D0EA4  40 82 00 20 */	bne lbl_800D0EC4
/* 800D0EA8  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800D0EAC  28 00 02 55 */	cmplwi r0, 0x255
/* 800D0EB0  41 82 00 10 */	beq lbl_800D0EC0
/* 800D0EB4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800D0EB8  28 00 02 61 */	cmplwi r0, 0x261
/* 800D0EBC  40 82 00 08 */	bne lbl_800D0EC4
lbl_800D0EC0:
/* 800D0EC0  38 80 00 01 */	li r4, 1
lbl_800D0EC4:
/* 800D0EC4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800D0EC8  4E 80 00 20 */	blr 
