lbl_80C63064:
/* 80C63064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C63068  7C 08 02 A6 */	mflr r0
/* 80C6306C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C63070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C63074  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C63078  41 82 00 1C */	beq lbl_80C63094
/* 80C6307C  3C A0 80 C6 */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80C63080  38 05 32 58 */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80C63084  90 1F 00 00 */	stw r0, 0(r31)
/* 80C63088  7C 80 07 35 */	extsh. r0, r4
/* 80C6308C  40 81 00 08 */	ble lbl_80C63094
/* 80C63090  4B 66 BC AC */	b __dl__FPv
lbl_80C63094:
/* 80C63094  7F E3 FB 78 */	mr r3, r31
/* 80C63098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6309C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C630A0  7C 08 03 A6 */	mtlr r0
/* 80C630A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C630A8  4E 80 00 20 */	blr 
