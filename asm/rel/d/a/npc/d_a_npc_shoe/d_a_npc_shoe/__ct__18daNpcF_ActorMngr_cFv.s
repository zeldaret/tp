lbl_80AE9B20:
/* 80AE9B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE9B24  7C 08 02 A6 */	mflr r0
/* 80AE9B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE9B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE9B30  7C 7F 1B 78 */	mr r31, r3
/* 80AE9B34  3C 80 80 AF */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80AEA6F4@ha */
/* 80AE9B38  38 04 A6 F4 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80AEA6F4@l */
/* 80AE9B3C  90 03 00 04 */	stw r0, 4(r3)
/* 80AE9B40  4B 66 6B 71 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AE9B44  7F E3 FB 78 */	mr r3, r31
/* 80AE9B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE9B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE9B50  7C 08 03 A6 */	mtlr r0
/* 80AE9B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE9B58  4E 80 00 20 */	blr 
