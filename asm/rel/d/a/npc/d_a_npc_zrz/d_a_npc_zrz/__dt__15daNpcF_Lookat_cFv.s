lbl_80B9A6E8:
/* 80B9A6E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9A6EC  7C 08 02 A6 */	mflr r0
/* 80B9A6F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9A6F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9A6F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9A6FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B9A700  7C 9F 23 78 */	mr r31, r4
/* 80B9A704  41 82 00 98 */	beq lbl_80B9A79C
/* 80B9A708  3C 60 80 BA */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80B9B848@ha */
/* 80B9A70C  38 03 B8 48 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80B9B848@l */
/* 80B9A710  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80B9A714  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80B9A718  3C 80 80 BA */	lis r4, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B9A71C  38 84 A7 B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B9A720  38 A0 00 06 */	li r5, 6
/* 80B9A724  38 C0 00 04 */	li r6, 4
/* 80B9A728  4B 7C 75 C1 */	bl __destroy_arr
/* 80B9A72C  38 7E 00 64 */	addi r3, r30, 0x64
/* 80B9A730  3C 80 80 BA */	lis r4, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B9A734  38 84 A7 B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B9A738  38 A0 00 06 */	li r5, 6
/* 80B9A73C  38 C0 00 04 */	li r6, 4
/* 80B9A740  4B 7C 75 A9 */	bl __destroy_arr
/* 80B9A744  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80B9A748  3C 80 80 BA */	lis r4, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B9A74C  38 84 A7 B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B9A750  38 A0 00 06 */	li r5, 6
/* 80B9A754  38 C0 00 04 */	li r6, 4
/* 80B9A758  4B 7C 75 91 */	bl __destroy_arr
/* 80B9A75C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80B9A760  3C 80 80 BA */	lis r4, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B9A764  38 84 A7 B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B9A768  38 A0 00 06 */	li r5, 6
/* 80B9A76C  38 C0 00 04 */	li r6, 4
/* 80B9A770  4B 7C 75 79 */	bl __destroy_arr
/* 80B9A774  7F C3 F3 78 */	mr r3, r30
/* 80B9A778  3C 80 80 BA */	lis r4, __dt__4cXyzFv@ha /* 0x80B9A7F8@ha */
/* 80B9A77C  38 84 A7 F8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B9A7F8@l */
/* 80B9A780  38 A0 00 0C */	li r5, 0xc
/* 80B9A784  38 C0 00 04 */	li r6, 4
/* 80B9A788  4B 7C 75 61 */	bl __destroy_arr
/* 80B9A78C  7F E0 07 35 */	extsh. r0, r31
/* 80B9A790  40 81 00 0C */	ble lbl_80B9A79C
/* 80B9A794  7F C3 F3 78 */	mr r3, r30
/* 80B9A798  4B 73 45 A5 */	bl __dl__FPv
lbl_80B9A79C:
/* 80B9A79C  7F C3 F3 78 */	mr r3, r30
/* 80B9A7A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9A7A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9A7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9A7AC  7C 08 03 A6 */	mtlr r0
/* 80B9A7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9A7B4  4E 80 00 20 */	blr 
