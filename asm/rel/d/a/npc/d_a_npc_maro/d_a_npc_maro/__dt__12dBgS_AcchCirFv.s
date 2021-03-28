lbl_80563F5C:
/* 80563F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563F60  7C 08 02 A6 */	mflr r0
/* 80563F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563F68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563F6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80563F70  7C 7E 1B 79 */	or. r30, r3, r3
/* 80563F74  7C 9F 23 78 */	mr r31, r4
/* 80563F78  41 82 00 38 */	beq lbl_80563FB0
/* 80563F7C  3C 60 80 56 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80563F80  38 03 5C 44 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80563F84  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80563F88  38 7E 00 14 */	addi r3, r30, 0x14
/* 80563F8C  38 80 FF FF */	li r4, -1
/* 80563F90  4B D0 AF 88 */	b __dt__8cM3dGCirFv
/* 80563F94  7F C3 F3 78 */	mr r3, r30
/* 80563F98  38 80 00 00 */	li r4, 0
/* 80563F9C  4B D0 41 14 */	b __dt__13cBgS_PolyInfoFv
/* 80563FA0  7F E0 07 35 */	extsh. r0, r31
/* 80563FA4  40 81 00 0C */	ble lbl_80563FB0
/* 80563FA8  7F C3 F3 78 */	mr r3, r30
/* 80563FAC  4B D6 AD 90 */	b __dl__FPv
lbl_80563FB0:
/* 80563FB0  7F C3 F3 78 */	mr r3, r30
/* 80563FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563FB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563FC0  7C 08 03 A6 */	mtlr r0
/* 80563FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80563FC8  4E 80 00 20 */	blr 
