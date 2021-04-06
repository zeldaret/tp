lbl_80A19BA0:
/* 80A19BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A19BA4  7C 08 02 A6 */	mflr r0
/* 80A19BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A19BAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A19BB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A19BB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A19BB8  7C 9F 23 78 */	mr r31, r4
/* 80A19BBC  41 82 00 38 */	beq lbl_80A19BF4
/* 80A19BC0  3C 80 80 A2 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80A1AC78@ha */
/* 80A19BC4  38 84 AC 78 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80A1AC78@l */
/* 80A19BC8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A19BCC  38 04 00 0C */	addi r0, r4, 0xc
/* 80A19BD0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A19BD4  38 04 00 18 */	addi r0, r4, 0x18
/* 80A19BD8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A19BDC  38 80 00 00 */	li r4, 0
/* 80A19BE0  4B 65 C3 B5 */	bl __dt__9dBgS_AcchFv
/* 80A19BE4  7F E0 07 35 */	extsh. r0, r31
/* 80A19BE8  40 81 00 0C */	ble lbl_80A19BF4
/* 80A19BEC  7F C3 F3 78 */	mr r3, r30
/* 80A19BF0  4B 8B 51 4D */	bl __dl__FPv
lbl_80A19BF4:
/* 80A19BF4  7F C3 F3 78 */	mr r3, r30
/* 80A19BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A19BFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A19C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A19C04  7C 08 03 A6 */	mtlr r0
/* 80A19C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80A19C0C  4E 80 00 20 */	blr 
