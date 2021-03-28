lbl_80B6E8F4:
/* 80B6E8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6E8F8  7C 08 02 A6 */	mflr r0
/* 80B6E8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6E900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6E904  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6E908  41 82 00 1C */	beq lbl_80B6E924
/* 80B6E90C  3C A0 80 B7 */	lis r5, __vt__8cM3dGAab@ha
/* 80B6E910  38 05 EC 34 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80B6E914  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B6E918  7C 80 07 35 */	extsh. r0, r4
/* 80B6E91C  40 81 00 08 */	ble lbl_80B6E924
/* 80B6E920  4B 76 04 1C */	b __dl__FPv
lbl_80B6E924:
/* 80B6E924  7F E3 FB 78 */	mr r3, r31
/* 80B6E928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6E92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6E930  7C 08 03 A6 */	mtlr r0
/* 80B6E934  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6E938  4E 80 00 20 */	blr 
