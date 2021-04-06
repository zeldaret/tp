lbl_80B1D4C4:
/* 80B1D4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1D4C8  7C 08 02 A6 */	mflr r0
/* 80B1D4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1D4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1D4D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B1D4D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B1D4DC  7C 9F 23 78 */	mr r31, r4
/* 80B1D4E0  41 82 00 98 */	beq lbl_80B1D578
/* 80B1D4E4  3C 60 80 B2 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80B1E50C@ha */
/* 80B1D4E8  38 03 E5 0C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80B1E50C@l */
/* 80B1D4EC  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80B1D4F0  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80B1D4F4  3C 80 80 B2 */	lis r4, __dt__5csXyzFv@ha /* 0x80B1D59C@ha */
/* 80B1D4F8  38 84 D5 9C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B1D59C@l */
/* 80B1D4FC  38 A0 00 06 */	li r5, 6
/* 80B1D500  38 C0 00 04 */	li r6, 4
/* 80B1D504  4B 84 47 E5 */	bl __destroy_arr
/* 80B1D508  38 7E 00 64 */	addi r3, r30, 0x64
/* 80B1D50C  3C 80 80 B2 */	lis r4, __dt__5csXyzFv@ha /* 0x80B1D59C@ha */
/* 80B1D510  38 84 D5 9C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B1D59C@l */
/* 80B1D514  38 A0 00 06 */	li r5, 6
/* 80B1D518  38 C0 00 04 */	li r6, 4
/* 80B1D51C  4B 84 47 CD */	bl __destroy_arr
/* 80B1D520  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80B1D524  3C 80 80 B2 */	lis r4, __dt__5csXyzFv@ha /* 0x80B1D59C@ha */
/* 80B1D528  38 84 D5 9C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B1D59C@l */
/* 80B1D52C  38 A0 00 06 */	li r5, 6
/* 80B1D530  38 C0 00 04 */	li r6, 4
/* 80B1D534  4B 84 47 B5 */	bl __destroy_arr
/* 80B1D538  38 7E 00 34 */	addi r3, r30, 0x34
/* 80B1D53C  3C 80 80 B2 */	lis r4, __dt__5csXyzFv@ha /* 0x80B1D59C@ha */
/* 80B1D540  38 84 D5 9C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B1D59C@l */
/* 80B1D544  38 A0 00 06 */	li r5, 6
/* 80B1D548  38 C0 00 04 */	li r6, 4
/* 80B1D54C  4B 84 47 9D */	bl __destroy_arr
/* 80B1D550  7F C3 F3 78 */	mr r3, r30
/* 80B1D554  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha /* 0x80B1D668@ha */
/* 80B1D558  38 84 D6 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B1D668@l */
/* 80B1D55C  38 A0 00 0C */	li r5, 0xc
/* 80B1D560  38 C0 00 04 */	li r6, 4
/* 80B1D564  4B 84 47 85 */	bl __destroy_arr
/* 80B1D568  7F E0 07 35 */	extsh. r0, r31
/* 80B1D56C  40 81 00 0C */	ble lbl_80B1D578
/* 80B1D570  7F C3 F3 78 */	mr r3, r30
/* 80B1D574  4B 7B 17 C9 */	bl __dl__FPv
lbl_80B1D578:
/* 80B1D578  7F C3 F3 78 */	mr r3, r30
/* 80B1D57C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1D580  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1D584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1D588  7C 08 03 A6 */	mtlr r0
/* 80B1D58C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1D590  4E 80 00 20 */	blr 
