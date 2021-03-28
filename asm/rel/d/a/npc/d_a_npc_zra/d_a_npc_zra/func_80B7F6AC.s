lbl_80B7F6AC:
/* 80B7F6AC  80 83 00 00 */	lwz r4, 0(r3)
/* 80B7F6B0  2C 04 00 00 */	cmpwi r4, 0
/* 80B7F6B4  41 82 00 0C */	beq lbl_80B7F6C0
/* 80B7F6B8  38 04 FF FF */	addi r0, r4, -1
/* 80B7F6BC  90 03 00 00 */	stw r0, 0(r3)
lbl_80B7F6C0:
/* 80B7F6C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80B7F6C4  4E 80 00 20 */	blr 
