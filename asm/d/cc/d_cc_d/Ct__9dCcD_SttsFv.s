lbl_800838F4:
/* 800838F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800838F8  7C 08 02 A6 */	mflr r0
/* 800838FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80083900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80083904  7C 7F 1B 78 */	mr r31, r3
/* 80083908  48 1D FF FD */	bl Ct__9cCcD_SttsFv
/* 8008390C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80083910  4B FF FE E9 */	bl Ct__10dCcD_GSttsFv
/* 80083914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80083918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008391C  7C 08 03 A6 */	mtlr r0
/* 80083920  38 21 00 10 */	addi r1, r1, 0x10
/* 80083924  4E 80 00 20 */	blr 
