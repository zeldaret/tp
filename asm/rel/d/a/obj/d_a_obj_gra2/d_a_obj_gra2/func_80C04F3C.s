lbl_80C04F3C:
/* 80C04F3C  80 83 00 00 */	lwz r4, 0(r3)
/* 80C04F40  2C 04 00 00 */	cmpwi r4, 0
/* 80C04F44  41 82 00 0C */	beq lbl_80C04F50
/* 80C04F48  38 04 FF FF */	addi r0, r4, -1
/* 80C04F4C  90 03 00 00 */	stw r0, 0(r3)
lbl_80C04F50:
/* 80C04F50  80 63 00 00 */	lwz r3, 0(r3)
/* 80C04F54  4E 80 00 20 */	blr 
