lbl_809F2990:
/* 809F2990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F2994  7C 08 02 A6 */	mflr r0
/* 809F2998  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F299C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F29A0  93 C1 00 08 */	stw r30, 8(r1)
/* 809F29A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F29A8  7C 9F 23 78 */	mr r31, r4
/* 809F29AC  41 82 00 B0 */	beq lbl_809F2A5C
/* 809F29B0  3C 60 80 9F */	lis r3, __vt__16dNpcLib_lookat_c@ha /* 0x809F2F34@ha */
/* 809F29B4  38 03 2F 34 */	addi r0, r3, __vt__16dNpcLib_lookat_c@l /* 0x809F2F34@l */
/* 809F29B8  90 1E 00 00 */	stw r0, 0(r30)
/* 809F29BC  38 7E 00 94 */	addi r3, r30, 0x94
/* 809F29C0  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809F1D6C@ha */
/* 809F29C4  38 84 1D 6C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809F1D6C@l */
/* 809F29C8  38 A0 00 06 */	li r5, 6
/* 809F29CC  38 C0 00 04 */	li r6, 4
/* 809F29D0  4B 96 F3 19 */	bl __destroy_arr
/* 809F29D4  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809F29D8  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809F1D6C@ha */
/* 809F29DC  38 84 1D 6C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809F1D6C@l */
/* 809F29E0  38 A0 00 06 */	li r5, 6
/* 809F29E4  38 C0 00 04 */	li r6, 4
/* 809F29E8  4B 96 F3 01 */	bl __destroy_arr
/* 809F29EC  38 7E 00 64 */	addi r3, r30, 0x64
/* 809F29F0  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809F1D6C@ha */
/* 809F29F4  38 84 1D 6C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809F1D6C@l */
/* 809F29F8  38 A0 00 06 */	li r5, 6
/* 809F29FC  38 C0 00 04 */	li r6, 4
/* 809F2A00  4B 96 F2 E9 */	bl __destroy_arr
/* 809F2A04  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809F2A08  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809F1D6C@ha */
/* 809F2A0C  38 84 1D 6C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809F1D6C@l */
/* 809F2A10  38 A0 00 06 */	li r5, 6
/* 809F2A14  38 C0 00 04 */	li r6, 4
/* 809F2A18  4B 96 F2 D1 */	bl __destroy_arr
/* 809F2A1C  38 7E 00 34 */	addi r3, r30, 0x34
/* 809F2A20  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809F1D6C@ha */
/* 809F2A24  38 84 1D 6C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809F1D6C@l */
/* 809F2A28  38 A0 00 06 */	li r5, 6
/* 809F2A2C  38 C0 00 04 */	li r6, 4
/* 809F2A30  4B 96 F2 B9 */	bl __destroy_arr
/* 809F2A34  38 7E 00 04 */	addi r3, r30, 4
/* 809F2A38  3C 80 80 9F */	lis r4, __dt__4cXyzFv@ha /* 0x809F0148@ha */
/* 809F2A3C  38 84 01 48 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809F0148@l */
/* 809F2A40  38 A0 00 0C */	li r5, 0xc
/* 809F2A44  38 C0 00 04 */	li r6, 4
/* 809F2A48  4B 96 F2 A1 */	bl __destroy_arr
/* 809F2A4C  7F E0 07 35 */	extsh. r0, r31
/* 809F2A50  40 81 00 0C */	ble lbl_809F2A5C
/* 809F2A54  7F C3 F3 78 */	mr r3, r30
/* 809F2A58  4B 8D C2 E5 */	bl __dl__FPv
lbl_809F2A5C:
/* 809F2A5C  7F C3 F3 78 */	mr r3, r30
/* 809F2A60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F2A64  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F2A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F2A6C  7C 08 03 A6 */	mtlr r0
/* 809F2A70  38 21 00 10 */	addi r1, r1, 0x10
/* 809F2A74  4E 80 00 20 */	blr 
