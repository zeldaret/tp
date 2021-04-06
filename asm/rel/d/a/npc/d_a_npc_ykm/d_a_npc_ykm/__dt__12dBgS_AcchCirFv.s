lbl_80B5CE08:
/* 80B5CE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5CE0C  7C 08 02 A6 */	mflr r0
/* 80B5CE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5CE14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5CE18  93 C1 00 08 */	stw r30, 8(r1)
/* 80B5CE1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B5CE20  7C 9F 23 78 */	mr r31, r4
/* 80B5CE24  41 82 00 38 */	beq lbl_80B5CE5C
/* 80B5CE28  3C 60 80 B6 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B5EBE4@ha */
/* 80B5CE2C  38 03 EB E4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B5EBE4@l */
/* 80B5CE30  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B5CE34  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B5CE38  38 80 FF FF */	li r4, -1
/* 80B5CE3C  4B 71 20 DD */	bl __dt__8cM3dGCirFv
/* 80B5CE40  7F C3 F3 78 */	mr r3, r30
/* 80B5CE44  38 80 00 00 */	li r4, 0
/* 80B5CE48  4B 70 B2 69 */	bl __dt__13cBgS_PolyInfoFv
/* 80B5CE4C  7F E0 07 35 */	extsh. r0, r31
/* 80B5CE50  40 81 00 0C */	ble lbl_80B5CE5C
/* 80B5CE54  7F C3 F3 78 */	mr r3, r30
/* 80B5CE58  4B 77 1E E5 */	bl __dl__FPv
lbl_80B5CE5C:
/* 80B5CE5C  7F C3 F3 78 */	mr r3, r30
/* 80B5CE60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5CE64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B5CE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5CE6C  7C 08 03 A6 */	mtlr r0
/* 80B5CE70  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5CE74  4E 80 00 20 */	blr 
