lbl_80A458F8:
/* 80A458F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A458FC  7C 08 02 A6 */	mflr r0
/* 80A45900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A45904  4B 81 D7 8C */	b ModuleUnresolved
/* 80A45908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A4590C  7C 08 03 A6 */	mtlr r0
/* 80A45910  38 21 00 10 */	addi r1, r1, 0x10
/* 80A45914  4E 80 00 20 */	blr 
