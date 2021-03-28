lbl_806AD348:
/* 806AD348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AD34C  7C 08 02 A6 */	mflr r0
/* 806AD350  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AD354  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AD358  93 C1 00 08 */	stw r30, 8(r1)
/* 806AD35C  7C 7E 1B 79 */	or. r30, r3, r3
/* 806AD360  7C 9F 23 78 */	mr r31, r4
/* 806AD364  41 82 00 38 */	beq lbl_806AD39C
/* 806AD368  3C 80 80 6B */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 806AD36C  38 84 D7 B0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 806AD370  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806AD374  38 04 00 0C */	addi r0, r4, 0xc
/* 806AD378  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806AD37C  38 04 00 18 */	addi r0, r4, 0x18
/* 806AD380  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806AD384  38 80 00 00 */	li r4, 0
/* 806AD388  4B 9C 8C 0C */	b __dt__9dBgS_AcchFv
/* 806AD38C  7F E0 07 35 */	extsh. r0, r31
/* 806AD390  40 81 00 0C */	ble lbl_806AD39C
/* 806AD394  7F C3 F3 78 */	mr r3, r30
/* 806AD398  4B C2 19 A4 */	b __dl__FPv
lbl_806AD39C:
/* 806AD39C  7F C3 F3 78 */	mr r3, r30
/* 806AD3A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AD3A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 806AD3A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AD3AC  7C 08 03 A6 */	mtlr r0
/* 806AD3B0  38 21 00 10 */	addi r1, r1, 0x10
/* 806AD3B4  4E 80 00 20 */	blr 
