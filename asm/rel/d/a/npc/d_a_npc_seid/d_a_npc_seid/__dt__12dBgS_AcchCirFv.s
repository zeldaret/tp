lbl_80ACAFAC:
/* 80ACAFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACAFB0  7C 08 02 A6 */	mflr r0
/* 80ACAFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACAFB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACAFBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACAFC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ACAFC4  7C 9F 23 78 */	mr r31, r4
/* 80ACAFC8  41 82 00 38 */	beq lbl_80ACB000
/* 80ACAFCC  3C 60 80 AD */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80ACB5A0@ha */
/* 80ACAFD0  38 03 B5 A0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80ACB5A0@l */
/* 80ACAFD4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80ACAFD8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80ACAFDC  38 80 FF FF */	li r4, -1
/* 80ACAFE0  4B 7A 3F 39 */	bl __dt__8cM3dGCirFv
/* 80ACAFE4  7F C3 F3 78 */	mr r3, r30
/* 80ACAFE8  38 80 00 00 */	li r4, 0
/* 80ACAFEC  4B 79 D0 C5 */	bl __dt__13cBgS_PolyInfoFv
/* 80ACAFF0  7F E0 07 35 */	extsh. r0, r31
/* 80ACAFF4  40 81 00 0C */	ble lbl_80ACB000
/* 80ACAFF8  7F C3 F3 78 */	mr r3, r30
/* 80ACAFFC  4B 80 3D 41 */	bl __dl__FPv
lbl_80ACB000:
/* 80ACB000  7F C3 F3 78 */	mr r3, r30
/* 80ACB004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACB008  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACB00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACB010  7C 08 03 A6 */	mtlr r0
/* 80ACB014  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACB018  4E 80 00 20 */	blr 
