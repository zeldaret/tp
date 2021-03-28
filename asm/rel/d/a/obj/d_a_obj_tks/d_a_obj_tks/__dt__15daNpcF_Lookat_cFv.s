lbl_80D11EEC:
/* 80D11EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D11EF0  7C 08 02 A6 */	mflr r0
/* 80D11EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D11EF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D11EFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D11F00  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D11F04  7C 9F 23 78 */	mr r31, r4
/* 80D11F08  41 82 00 98 */	beq lbl_80D11FA0
/* 80D11F0C  3C 60 80 D1 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80D11F10  38 03 2A D8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80D11F14  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80D11F18  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80D11F1C  3C 80 80 D1 */	lis r4, __dt__5csXyzFv@ha
/* 80D11F20  38 84 1F BC */	addi r4, r4, __dt__5csXyzFv@l
/* 80D11F24  38 A0 00 06 */	li r5, 6
/* 80D11F28  38 C0 00 04 */	li r6, 4
/* 80D11F2C  4B 64 FD BC */	b __destroy_arr
/* 80D11F30  38 7E 00 64 */	addi r3, r30, 0x64
/* 80D11F34  3C 80 80 D1 */	lis r4, __dt__5csXyzFv@ha
/* 80D11F38  38 84 1F BC */	addi r4, r4, __dt__5csXyzFv@l
/* 80D11F3C  38 A0 00 06 */	li r5, 6
/* 80D11F40  38 C0 00 04 */	li r6, 4
/* 80D11F44  4B 64 FD A4 */	b __destroy_arr
/* 80D11F48  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80D11F4C  3C 80 80 D1 */	lis r4, __dt__5csXyzFv@ha
/* 80D11F50  38 84 1F BC */	addi r4, r4, __dt__5csXyzFv@l
/* 80D11F54  38 A0 00 06 */	li r5, 6
/* 80D11F58  38 C0 00 04 */	li r6, 4
/* 80D11F5C  4B 64 FD 8C */	b __destroy_arr
/* 80D11F60  38 7E 00 34 */	addi r3, r30, 0x34
/* 80D11F64  3C 80 80 D1 */	lis r4, __dt__5csXyzFv@ha
/* 80D11F68  38 84 1F BC */	addi r4, r4, __dt__5csXyzFv@l
/* 80D11F6C  38 A0 00 06 */	li r5, 6
/* 80D11F70  38 C0 00 04 */	li r6, 4
/* 80D11F74  4B 64 FD 74 */	b __destroy_arr
/* 80D11F78  7F C3 F3 78 */	mr r3, r30
/* 80D11F7C  3C 80 80 D1 */	lis r4, __dt__4cXyzFv@ha
/* 80D11F80  38 84 1F FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80D11F84  38 A0 00 0C */	li r5, 0xc
/* 80D11F88  38 C0 00 04 */	li r6, 4
/* 80D11F8C  4B 64 FD 5C */	b __destroy_arr
/* 80D11F90  7F E0 07 35 */	extsh. r0, r31
/* 80D11F94  40 81 00 0C */	ble lbl_80D11FA0
/* 80D11F98  7F C3 F3 78 */	mr r3, r30
/* 80D11F9C  4B 5B CD A0 */	b __dl__FPv
lbl_80D11FA0:
/* 80D11FA0  7F C3 F3 78 */	mr r3, r30
/* 80D11FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D11FA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D11FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D11FB0  7C 08 03 A6 */	mtlr r0
/* 80D11FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D11FB8  4E 80 00 20 */	blr 
