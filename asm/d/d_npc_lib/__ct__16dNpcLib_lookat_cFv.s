lbl_80251314:
/* 80251314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80251318  7C 08 02 A6 */	mflr r0
/* 8025131C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80251320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80251324  7C 7F 1B 78 */	mr r31, r3
/* 80251328  3C 60 80 3C */	lis r3, __vt__16dNpcLib_lookat_c@ha
/* 8025132C  38 03 2B 88 */	addi r0, r3, __vt__16dNpcLib_lookat_c@l
/* 80251330  90 1F 00 00 */	stw r0, 0(r31)
/* 80251334  38 7F 00 04 */	addi r3, r31, 4
/* 80251338  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha
/* 8025133C  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l
/* 80251340  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha
/* 80251344  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80251348  38 C0 00 0C */	li r6, 0xc
/* 8025134C  38 E0 00 04 */	li r7, 4
/* 80251350  48 11 0A 11 */	bl __construct_array
/* 80251354  38 7F 00 34 */	addi r3, r31, 0x34
/* 80251358  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha
/* 8025135C  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l
/* 80251360  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha
/* 80251364  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l
/* 80251368  38 C0 00 06 */	li r6, 6
/* 8025136C  38 E0 00 04 */	li r7, 4
/* 80251370  48 11 09 F1 */	bl __construct_array
/* 80251374  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80251378  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha
/* 8025137C  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l
/* 80251380  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha
/* 80251384  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l
/* 80251388  38 C0 00 06 */	li r6, 6
/* 8025138C  38 E0 00 04 */	li r7, 4
/* 80251390  48 11 09 D1 */	bl __construct_array
/* 80251394  38 7F 00 64 */	addi r3, r31, 0x64
/* 80251398  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha
/* 8025139C  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l
/* 802513A0  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha
/* 802513A4  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l
/* 802513A8  38 C0 00 06 */	li r6, 6
/* 802513AC  38 E0 00 04 */	li r7, 4
/* 802513B0  48 11 09 B1 */	bl __construct_array
/* 802513B4  38 7F 00 7C */	addi r3, r31, 0x7c
/* 802513B8  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha
/* 802513BC  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l
/* 802513C0  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha
/* 802513C4  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l
/* 802513C8  38 C0 00 06 */	li r6, 6
/* 802513CC  38 E0 00 04 */	li r7, 4
/* 802513D0  48 11 09 91 */	bl __construct_array
/* 802513D4  38 7F 00 94 */	addi r3, r31, 0x94
/* 802513D8  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha
/* 802513DC  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l
/* 802513E0  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha
/* 802513E4  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l
/* 802513E8  38 C0 00 06 */	li r6, 6
/* 802513EC  38 E0 00 04 */	li r7, 4
/* 802513F0  48 11 09 71 */	bl __construct_array
/* 802513F4  7F E3 FB 78 */	mr r3, r31
/* 802513F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802513FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80251400  7C 08 03 A6 */	mtlr r0
/* 80251404  38 21 00 10 */	addi r1, r1, 0x10
/* 80251408  4E 80 00 20 */	blr 
