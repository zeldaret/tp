lbl_80AC3D30:
/* 80AC3D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3D34  7C 08 02 A6 */	mflr r0
/* 80AC3D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3D3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC3D40  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC3D44  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC3D48  7C 9F 23 78 */	mr r31, r4
/* 80AC3D4C  41 82 00 38 */	beq lbl_80AC3D84
/* 80AC3D50  3C 60 80 AC */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AC3D54  38 03 4E A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AC3D58  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AC3D5C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AC3D60  38 80 FF FF */	li r4, -1
/* 80AC3D64  4B 7A B1 B4 */	b __dt__8cM3dGCirFv
/* 80AC3D68  7F C3 F3 78 */	mr r3, r30
/* 80AC3D6C  38 80 00 00 */	li r4, 0
/* 80AC3D70  4B 7A 43 40 */	b __dt__13cBgS_PolyInfoFv
/* 80AC3D74  7F E0 07 35 */	extsh. r0, r31
/* 80AC3D78  40 81 00 0C */	ble lbl_80AC3D84
/* 80AC3D7C  7F C3 F3 78 */	mr r3, r30
/* 80AC3D80  4B 80 AF BC */	b __dl__FPv
lbl_80AC3D84:
/* 80AC3D84  7F C3 F3 78 */	mr r3, r30
/* 80AC3D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3D8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC3D90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3D94  7C 08 03 A6 */	mtlr r0
/* 80AC3D98  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3D9C  4E 80 00 20 */	blr 
