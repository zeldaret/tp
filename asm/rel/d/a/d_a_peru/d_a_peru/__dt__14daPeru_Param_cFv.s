lbl_80D4BF7C:
/* 80D4BF7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4BF80  7C 08 02 A6 */	mflr r0
/* 80D4BF84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4BF88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4BF8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4BF90  41 82 00 1C */	beq lbl_80D4BFAC
/* 80D4BF94  3C A0 80 D5 */	lis r5, __vt__14daPeru_Param_c@ha /* 0x80D4C7D8@ha */
/* 80D4BF98  38 05 C7 D8 */	addi r0, r5, __vt__14daPeru_Param_c@l /* 0x80D4C7D8@l */
/* 80D4BF9C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D4BFA0  7C 80 07 35 */	extsh. r0, r4
/* 80D4BFA4  40 81 00 08 */	ble lbl_80D4BFAC
/* 80D4BFA8  4B 58 2D 95 */	bl __dl__FPv
lbl_80D4BFAC:
/* 80D4BFAC  7F E3 FB 78 */	mr r3, r31
/* 80D4BFB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4BFB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4BFB8  7C 08 03 A6 */	mtlr r0
/* 80D4BFBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4BFC0  4E 80 00 20 */	blr 
