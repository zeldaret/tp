lbl_806F9E30:
/* 806F9E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F9E34  7C 08 02 A6 */	mflr r0
/* 806F9E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F9E3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F9E40  93 C1 00 08 */	stw r30, 8(r1)
/* 806F9E44  7C 7E 1B 79 */	or. r30, r3, r3
/* 806F9E48  7C 9F 23 78 */	mr r31, r4
/* 806F9E4C  41 82 00 38 */	beq lbl_806F9E84
/* 806F9E50  3C 60 80 70 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 806F9E54  38 03 A5 68 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 806F9E58  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806F9E5C  38 7E 00 14 */	addi r3, r30, 0x14
/* 806F9E60  38 80 FF FF */	li r4, -1
/* 806F9E64  4B B7 50 B4 */	b __dt__8cM3dGCirFv
/* 806F9E68  7F C3 F3 78 */	mr r3, r30
/* 806F9E6C  38 80 00 00 */	li r4, 0
/* 806F9E70  4B B6 E2 40 */	b __dt__13cBgS_PolyInfoFv
/* 806F9E74  7F E0 07 35 */	extsh. r0, r31
/* 806F9E78  40 81 00 0C */	ble lbl_806F9E84
/* 806F9E7C  7F C3 F3 78 */	mr r3, r30
/* 806F9E80  4B BD 4E BC */	b __dl__FPv
lbl_806F9E84:
/* 806F9E84  7F C3 F3 78 */	mr r3, r30
/* 806F9E88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F9E8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F9E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F9E94  7C 08 03 A6 */	mtlr r0
/* 806F9E98  38 21 00 10 */	addi r1, r1, 0x10
/* 806F9E9C  4E 80 00 20 */	blr 
