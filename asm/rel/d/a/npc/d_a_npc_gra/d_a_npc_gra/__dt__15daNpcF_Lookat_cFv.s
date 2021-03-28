lbl_809C936C:
/* 809C936C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C9370  7C 08 02 A6 */	mflr r0
/* 809C9374  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C937C  93 C1 00 08 */	stw r30, 8(r1)
/* 809C9380  7C 7E 1B 79 */	or. r30, r3, r3
/* 809C9384  7C 9F 23 78 */	mr r31, r4
/* 809C9388  41 82 00 98 */	beq lbl_809C9420
/* 809C938C  3C 60 80 9D */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 809C9390  38 03 B2 D8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 809C9394  90 1E 00 98 */	stw r0, 0x98(r30)
/* 809C9398  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809C939C  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha
/* 809C93A0  38 84 94 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 809C93A4  38 A0 00 06 */	li r5, 6
/* 809C93A8  38 C0 00 04 */	li r6, 4
/* 809C93AC  4B 99 89 3C */	b __destroy_arr
/* 809C93B0  38 7E 00 64 */	addi r3, r30, 0x64
/* 809C93B4  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha
/* 809C93B8  38 84 94 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 809C93BC  38 A0 00 06 */	li r5, 6
/* 809C93C0  38 C0 00 04 */	li r6, 4
/* 809C93C4  4B 99 89 24 */	b __destroy_arr
/* 809C93C8  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809C93CC  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha
/* 809C93D0  38 84 94 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 809C93D4  38 A0 00 06 */	li r5, 6
/* 809C93D8  38 C0 00 04 */	li r6, 4
/* 809C93DC  4B 99 89 0C */	b __destroy_arr
/* 809C93E0  38 7E 00 34 */	addi r3, r30, 0x34
/* 809C93E4  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha
/* 809C93E8  38 84 94 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 809C93EC  38 A0 00 06 */	li r5, 6
/* 809C93F0  38 C0 00 04 */	li r6, 4
/* 809C93F4  4B 99 88 F4 */	b __destroy_arr
/* 809C93F8  7F C3 F3 78 */	mr r3, r30
/* 809C93FC  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha
/* 809C9400  38 84 94 7C */	addi r4, r4, __dt__4cXyzFv@l
/* 809C9404  38 A0 00 0C */	li r5, 0xc
/* 809C9408  38 C0 00 04 */	li r6, 4
/* 809C940C  4B 99 88 DC */	b __destroy_arr
/* 809C9410  7F E0 07 35 */	extsh. r0, r31
/* 809C9414  40 81 00 0C */	ble lbl_809C9420
/* 809C9418  7F C3 F3 78 */	mr r3, r30
/* 809C941C  4B 90 59 20 */	b __dl__FPv
lbl_809C9420:
/* 809C9420  7F C3 F3 78 */	mr r3, r30
/* 809C9424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C9428  83 C1 00 08 */	lwz r30, 8(r1)
/* 809C942C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C9430  7C 08 03 A6 */	mtlr r0
/* 809C9434  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9438  4E 80 00 20 */	blr 
