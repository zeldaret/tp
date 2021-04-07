lbl_80251B64:
/* 80251B64  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80251B68  7C 08 02 A6 */	mflr r0
/* 80251B6C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80251B70  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80251B74  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80251B78  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80251B7C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80251B80  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80251B84  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 80251B88  39 61 00 80 */	addi r11, r1, 0x80
/* 80251B8C  48 11 06 41 */	bl _savegpr_25
/* 80251B90  7C 7C 1B 78 */	mr r28, r3
/* 80251B94  38 E0 00 00 */	li r7, 0
/* 80251B98  38 60 00 00 */	li r3, 0
/* 80251B9C  38 80 00 00 */	li r4, 0
/* 80251BA0  38 AD 8B E0 */	la r5, Zero__5csXyz(r13) /* 80451160-_SDA_BASE_ */
/* 80251BA4  C0 02 B3 E8 */	lfs f0, lit_3864(r2)
/* 80251BA8  48 00 00 34 */	b lbl_80251BDC
lbl_80251BAC:
/* 80251BAC  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 80251BB0  7C DC 22 14 */	add r6, r28, r4
/* 80251BB4  B0 06 00 34 */	sth r0, 0x34(r6)
/* 80251BB8  A8 05 00 02 */	lha r0, 2(r5)
/* 80251BBC  B0 06 00 36 */	sth r0, 0x36(r6)
/* 80251BC0  A8 05 00 04 */	lha r0, 4(r5)
/* 80251BC4  B0 06 00 38 */	sth r0, 0x38(r6)
/* 80251BC8  38 03 00 AC */	addi r0, r3, 0xac
/* 80251BCC  7C 1C 05 2E */	stfsx f0, r28, r0
/* 80251BD0  38 E7 00 01 */	addi r7, r7, 1
/* 80251BD4  38 63 00 04 */	addi r3, r3, 4
/* 80251BD8  38 84 00 06 */	addi r4, r4, 6
lbl_80251BDC:
/* 80251BDC  80 1C 00 CC */	lwz r0, 0xcc(r28)
/* 80251BE0  7C 07 00 00 */	cmpw r7, r0
/* 80251BE4  41 80 FF C8 */	blt lbl_80251BAC
/* 80251BE8  3B A0 00 00 */	li r29, 0
/* 80251BEC  3B 60 00 00 */	li r27, 0
/* 80251BF0  3B 40 00 00 */	li r26, 0
/* 80251BF4  3B 20 00 00 */	li r25, 0
/* 80251BF8  C3 A2 B4 18 */	lfs f29, lit_3970(r2)
/* 80251BFC  CB C2 B4 10 */	lfd f30, lit_3873(r2)
/* 80251C00  3F E0 43 30 */	lis r31, 0x4330
/* 80251C04  C3 E2 B3 E8 */	lfs f31, lit_3864(r2)
/* 80251C08  48 00 02 B4 */	b lbl_80251EBC
lbl_80251C0C:
/* 80251C0C  7F DC CA 14 */	add r30, r28, r25
/* 80251C10  A8 1E 00 4C */	lha r0, 0x4c(r30)
/* 80251C14  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80251C18  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80251C1C  93 E1 00 38 */	stw r31, 0x38(r1)
/* 80251C20  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80251C24  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80251C28  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80251C2C  FC 00 00 1E */	fctiwz f0, f0
/* 80251C30  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80251C34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80251C38  B0 1E 00 4C */	sth r0, 0x4c(r30)
/* 80251C3C  A8 1E 00 4E */	lha r0, 0x4e(r30)
/* 80251C40  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80251C44  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80251C48  93 E1 00 48 */	stw r31, 0x48(r1)
/* 80251C4C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80251C50  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80251C54  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80251C58  FC 00 00 1E */	fctiwz f0, f0
/* 80251C5C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80251C60  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80251C64  B0 1E 00 4E */	sth r0, 0x4e(r30)
/* 80251C68  38 61 00 1C */	addi r3, r1, 0x1c
/* 80251C6C  38 1D 00 01 */	addi r0, r29, 1
/* 80251C70  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80251C74  38 84 00 04 */	addi r4, r4, 4
/* 80251C78  7C 9C 22 14 */	add r4, r28, r4
/* 80251C7C  38 BA 00 04 */	addi r5, r26, 4
/* 80251C80  7C BC 2A 14 */	add r5, r28, r5
/* 80251C84  48 01 4E B1 */	bl __mi__4cXyzCFRC3Vec
/* 80251C88  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80251C8C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80251C90  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80251C94  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80251C98  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80251C9C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80251CA0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80251CA4  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 80251CA8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80251CAC  38 61 00 10 */	addi r3, r1, 0x10
/* 80251CB0  48 0F 54 89 */	bl PSVECSquareMag
/* 80251CB4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80251CB8  40 81 00 58 */	ble lbl_80251D10
/* 80251CBC  FC 00 08 34 */	frsqrte f0, f1
/* 80251CC0  C8 82 B3 F0 */	lfd f4, lit_3866(r2)
/* 80251CC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80251CC8  C8 62 B3 F8 */	lfd f3, lit_3867(r2)
/* 80251CCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80251CD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80251CD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80251CD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80251CDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80251CE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80251CE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80251CE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80251CEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80251CF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80251CF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80251CF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80251CFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80251D00  FC 02 00 32 */	fmul f0, f2, f0
/* 80251D04  FC 41 00 32 */	fmul f2, f1, f0
/* 80251D08  FC 40 10 18 */	frsp f2, f2
/* 80251D0C  48 00 00 90 */	b lbl_80251D9C
lbl_80251D10:
/* 80251D10  C8 02 B4 00 */	lfd f0, lit_3868(r2)
/* 80251D14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80251D18  40 80 00 10 */	bge lbl_80251D28
/* 80251D1C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80251D20  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80251D24  48 00 00 78 */	b lbl_80251D9C
lbl_80251D28:
/* 80251D28  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80251D2C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80251D30  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80251D34  3C 00 7F 80 */	lis r0, 0x7f80
/* 80251D38  7C 03 00 00 */	cmpw r3, r0
/* 80251D3C  41 82 00 14 */	beq lbl_80251D50
/* 80251D40  40 80 00 40 */	bge lbl_80251D80
/* 80251D44  2C 03 00 00 */	cmpwi r3, 0
/* 80251D48  41 82 00 20 */	beq lbl_80251D68
/* 80251D4C  48 00 00 34 */	b lbl_80251D80
lbl_80251D50:
/* 80251D50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80251D54  41 82 00 0C */	beq lbl_80251D60
/* 80251D58  38 00 00 01 */	li r0, 1
/* 80251D5C  48 00 00 28 */	b lbl_80251D84
lbl_80251D60:
/* 80251D60  38 00 00 02 */	li r0, 2
/* 80251D64  48 00 00 20 */	b lbl_80251D84
lbl_80251D68:
/* 80251D68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80251D6C  41 82 00 0C */	beq lbl_80251D78
/* 80251D70  38 00 00 05 */	li r0, 5
/* 80251D74  48 00 00 10 */	b lbl_80251D84
lbl_80251D78:
/* 80251D78  38 00 00 03 */	li r0, 3
/* 80251D7C  48 00 00 08 */	b lbl_80251D84
lbl_80251D80:
/* 80251D80  38 00 00 04 */	li r0, 4
lbl_80251D84:
/* 80251D84  2C 00 00 01 */	cmpwi r0, 1
/* 80251D88  40 82 00 10 */	bne lbl_80251D98
/* 80251D8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80251D90  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80251D94  48 00 00 08 */	b lbl_80251D9C
lbl_80251D98:
/* 80251D98  FC 40 08 90 */	fmr f2, f1
lbl_80251D9C:
/* 80251D9C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80251DA0  48 01 58 D5 */	bl cM_atan2s__Fff
/* 80251DA4  7C 03 00 D0 */	neg r0, r3
/* 80251DA8  B0 1E 00 34 */	sth r0, 0x34(r30)
/* 80251DAC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80251DB0  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80251DB4  48 01 58 C1 */	bl cM_atan2s__Fff
/* 80251DB8  B0 7E 00 36 */	sth r3, 0x36(r30)
/* 80251DBC  38 61 00 28 */	addi r3, r1, 0x28
/* 80251DC0  48 0F 53 79 */	bl PSVECSquareMag
/* 80251DC4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80251DC8  40 81 00 58 */	ble lbl_80251E20
/* 80251DCC  FC 00 08 34 */	frsqrte f0, f1
/* 80251DD0  C8 82 B3 F0 */	lfd f4, lit_3866(r2)
/* 80251DD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80251DD8  C8 62 B3 F8 */	lfd f3, lit_3867(r2)
/* 80251DDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80251DE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80251DE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80251DE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80251DEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80251DF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80251DF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80251DF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80251DFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80251E00  FC 44 00 32 */	fmul f2, f4, f0
/* 80251E04  FC 00 00 32 */	fmul f0, f0, f0
/* 80251E08  FC 01 00 32 */	fmul f0, f1, f0
/* 80251E0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80251E10  FC 02 00 32 */	fmul f0, f2, f0
/* 80251E14  FC 21 00 32 */	fmul f1, f1, f0
/* 80251E18  FC 20 08 18 */	frsp f1, f1
/* 80251E1C  48 00 00 88 */	b lbl_80251EA4
lbl_80251E20:
/* 80251E20  C8 02 B4 00 */	lfd f0, lit_3868(r2)
/* 80251E24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80251E28  40 80 00 10 */	bge lbl_80251E38
/* 80251E2C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80251E30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80251E34  48 00 00 70 */	b lbl_80251EA4
lbl_80251E38:
/* 80251E38  D0 21 00 08 */	stfs f1, 8(r1)
/* 80251E3C  80 81 00 08 */	lwz r4, 8(r1)
/* 80251E40  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80251E44  3C 00 7F 80 */	lis r0, 0x7f80
/* 80251E48  7C 03 00 00 */	cmpw r3, r0
/* 80251E4C  41 82 00 14 */	beq lbl_80251E60
/* 80251E50  40 80 00 40 */	bge lbl_80251E90
/* 80251E54  2C 03 00 00 */	cmpwi r3, 0
/* 80251E58  41 82 00 20 */	beq lbl_80251E78
/* 80251E5C  48 00 00 34 */	b lbl_80251E90
lbl_80251E60:
/* 80251E60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80251E64  41 82 00 0C */	beq lbl_80251E70
/* 80251E68  38 00 00 01 */	li r0, 1
/* 80251E6C  48 00 00 28 */	b lbl_80251E94
lbl_80251E70:
/* 80251E70  38 00 00 02 */	li r0, 2
/* 80251E74  48 00 00 20 */	b lbl_80251E94
lbl_80251E78:
/* 80251E78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80251E7C  41 82 00 0C */	beq lbl_80251E88
/* 80251E80  38 00 00 05 */	li r0, 5
/* 80251E84  48 00 00 10 */	b lbl_80251E94
lbl_80251E88:
/* 80251E88  38 00 00 03 */	li r0, 3
/* 80251E8C  48 00 00 08 */	b lbl_80251E94
lbl_80251E90:
/* 80251E90  38 00 00 04 */	li r0, 4
lbl_80251E94:
/* 80251E94  2C 00 00 01 */	cmpwi r0, 1
/* 80251E98  40 82 00 0C */	bne lbl_80251EA4
/* 80251E9C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80251EA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80251EA4:
/* 80251EA4  38 1B 00 AC */	addi r0, r27, 0xac
/* 80251EA8  7C 3C 05 2E */	stfsx f1, r28, r0
/* 80251EAC  3B BD 00 01 */	addi r29, r29, 1
/* 80251EB0  3B 7B 00 04 */	addi r27, r27, 4
/* 80251EB4  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80251EB8  3B 39 00 06 */	addi r25, r25, 6
lbl_80251EBC:
/* 80251EBC  80 1C 00 CC */	lwz r0, 0xcc(r28)
/* 80251EC0  7C 1D 00 00 */	cmpw r29, r0
/* 80251EC4  41 80 FD 48 */	blt lbl_80251C0C
/* 80251EC8  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80251ECC  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80251ED0  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80251ED4  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80251ED8  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 80251EDC  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80251EE0  39 61 00 80 */	addi r11, r1, 0x80
/* 80251EE4  48 11 03 35 */	bl _restgpr_25
/* 80251EE8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80251EEC  7C 08 03 A6 */	mtlr r0
/* 80251EF0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80251EF4  4E 80 00 20 */	blr 
