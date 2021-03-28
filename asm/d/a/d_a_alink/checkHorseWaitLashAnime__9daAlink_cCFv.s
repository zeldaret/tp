lbl_800ECDC4:
/* 800ECDC4  38 80 00 00 */	li r4, 0
/* 800ECDC8  A0 03 1F 80 */	lhz r0, 0x1f80(r3)
/* 800ECDCC  28 00 00 DD */	cmplwi r0, 0xdd
/* 800ECDD0  40 82 00 14 */	bne lbl_800ECDE4
/* 800ECDD4  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800ECDD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800ECDDC  41 82 00 08 */	beq lbl_800ECDE4
/* 800ECDE0  38 80 00 01 */	li r4, 1
lbl_800ECDE4:
/* 800ECDE4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800ECDE8  4E 80 00 20 */	blr 
