lbl_80AF526C:
/* 80AF526C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF5270  7C 08 02 A6 */	mflr r0
/* 80AF5274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF5278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF527C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF5280  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF5284  7C 9F 23 78 */	mr r31, r4
/* 80AF5288  41 82 00 98 */	beq lbl_80AF5320
/* 80AF528C  3C 60 80 AF */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80AF5290  38 03 5E 0C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80AF5294  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80AF5298  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80AF529C  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF52A0  38 84 53 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF52A4  38 A0 00 06 */	li r5, 6
/* 80AF52A8  38 C0 00 04 */	li r6, 4
/* 80AF52AC  4B 86 CA 3C */	b __destroy_arr
/* 80AF52B0  38 7E 00 64 */	addi r3, r30, 0x64
/* 80AF52B4  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF52B8  38 84 53 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF52BC  38 A0 00 06 */	li r5, 6
/* 80AF52C0  38 C0 00 04 */	li r6, 4
/* 80AF52C4  4B 86 CA 24 */	b __destroy_arr
/* 80AF52C8  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80AF52CC  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF52D0  38 84 53 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF52D4  38 A0 00 06 */	li r5, 6
/* 80AF52D8  38 C0 00 04 */	li r6, 4
/* 80AF52DC  4B 86 CA 0C */	b __destroy_arr
/* 80AF52E0  38 7E 00 34 */	addi r3, r30, 0x34
/* 80AF52E4  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF52E8  38 84 53 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF52EC  38 A0 00 06 */	li r5, 6
/* 80AF52F0  38 C0 00 04 */	li r6, 4
/* 80AF52F4  4B 86 C9 F4 */	b __destroy_arr
/* 80AF52F8  7F C3 F3 78 */	mr r3, r30
/* 80AF52FC  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AF5300  38 84 53 7C */	addi r4, r4, __dt__4cXyzFv@l
/* 80AF5304  38 A0 00 0C */	li r5, 0xc
/* 80AF5308  38 C0 00 04 */	li r6, 4
/* 80AF530C  4B 86 C9 DC */	b __destroy_arr
/* 80AF5310  7F E0 07 35 */	extsh. r0, r31
/* 80AF5314  40 81 00 0C */	ble lbl_80AF5320
/* 80AF5318  7F C3 F3 78 */	mr r3, r30
/* 80AF531C  4B 7D 9A 20 */	b __dl__FPv
lbl_80AF5320:
/* 80AF5320  7F C3 F3 78 */	mr r3, r30
/* 80AF5324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF5328  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF532C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5330  7C 08 03 A6 */	mtlr r0
/* 80AF5334  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5338  4E 80 00 20 */	blr 
