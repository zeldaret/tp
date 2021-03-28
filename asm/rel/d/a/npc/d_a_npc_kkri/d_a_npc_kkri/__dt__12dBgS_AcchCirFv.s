lbl_80552C4C:
/* 80552C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552C50  7C 08 02 A6 */	mflr r0
/* 80552C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552C58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80552C5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80552C60  7C 7E 1B 79 */	or. r30, r3, r3
/* 80552C64  7C 9F 23 78 */	mr r31, r4
/* 80552C68  41 82 00 38 */	beq lbl_80552CA0
/* 80552C6C  3C 60 80 55 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80552C70  38 03 3D 9C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80552C74  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80552C78  38 7E 00 14 */	addi r3, r30, 0x14
/* 80552C7C  38 80 FF FF */	li r4, -1
/* 80552C80  4B D1 C2 98 */	b __dt__8cM3dGCirFv
/* 80552C84  7F C3 F3 78 */	mr r3, r30
/* 80552C88  38 80 00 00 */	li r4, 0
/* 80552C8C  4B D1 54 24 */	b __dt__13cBgS_PolyInfoFv
/* 80552C90  7F E0 07 35 */	extsh. r0, r31
/* 80552C94  40 81 00 0C */	ble lbl_80552CA0
/* 80552C98  7F C3 F3 78 */	mr r3, r30
/* 80552C9C  4B D7 C0 A0 */	b __dl__FPv
lbl_80552CA0:
/* 80552CA0  7F C3 F3 78 */	mr r3, r30
/* 80552CA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80552CA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80552CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552CB0  7C 08 03 A6 */	mtlr r0
/* 80552CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80552CB8  4E 80 00 20 */	blr 
