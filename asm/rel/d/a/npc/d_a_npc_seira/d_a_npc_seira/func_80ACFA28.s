lbl_80ACFA28:
/* 80ACFA28  80 83 00 00 */	lwz r4, 0(r3)
/* 80ACFA2C  2C 04 00 00 */	cmpwi r4, 0
/* 80ACFA30  41 82 00 0C */	beq lbl_80ACFA3C
/* 80ACFA34  38 04 FF FF */	addi r0, r4, -1
/* 80ACFA38  90 03 00 00 */	stw r0, 0(r3)
lbl_80ACFA3C:
/* 80ACFA3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80ACFA40  4E 80 00 20 */	blr 
