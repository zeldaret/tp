lbl_806EB0FC:
/* 806EB0FC  80 03 06 C0 */	lwz r0, 0x6c0(r3)
/* 806EB100  2C 00 00 00 */	cmpwi r0, 0
/* 806EB104  41 82 00 0C */	beq lbl_806EB110
/* 806EB108  2C 00 00 01 */	cmpwi r0, 1
/* 806EB10C  40 82 00 0C */	bne lbl_806EB118
lbl_806EB110:
/* 806EB110  38 60 00 01 */	li r3, 1
/* 806EB114  4E 80 00 20 */	blr 
lbl_806EB118:
/* 806EB118  2C 00 00 0B */	cmpwi r0, 0xb
/* 806EB11C  40 82 00 18 */	bne lbl_806EB134
/* 806EB120  80 03 06 C8 */	lwz r0, 0x6c8(r3)
/* 806EB124  2C 00 00 04 */	cmpwi r0, 4
/* 806EB128  40 82 00 0C */	bne lbl_806EB134
/* 806EB12C  38 60 00 01 */	li r3, 1
/* 806EB130  4E 80 00 20 */	blr 
lbl_806EB134:
/* 806EB134  38 60 00 00 */	li r3, 0
/* 806EB138  4E 80 00 20 */	blr 
