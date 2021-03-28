lbl_80A6F62C:
/* 80A6F62C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6F630  7C 08 02 A6 */	mflr r0
/* 80A6F634  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6F638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6F63C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A6F640  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A6F644  7C 9F 23 78 */	mr r31, r4
/* 80A6F648  41 82 00 38 */	beq lbl_80A6F680
/* 80A6F64C  3C 80 80 A7 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80A6F650  38 84 09 F8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80A6F654  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A6F658  38 04 00 0C */	addi r0, r4, 0xc
/* 80A6F65C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A6F660  38 04 00 18 */	addi r0, r4, 0x18
/* 80A6F664  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A6F668  38 80 00 00 */	li r4, 0
/* 80A6F66C  4B 60 69 28 */	b __dt__9dBgS_AcchFv
/* 80A6F670  7F E0 07 35 */	extsh. r0, r31
/* 80A6F674  40 81 00 0C */	ble lbl_80A6F680
/* 80A6F678  7F C3 F3 78 */	mr r3, r30
/* 80A6F67C  4B 85 F6 C0 */	b __dl__FPv
lbl_80A6F680:
/* 80A6F680  7F C3 F3 78 */	mr r3, r30
/* 80A6F684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6F688  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6F68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6F690  7C 08 03 A6 */	mtlr r0
/* 80A6F694  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6F698  4E 80 00 20 */	blr 
