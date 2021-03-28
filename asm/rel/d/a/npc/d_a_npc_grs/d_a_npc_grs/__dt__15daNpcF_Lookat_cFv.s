lbl_809E7578:
/* 809E7578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E757C  7C 08 02 A6 */	mflr r0
/* 809E7580  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E7588  93 C1 00 08 */	stw r30, 8(r1)
/* 809E758C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E7590  7C 9F 23 78 */	mr r31, r4
/* 809E7594  41 82 00 98 */	beq lbl_809E762C
/* 809E7598  3C 60 80 9F */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 809E759C  38 03 82 18 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 809E75A0  90 1E 00 98 */	stw r0, 0x98(r30)
/* 809E75A4  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809E75A8  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809E75AC  38 84 76 48 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E75B0  38 A0 00 06 */	li r5, 6
/* 809E75B4  38 C0 00 04 */	li r6, 4
/* 809E75B8  4B 97 A7 30 */	b __destroy_arr
/* 809E75BC  38 7E 00 64 */	addi r3, r30, 0x64
/* 809E75C0  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809E75C4  38 84 76 48 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E75C8  38 A0 00 06 */	li r5, 6
/* 809E75CC  38 C0 00 04 */	li r6, 4
/* 809E75D0  4B 97 A7 18 */	b __destroy_arr
/* 809E75D4  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809E75D8  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809E75DC  38 84 76 48 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E75E0  38 A0 00 06 */	li r5, 6
/* 809E75E4  38 C0 00 04 */	li r6, 4
/* 809E75E8  4B 97 A7 00 */	b __destroy_arr
/* 809E75EC  38 7E 00 34 */	addi r3, r30, 0x34
/* 809E75F0  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809E75F4  38 84 76 48 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E75F8  38 A0 00 06 */	li r5, 6
/* 809E75FC  38 C0 00 04 */	li r6, 4
/* 809E7600  4B 97 A6 E8 */	b __destroy_arr
/* 809E7604  7F C3 F3 78 */	mr r3, r30
/* 809E7608  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809E760C  38 84 76 88 */	addi r4, r4, __dt__4cXyzFv@l
/* 809E7610  38 A0 00 0C */	li r5, 0xc
/* 809E7614  38 C0 00 04 */	li r6, 4
/* 809E7618  4B 97 A6 D0 */	b __destroy_arr
/* 809E761C  7F E0 07 35 */	extsh. r0, r31
/* 809E7620  40 81 00 0C */	ble lbl_809E762C
/* 809E7624  7F C3 F3 78 */	mr r3, r30
/* 809E7628  4B 8E 77 14 */	b __dl__FPv
lbl_809E762C:
/* 809E762C  7F C3 F3 78 */	mr r3, r30
/* 809E7630  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E7634  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E7638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E763C  7C 08 03 A6 */	mtlr r0
/* 809E7640  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7644  4E 80 00 20 */	blr 
