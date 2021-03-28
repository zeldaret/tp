lbl_8006FE5C:
/* 8006FE5C  38 80 00 00 */	li r4, 0
/* 8006FE60  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8006FE64  2C 00 FF FF */	cmpwi r0, -1
/* 8006FE68  40 82 00 10 */	bne lbl_8006FE78
/* 8006FE6C  80 03 00 70 */	lwz r0, 0x70(r3)
/* 8006FE70  2C 00 FF FF */	cmpwi r0, -1
/* 8006FE74  41 82 00 08 */	beq lbl_8006FE7C
lbl_8006FE78:
/* 8006FE78  38 80 00 01 */	li r4, 1
lbl_8006FE7C:
/* 8006FE7C  7C 83 23 78 */	mr r3, r4
/* 8006FE80  4E 80 00 20 */	blr 
