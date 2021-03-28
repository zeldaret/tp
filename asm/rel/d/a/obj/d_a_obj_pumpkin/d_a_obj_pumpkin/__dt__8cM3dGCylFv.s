lbl_80CB5DBC:
/* 80CB5DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5DC0  7C 08 02 A6 */	mflr r0
/* 80CB5DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB5DCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB5DD0  41 82 00 1C */	beq lbl_80CB5DEC
/* 80CB5DD4  3C A0 80 CC */	lis r5, __vt__8cM3dGCyl@ha
/* 80CB5DD8  38 05 85 98 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80CB5DDC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CB5DE0  7C 80 07 35 */	extsh. r0, r4
/* 80CB5DE4  40 81 00 08 */	ble lbl_80CB5DEC
/* 80CB5DE8  4B 61 8F 54 */	b __dl__FPv
lbl_80CB5DEC:
/* 80CB5DEC  7F E3 FB 78 */	mr r3, r31
/* 80CB5DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB5DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB5DF8  7C 08 03 A6 */	mtlr r0
/* 80CB5DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5E00  4E 80 00 20 */	blr 
