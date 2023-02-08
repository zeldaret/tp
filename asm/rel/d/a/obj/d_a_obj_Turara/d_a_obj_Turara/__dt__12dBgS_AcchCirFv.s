lbl_80B9D30C:
/* 80B9D30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9D310  7C 08 02 A6 */	mflr r0
/* 80B9D314  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9D318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9D31C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9D320  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B9D324  7C 9F 23 78 */	mr r31, r4
/* 80B9D328  41 82 00 38 */	beq lbl_80B9D360
/* 80B9D32C  3C 60 80 BA */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B9EAC0@ha */
/* 80B9D330  38 03 EA C0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B9EAC0@l */
/* 80B9D334  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B9D338  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B9D33C  38 80 FF FF */	li r4, -1
/* 80B9D340  4B 6D 1B D9 */	bl __dt__8cM3dGCirFv
/* 80B9D344  7F C3 F3 78 */	mr r3, r30
/* 80B9D348  38 80 00 00 */	li r4, 0
/* 80B9D34C  4B 6C AD 65 */	bl __dt__13cBgS_PolyInfoFv
/* 80B9D350  7F E0 07 35 */	extsh. r0, r31
/* 80B9D354  40 81 00 0C */	ble lbl_80B9D360
/* 80B9D358  7F C3 F3 78 */	mr r3, r30
/* 80B9D35C  4B 73 19 E1 */	bl __dl__FPv
lbl_80B9D360:
/* 80B9D360  7F C3 F3 78 */	mr r3, r30
/* 80B9D364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9D368  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9D36C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9D370  7C 08 03 A6 */	mtlr r0
/* 80B9D374  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9D378  4E 80 00 20 */	blr 
