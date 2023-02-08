lbl_80AEF094:
/* 80AEF094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEF098  7C 08 02 A6 */	mflr r0
/* 80AEF09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEF0A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEF0A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEF0A8  41 82 00 1C */	beq lbl_80AEF0C4
/* 80AEF0AC  3C A0 80 AF */	lis r5, __vt__18daNpc_solA_Param_c@ha /* 0x80AEF46C@ha */
/* 80AEF0B0  38 05 F4 6C */	addi r0, r5, __vt__18daNpc_solA_Param_c@l /* 0x80AEF46C@l */
/* 80AEF0B4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AEF0B8  7C 80 07 35 */	extsh. r0, r4
/* 80AEF0BC  40 81 00 08 */	ble lbl_80AEF0C4
/* 80AEF0C0  4B 7D FC 7D */	bl __dl__FPv
lbl_80AEF0C4:
/* 80AEF0C4  7F E3 FB 78 */	mr r3, r31
/* 80AEF0C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEF0CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEF0D0  7C 08 03 A6 */	mtlr r0
/* 80AEF0D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEF0D8  4E 80 00 20 */	blr 
