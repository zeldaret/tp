lbl_80041FA0:
/* 80041FA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80041FA4  7C 08 02 A6 */	mflr r0
/* 80041FA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80041FAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80041FB0  48 32 02 2D */	bl _savegpr_29
/* 80041FB4  7C 7D 1B 78 */	mr r29, r3
/* 80041FB8  7C 9E 23 78 */	mr r30, r4
/* 80041FBC  83 E4 00 08 */	lwz r31, 8(r4)
/* 80041FC0  4B FF F9 75 */	bl beforeFlagProc__14dEvt_control_cFP12dEvt_order_c
/* 80041FC4  2C 03 00 00 */	cmpwi r3, 0
/* 80041FC8  40 82 00 0C */	bne lbl_80041FD4
/* 80041FCC  38 60 00 00 */	li r3, 0
/* 80041FD0  48 00 00 2C */	b lbl_80041FFC
lbl_80041FD4:
/* 80041FD4  38 00 00 02 */	li r0, 2
/* 80041FD8  B0 1F 00 F8 */	sth r0, 0xf8(r31)
/* 80041FDC  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 80041FE0  7F A3 EB 78 */	mr r3, r29
/* 80041FE4  7F C4 F3 78 */	mr r4, r30
/* 80041FE8  4B FF F8 1D */	bl setParam__14dEvt_control_cFP12dEvt_order_c
/* 80041FEC  7F A3 EB 78 */	mr r3, r29
/* 80041FF0  7F C4 F3 78 */	mr r4, r30
/* 80041FF4  4B FF F9 71 */	bl afterFlagProc__14dEvt_control_cFP12dEvt_order_c
/* 80041FF8  38 60 00 01 */	li r3, 1
lbl_80041FFC:
/* 80041FFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80042000  48 32 02 29 */	bl _restgpr_29
/* 80042004  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80042008  7C 08 03 A6 */	mtlr r0
/* 8004200C  38 21 00 20 */	addi r1, r1, 0x20
/* 80042010  4E 80 00 20 */	blr 
