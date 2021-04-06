lbl_80344BA0:
/* 80344BA0  3C 60 80 3D */	lis r3, Si@ha /* 0x803D11FC@ha */
/* 80344BA4  80 03 11 FC */	lwz r0, Si@l(r3)  /* 0x803D11FC@l */
/* 80344BA8  2C 00 FF FF */	cmpwi r0, -1
/* 80344BAC  41 82 00 0C */	beq lbl_80344BB8
/* 80344BB0  38 60 00 01 */	li r3, 1
/* 80344BB4  4E 80 00 20 */	blr 
lbl_80344BB8:
/* 80344BB8  38 60 00 00 */	li r3, 0
/* 80344BBC  4E 80 00 20 */	blr 
