lbl_80AE9B5C:
/* 80AE9B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE9B60  7C 08 02 A6 */	mflr r0
/* 80AE9B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE9B68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE9B6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE9B70  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE9B74  7C 9F 23 78 */	mr r31, r4
/* 80AE9B78  41 82 00 98 */	beq lbl_80AE9C10
/* 80AE9B7C  3C 60 80 AF */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80AE9B80  38 03 A7 18 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80AE9B84  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80AE9B88  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80AE9B8C  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AE9B90  38 84 9C 2C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AE9B94  38 A0 00 06 */	li r5, 6
/* 80AE9B98  38 C0 00 04 */	li r6, 4
/* 80AE9B9C  4B 87 81 4C */	b __destroy_arr
/* 80AE9BA0  38 7E 00 64 */	addi r3, r30, 0x64
/* 80AE9BA4  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AE9BA8  38 84 9C 2C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AE9BAC  38 A0 00 06 */	li r5, 6
/* 80AE9BB0  38 C0 00 04 */	li r6, 4
/* 80AE9BB4  4B 87 81 34 */	b __destroy_arr
/* 80AE9BB8  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80AE9BBC  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AE9BC0  38 84 9C 2C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AE9BC4  38 A0 00 06 */	li r5, 6
/* 80AE9BC8  38 C0 00 04 */	li r6, 4
/* 80AE9BCC  4B 87 81 1C */	b __destroy_arr
/* 80AE9BD0  38 7E 00 34 */	addi r3, r30, 0x34
/* 80AE9BD4  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AE9BD8  38 84 9C 2C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AE9BDC  38 A0 00 06 */	li r5, 6
/* 80AE9BE0  38 C0 00 04 */	li r6, 4
/* 80AE9BE4  4B 87 81 04 */	b __destroy_arr
/* 80AE9BE8  7F C3 F3 78 */	mr r3, r30
/* 80AE9BEC  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AE9BF0  38 84 9C 6C */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE9BF4  38 A0 00 0C */	li r5, 0xc
/* 80AE9BF8  38 C0 00 04 */	li r6, 4
/* 80AE9BFC  4B 87 80 EC */	b __destroy_arr
/* 80AE9C00  7F E0 07 35 */	extsh. r0, r31
/* 80AE9C04  40 81 00 0C */	ble lbl_80AE9C10
/* 80AE9C08  7F C3 F3 78 */	mr r3, r30
/* 80AE9C0C  4B 7E 51 30 */	b __dl__FPv
lbl_80AE9C10:
/* 80AE9C10  7F C3 F3 78 */	mr r3, r30
/* 80AE9C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE9C18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE9C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE9C20  7C 08 03 A6 */	mtlr r0
/* 80AE9C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE9C28  4E 80 00 20 */	blr 
