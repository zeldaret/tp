lbl_80D1D3B0:
/* 80D1D3B0  80 83 00 00 */	lwz r4, 0(r3)
/* 80D1D3B4  2C 04 00 00 */	cmpwi r4, 0
/* 80D1D3B8  41 82 00 0C */	beq lbl_80D1D3C4
/* 80D1D3BC  38 04 FF FF */	addi r0, r4, -1
/* 80D1D3C0  90 03 00 00 */	stw r0, 0(r3)
lbl_80D1D3C4:
/* 80D1D3C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1D3C8  4E 80 00 20 */	blr 
