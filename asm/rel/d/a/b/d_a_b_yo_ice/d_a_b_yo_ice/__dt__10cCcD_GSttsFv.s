lbl_8063DB88:
/* 8063DB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063DB8C  7C 08 02 A6 */	mflr r0
/* 8063DB90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063DB94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063DB98  7C 7F 1B 79 */	or. r31, r3, r3
/* 8063DB9C  41 82 00 1C */	beq lbl_8063DBB8
/* 8063DBA0  3C A0 80 64 */	lis r5, __vt__10cCcD_GStts@ha
/* 8063DBA4  38 05 DF A0 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 8063DBA8  90 1F 00 00 */	stw r0, 0(r31)
/* 8063DBAC  7C 80 07 35 */	extsh. r0, r4
/* 8063DBB0  40 81 00 08 */	ble lbl_8063DBB8
/* 8063DBB4  4B C9 11 88 */	b __dl__FPv
lbl_8063DBB8:
/* 8063DBB8  7F E3 FB 78 */	mr r3, r31
/* 8063DBBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063DBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063DBC4  7C 08 03 A6 */	mtlr r0
/* 8063DBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063DBCC  4E 80 00 20 */	blr 
