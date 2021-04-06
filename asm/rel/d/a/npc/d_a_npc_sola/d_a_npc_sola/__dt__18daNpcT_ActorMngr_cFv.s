lbl_80AEE8A8:
/* 80AEE8A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEE8AC  7C 08 02 A6 */	mflr r0
/* 80AEE8B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEE8B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEE8B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEE8BC  41 82 00 1C */	beq lbl_80AEE8D8
/* 80AEE8C0  3C A0 80 AF */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AEF378@ha */
/* 80AEE8C4  38 05 F3 78 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80AEF378@l */
/* 80AEE8C8  90 1F 00 04 */	stw r0, 4(r31)
/* 80AEE8CC  7C 80 07 35 */	extsh. r0, r4
/* 80AEE8D0  40 81 00 08 */	ble lbl_80AEE8D8
/* 80AEE8D4  4B 7E 04 69 */	bl __dl__FPv
lbl_80AEE8D8:
/* 80AEE8D8  7F E3 FB 78 */	mr r3, r31
/* 80AEE8DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEE8E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEE8E4  7C 08 03 A6 */	mtlr r0
/* 80AEE8E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEE8EC  4E 80 00 20 */	blr 
