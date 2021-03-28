lbl_80495E38:
/* 80495E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80495E3C  7C 08 02 A6 */	mflr r0
/* 80495E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495E48  93 C1 00 08 */	stw r30, 8(r1)
/* 80495E4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80495E50  7C 9F 23 78 */	mr r31, r4
/* 80495E54  41 82 00 38 */	beq lbl_80495E8C
/* 80495E58  3C 60 80 49 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80495E5C  38 03 67 98 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80495E60  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80495E64  38 7E 00 14 */	addi r3, r30, 0x14
/* 80495E68  38 80 FF FF */	li r4, -1
/* 80495E6C  4B DD 90 AC */	b __dt__8cM3dGCirFv
/* 80495E70  7F C3 F3 78 */	mr r3, r30
/* 80495E74  38 80 00 00 */	li r4, 0
/* 80495E78  4B DD 22 38 */	b __dt__13cBgS_PolyInfoFv
/* 80495E7C  7F E0 07 35 */	extsh. r0, r31
/* 80495E80  40 81 00 0C */	ble lbl_80495E8C
/* 80495E84  7F C3 F3 78 */	mr r3, r30
/* 80495E88  4B E3 8E B4 */	b __dl__FPv
lbl_80495E8C:
/* 80495E8C  7F C3 F3 78 */	mr r3, r30
/* 80495E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80495E94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80495E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495E9C  7C 08 03 A6 */	mtlr r0
/* 80495EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80495EA4  4E 80 00 20 */	blr 
