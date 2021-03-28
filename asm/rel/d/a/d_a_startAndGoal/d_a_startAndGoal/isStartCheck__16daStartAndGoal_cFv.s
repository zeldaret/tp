lbl_80D4DBAC:
/* 80D4DBAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DBB0  7C 08 02 A6 */	mflr r0
/* 80D4DBB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DBB8  4B 51 36 38 */	b dTimer_isStart__Fv
/* 80D4DBBC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80D4DBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DBC4  7C 08 03 A6 */	mtlr r0
/* 80D4DBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DBCC  4E 80 00 20 */	blr 
