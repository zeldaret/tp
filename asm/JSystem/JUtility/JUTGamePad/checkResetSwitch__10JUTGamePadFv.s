lbl_802E0FA4:
/* 802E0FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E0FA8  7C 08 02 A6 */	mflr r0
/* 802E0FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E0FB0  88 0D 8F 81 */	lbz r0, struct_80451500+0x1(r13)
/* 802E0FB4  28 00 00 00 */	cmplwi r0, 0
/* 802E0FB8  40 82 00 5C */	bne lbl_802E1014
/* 802E0FBC  48 05 EE B5 */	bl OSGetResetSwitchState
/* 802E0FC0  2C 03 00 00 */	cmpwi r3, 0
/* 802E0FC4  41 82 00 10 */	beq lbl_802E0FD4
/* 802E0FC8  38 00 00 01 */	li r0, 1
/* 802E0FCC  98 0D 8F 80 */	stb r0, struct_80451500+0x0(r13)
/* 802E0FD0  48 00 00 44 */	b lbl_802E1014
lbl_802E0FD4:
/* 802E0FD4  88 0D 8F 80 */	lbz r0, struct_80451500+0x0(r13)
/* 802E0FD8  28 00 00 01 */	cmplwi r0, 1
/* 802E0FDC  40 82 00 30 */	bne lbl_802E100C
/* 802E0FE0  38 00 00 01 */	li r0, 1
/* 802E0FE4  98 0D 8F 81 */	stb r0, struct_80451500+0x1(r13)
/* 802E0FE8  38 00 FF FF */	li r0, -1
/* 802E0FEC  90 0D 8F 84 */	stw r0, sResetOccurredPort__Q210JUTGamePad13C3ButtonReset(r13)
/* 802E0FF0  81 8D 8F 6C */	lwz r12, sCallback__Q210JUTGamePad13C3ButtonReset(r13)
/* 802E0FF4  28 0C 00 00 */	cmplwi r12, 0
/* 802E0FF8  41 82 00 14 */	beq lbl_802E100C
/* 802E0FFC  38 60 FF FF */	li r3, -1
/* 802E1000  80 8D 8F 70 */	lwz r4, sCallbackArg__Q210JUTGamePad13C3ButtonReset(r13)
/* 802E1004  7D 89 03 A6 */	mtctr r12
/* 802E1008  4E 80 04 21 */	bctrl 
lbl_802E100C:
/* 802E100C  38 00 00 00 */	li r0, 0
/* 802E1010  98 0D 8F 80 */	stb r0, struct_80451500+0x0(r13)
lbl_802E1014:
/* 802E1014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1018  7C 08 03 A6 */	mtlr r0
/* 802E101C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1020  4E 80 00 20 */	blr 
