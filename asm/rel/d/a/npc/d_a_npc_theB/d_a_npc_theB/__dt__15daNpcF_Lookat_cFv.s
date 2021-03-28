lbl_80B004B0:
/* 80B004B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B004B4  7C 08 02 A6 */	mflr r0
/* 80B004B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B004BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B004C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B004C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B004C8  7C 9F 23 78 */	mr r31, r4
/* 80B004CC  41 82 00 98 */	beq lbl_80B00564
/* 80B004D0  3C 60 80 B0 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80B004D4  38 03 12 F0 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80B004D8  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80B004DC  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80B004E0  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80B004E4  38 84 05 80 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B004E8  38 A0 00 06 */	li r5, 6
/* 80B004EC  38 C0 00 04 */	li r6, 4
/* 80B004F0  4B 86 17 F8 */	b __destroy_arr
/* 80B004F4  38 7E 00 64 */	addi r3, r30, 0x64
/* 80B004F8  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80B004FC  38 84 05 80 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B00500  38 A0 00 06 */	li r5, 6
/* 80B00504  38 C0 00 04 */	li r6, 4
/* 80B00508  4B 86 17 E0 */	b __destroy_arr
/* 80B0050C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80B00510  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80B00514  38 84 05 80 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B00518  38 A0 00 06 */	li r5, 6
/* 80B0051C  38 C0 00 04 */	li r6, 4
/* 80B00520  4B 86 17 C8 */	b __destroy_arr
/* 80B00524  38 7E 00 34 */	addi r3, r30, 0x34
/* 80B00528  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80B0052C  38 84 05 80 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B00530  38 A0 00 06 */	li r5, 6
/* 80B00534  38 C0 00 04 */	li r6, 4
/* 80B00538  4B 86 17 B0 */	b __destroy_arr
/* 80B0053C  7F C3 F3 78 */	mr r3, r30
/* 80B00540  3C 80 80 B0 */	lis r4, __dt__4cXyzFv@ha
/* 80B00544  38 84 05 C0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B00548  38 A0 00 0C */	li r5, 0xc
/* 80B0054C  38 C0 00 04 */	li r6, 4
/* 80B00550  4B 86 17 98 */	b __destroy_arr
/* 80B00554  7F E0 07 35 */	extsh. r0, r31
/* 80B00558  40 81 00 0C */	ble lbl_80B00564
/* 80B0055C  7F C3 F3 78 */	mr r3, r30
/* 80B00560  4B 7C E7 DC */	b __dl__FPv
lbl_80B00564:
/* 80B00564  7F C3 F3 78 */	mr r3, r30
/* 80B00568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0056C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B00570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00574  7C 08 03 A6 */	mtlr r0
/* 80B00578  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0057C  4E 80 00 20 */	blr 
