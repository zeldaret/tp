lbl_80AEC674:
/* 80AEC674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEC678  7C 08 02 A6 */	mflr r0
/* 80AEC67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEC680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEC684  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEC688  41 82 00 1C */	beq lbl_80AEC6A4
/* 80AEC68C  3C A0 80 AF */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AEC9C4@ha */
/* 80AEC690  38 05 C9 C4 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80AEC9C4@l */
/* 80AEC694  90 1F 00 04 */	stw r0, 4(r31)
/* 80AEC698  7C 80 07 35 */	extsh. r0, r4
/* 80AEC69C  40 81 00 08 */	ble lbl_80AEC6A4
/* 80AEC6A0  4B 7E 26 9D */	bl __dl__FPv
lbl_80AEC6A4:
/* 80AEC6A4  7F E3 FB 78 */	mr r3, r31
/* 80AEC6A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEC6AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEC6B0  7C 08 03 A6 */	mtlr r0
/* 80AEC6B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEC6B8  4E 80 00 20 */	blr 
