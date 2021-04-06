lbl_80B48FA0:
/* 80B48FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B48FA4  7C 08 02 A6 */	mflr r0
/* 80B48FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B48FAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B48FB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B48FB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B48FB8  7C 9F 23 78 */	mr r31, r4
/* 80B48FBC  41 82 00 38 */	beq lbl_80B48FF4
/* 80B48FC0  3C 80 80 B5 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B4996C@ha */
/* 80B48FC4  38 84 99 6C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B4996C@l */
/* 80B48FC8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B48FCC  38 04 00 0C */	addi r0, r4, 0xc
/* 80B48FD0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B48FD4  38 04 00 18 */	addi r0, r4, 0x18
/* 80B48FD8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B48FDC  38 80 00 00 */	li r4, 0
/* 80B48FE0  4B 52 CF B5 */	bl __dt__9dBgS_AcchFv
/* 80B48FE4  7F E0 07 35 */	extsh. r0, r31
/* 80B48FE8  40 81 00 0C */	ble lbl_80B48FF4
/* 80B48FEC  7F C3 F3 78 */	mr r3, r30
/* 80B48FF0  4B 78 5D 4D */	bl __dl__FPv
lbl_80B48FF4:
/* 80B48FF4  7F C3 F3 78 */	mr r3, r30
/* 80B48FF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B48FFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B49000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B49004  7C 08 03 A6 */	mtlr r0
/* 80B49008  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4900C  4E 80 00 20 */	blr 
