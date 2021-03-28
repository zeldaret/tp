lbl_80517F5C:
/* 80517F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517F60  7C 08 02 A6 */	mflr r0
/* 80517F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517F68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80517F6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80517F70  7C 7E 1B 79 */	or. r30, r3, r3
/* 80517F74  7C 9F 23 78 */	mr r31, r4
/* 80517F78  41 82 00 38 */	beq lbl_80517FB0
/* 80517F7C  3C 60 80 52 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80517F80  38 03 90 98 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80517F84  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80517F88  38 7E 00 14 */	addi r3, r30, 0x14
/* 80517F8C  38 80 FF FF */	li r4, -1
/* 80517F90  4B D5 6F 88 */	b __dt__8cM3dGCirFv
/* 80517F94  7F C3 F3 78 */	mr r3, r30
/* 80517F98  38 80 00 00 */	li r4, 0
/* 80517F9C  4B D5 01 14 */	b __dt__13cBgS_PolyInfoFv
/* 80517FA0  7F E0 07 35 */	extsh. r0, r31
/* 80517FA4  40 81 00 0C */	ble lbl_80517FB0
/* 80517FA8  7F C3 F3 78 */	mr r3, r30
/* 80517FAC  4B DB 6D 90 */	b __dl__FPv
lbl_80517FB0:
/* 80517FB0  7F C3 F3 78 */	mr r3, r30
/* 80517FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80517FB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80517FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517FC0  7C 08 03 A6 */	mtlr r0
/* 80517FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80517FC8  4E 80 00 20 */	blr 
