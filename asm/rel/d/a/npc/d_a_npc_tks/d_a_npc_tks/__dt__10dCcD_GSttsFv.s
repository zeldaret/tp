lbl_80B1DB88:
/* 80B1DB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1DB8C  7C 08 02 A6 */	mflr r0
/* 80B1DB90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1DB94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1DB98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1DB9C  41 82 00 30 */	beq lbl_80B1DBCC
/* 80B1DBA0  3C 60 80 B2 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B1E4E8@ha */
/* 80B1DBA4  38 03 E4 E8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B1E4E8@l */
/* 80B1DBA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80B1DBAC  41 82 00 10 */	beq lbl_80B1DBBC
/* 80B1DBB0  3C 60 80 B2 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B1E4DC@ha */
/* 80B1DBB4  38 03 E4 DC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B1E4DC@l */
/* 80B1DBB8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B1DBBC:
/* 80B1DBBC  7C 80 07 35 */	extsh. r0, r4
/* 80B1DBC0  40 81 00 0C */	ble lbl_80B1DBCC
/* 80B1DBC4  7F E3 FB 78 */	mr r3, r31
/* 80B1DBC8  4B 7B 11 75 */	bl __dl__FPv
lbl_80B1DBCC:
/* 80B1DBCC  7F E3 FB 78 */	mr r3, r31
/* 80B1DBD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1DBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1DBD8  7C 08 03 A6 */	mtlr r0
/* 80B1DBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1DBE0  4E 80 00 20 */	blr 
