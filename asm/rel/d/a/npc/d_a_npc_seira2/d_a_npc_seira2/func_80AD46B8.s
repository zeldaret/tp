lbl_80AD46B8:
/* 80AD46B8  80 83 00 00 */	lwz r4, 0(r3)
/* 80AD46BC  2C 04 00 00 */	cmpwi r4, 0
/* 80AD46C0  41 82 00 0C */	beq lbl_80AD46CC
/* 80AD46C4  38 04 FF FF */	addi r0, r4, -1
/* 80AD46C8  90 03 00 00 */	stw r0, 0(r3)
lbl_80AD46CC:
/* 80AD46CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80AD46D0  4E 80 00 20 */	blr 
