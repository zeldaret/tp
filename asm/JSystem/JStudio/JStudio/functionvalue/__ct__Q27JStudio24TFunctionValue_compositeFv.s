lbl_80281D5C:
/* 80281D5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80281D60  7C 08 02 A6 */	mflr r0
/* 80281D64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80281D68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80281D6C  7C 7F 1B 78 */	mr r31, r3
/* 80281D70  4B FF F9 21 */	bl __ct__Q27JStudio14TFunctionValueFv
/* 80281D74  38 7F 00 04 */	addi r3, r31, 4
/* 80281D78  38 81 00 08 */	addi r4, r1, 8
/* 80281D7C  88 0D 8C 68 */	lbz r0, lit_569(r13)
/* 80281D80  98 01 00 08 */	stb r0, 8(r1)
/* 80281D84  48 05 AF 4D */	bl func_802DCCD0
/* 80281D88  3C 60 80 3C */	lis r3, __vt__Q27JStudio24TFunctionValue_composite@ha
/* 80281D8C  38 03 49 80 */	addi r0, r3, __vt__Q27JStudio24TFunctionValue_composite@l
/* 80281D90  90 1F 00 00 */	stw r0, 0(r31)
/* 80281D94  38 00 00 00 */	li r0, 0
/* 80281D98  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80281D9C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80281DA0  7F E3 FB 78 */	mr r3, r31
/* 80281DA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80281DA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80281DAC  7C 08 03 A6 */	mtlr r0
/* 80281DB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80281DB4  4E 80 00 20 */	blr 
