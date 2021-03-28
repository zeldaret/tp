lbl_80AC6D40:
/* 80AC6D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6D44  7C 08 02 A6 */	mflr r0
/* 80AC6D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC6D50  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC6D54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC6D58  7C 9F 23 78 */	mr r31, r4
/* 80AC6D5C  41 82 00 38 */	beq lbl_80AC6D94
/* 80AC6D60  3C 80 80 AC */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80AC6D64  38 84 72 F8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80AC6D68  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AC6D6C  38 04 00 0C */	addi r0, r4, 0xc
/* 80AC6D70  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AC6D74  38 04 00 18 */	addi r0, r4, 0x18
/* 80AC6D78  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AC6D7C  38 80 00 00 */	li r4, 0
/* 80AC6D80  4B 5A F2 14 */	b __dt__9dBgS_AcchFv
/* 80AC6D84  7F E0 07 35 */	extsh. r0, r31
/* 80AC6D88  40 81 00 0C */	ble lbl_80AC6D94
/* 80AC6D8C  7F C3 F3 78 */	mr r3, r30
/* 80AC6D90  4B 80 7F AC */	b __dl__FPv
lbl_80AC6D94:
/* 80AC6D94  7F C3 F3 78 */	mr r3, r30
/* 80AC6D98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC6D9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC6DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6DA4  7C 08 03 A6 */	mtlr r0
/* 80AC6DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6DAC  4E 80 00 20 */	blr 
