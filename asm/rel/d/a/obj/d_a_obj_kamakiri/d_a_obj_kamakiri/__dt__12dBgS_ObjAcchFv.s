lbl_80C38258:
/* 80C38258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3825C  7C 08 02 A6 */	mflr r0
/* 80C38260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C38264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C38268  93 C1 00 08 */	stw r30, 8(r1)
/* 80C3826C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C38270  7C 9F 23 78 */	mr r31, r4
/* 80C38274  41 82 00 38 */	beq lbl_80C382AC
/* 80C38278  3C 80 80 C4 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C3827C  38 84 85 5C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C38280  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C38284  38 04 00 0C */	addi r0, r4, 0xc
/* 80C38288  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C3828C  38 04 00 18 */	addi r0, r4, 0x18
/* 80C38290  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C38294  38 80 00 00 */	li r4, 0
/* 80C38298  4B 43 DC FC */	b __dt__9dBgS_AcchFv
/* 80C3829C  7F E0 07 35 */	extsh. r0, r31
/* 80C382A0  40 81 00 0C */	ble lbl_80C382AC
/* 80C382A4  7F C3 F3 78 */	mr r3, r30
/* 80C382A8  4B 69 6A 94 */	b __dl__FPv
lbl_80C382AC:
/* 80C382AC  7F C3 F3 78 */	mr r3, r30
/* 80C382B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C382B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C382B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C382BC  7C 08 03 A6 */	mtlr r0
/* 80C382C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C382C4  4E 80 00 20 */	blr 
