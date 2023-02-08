lbl_80D3DB90:
/* 80D3DB90  80 83 00 00 */	lwz r4, 0(r3)
/* 80D3DB94  2C 04 00 00 */	cmpwi r4, 0
/* 80D3DB98  41 82 00 0C */	beq lbl_80D3DBA4
/* 80D3DB9C  38 04 FF FF */	addi r0, r4, -1
/* 80D3DBA0  90 03 00 00 */	stw r0, 0(r3)
lbl_80D3DBA4:
/* 80D3DBA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D3DBA8  4E 80 00 20 */	blr 
