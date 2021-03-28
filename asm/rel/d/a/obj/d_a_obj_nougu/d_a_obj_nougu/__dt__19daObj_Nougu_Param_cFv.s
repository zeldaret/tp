lbl_80CA494C:
/* 80CA494C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA4950  7C 08 02 A6 */	mflr r0
/* 80CA4954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA495C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA4960  41 82 00 1C */	beq lbl_80CA497C
/* 80CA4964  3C A0 80 CA */	lis r5, __vt__19daObj_Nougu_Param_c@ha
/* 80CA4968  38 05 4B 00 */	addi r0, r5, __vt__19daObj_Nougu_Param_c@l
/* 80CA496C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA4970  7C 80 07 35 */	extsh. r0, r4
/* 80CA4974  40 81 00 08 */	ble lbl_80CA497C
/* 80CA4978  4B 62 A3 C4 */	b __dl__FPv
lbl_80CA497C:
/* 80CA497C  7F E3 FB 78 */	mr r3, r31
/* 80CA4980  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA4984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4988  7C 08 03 A6 */	mtlr r0
/* 80CA498C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4990  4E 80 00 20 */	blr 
