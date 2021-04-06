lbl_80CFD934:
/* 80CFD934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFD938  7C 08 02 A6 */	mflr r0
/* 80CFD93C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFD940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFD944  93 C1 00 08 */	stw r30, 8(r1)
/* 80CFD948  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CFD94C  7C 9F 23 78 */	mr r31, r4
/* 80CFD950  41 82 00 38 */	beq lbl_80CFD988
/* 80CFD954  3C 60 80 D0 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CFDF64@ha */
/* 80CFD958  38 03 DF 64 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CFDF64@l */
/* 80CFD95C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CFD960  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CFD964  38 80 FF FF */	li r4, -1
/* 80CFD968  4B 57 15 B1 */	bl __dt__8cM3dGCirFv
/* 80CFD96C  7F C3 F3 78 */	mr r3, r30
/* 80CFD970  38 80 00 00 */	li r4, 0
/* 80CFD974  4B 56 A7 3D */	bl __dt__13cBgS_PolyInfoFv
/* 80CFD978  7F E0 07 35 */	extsh. r0, r31
/* 80CFD97C  40 81 00 0C */	ble lbl_80CFD988
/* 80CFD980  7F C3 F3 78 */	mr r3, r30
/* 80CFD984  4B 5D 13 B9 */	bl __dl__FPv
lbl_80CFD988:
/* 80CFD988  7F C3 F3 78 */	mr r3, r30
/* 80CFD98C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFD990  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CFD994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFD998  7C 08 03 A6 */	mtlr r0
/* 80CFD99C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFD9A0  4E 80 00 20 */	blr 
