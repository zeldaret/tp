lbl_80D377F0:
/* 80D377F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D377F4  7C 08 02 A6 */	mflr r0
/* 80D377F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D377FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D37800  7C 7F 1B 78 */	mr r31, r3
/* 80D37804  38 7F 00 04 */	addi r3, r31, 4
/* 80D37808  3C 80 80 D3 */	lis r4, __ct__4cXyzFv@ha
/* 80D3780C  38 84 78 80 */	addi r4, r4, __ct__4cXyzFv@l
/* 80D37810  3C A0 80 D3 */	lis r5, __dt__4cXyzFv@ha
/* 80D37814  38 A5 6F 54 */	addi r5, r5, __dt__4cXyzFv@l
/* 80D37818  38 C0 00 0C */	li r6, 0xc
/* 80D3781C  38 E0 00 14 */	li r7, 0x14
/* 80D37820  4B 62 A5 40 */	b __construct_array
/* 80D37824  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80D37828  3C 80 80 D3 */	lis r4, __ct__5csXyzFv@ha
/* 80D3782C  38 84 78 7C */	addi r4, r4, __ct__5csXyzFv@l
/* 80D37830  3C A0 80 D3 */	lis r5, __dt__5csXyzFv@ha
/* 80D37834  38 A5 77 B4 */	addi r5, r5, __dt__5csXyzFv@l
/* 80D37838  38 C0 00 06 */	li r6, 6
/* 80D3783C  38 E0 00 14 */	li r7, 0x14
/* 80D37840  4B 62 A5 20 */	b __construct_array
/* 80D37844  38 7F 01 6C */	addi r3, r31, 0x16c
/* 80D37848  3C 80 80 D3 */	lis r4, __ct__4cXyzFv@ha
/* 80D3784C  38 84 78 80 */	addi r4, r4, __ct__4cXyzFv@l
/* 80D37850  3C A0 80 D3 */	lis r5, __dt__4cXyzFv@ha
/* 80D37854  38 A5 6F 54 */	addi r5, r5, __dt__4cXyzFv@l
/* 80D37858  38 C0 00 0C */	li r6, 0xc
/* 80D3785C  38 E0 00 14 */	li r7, 0x14
/* 80D37860  4B 62 A5 00 */	b __construct_array
/* 80D37864  7F E3 FB 78 */	mr r3, r31
/* 80D37868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3786C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D37870  7C 08 03 A6 */	mtlr r0
/* 80D37874  38 21 00 10 */	addi r1, r1, 0x10
/* 80D37878  4E 80 00 20 */	blr 
