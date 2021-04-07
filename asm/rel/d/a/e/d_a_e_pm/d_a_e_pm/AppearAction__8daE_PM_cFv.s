lbl_80744790:
/* 80744790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80744794  7C 08 02 A6 */	mflr r0
/* 80744798  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074479C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807447A0  93 C1 00 08 */	stw r30, 8(r1)
/* 807447A4  7C 7E 1B 78 */	mr r30, r3
/* 807447A8  38 00 00 00 */	li r0, 0
/* 807447AC  B0 03 06 08 */	sth r0, 0x608(r3)
/* 807447B0  88 03 06 10 */	lbz r0, 0x610(r3)
/* 807447B4  2C 00 00 02 */	cmpwi r0, 2
/* 807447B8  41 82 00 30 */	beq lbl_807447E8
/* 807447BC  40 80 00 10 */	bge lbl_807447CC
/* 807447C0  2C 00 00 00 */	cmpwi r0, 0
/* 807447C4  41 82 00 14 */	beq lbl_807447D8
/* 807447C8  48 00 00 2C */	b lbl_807447F4
lbl_807447CC:
/* 807447CC  2C 00 00 04 */	cmpwi r0, 4
/* 807447D0  40 80 00 24 */	bge lbl_807447F4
/* 807447D4  48 00 00 0C */	b lbl_807447E0
lbl_807447D8:
/* 807447D8  4B FF EE CD */	bl Ap_StartAction__8daE_PM_cFv
/* 807447DC  48 00 00 18 */	b lbl_807447F4
lbl_807447E0:
/* 807447E0  4B FF F5 AD */	bl Ap_CreateAction__8daE_PM_cFv
/* 807447E4  48 00 00 10 */	b lbl_807447F4
lbl_807447E8:
/* 807447E8  4B FF FD 09 */	bl Ap_EscapeAction__8daE_PM_cFv
/* 807447EC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807447F0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_807447F4:
/* 807447F4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807447F8  A8 9E 06 02 */	lha r4, 0x602(r30)
/* 807447FC  38 A0 00 05 */	li r5, 5
/* 80744800  38 C0 10 00 */	li r6, 0x1000
/* 80744804  4B B2 BE 05 */	bl cLib_addCalcAngleS2__FPssss
/* 80744808  38 7E 06 04 */	addi r3, r30, 0x604
/* 8074480C  A8 9E 06 08 */	lha r4, 0x608(r30)
/* 80744810  38 A0 00 04 */	li r5, 4
/* 80744814  38 C0 10 00 */	li r6, 0x1000
/* 80744818  4B B2 BD F1 */	bl cLib_addCalcAngleS2__FPssss
/* 8074481C  88 1E 06 10 */	lbz r0, 0x610(r30)
/* 80744820  28 00 00 00 */	cmplwi r0, 0
/* 80744824  40 82 00 10 */	bne lbl_80744834
/* 80744828  88 1E 06 11 */	lbz r0, 0x611(r30)
/* 8074482C  28 00 00 00 */	cmplwi r0, 0
/* 80744830  41 82 00 30 */	beq lbl_80744860
lbl_80744834:
/* 80744834  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80744838  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074483C  3B E3 4E C8 */	addi r31, r3, 0x4ec8
/* 80744840  7F E3 FB 78 */	mr r3, r31
/* 80744844  4B 8F E1 65 */	bl onSkipFade__14dEvt_control_cFv
/* 80744848  7F E3 FB 78 */	mr r3, r31
/* 8074484C  7F C4 F3 78 */	mr r4, r30
/* 80744850  3C A0 80 74 */	lis r5, DemoSkipCallBack__8daE_PM_cFPvi@ha /* 0x80742004@ha */
/* 80744854  38 A5 20 04 */	addi r5, r5, DemoSkipCallBack__8daE_PM_cFPvi@l /* 0x80742004@l */
/* 80744858  38 C0 00 00 */	li r6, 0
/* 8074485C  4B 8F E0 B9 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80744860:
/* 80744860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80744864  83 C1 00 08 */	lwz r30, 8(r1)
/* 80744868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074486C  7C 08 03 A6 */	mtlr r0
/* 80744870  38 21 00 10 */	addi r1, r1, 0x10
/* 80744874  4E 80 00 20 */	blr 
