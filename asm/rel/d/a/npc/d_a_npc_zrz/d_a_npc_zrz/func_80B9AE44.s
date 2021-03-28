lbl_80B9AE44:
/* 80B9AE44  80 83 00 00 */	lwz r4, 0(r3)
/* 80B9AE48  2C 04 00 00 */	cmpwi r4, 0
/* 80B9AE4C  41 82 00 0C */	beq lbl_80B9AE58
/* 80B9AE50  38 04 FF FF */	addi r0, r4, -1
/* 80B9AE54  90 03 00 00 */	stw r0, 0(r3)
lbl_80B9AE58:
/* 80B9AE58  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9AE5C  4E 80 00 20 */	blr 
