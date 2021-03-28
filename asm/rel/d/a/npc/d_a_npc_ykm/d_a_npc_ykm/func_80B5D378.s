lbl_80B5D378:
/* 80B5D378  80 83 00 00 */	lwz r4, 0(r3)
/* 80B5D37C  2C 04 00 00 */	cmpwi r4, 0
/* 80B5D380  41 82 00 0C */	beq lbl_80B5D38C
/* 80B5D384  38 04 FF FF */	addi r0, r4, -1
/* 80B5D388  90 03 00 00 */	stw r0, 0(r3)
lbl_80B5D38C:
/* 80B5D38C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B5D390  4E 80 00 20 */	blr 
