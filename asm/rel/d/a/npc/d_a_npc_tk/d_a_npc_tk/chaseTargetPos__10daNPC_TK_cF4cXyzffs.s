lbl_80B01C84:
/* 80B01C84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B01C88  7C 08 02 A6 */	mflr r0
/* 80B01C8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B01C90  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B01C94  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B01C98  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80B01C9C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80B01CA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B01CA4  4B 86 05 2C */	b _savegpr_26
/* 80B01CA8  7C 7A 1B 78 */	mr r26, r3
/* 80B01CAC  7C 9B 23 78 */	mr r27, r4
/* 80B01CB0  7C BC 2B 78 */	mr r28, r5
/* 80B01CB4  FF C0 08 90 */	fmr f30, f1
/* 80B01CB8  FF E0 10 90 */	fmr f31, f2
/* 80B01CBC  7C DD 33 78 */	mr r29, r6
/* 80B01CC0  3C 60 80 B1 */	lis r3, lit_3999@ha
/* 80B01CC4  3B E3 C1 C4 */	addi r31, r3, lit_3999@l
/* 80B01CC8  3B C0 01 00 */	li r30, 0x100
/* 80B01CCC  7F A0 07 34 */	extsh r0, r29
/* 80B01CD0  2C 00 01 00 */	cmpwi r0, 0x100
/* 80B01CD4  40 80 00 08 */	bge lbl_80B01CDC
/* 80B01CD8  7F BE EB 78 */	mr r30, r29
lbl_80B01CDC:
/* 80B01CDC  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B01CE0  7F 84 E3 78 */	mr r4, r28
/* 80B01CE4  4B 76 EF 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B01CE8  7C 64 1B 78 */	mr r4, r3
/* 80B01CEC  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 80B01CF0  38 A0 00 08 */	li r5, 8
/* 80B01CF4  7F A6 EB 78 */	mr r6, r29
/* 80B01CF8  7F C7 F3 78 */	mr r7, r30
/* 80B01CFC  4B 76 E8 44 */	b cLib_addCalcAngleS__FPsssss
/* 80B01D00  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80B01D04  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80B01D08  7F 63 DB 78 */	mr r3, r27
/* 80B01D0C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80B01D10  7F 85 E3 78 */	mr r5, r28
/* 80B01D14  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80B01D18  FC 40 F0 90 */	fmr f2, f30
/* 80B01D1C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80B01D20  4B FF FB D5 */	bl setAddCalcSpeedXZ__10daNPC_TK_cFR4cXyzRC4cXyzfff
/* 80B01D24  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B01D28  40 81 00 08 */	ble lbl_80B01D30
/* 80B01D2C  FC 20 F8 90 */	fmr f1, f31
lbl_80B01D30:
/* 80B01D30  FC 00 F8 50 */	fneg f0, f31
/* 80B01D34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B01D38  40 80 00 08 */	bge lbl_80B01D40
/* 80B01D3C  FC 20 00 90 */	fmr f1, f0
lbl_80B01D40:
/* 80B01D40  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 80B01D44  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80B01D48  4B 76 E9 F8 */	b cLib_chaseF__FPfff
/* 80B01D4C  7F 43 D3 78 */	mr r3, r26
/* 80B01D50  7F 84 E3 78 */	mr r4, r28
/* 80B01D54  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80B01D58  4B 76 4D DC */	b __mi__4cXyzCFRC3Vec
/* 80B01D5C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B01D60  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B01D64  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80B01D68  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80B01D6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B01D70  4B 86 04 AC */	b _restgpr_26
/* 80B01D74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B01D78  7C 08 03 A6 */	mtlr r0
/* 80B01D7C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B01D80  4E 80 00 20 */	blr 
