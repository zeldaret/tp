lbl_80803A4C:
/* 80803A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80803A50  7C 08 02 A6 */	mflr r0
/* 80803A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80803A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80803A5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80803A60  7C 7E 1B 79 */	or. r30, r3, r3
/* 80803A64  7C 9F 23 78 */	mr r31, r4
/* 80803A68  41 82 00 38 */	beq lbl_80803AA0
/* 80803A6C  3C 60 80 80 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80803A70  38 03 46 9C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80803A74  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80803A78  38 7E 00 14 */	addi r3, r30, 0x14
/* 80803A7C  38 80 FF FF */	li r4, -1
/* 80803A80  4B A6 B4 98 */	b __dt__8cM3dGCirFv
/* 80803A84  7F C3 F3 78 */	mr r3, r30
/* 80803A88  38 80 00 00 */	li r4, 0
/* 80803A8C  4B A6 46 24 */	b __dt__13cBgS_PolyInfoFv
/* 80803A90  7F E0 07 35 */	extsh. r0, r31
/* 80803A94  40 81 00 0C */	ble lbl_80803AA0
/* 80803A98  7F C3 F3 78 */	mr r3, r30
/* 80803A9C  4B AC B2 A0 */	b __dl__FPv
lbl_80803AA0:
/* 80803AA0  7F C3 F3 78 */	mr r3, r30
/* 80803AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80803AA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80803AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80803AB0  7C 08 03 A6 */	mtlr r0
/* 80803AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80803AB8  4E 80 00 20 */	blr 
