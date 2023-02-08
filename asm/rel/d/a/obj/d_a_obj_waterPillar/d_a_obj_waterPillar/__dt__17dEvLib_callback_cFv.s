lbl_80D2E6FC:
/* 80D2E6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2E700  7C 08 02 A6 */	mflr r0
/* 80D2E704  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2E708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2E70C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2E710  41 82 00 1C */	beq lbl_80D2E72C
/* 80D2E714  3C A0 80 D3 */	lis r5, __vt__17dEvLib_callback_c@ha /* 0x80D2EAF8@ha */
/* 80D2E718  38 05 EA F8 */	addi r0, r5, __vt__17dEvLib_callback_c@l /* 0x80D2EAF8@l */
/* 80D2E71C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2E720  7C 80 07 35 */	extsh. r0, r4
/* 80D2E724  40 81 00 08 */	ble lbl_80D2E72C
/* 80D2E728  4B 5A 06 15 */	bl __dl__FPv
lbl_80D2E72C:
/* 80D2E72C  7F E3 FB 78 */	mr r3, r31
/* 80D2E730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2E734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2E738  7C 08 03 A6 */	mtlr r0
/* 80D2E73C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2E740  4E 80 00 20 */	blr 
