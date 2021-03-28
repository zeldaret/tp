lbl_80282D34:
/* 80282D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80282D38  7C 08 02 A6 */	mflr r0
/* 80282D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80282D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80282D44  7C 7F 1B 78 */	mr r31, r3
/* 80282D48  4B FF E9 49 */	bl __ct__Q27JStudio14TFunctionValueFv
/* 80282D4C  38 7F 00 08 */	addi r3, r31, 8
/* 80282D50  4B FF EF C9 */	bl __ct__Q27JStudio29TFunctionValueAttribute_rangeFv
/* 80282D54  38 80 00 00 */	li r4, 0
/* 80282D58  90 9F 00 40 */	stw r4, 0x40(r31)
/* 80282D5C  3C 60 80 3C */	lis r3, __vt__Q27JStudio29TFunctionValue_list_parameter@ha
/* 80282D60  38 03 49 00 */	addi r0, r3, __vt__Q27JStudio29TFunctionValue_list_parameter@l
/* 80282D64  90 1F 00 00 */	stw r0, 0(r31)
/* 80282D68  90 9F 00 44 */	stw r4, 0x44(r31)
/* 80282D6C  90 9F 00 48 */	stw r4, 0x48(r31)
/* 80282D70  90 9F 00 4C */	stw r4, 0x4c(r31)
/* 80282D74  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80282D78  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80282D7C  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80282D80  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80282D84  90 9F 00 58 */	stw r4, 0x58(r31)
/* 80282D88  7F E3 FB 78 */	mr r3, r31
/* 80282D8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80282D90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80282D94  7C 08 03 A6 */	mtlr r0
/* 80282D98  38 21 00 10 */	addi r1, r1, 0x10
/* 80282D9C  4E 80 00 20 */	blr 
