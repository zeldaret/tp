lbl_80D26A04:
/* 80D26A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D26A08  7C 08 02 A6 */	mflr r0
/* 80D26A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D26A10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D26A14  93 C1 00 08 */	stw r30, 8(r1)
/* 80D26A18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D26A1C  7C 9F 23 78 */	mr r31, r4
/* 80D26A20  41 82 00 38 */	beq lbl_80D26A58
/* 80D26A24  3C 80 80 D2 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80D26A28  38 84 6E 50 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80D26A2C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D26A30  38 04 00 0C */	addi r0, r4, 0xc
/* 80D26A34  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D26A38  38 04 00 18 */	addi r0, r4, 0x18
/* 80D26A3C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D26A40  38 80 00 00 */	li r4, 0
/* 80D26A44  4B 34 F5 50 */	b __dt__9dBgS_AcchFv
/* 80D26A48  7F E0 07 35 */	extsh. r0, r31
/* 80D26A4C  40 81 00 0C */	ble lbl_80D26A58
/* 80D26A50  7F C3 F3 78 */	mr r3, r30
/* 80D26A54  4B 5A 82 E8 */	b __dl__FPv
lbl_80D26A58:
/* 80D26A58  7F C3 F3 78 */	mr r3, r30
/* 80D26A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D26A60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D26A64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D26A68  7C 08 03 A6 */	mtlr r0
/* 80D26A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D26A70  4E 80 00 20 */	blr 
