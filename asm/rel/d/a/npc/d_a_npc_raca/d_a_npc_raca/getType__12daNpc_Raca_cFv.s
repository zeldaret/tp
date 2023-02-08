lbl_80AB67CC:
/* 80AB67CC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80AB67D0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AB67D4  41 82 00 08 */	beq lbl_80AB67DC
/* 80AB67D8  48 00 00 0C */	b lbl_80AB67E4
lbl_80AB67DC:
/* 80AB67DC  38 60 00 00 */	li r3, 0
/* 80AB67E0  4E 80 00 20 */	blr 
lbl_80AB67E4:
/* 80AB67E4  38 60 00 01 */	li r3, 1
/* 80AB67E8  4E 80 00 20 */	blr 
