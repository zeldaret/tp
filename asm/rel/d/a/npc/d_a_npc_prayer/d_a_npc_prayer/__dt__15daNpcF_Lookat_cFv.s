lbl_80AB4F94:
/* 80AB4F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB4F98  7C 08 02 A6 */	mflr r0
/* 80AB4F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB4FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB4FA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB4FA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB4FAC  7C 9F 23 78 */	mr r31, r4
/* 80AB4FB0  41 82 00 98 */	beq lbl_80AB5048
/* 80AB4FB4  3C 60 80 AB */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80AB5B88@ha */
/* 80AB4FB8  38 03 5B 88 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80AB5B88@l */
/* 80AB4FBC  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80AB4FC0  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80AB4FC4  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha /* 0x80AB5064@ha */
/* 80AB4FC8  38 84 50 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AB5064@l */
/* 80AB4FCC  38 A0 00 06 */	li r5, 6
/* 80AB4FD0  38 C0 00 04 */	li r6, 4
/* 80AB4FD4  4B 8A CD 15 */	bl __destroy_arr
/* 80AB4FD8  38 7E 00 64 */	addi r3, r30, 0x64
/* 80AB4FDC  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha /* 0x80AB5064@ha */
/* 80AB4FE0  38 84 50 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AB5064@l */
/* 80AB4FE4  38 A0 00 06 */	li r5, 6
/* 80AB4FE8  38 C0 00 04 */	li r6, 4
/* 80AB4FEC  4B 8A CC FD */	bl __destroy_arr
/* 80AB4FF0  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80AB4FF4  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha /* 0x80AB5064@ha */
/* 80AB4FF8  38 84 50 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AB5064@l */
/* 80AB4FFC  38 A0 00 06 */	li r5, 6
/* 80AB5000  38 C0 00 04 */	li r6, 4
/* 80AB5004  4B 8A CC E5 */	bl __destroy_arr
/* 80AB5008  38 7E 00 34 */	addi r3, r30, 0x34
/* 80AB500C  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha /* 0x80AB5064@ha */
/* 80AB5010  38 84 50 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AB5064@l */
/* 80AB5014  38 A0 00 06 */	li r5, 6
/* 80AB5018  38 C0 00 04 */	li r6, 4
/* 80AB501C  4B 8A CC CD */	bl __destroy_arr
/* 80AB5020  7F C3 F3 78 */	mr r3, r30
/* 80AB5024  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB50A4@ha */
/* 80AB5028  38 84 50 A4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB50A4@l */
/* 80AB502C  38 A0 00 0C */	li r5, 0xc
/* 80AB5030  38 C0 00 04 */	li r6, 4
/* 80AB5034  4B 8A CC B5 */	bl __destroy_arr
/* 80AB5038  7F E0 07 35 */	extsh. r0, r31
/* 80AB503C  40 81 00 0C */	ble lbl_80AB5048
/* 80AB5040  7F C3 F3 78 */	mr r3, r30
/* 80AB5044  4B 81 9C F9 */	bl __dl__FPv
lbl_80AB5048:
/* 80AB5048  7F C3 F3 78 */	mr r3, r30
/* 80AB504C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB5050  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB5054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB5058  7C 08 03 A6 */	mtlr r0
/* 80AB505C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB5060  4E 80 00 20 */	blr 
