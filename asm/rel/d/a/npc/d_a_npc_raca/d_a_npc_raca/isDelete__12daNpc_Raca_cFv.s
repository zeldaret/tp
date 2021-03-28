lbl_80AB67EC:
/* 80AB67EC  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80AB67F0  28 00 00 01 */	cmplwi r0, 1
/* 80AB67F4  40 82 00 0C */	bne lbl_80AB6800
/* 80AB67F8  38 60 00 00 */	li r3, 0
/* 80AB67FC  4E 80 00 20 */	blr 
lbl_80AB6800:
/* 80AB6800  2C 00 00 00 */	cmpwi r0, 0
/* 80AB6804  41 82 00 08 */	beq lbl_80AB680C
/* 80AB6808  48 00 00 0C */	b lbl_80AB6814
lbl_80AB680C:
/* 80AB680C  38 60 00 00 */	li r3, 0
/* 80AB6810  4E 80 00 20 */	blr 
lbl_80AB6814:
/* 80AB6814  38 60 00 01 */	li r3, 1
/* 80AB6818  4E 80 00 20 */	blr 
