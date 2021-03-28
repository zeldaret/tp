lbl_802E0C6C:
/* 802E0C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E0C70  7C 08 02 A6 */	mflr r0
/* 802E0C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E0C78  80 0D 8F 78 */	lwz r0, sThreshold__Q210JUTGamePad13C3ButtonReset(r13)
/* 802E0C7C  80 ED 8F 7C */	lwz r7, data_804514FC(r13)
/* 802E0C80  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 802E0C84  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 802E0C88  7C 07 30 10 */	subfc r0, r7, r6
/* 802E0C8C  7C 84 29 10 */	subfe r4, r4, r5
/* 802E0C90  7C 85 29 10 */	subfe r4, r5, r5
/* 802E0C94  7C 84 00 D1 */	neg. r4, r4
/* 802E0C98  40 82 00 30 */	bne lbl_802E0CC8
/* 802E0C9C  38 00 00 01 */	li r0, 1
/* 802E0CA0  98 0D 8F 81 */	stb r0, struct_80451500+0x1(r13)
/* 802E0CA4  A8 03 00 7C */	lha r0, 0x7c(r3)
/* 802E0CA8  90 0D 8F 84 */	stw r0, sResetOccurredPort__Q210JUTGamePad13C3ButtonReset(r13)
/* 802E0CAC  81 8D 8F 6C */	lwz r12, sCallback__Q210JUTGamePad13C3ButtonReset(r13)
/* 802E0CB0  28 0C 00 00 */	cmplwi r12, 0
/* 802E0CB4  41 82 00 14 */	beq lbl_802E0CC8
/* 802E0CB8  A8 63 00 7C */	lha r3, 0x7c(r3)
/* 802E0CBC  80 8D 8F 70 */	lwz r4, sCallbackArg__Q210JUTGamePad13C3ButtonReset(r13)
/* 802E0CC0  7D 89 03 A6 */	mtctr r12
/* 802E0CC4  4E 80 04 21 */	bctrl 
lbl_802E0CC8:
/* 802E0CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E0CCC  7C 08 03 A6 */	mtlr r0
/* 802E0CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E0CD4  4E 80 00 20 */	blr 
