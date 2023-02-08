lbl_80B92F34:
/* 80B92F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B92F38  7C 08 02 A6 */	mflr r0
/* 80B92F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B92F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B92F44  93 C1 00 08 */	stw r30, 8(r1)
/* 80B92F48  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B92F4C  7C 9F 23 78 */	mr r31, r4
/* 80B92F50  41 82 00 38 */	beq lbl_80B92F88
/* 80B92F54  3C 60 80 B9 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B93BC0@ha */
/* 80B92F58  38 03 3B C0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B93BC0@l */
/* 80B92F5C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B92F60  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B92F64  38 80 FF FF */	li r4, -1
/* 80B92F68  4B 6D BF B1 */	bl __dt__8cM3dGCirFv
/* 80B92F6C  7F C3 F3 78 */	mr r3, r30
/* 80B92F70  38 80 00 00 */	li r4, 0
/* 80B92F74  4B 6D 51 3D */	bl __dt__13cBgS_PolyInfoFv
/* 80B92F78  7F E0 07 35 */	extsh. r0, r31
/* 80B92F7C  40 81 00 0C */	ble lbl_80B92F88
/* 80B92F80  7F C3 F3 78 */	mr r3, r30
/* 80B92F84  4B 73 BD B9 */	bl __dl__FPv
lbl_80B92F88:
/* 80B92F88  7F C3 F3 78 */	mr r3, r30
/* 80B92F8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B92F90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B92F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B92F98  7C 08 03 A6 */	mtlr r0
/* 80B92F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B92FA0  4E 80 00 20 */	blr 
