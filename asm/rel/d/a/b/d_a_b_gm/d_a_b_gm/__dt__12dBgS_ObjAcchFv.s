lbl_805F3D3C:
/* 805F3D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3D40  7C 08 02 A6 */	mflr r0
/* 805F3D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3D48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3D4C  93 C1 00 08 */	stw r30, 8(r1)
/* 805F3D50  7C 7E 1B 79 */	or. r30, r3, r3
/* 805F3D54  7C 9F 23 78 */	mr r31, r4
/* 805F3D58  41 82 00 38 */	beq lbl_805F3D90
/* 805F3D5C  3C 80 80 5F */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x805F4740@ha */
/* 805F3D60  38 84 47 40 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x805F4740@l */
/* 805F3D64  90 9E 00 10 */	stw r4, 0x10(r30)
/* 805F3D68  38 04 00 0C */	addi r0, r4, 0xc
/* 805F3D6C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805F3D70  38 04 00 18 */	addi r0, r4, 0x18
/* 805F3D74  90 1E 00 24 */	stw r0, 0x24(r30)
/* 805F3D78  38 80 00 00 */	li r4, 0
/* 805F3D7C  4B A8 22 19 */	bl __dt__9dBgS_AcchFv
/* 805F3D80  7F E0 07 35 */	extsh. r0, r31
/* 805F3D84  40 81 00 0C */	ble lbl_805F3D90
/* 805F3D88  7F C3 F3 78 */	mr r3, r30
/* 805F3D8C  4B CD AF B1 */	bl __dl__FPv
lbl_805F3D90:
/* 805F3D90  7F C3 F3 78 */	mr r3, r30
/* 805F3D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3D98  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F3D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3DA0  7C 08 03 A6 */	mtlr r0
/* 805F3DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3DA8  4E 80 00 20 */	blr 
