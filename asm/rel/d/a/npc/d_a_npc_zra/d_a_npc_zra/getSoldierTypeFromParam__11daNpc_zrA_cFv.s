lbl_80B7C4B4:
/* 80B7C4B4  88 03 14 E8 */	lbz r0, 0x14e8(r3)
/* 80B7C4B8  28 00 00 02 */	cmplwi r0, 2
/* 80B7C4BC  41 82 00 0C */	beq lbl_80B7C4C8
/* 80B7C4C0  28 00 00 05 */	cmplwi r0, 5
/* 80B7C4C4  40 82 00 0C */	bne lbl_80B7C4D0
lbl_80B7C4C8:
/* 80B7C4C8  38 60 00 01 */	li r3, 1
/* 80B7C4CC  4E 80 00 20 */	blr 
lbl_80B7C4D0:
/* 80B7C4D0  28 00 00 04 */	cmplwi r0, 4
/* 80B7C4D4  40 82 00 0C */	bne lbl_80B7C4E0
/* 80B7C4D8  38 60 00 02 */	li r3, 2
/* 80B7C4DC  4E 80 00 20 */	blr 
lbl_80B7C4E0:
/* 80B7C4E0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80B7C4E4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B7C4E8  41 82 00 08 */	beq lbl_80B7C4F0
/* 80B7C4EC  48 00 00 0C */	b lbl_80B7C4F8
lbl_80B7C4F0:
/* 80B7C4F0  38 60 00 00 */	li r3, 0
/* 80B7C4F4  4E 80 00 20 */	blr 
lbl_80B7C4F8:
/* 80B7C4F8  38 60 00 02 */	li r3, 2
/* 80B7C4FC  4E 80 00 20 */	blr 
