lbl_80B7F5F0:
/* 80B7F5F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7F5F4  7C 08 02 A6 */	mflr r0
/* 80B7F5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7F5FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7F600  93 C1 00 08 */	stw r30, 8(r1)
/* 80B7F604  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B7F608  7C 9F 23 78 */	mr r31, r4
/* 80B7F60C  41 82 00 38 */	beq lbl_80B7F644
/* 80B7F610  3C 80 80 B9 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B8D98C@ha */
/* 80B7F614  38 84 D9 8C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B8D98C@l */
/* 80B7F618  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B7F61C  38 04 00 0C */	addi r0, r4, 0xc
/* 80B7F620  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B7F624  38 04 00 18 */	addi r0, r4, 0x18
/* 80B7F628  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B7F62C  38 80 00 00 */	li r4, 0
/* 80B7F630  4B 4F 69 65 */	bl __dt__9dBgS_AcchFv
/* 80B7F634  7F E0 07 35 */	extsh. r0, r31
/* 80B7F638  40 81 00 0C */	ble lbl_80B7F644
/* 80B7F63C  7F C3 F3 78 */	mr r3, r30
/* 80B7F640  4B 74 F6 FD */	bl __dl__FPv
lbl_80B7F644:
/* 80B7F644  7F C3 F3 78 */	mr r3, r30
/* 80B7F648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7F64C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7F650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7F654  7C 08 03 A6 */	mtlr r0
/* 80B7F658  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7F65C  4E 80 00 20 */	blr 
