lbl_80D37720:
/* 80D37720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D37724  7C 08 02 A6 */	mflr r0
/* 80D37728  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3772C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D37730  93 C1 00 08 */	stw r30, 8(r1)
/* 80D37734  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D37738  7C 9F 23 78 */	mr r31, r4
/* 80D3773C  41 82 00 5C */	beq lbl_80D37798
/* 80D37740  38 7E 01 6C */	addi r3, r30, 0x16c
/* 80D37744  3C 80 80 D3 */	lis r4, __dt__4cXyzFv@ha
/* 80D37748  38 84 6F 54 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D3774C  38 A0 00 0C */	li r5, 0xc
/* 80D37750  38 C0 00 14 */	li r6, 0x14
/* 80D37754  4B 62 A5 94 */	b __destroy_arr
/* 80D37758  38 7E 00 F4 */	addi r3, r30, 0xf4
/* 80D3775C  3C 80 80 D3 */	lis r4, __dt__5csXyzFv@ha
/* 80D37760  38 84 77 B4 */	addi r4, r4, __dt__5csXyzFv@l
/* 80D37764  38 A0 00 06 */	li r5, 6
/* 80D37768  38 C0 00 14 */	li r6, 0x14
/* 80D3776C  4B 62 A5 7C */	b __destroy_arr
/* 80D37770  38 7E 00 04 */	addi r3, r30, 4
/* 80D37774  3C 80 80 D3 */	lis r4, __dt__4cXyzFv@ha
/* 80D37778  38 84 6F 54 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D3777C  38 A0 00 0C */	li r5, 0xc
/* 80D37780  38 C0 00 14 */	li r6, 0x14
/* 80D37784  4B 62 A5 64 */	b __destroy_arr
/* 80D37788  7F E0 07 35 */	extsh. r0, r31
/* 80D3778C  40 81 00 0C */	ble lbl_80D37798
/* 80D37790  7F C3 F3 78 */	mr r3, r30
/* 80D37794  4B 59 75 A8 */	b __dl__FPv
lbl_80D37798:
/* 80D37798  7F C3 F3 78 */	mr r3, r30
/* 80D3779C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D377A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D377A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D377A8  7C 08 03 A6 */	mtlr r0
/* 80D377AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D377B0  4E 80 00 20 */	blr 
