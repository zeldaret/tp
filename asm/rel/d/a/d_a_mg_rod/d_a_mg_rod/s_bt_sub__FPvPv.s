lbl_804B4CF0:
/* 804B4CF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B4CF4  7C 08 02 A6 */	mflr r0
/* 804B4CF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B4CFC  39 61 00 30 */	addi r11, r1, 0x30
/* 804B4D00  4B EA D4 DD */	bl _savegpr_29
/* 804B4D04  7C 7D 1B 78 */	mr r29, r3
/* 804B4D08  7C 9E 23 78 */	mr r30, r4
/* 804B4D0C  3C 80 80 4C */	lis r4, lit_3879@ha /* 0x804BB534@ha */
/* 804B4D10  3B E4 B5 34 */	addi r31, r4, lit_3879@l /* 0x804BB534@l */
/* 804B4D14  4B B6 3F CD */	bl fopAc_IsActor__FPv
/* 804B4D18  2C 03 00 00 */	cmpwi r3, 0
/* 804B4D1C  41 82 01 2C */	beq lbl_804B4E48
/* 804B4D20  A8 1D 00 08 */	lha r0, 8(r29)
/* 804B4D24  2C 00 01 36 */	cmpwi r0, 0x136
/* 804B4D28  40 82 01 20 */	bne lbl_804B4E48
/* 804B4D2C  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 804B4D30  28 00 00 14 */	cmplwi r0, 0x14
/* 804B4D34  40 82 01 14 */	bne lbl_804B4E48
/* 804B4D38  38 61 00 0C */	addi r3, r1, 0xc
/* 804B4D3C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B4D40  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804B4D44  4B DB 1D F1 */	bl __mi__4cXyzCFRC3Vec
/* 804B4D48  38 61 00 0C */	addi r3, r1, 0xc
/* 804B4D4C  4B E9 23 ED */	bl PSVECSquareMag
/* 804B4D50  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B4D54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B4D58  40 81 00 58 */	ble lbl_804B4DB0
/* 804B4D5C  FC 00 08 34 */	frsqrte f0, f1
/* 804B4D60  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 804B4D64  FC 44 00 32 */	fmul f2, f4, f0
/* 804B4D68  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 804B4D6C  FC 00 00 32 */	fmul f0, f0, f0
/* 804B4D70  FC 01 00 32 */	fmul f0, f1, f0
/* 804B4D74  FC 03 00 28 */	fsub f0, f3, f0
/* 804B4D78  FC 02 00 32 */	fmul f0, f2, f0
/* 804B4D7C  FC 44 00 32 */	fmul f2, f4, f0
/* 804B4D80  FC 00 00 32 */	fmul f0, f0, f0
/* 804B4D84  FC 01 00 32 */	fmul f0, f1, f0
/* 804B4D88  FC 03 00 28 */	fsub f0, f3, f0
/* 804B4D8C  FC 02 00 32 */	fmul f0, f2, f0
/* 804B4D90  FC 44 00 32 */	fmul f2, f4, f0
/* 804B4D94  FC 00 00 32 */	fmul f0, f0, f0
/* 804B4D98  FC 01 00 32 */	fmul f0, f1, f0
/* 804B4D9C  FC 03 00 28 */	fsub f0, f3, f0
/* 804B4DA0  FC 02 00 32 */	fmul f0, f2, f0
/* 804B4DA4  FC 21 00 32 */	fmul f1, f1, f0
/* 804B4DA8  FC 20 08 18 */	frsp f1, f1
/* 804B4DAC  48 00 00 88 */	b lbl_804B4E34
lbl_804B4DB0:
/* 804B4DB0  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 804B4DB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B4DB8  40 80 00 10 */	bge lbl_804B4DC8
/* 804B4DBC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B4DC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804B4DC4  48 00 00 70 */	b lbl_804B4E34
lbl_804B4DC8:
/* 804B4DC8  D0 21 00 08 */	stfs f1, 8(r1)
/* 804B4DCC  80 81 00 08 */	lwz r4, 8(r1)
/* 804B4DD0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B4DD4  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B4DD8  7C 03 00 00 */	cmpw r3, r0
/* 804B4DDC  41 82 00 14 */	beq lbl_804B4DF0
/* 804B4DE0  40 80 00 40 */	bge lbl_804B4E20
/* 804B4DE4  2C 03 00 00 */	cmpwi r3, 0
/* 804B4DE8  41 82 00 20 */	beq lbl_804B4E08
/* 804B4DEC  48 00 00 34 */	b lbl_804B4E20
lbl_804B4DF0:
/* 804B4DF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B4DF4  41 82 00 0C */	beq lbl_804B4E00
/* 804B4DF8  38 00 00 01 */	li r0, 1
/* 804B4DFC  48 00 00 28 */	b lbl_804B4E24
lbl_804B4E00:
/* 804B4E00  38 00 00 02 */	li r0, 2
/* 804B4E04  48 00 00 20 */	b lbl_804B4E24
lbl_804B4E08:
/* 804B4E08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B4E0C  41 82 00 0C */	beq lbl_804B4E18
/* 804B4E10  38 00 00 05 */	li r0, 5
/* 804B4E14  48 00 00 10 */	b lbl_804B4E24
lbl_804B4E18:
/* 804B4E18  38 00 00 03 */	li r0, 3
/* 804B4E1C  48 00 00 08 */	b lbl_804B4E24
lbl_804B4E20:
/* 804B4E20  38 00 00 04 */	li r0, 4
lbl_804B4E24:
/* 804B4E24  2C 00 00 01 */	cmpwi r0, 1
/* 804B4E28  40 82 00 0C */	bne lbl_804B4E34
/* 804B4E2C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B4E30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804B4E34:
/* 804B4E34  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 804B4E38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B4E3C  40 80 00 0C */	bge lbl_804B4E48
/* 804B4E40  7F A3 EB 78 */	mr r3, r29
/* 804B4E44  48 00 00 08 */	b lbl_804B4E4C
lbl_804B4E48:
/* 804B4E48  38 60 00 00 */	li r3, 0
lbl_804B4E4C:
/* 804B4E4C  39 61 00 30 */	addi r11, r1, 0x30
/* 804B4E50  4B EA D3 D9 */	bl _restgpr_29
/* 804B4E54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B4E58  7C 08 03 A6 */	mtlr r0
/* 804B4E5C  38 21 00 30 */	addi r1, r1, 0x30
/* 804B4E60  4E 80 00 20 */	blr 
