lbl_8001DB90:
/* 8001DB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001DB94  7C 08 02 A6 */	mflr r0
/* 8001DB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001DB9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001DBA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001DBA4  41 82 00 1C */	beq lbl_8001DBC0
/* 8001DBA8  3C A0 80 3A */	lis r5, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8001DBAC  38 05 37 C0 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8001DBB0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8001DBB4  7C 80 07 35 */	extsh. r0, r4
/* 8001DBB8  40 81 00 08 */	ble lbl_8001DBC0
/* 8001DBBC  48 2B 11 81 */	bl __dl__FPv
lbl_8001DBC0:
/* 8001DBC0  7F E3 FB 78 */	mr r3, r31
/* 8001DBC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001DBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001DBCC  7C 08 03 A6 */	mtlr r0
/* 8001DBD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001DBD4  4E 80 00 20 */	blr 
