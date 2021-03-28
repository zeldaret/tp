lbl_80CC28F8:
/* 80CC28F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC28FC  7C 08 02 A6 */	mflr r0
/* 80CC2900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC2904  4B 5A 07 8C */	b ModuleUnresolved
/* 80CC2908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC290C  7C 08 03 A6 */	mtlr r0
/* 80CC2910  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC2914  4E 80 00 20 */	blr 
