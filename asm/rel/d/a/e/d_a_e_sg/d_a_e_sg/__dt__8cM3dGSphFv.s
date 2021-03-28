lbl_8078DB84:
/* 8078DB84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078DB88  7C 08 02 A6 */	mflr r0
/* 8078DB8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078DB90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078DB94  7C 7F 1B 79 */	or. r31, r3, r3
/* 8078DB98  41 82 00 1C */	beq lbl_8078DBB4
/* 8078DB9C  3C A0 80 79 */	lis r5, __vt__8cM3dGSph@ha
/* 8078DBA0  38 05 E0 4C */	addi r0, r5, __vt__8cM3dGSph@l
/* 8078DBA4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8078DBA8  7C 80 07 35 */	extsh. r0, r4
/* 8078DBAC  40 81 00 08 */	ble lbl_8078DBB4
/* 8078DBB0  4B B4 11 8C */	b __dl__FPv
lbl_8078DBB4:
/* 8078DBB4  7F E3 FB 78 */	mr r3, r31
/* 8078DBB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8078DBBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078DBC0  7C 08 03 A6 */	mtlr r0
/* 8078DBC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8078DBC8  4E 80 00 20 */	blr 
