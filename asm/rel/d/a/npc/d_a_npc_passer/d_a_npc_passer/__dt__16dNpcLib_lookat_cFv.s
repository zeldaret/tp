lbl_80AA66CC:
/* 80AA66CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA66D0  7C 08 02 A6 */	mflr r0
/* 80AA66D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA66D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA66DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA66E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA66E4  7C 9F 23 78 */	mr r31, r4
/* 80AA66E8  41 82 00 B0 */	beq lbl_80AA6798
/* 80AA66EC  3C 60 80 AA */	lis r3, __vt__16dNpcLib_lookat_c@ha /* 0x80AA742C@ha */
/* 80AA66F0  38 03 74 2C */	addi r0, r3, __vt__16dNpcLib_lookat_c@l /* 0x80AA742C@l */
/* 80AA66F4  90 1E 00 00 */	stw r0, 0(r30)
/* 80AA66F8  38 7E 00 94 */	addi r3, r30, 0x94
/* 80AA66FC  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80AA6690@ha */
/* 80AA6700  38 84 66 90 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AA6690@l */
/* 80AA6704  38 A0 00 06 */	li r5, 6
/* 80AA6708  38 C0 00 04 */	li r6, 4
/* 80AA670C  4B 8B B5 DD */	bl __destroy_arr
/* 80AA6710  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80AA6714  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80AA6690@ha */
/* 80AA6718  38 84 66 90 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AA6690@l */
/* 80AA671C  38 A0 00 06 */	li r5, 6
/* 80AA6720  38 C0 00 04 */	li r6, 4
/* 80AA6724  4B 8B B5 C5 */	bl __destroy_arr
/* 80AA6728  38 7E 00 64 */	addi r3, r30, 0x64
/* 80AA672C  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80AA6690@ha */
/* 80AA6730  38 84 66 90 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AA6690@l */
/* 80AA6734  38 A0 00 06 */	li r5, 6
/* 80AA6738  38 C0 00 04 */	li r6, 4
/* 80AA673C  4B 8B B5 AD */	bl __destroy_arr
/* 80AA6740  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80AA6744  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80AA6690@ha */
/* 80AA6748  38 84 66 90 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AA6690@l */
/* 80AA674C  38 A0 00 06 */	li r5, 6
/* 80AA6750  38 C0 00 04 */	li r6, 4
/* 80AA6754  4B 8B B5 95 */	bl __destroy_arr
/* 80AA6758  38 7E 00 34 */	addi r3, r30, 0x34
/* 80AA675C  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80AA6690@ha */
/* 80AA6760  38 84 66 90 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AA6690@l */
/* 80AA6764  38 A0 00 06 */	li r5, 6
/* 80AA6768  38 C0 00 04 */	li r6, 4
/* 80AA676C  4B 8B B5 7D */	bl __destroy_arr
/* 80AA6770  38 7E 00 04 */	addi r3, r30, 4
/* 80AA6774  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA6654@ha */
/* 80AA6778  38 84 66 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA6654@l */
/* 80AA677C  38 A0 00 0C */	li r5, 0xc
/* 80AA6780  38 C0 00 04 */	li r6, 4
/* 80AA6784  4B 8B B5 65 */	bl __destroy_arr
/* 80AA6788  7F E0 07 35 */	extsh. r0, r31
/* 80AA678C  40 81 00 0C */	ble lbl_80AA6798
/* 80AA6790  7F C3 F3 78 */	mr r3, r30
/* 80AA6794  4B 82 85 A9 */	bl __dl__FPv
lbl_80AA6798:
/* 80AA6798  7F C3 F3 78 */	mr r3, r30
/* 80AA679C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA67A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA67A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA67A8  7C 08 03 A6 */	mtlr r0
/* 80AA67AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA67B0  4E 80 00 20 */	blr 
