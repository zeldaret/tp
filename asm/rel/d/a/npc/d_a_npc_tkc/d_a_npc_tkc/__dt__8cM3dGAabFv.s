lbl_80B0C8E0:
/* 80B0C8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0C8E4  7C 08 02 A6 */	mflr r0
/* 80B0C8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0C8EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0C8F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0C8F4  41 82 00 1C */	beq lbl_80B0C910
/* 80B0C8F8  3C A0 80 B1 */	lis r5, __vt__8cM3dGAab@ha /* 0x80B10CCC@ha */
/* 80B0C8FC  38 05 0C CC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B10CCC@l */
/* 80B0C900  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B0C904  7C 80 07 35 */	extsh. r0, r4
/* 80B0C908  40 81 00 08 */	ble lbl_80B0C910
/* 80B0C90C  4B 7C 24 31 */	bl __dl__FPv
lbl_80B0C910:
/* 80B0C910  7F E3 FB 78 */	mr r3, r31
/* 80B0C914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0C918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0C91C  7C 08 03 A6 */	mtlr r0
/* 80B0C920  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0C924  4E 80 00 20 */	blr 
