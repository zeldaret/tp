lbl_80B8DBB4:
/* 80B8DBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8DBB8  7C 08 02 A6 */	mflr r0
/* 80B8DBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8DBC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8DBC4  3C 60 80 B9 */	lis r3, __global_destructor_chain@ha
/* 80B8DBC8  3B E3 3C 08 */	addi r31, r3, __global_destructor_chain@l
/* 80B8DBCC  48 00 00 20 */	b lbl_80B8DBEC
lbl_80B8DBD0:
/* 80B8DBD0  80 05 00 00 */	lwz r0, 0(r5)
/* 80B8DBD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B8DBD8  80 65 00 08 */	lwz r3, 8(r5)
/* 80B8DBDC  38 80 FF FF */	li r4, -1
/* 80B8DBE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80B8DBE4  7D 89 03 A6 */	mtctr r12
/* 80B8DBE8  4E 80 04 21 */	bctrl 
lbl_80B8DBEC:
/* 80B8DBEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B8DBF0  28 05 00 00 */	cmplwi r5, 0
/* 80B8DBF4  40 82 FF DC */	bne lbl_80B8DBD0
/* 80B8DBF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8DBFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8DC00  7C 08 03 A6 */	mtlr r0
/* 80B8DC04  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8DC08  4E 80 00 20 */	blr 
