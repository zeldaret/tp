lbl_80AC8F38:
/* 80AC8F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8F3C  7C 08 02 A6 */	mflr r0
/* 80AC8F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC8F48  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC8F4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC8F50  7C 9F 23 78 */	mr r31, r4
/* 80AC8F54  41 82 00 38 */	beq lbl_80AC8F8C
/* 80AC8F58  3C 80 80 AD */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80AC8F5C  38 84 94 3C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80AC8F60  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AC8F64  38 04 00 0C */	addi r0, r4, 0xc
/* 80AC8F68  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AC8F6C  38 04 00 18 */	addi r0, r4, 0x18
/* 80AC8F70  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AC8F74  38 80 00 00 */	li r4, 0
/* 80AC8F78  4B 5A D0 1C */	b __dt__9dBgS_AcchFv
/* 80AC8F7C  7F E0 07 35 */	extsh. r0, r31
/* 80AC8F80  40 81 00 0C */	ble lbl_80AC8F8C
/* 80AC8F84  7F C3 F3 78 */	mr r3, r30
/* 80AC8F88  4B 80 5D B4 */	b __dl__FPv
lbl_80AC8F8C:
/* 80AC8F8C  7F C3 F3 78 */	mr r3, r30
/* 80AC8F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8F94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC8F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8F9C  7C 08 03 A6 */	mtlr r0
/* 80AC8FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8FA4  4E 80 00 20 */	blr 
