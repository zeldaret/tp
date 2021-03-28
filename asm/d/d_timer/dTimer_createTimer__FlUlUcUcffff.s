lbl_80260F8C:
/* 80260F8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80260F90  7C 08 02 A6 */	mflr r0
/* 80260F94  90 01 00 44 */	stw r0, 0x44(r1)
/* 80260F98  39 61 00 40 */	addi r11, r1, 0x40
/* 80260F9C  48 10 11 A5 */	bl _savefpr_28
/* 80260FA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80260FA4  48 10 12 35 */	bl _savegpr_28
/* 80260FA8  7C 7C 1B 78 */	mr r28, r3
/* 80260FAC  7C 9D 23 78 */	mr r29, r4
/* 80260FB0  7C BE 2B 78 */	mr r30, r5
/* 80260FB4  7C DF 33 78 */	mr r31, r6
/* 80260FB8  FF 80 08 90 */	fmr f28, f1
/* 80260FBC  FF A0 10 90 */	fmr f29, f2
/* 80260FC0  FF C0 18 90 */	fmr f30, f3
/* 80260FC4  FF E0 20 90 */	fmr f31, f4
/* 80260FC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80260FCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80260FD0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80260FD4  4B DC BB E9 */	bl getTimerMode__14dComIfG_play_cFv
/* 80260FD8  2C 03 FF FF */	cmpwi r3, -1
/* 80260FDC  40 82 00 34 */	bne lbl_80261010
/* 80260FE0  38 60 03 15 */	li r3, 0x315
/* 80260FE4  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 80260FE8  7F A5 EB 78 */	mr r5, r29
/* 80260FEC  7F C6 F3 78 */	mr r6, r30
/* 80260FF0  7F E7 FB 78 */	mr r7, r31
/* 80260FF4  FC 20 E0 90 */	fmr f1, f28
/* 80260FF8  FC 40 E8 90 */	fmr f2, f29
/* 80260FFC  FC 60 F0 90 */	fmr f3, f30
/* 80261000  FC 80 F8 90 */	fmr f4, f31
/* 80261004  39 00 00 00 */	li r8, 0
/* 80261008  4B DB EC B9 */	bl fop_Timer_create__FsUcUlUcUcffffPFPv_i
/* 8026100C  48 00 00 08 */	b lbl_80261014
lbl_80261010:
/* 80261010  38 60 FF FF */	li r3, -1
lbl_80261014:
/* 80261014  39 61 00 40 */	addi r11, r1, 0x40
/* 80261018  48 10 11 75 */	bl _restfpr_28
/* 8026101C  39 61 00 20 */	addi r11, r1, 0x20
/* 80261020  48 10 12 05 */	bl _restgpr_28
/* 80261024  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80261028  7C 08 03 A6 */	mtlr r0
/* 8026102C  38 21 00 40 */	addi r1, r1, 0x40
/* 80261030  4E 80 00 20 */	blr 
