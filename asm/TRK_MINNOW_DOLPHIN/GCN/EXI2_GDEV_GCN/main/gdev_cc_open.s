lbl_80372BA0:
/* 80372BA0  80 0D 94 48 */	lwz r0, gIsInitialized(r13)
/* 80372BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80372BA8  41 82 00 0C */	beq lbl_80372BB4
/* 80372BAC  38 60 D8 EB */	li r3, -10005
/* 80372BB0  4E 80 00 20 */	blr 
lbl_80372BB4:
/* 80372BB4  38 00 00 01 */	li r0, 1
/* 80372BB8  38 60 00 00 */	li r3, 0
/* 80372BBC  90 0D 94 48 */	stw r0, gIsInitialized(r13)
/* 80372BC0  4E 80 00 20 */	blr 
