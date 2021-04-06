lbl_80C437A4:
/* 80C437A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C437A8  7C 08 02 A6 */	mflr r0
/* 80C437AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C437B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C437B4  7C 7F 1B 78 */	mr r31, r3
/* 80C437B8  38 7F 00 58 */	addi r3, r31, 0x58
/* 80C437BC  3C 80 80 C4 */	lis r4, __ct__4cXyzFv@ha /* 0x80C43900@ha */
/* 80C437C0  38 84 39 00 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80C43900@l */
/* 80C437C4  3C A0 80 C4 */	lis r5, __dt__4cXyzFv@ha /* 0x80C41654@ha */
/* 80C437C8  38 A5 16 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80C41654@l */
/* 80C437CC  38 C0 00 0C */	li r6, 0xc
/* 80C437D0  38 E0 00 10 */	li r7, 0x10
/* 80C437D4  4B 71 E5 8D */	bl __construct_array
/* 80C437D8  38 7F 01 18 */	addi r3, r31, 0x118
/* 80C437DC  3C 80 80 C4 */	lis r4, __ct__4cXyzFv@ha /* 0x80C43900@ha */
/* 80C437E0  38 84 39 00 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80C43900@l */
/* 80C437E4  3C A0 80 C4 */	lis r5, __dt__4cXyzFv@ha /* 0x80C41654@ha */
/* 80C437E8  38 A5 16 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80C41654@l */
/* 80C437EC  38 C0 00 0C */	li r6, 0xc
/* 80C437F0  38 E0 00 10 */	li r7, 0x10
/* 80C437F4  4B 71 E5 6D */	bl __construct_array
/* 80C437F8  38 7F 01 D8 */	addi r3, r31, 0x1d8
/* 80C437FC  3C 80 80 C4 */	lis r4, __ct__5csXyzFv@ha /* 0x80C438FC@ha */
/* 80C43800  38 84 38 FC */	addi r4, r4, __ct__5csXyzFv@l /* 0x80C438FC@l */
/* 80C43804  3C A0 80 C4 */	lis r5, __dt__5csXyzFv@ha /* 0x80C434AC@ha */
/* 80C43808  38 A5 34 AC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80C434AC@l */
/* 80C4380C  38 C0 00 06 */	li r6, 6
/* 80C43810  38 E0 00 10 */	li r7, 0x10
/* 80C43814  4B 71 E5 4D */	bl __construct_array
/* 80C43818  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C4381C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C43820  90 1F 02 54 */	stw r0, 0x254(r31)
/* 80C43824  38 7F 02 58 */	addi r3, r31, 0x258
/* 80C43828  4B 43 FF 39 */	bl __ct__10dCcD_GSttsFv
/* 80C4382C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C43830  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C43834  90 7F 02 54 */	stw r3, 0x254(r31)
/* 80C43838  38 03 00 20 */	addi r0, r3, 0x20
/* 80C4383C  90 1F 02 58 */	stw r0, 0x258(r31)
/* 80C43840  38 7F 02 78 */	addi r3, r31, 0x278
/* 80C43844  3C 80 80 C4 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80C43878@ha */
/* 80C43848  38 84 38 78 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80C43878@l */
/* 80C4384C  3C A0 80 C4 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80C434E8@ha */
/* 80C43850  38 A5 34 E8 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80C434E8@l */
/* 80C43854  38 C0 01 38 */	li r6, 0x138
/* 80C43858  38 E0 00 03 */	li r7, 3
/* 80C4385C  4B 71 E5 05 */	bl __construct_array
/* 80C43860  7F E3 FB 78 */	mr r3, r31
/* 80C43864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C43868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4386C  7C 08 03 A6 */	mtlr r0
/* 80C43870  38 21 00 10 */	addi r1, r1, 0x10
/* 80C43874  4E 80 00 20 */	blr 
