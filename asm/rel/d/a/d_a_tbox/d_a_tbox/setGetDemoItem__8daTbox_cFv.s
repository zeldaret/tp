lbl_804945C8:
/* 804945C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804945CC  7C 08 02 A6 */	mflr r0
/* 804945D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804945D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804945D8  7C 7F 1B 78 */	mr r31, r3
/* 804945DC  A0 03 09 82 */	lhz r0, 0x982(r3)
/* 804945E0  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 804945E4  7C 64 1B 78 */	mr r4, r3
/* 804945E8  38 03 FF F6 */	addi r0, r3, -10
/* 804945EC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804945F0  28 00 00 03 */	cmplwi r0, 3
/* 804945F4  40 81 00 1C */	ble lbl_80494610
/* 804945F8  38 03 FF EA */	addi r0, r3, -22
/* 804945FC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80494600  28 00 00 06 */	cmplwi r0, 6
/* 80494604  40 81 00 0C */	ble lbl_80494610
/* 80494608  28 03 00 1D */	cmplwi r3, 0x1d
/* 8049460C  40 82 00 10 */	bne lbl_8049461C
lbl_80494610:
/* 80494610  7F E3 FB 78 */	mr r3, r31
/* 80494614  4B FF FC B9 */	bl getBombItemNoMain__8daTbox_cFUc
/* 80494618  7C 64 1B 78 */	mr r4, r3
lbl_8049461C:
/* 8049461C  88 1F 07 18 */	lbz r0, 0x718(r31)
/* 80494620  28 00 00 00 */	cmplwi r0, 0
/* 80494624  41 82 00 2C */	beq lbl_80494650
/* 80494628  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8049462C  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80494630  38 A0 00 01 */	li r5, 1
/* 80494634  38 C0 FF FF */	li r6, -1
/* 80494638  38 E0 FF FF */	li r7, -1
/* 8049463C  39 00 00 00 */	li r8, 0
/* 80494640  39 20 00 00 */	li r9, 0
/* 80494644  4B B8 75 A4 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80494648  7C 64 1B 78 */	mr r4, r3
/* 8049464C  48 00 00 24 */	b lbl_80494670
lbl_80494650:
/* 80494650  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80494654  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80494658  38 A0 FF FF */	li r5, -1
/* 8049465C  38 C0 FF FF */	li r6, -1
/* 80494660  38 E0 00 00 */	li r7, 0
/* 80494664  39 00 00 00 */	li r8, 0
/* 80494668  4B B8 76 0C */	b fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 8049466C  7C 64 1B 78 */	mr r4, r3
lbl_80494670:
/* 80494670  3C 04 00 01 */	addis r0, r4, 1
/* 80494674  28 00 FF FF */	cmplwi r0, 0xffff
/* 80494678  41 82 00 14 */	beq lbl_8049468C
/* 8049467C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80494680  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80494684  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80494688  4B BA F0 64 */	b setPtI_Id__14dEvt_control_cFUi
lbl_8049468C:
/* 8049468C  38 60 00 01 */	li r3, 1
/* 80494690  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80494694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494698  7C 08 03 A6 */	mtlr r0
/* 8049469C  38 21 00 10 */	addi r1, r1, 0x10
/* 804946A0  4E 80 00 20 */	blr 
