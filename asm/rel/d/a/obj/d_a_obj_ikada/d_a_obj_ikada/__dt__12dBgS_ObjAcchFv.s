lbl_80C26FB8:
/* 80C26FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C26FBC  7C 08 02 A6 */	mflr r0
/* 80C26FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26FC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C26FC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C26FCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C26FD0  7C 9F 23 78 */	mr r31, r4
/* 80C26FD4  41 82 00 38 */	beq lbl_80C2700C
/* 80C26FD8  3C 80 80 C2 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C26FDC  38 84 75 D8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C26FE0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C26FE4  38 04 00 0C */	addi r0, r4, 0xc
/* 80C26FE8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C26FEC  38 04 00 18 */	addi r0, r4, 0x18
/* 80C26FF0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C26FF4  38 80 00 00 */	li r4, 0
/* 80C26FF8  4B 44 EF 9C */	b __dt__9dBgS_AcchFv
/* 80C26FFC  7F E0 07 35 */	extsh. r0, r31
/* 80C27000  40 81 00 0C */	ble lbl_80C2700C
/* 80C27004  7F C3 F3 78 */	mr r3, r30
/* 80C27008  4B 6A 7D 34 */	b __dl__FPv
lbl_80C2700C:
/* 80C2700C  7F C3 F3 78 */	mr r3, r30
/* 80C27010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C27014  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C27018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2701C  7C 08 03 A6 */	mtlr r0
/* 80C27020  38 21 00 10 */	addi r1, r1, 0x10
/* 80C27024  4E 80 00 20 */	blr 
