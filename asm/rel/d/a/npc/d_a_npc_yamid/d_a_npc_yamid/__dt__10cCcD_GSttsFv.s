lbl_80B44DB8:
/* 80B44DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B44DBC  7C 08 02 A6 */	mflr r0
/* 80B44DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B44DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B44DC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B44DCC  41 82 00 1C */	beq lbl_80B44DE8
/* 80B44DD0  3C A0 80 B4 */	lis r5, __vt__10cCcD_GStts@ha
/* 80B44DD4  38 05 63 38 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80B44DD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80B44DDC  7C 80 07 35 */	extsh. r0, r4
/* 80B44DE0  40 81 00 08 */	ble lbl_80B44DE8
/* 80B44DE4  4B 78 9F 58 */	b __dl__FPv
lbl_80B44DE8:
/* 80B44DE8  7F E3 FB 78 */	mr r3, r31
/* 80B44DEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B44DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B44DF4  7C 08 03 A6 */	mtlr r0
/* 80B44DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B44DFC  4E 80 00 20 */	blr 
