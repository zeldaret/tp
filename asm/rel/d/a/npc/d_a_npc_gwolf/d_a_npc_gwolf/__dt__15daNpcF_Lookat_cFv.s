lbl_809F7C34:
/* 809F7C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7C38  7C 08 02 A6 */	mflr r0
/* 809F7C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F7C44  93 C1 00 08 */	stw r30, 8(r1)
/* 809F7C48  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F7C4C  7C 9F 23 78 */	mr r31, r4
/* 809F7C50  41 82 00 98 */	beq lbl_809F7CE8
/* 809F7C54  3C 60 80 A0 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x809F8EA4@ha */
/* 809F7C58  38 03 8E A4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x809F8EA4@l */
/* 809F7C5C  90 1E 00 98 */	stw r0, 0x98(r30)
/* 809F7C60  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809F7C64  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F7C68  38 84 7D 04 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F7C6C  38 A0 00 06 */	li r5, 6
/* 809F7C70  38 C0 00 04 */	li r6, 4
/* 809F7C74  4B 96 A0 75 */	bl __destroy_arr
/* 809F7C78  38 7E 00 64 */	addi r3, r30, 0x64
/* 809F7C7C  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F7C80  38 84 7D 04 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F7C84  38 A0 00 06 */	li r5, 6
/* 809F7C88  38 C0 00 04 */	li r6, 4
/* 809F7C8C  4B 96 A0 5D */	bl __destroy_arr
/* 809F7C90  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809F7C94  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F7C98  38 84 7D 04 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F7C9C  38 A0 00 06 */	li r5, 6
/* 809F7CA0  38 C0 00 04 */	li r6, 4
/* 809F7CA4  4B 96 A0 45 */	bl __destroy_arr
/* 809F7CA8  38 7E 00 34 */	addi r3, r30, 0x34
/* 809F7CAC  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F7CB0  38 84 7D 04 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F7CB4  38 A0 00 06 */	li r5, 6
/* 809F7CB8  38 C0 00 04 */	li r6, 4
/* 809F7CBC  4B 96 A0 2D */	bl __destroy_arr
/* 809F7CC0  7F C3 F3 78 */	mr r3, r30
/* 809F7CC4  3C 80 80 9F */	lis r4, __dt__4cXyzFv@ha /* 0x809F7D44@ha */
/* 809F7CC8  38 84 7D 44 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809F7D44@l */
/* 809F7CCC  38 A0 00 0C */	li r5, 0xc
/* 809F7CD0  38 C0 00 04 */	li r6, 4
/* 809F7CD4  4B 96 A0 15 */	bl __destroy_arr
/* 809F7CD8  7F E0 07 35 */	extsh. r0, r31
/* 809F7CDC  40 81 00 0C */	ble lbl_809F7CE8
/* 809F7CE0  7F C3 F3 78 */	mr r3, r30
/* 809F7CE4  4B 8D 70 59 */	bl __dl__FPv
lbl_809F7CE8:
/* 809F7CE8  7F C3 F3 78 */	mr r3, r30
/* 809F7CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F7CF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F7CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F7CF8  7C 08 03 A6 */	mtlr r0
/* 809F7CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 809F7D00  4E 80 00 20 */	blr 
