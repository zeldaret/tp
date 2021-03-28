lbl_8057DB84:
/* 8057DB84  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8057DB88  7C 08 02 A6 */	mflr r0
/* 8057DB8C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8057DB90  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8057DB94  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 8057DB98  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8057DB9C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 8057DBA0  39 61 00 90 */	addi r11, r1, 0x90
/* 8057DBA4  4B DE 46 28 */	b _savegpr_25
/* 8057DBA8  7C 79 1B 78 */	mr r25, r3
/* 8057DBAC  3C 60 80 58 */	lis r3, lit_3656@ha
/* 8057DBB0  3B E3 F5 70 */	addi r31, r3, lit_3656@l
/* 8057DBB4  80 19 05 D0 */	lwz r0, 0x5d0(r25)
/* 8057DBB8  54 1E BF FE */	rlwinm r30, r0, 0x17, 0x1f, 0x1f
/* 8057DBBC  54 1D CF FE */	rlwinm r29, r0, 0x19, 0x1f, 0x1f
/* 8057DBC0  54 1C DF FE */	rlwinm r28, r0, 0x1b, 0x1f, 0x1f
/* 8057DBC4  54 1B AF FE */	rlwinm r27, r0, 0x15, 0x1f, 0x1f
/* 8057DBC8  54 1A A7 FE */	rlwinm r26, r0, 0x14, 0x1f, 0x1f
/* 8057DBCC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8057DBD0  41 82 02 68 */	beq lbl_8057DE38
/* 8057DBD4  38 79 04 F8 */	addi r3, r25, 0x4f8
/* 8057DBD8  4B DC 95 60 */	b PSVECSquareMag
/* 8057DBDC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8057DBE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057DBE4  40 81 00 58 */	ble lbl_8057DC3C
/* 8057DBE8  FC 00 08 34 */	frsqrte f0, f1
/* 8057DBEC  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 8057DBF0  FC 44 00 32 */	fmul f2, f4, f0
/* 8057DBF4  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 8057DBF8  FC 00 00 32 */	fmul f0, f0, f0
/* 8057DBFC  FC 01 00 32 */	fmul f0, f1, f0
/* 8057DC00  FC 03 00 28 */	fsub f0, f3, f0
/* 8057DC04  FC 02 00 32 */	fmul f0, f2, f0
/* 8057DC08  FC 44 00 32 */	fmul f2, f4, f0
/* 8057DC0C  FC 00 00 32 */	fmul f0, f0, f0
/* 8057DC10  FC 01 00 32 */	fmul f0, f1, f0
/* 8057DC14  FC 03 00 28 */	fsub f0, f3, f0
/* 8057DC18  FC 02 00 32 */	fmul f0, f2, f0
/* 8057DC1C  FC 44 00 32 */	fmul f2, f4, f0
/* 8057DC20  FC 00 00 32 */	fmul f0, f0, f0
/* 8057DC24  FC 01 00 32 */	fmul f0, f1, f0
/* 8057DC28  FC 03 00 28 */	fsub f0, f3, f0
/* 8057DC2C  FC 02 00 32 */	fmul f0, f2, f0
/* 8057DC30  FC 21 00 32 */	fmul f1, f1, f0
/* 8057DC34  FC 20 08 18 */	frsp f1, f1
/* 8057DC38  48 00 00 88 */	b lbl_8057DCC0
lbl_8057DC3C:
/* 8057DC3C  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 8057DC40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057DC44  40 80 00 10 */	bge lbl_8057DC54
/* 8057DC48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057DC4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8057DC50  48 00 00 70 */	b lbl_8057DCC0
lbl_8057DC54:
/* 8057DC54  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8057DC58  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8057DC5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8057DC60  3C 00 7F 80 */	lis r0, 0x7f80
/* 8057DC64  7C 03 00 00 */	cmpw r3, r0
/* 8057DC68  41 82 00 14 */	beq lbl_8057DC7C
/* 8057DC6C  40 80 00 40 */	bge lbl_8057DCAC
/* 8057DC70  2C 03 00 00 */	cmpwi r3, 0
/* 8057DC74  41 82 00 20 */	beq lbl_8057DC94
/* 8057DC78  48 00 00 34 */	b lbl_8057DCAC
lbl_8057DC7C:
/* 8057DC7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057DC80  41 82 00 0C */	beq lbl_8057DC8C
/* 8057DC84  38 00 00 01 */	li r0, 1
/* 8057DC88  48 00 00 28 */	b lbl_8057DCB0
lbl_8057DC8C:
/* 8057DC8C  38 00 00 02 */	li r0, 2
/* 8057DC90  48 00 00 20 */	b lbl_8057DCB0
lbl_8057DC94:
/* 8057DC94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057DC98  41 82 00 0C */	beq lbl_8057DCA4
/* 8057DC9C  38 00 00 05 */	li r0, 5
/* 8057DCA0  48 00 00 10 */	b lbl_8057DCB0
lbl_8057DCA4:
/* 8057DCA4  38 00 00 03 */	li r0, 3
/* 8057DCA8  48 00 00 08 */	b lbl_8057DCB0
lbl_8057DCAC:
/* 8057DCAC  38 00 00 04 */	li r0, 4
lbl_8057DCB0:
/* 8057DCB0  2C 00 00 01 */	cmpwi r0, 1
/* 8057DCB4  40 82 00 0C */	bne lbl_8057DCC0
/* 8057DCB8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057DCBC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8057DCC0:
/* 8057DCC0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8057DCC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057DCC8  40 81 01 70 */	ble lbl_8057DE38
/* 8057DCCC  C0 59 04 F8 */	lfs f2, 0x4f8(r25)
/* 8057DCD0  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8057DCD4  C0 39 04 FC */	lfs f1, 0x4fc(r25)
/* 8057DCD8  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8057DCDC  C0 19 05 00 */	lfs f0, 0x500(r25)
/* 8057DCE0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8057DCE4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8057DCE8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8057DCEC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8057DCF0  38 61 00 58 */	addi r3, r1, 0x58
/* 8057DCF4  38 99 07 7C */	addi r4, r25, 0x77c
/* 8057DCF8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8057DCFC  4B FF FA FD */	bl bound__FP4cXyzRC13cBgS_PolyInfof
/* 8057DD00  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8057DD04  D0 19 04 F8 */	stfs f0, 0x4f8(r25)
/* 8057DD08  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8057DD0C  D0 19 04 FC */	stfs f0, 0x4fc(r25)
/* 8057DD10  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8057DD14  D0 19 05 00 */	stfs f0, 0x500(r25)
/* 8057DD18  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8057DD1C  D0 19 04 FC */	stfs f0, 0x4fc(r25)
/* 8057DD20  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8057DD24  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8057DD28  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8057DD2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8057DD30  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8057DD34  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8057DD38  38 61 00 1C */	addi r3, r1, 0x1c
/* 8057DD3C  4B DC 93 FC */	b PSVECSquareMag
/* 8057DD40  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8057DD44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057DD48  40 81 00 58 */	ble lbl_8057DDA0
/* 8057DD4C  FC 00 08 34 */	frsqrte f0, f1
/* 8057DD50  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 8057DD54  FC 44 00 32 */	fmul f2, f4, f0
/* 8057DD58  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 8057DD5C  FC 00 00 32 */	fmul f0, f0, f0
/* 8057DD60  FC 01 00 32 */	fmul f0, f1, f0
/* 8057DD64  FC 03 00 28 */	fsub f0, f3, f0
/* 8057DD68  FC 02 00 32 */	fmul f0, f2, f0
/* 8057DD6C  FC 44 00 32 */	fmul f2, f4, f0
/* 8057DD70  FC 00 00 32 */	fmul f0, f0, f0
/* 8057DD74  FC 01 00 32 */	fmul f0, f1, f0
/* 8057DD78  FC 03 00 28 */	fsub f0, f3, f0
/* 8057DD7C  FC 02 00 32 */	fmul f0, f2, f0
/* 8057DD80  FC 44 00 32 */	fmul f2, f4, f0
/* 8057DD84  FC 00 00 32 */	fmul f0, f0, f0
/* 8057DD88  FC 01 00 32 */	fmul f0, f1, f0
/* 8057DD8C  FC 03 00 28 */	fsub f0, f3, f0
/* 8057DD90  FC 02 00 32 */	fmul f0, f2, f0
/* 8057DD94  FC 21 00 32 */	fmul f1, f1, f0
/* 8057DD98  FC 20 08 18 */	frsp f1, f1
/* 8057DD9C  48 00 00 88 */	b lbl_8057DE24
lbl_8057DDA0:
/* 8057DDA0  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 8057DDA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057DDA8  40 80 00 10 */	bge lbl_8057DDB8
/* 8057DDAC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057DDB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8057DDB4  48 00 00 70 */	b lbl_8057DE24
lbl_8057DDB8:
/* 8057DDB8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8057DDBC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8057DDC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8057DDC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8057DDC8  7C 03 00 00 */	cmpw r3, r0
/* 8057DDCC  41 82 00 14 */	beq lbl_8057DDE0
/* 8057DDD0  40 80 00 40 */	bge lbl_8057DE10
/* 8057DDD4  2C 03 00 00 */	cmpwi r3, 0
/* 8057DDD8  41 82 00 20 */	beq lbl_8057DDF8
/* 8057DDDC  48 00 00 34 */	b lbl_8057DE10
lbl_8057DDE0:
/* 8057DDE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057DDE4  41 82 00 0C */	beq lbl_8057DDF0
/* 8057DDE8  38 00 00 01 */	li r0, 1
/* 8057DDEC  48 00 00 28 */	b lbl_8057DE14
lbl_8057DDF0:
/* 8057DDF0  38 00 00 02 */	li r0, 2
/* 8057DDF4  48 00 00 20 */	b lbl_8057DE14
lbl_8057DDF8:
/* 8057DDF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057DDFC  41 82 00 0C */	beq lbl_8057DE08
/* 8057DE00  38 00 00 05 */	li r0, 5
/* 8057DE04  48 00 00 10 */	b lbl_8057DE14
lbl_8057DE08:
/* 8057DE08  38 00 00 03 */	li r0, 3
/* 8057DE0C  48 00 00 08 */	b lbl_8057DE14
lbl_8057DE10:
/* 8057DE10  38 00 00 04 */	li r0, 4
lbl_8057DE14:
/* 8057DE14  2C 00 00 01 */	cmpwi r0, 1
/* 8057DE18  40 82 00 0C */	bne lbl_8057DE24
/* 8057DE1C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057DE20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8057DE24:
/* 8057DE24  D0 39 05 2C */	stfs f1, 0x52c(r25)
/* 8057DE28  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8057DE2C  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 8057DE30  4B CE 98 44 */	b cM_atan2s__Fff
/* 8057DE34  B0 79 04 DE */	sth r3, 0x4de(r25)
lbl_8057DE38:
/* 8057DE38  28 1D 00 00 */	cmplwi r29, 0
/* 8057DE3C  41 82 01 40 */	beq lbl_8057DF7C
/* 8057DE40  38 79 04 F8 */	addi r3, r25, 0x4f8
/* 8057DE44  4B DC 92 F4 */	b PSVECSquareMag
/* 8057DE48  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8057DE4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057DE50  40 81 00 58 */	ble lbl_8057DEA8
/* 8057DE54  FC 00 08 34 */	frsqrte f0, f1
/* 8057DE58  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 8057DE5C  FC 44 00 32 */	fmul f2, f4, f0
/* 8057DE60  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 8057DE64  FC 00 00 32 */	fmul f0, f0, f0
/* 8057DE68  FC 01 00 32 */	fmul f0, f1, f0
/* 8057DE6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8057DE70  FC 02 00 32 */	fmul f0, f2, f0
/* 8057DE74  FC 44 00 32 */	fmul f2, f4, f0
/* 8057DE78  FC 00 00 32 */	fmul f0, f0, f0
/* 8057DE7C  FC 01 00 32 */	fmul f0, f1, f0
/* 8057DE80  FC 03 00 28 */	fsub f0, f3, f0
/* 8057DE84  FC 02 00 32 */	fmul f0, f2, f0
/* 8057DE88  FC 44 00 32 */	fmul f2, f4, f0
/* 8057DE8C  FC 00 00 32 */	fmul f0, f0, f0
/* 8057DE90  FC 01 00 32 */	fmul f0, f1, f0
/* 8057DE94  FC 03 00 28 */	fsub f0, f3, f0
/* 8057DE98  FC 02 00 32 */	fmul f0, f2, f0
/* 8057DE9C  FC 21 00 32 */	fmul f1, f1, f0
/* 8057DEA0  FC 20 08 18 */	frsp f1, f1
/* 8057DEA4  48 00 00 88 */	b lbl_8057DF2C
lbl_8057DEA8:
/* 8057DEA8  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 8057DEAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057DEB0  40 80 00 10 */	bge lbl_8057DEC0
/* 8057DEB4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057DEB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8057DEBC  48 00 00 70 */	b lbl_8057DF2C
lbl_8057DEC0:
/* 8057DEC0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8057DEC4  80 81 00 08 */	lwz r4, 8(r1)
/* 8057DEC8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8057DECC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8057DED0  7C 03 00 00 */	cmpw r3, r0
/* 8057DED4  41 82 00 14 */	beq lbl_8057DEE8
/* 8057DED8  40 80 00 40 */	bge lbl_8057DF18
/* 8057DEDC  2C 03 00 00 */	cmpwi r3, 0
/* 8057DEE0  41 82 00 20 */	beq lbl_8057DF00
/* 8057DEE4  48 00 00 34 */	b lbl_8057DF18
lbl_8057DEE8:
/* 8057DEE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057DEEC  41 82 00 0C */	beq lbl_8057DEF8
/* 8057DEF0  38 00 00 01 */	li r0, 1
/* 8057DEF4  48 00 00 28 */	b lbl_8057DF1C
lbl_8057DEF8:
/* 8057DEF8  38 00 00 02 */	li r0, 2
/* 8057DEFC  48 00 00 20 */	b lbl_8057DF1C
lbl_8057DF00:
/* 8057DF00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057DF04  41 82 00 0C */	beq lbl_8057DF10
/* 8057DF08  38 00 00 05 */	li r0, 5
/* 8057DF0C  48 00 00 10 */	b lbl_8057DF1C
lbl_8057DF10:
/* 8057DF10  38 00 00 03 */	li r0, 3
/* 8057DF14  48 00 00 08 */	b lbl_8057DF1C
lbl_8057DF18:
/* 8057DF18  38 00 00 04 */	li r0, 4
lbl_8057DF1C:
/* 8057DF1C  2C 00 00 01 */	cmpwi r0, 1
/* 8057DF20  40 82 00 0C */	bne lbl_8057DF2C
/* 8057DF24  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057DF28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8057DF2C:
/* 8057DF2C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8057DF30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057DF34  40 81 00 48 */	ble lbl_8057DF7C
/* 8057DF38  C3 F9 05 98 */	lfs f31, 0x598(r25)
/* 8057DF3C  38 79 04 F8 */	addi r3, r25, 0x4f8
/* 8057DF40  38 99 06 94 */	addi r4, r25, 0x694
/* 8057DF44  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8057DF48  4B FF F8 B1 */	bl bound__FP4cXyzRC13cBgS_PolyInfof
/* 8057DF4C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8057DF50  FC 00 F8 50 */	fneg f0, f31
/* 8057DF54  EC 01 00 32 */	fmuls f0, f1, f0
/* 8057DF58  D0 19 04 FC */	stfs f0, 0x4fc(r25)
/* 8057DF5C  C0 19 04 FC */	lfs f0, 0x4fc(r25)
/* 8057DF60  FC 00 02 10 */	fabs f0, f0
/* 8057DF64  FC 20 00 18 */	frsp f1, f0
/* 8057DF68  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8057DF6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057DF70  40 80 00 0C */	bge lbl_8057DF7C
/* 8057DF74  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8057DF78  D0 19 04 FC */	stfs f0, 0x4fc(r25)
lbl_8057DF7C:
/* 8057DF7C  28 1E 00 00 */	cmplwi r30, 0
/* 8057DF80  41 82 00 30 */	beq lbl_8057DFB0
/* 8057DF84  C3 F9 05 98 */	lfs f31, 0x598(r25)
/* 8057DF88  38 79 04 F8 */	addi r3, r25, 0x4f8
/* 8057DF8C  38 99 06 94 */	addi r4, r25, 0x694
/* 8057DF90  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8057DF94  4B FF F8 65 */	bl bound__FP4cXyzRC13cBgS_PolyInfof
/* 8057DF98  C0 59 04 FC */	lfs f2, 0x4fc(r25)
/* 8057DF9C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8057DFA0  FC 00 F8 50 */	fneg f0, f31
/* 8057DFA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8057DFA8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8057DFAC  D0 19 04 FC */	stfs f0, 0x4fc(r25)
lbl_8057DFB0:
/* 8057DFB0  28 1D 00 00 */	cmplwi r29, 0
/* 8057DFB4  41 82 00 18 */	beq lbl_8057DFCC
/* 8057DFB8  88 19 05 78 */	lbz r0, 0x578(r25)
/* 8057DFBC  28 00 00 02 */	cmplwi r0, 2
/* 8057DFC0  40 82 00 0C */	bne lbl_8057DFCC
/* 8057DFC4  7F 23 CB 78 */	mr r3, r25
/* 8057DFC8  48 00 07 89 */	bl mode_init_roll__10daGpTaru_cFv
lbl_8057DFCC:
/* 8057DFCC  88 19 05 78 */	lbz r0, 0x578(r25)
/* 8057DFD0  28 00 00 00 */	cmplwi r0, 0
/* 8057DFD4  41 82 00 14 */	beq lbl_8057DFE8
/* 8057DFD8  28 00 00 02 */	cmplwi r0, 2
/* 8057DFDC  41 82 00 0C */	beq lbl_8057DFE8
/* 8057DFE0  28 00 00 01 */	cmplwi r0, 1
/* 8057DFE4  40 82 00 D0 */	bne lbl_8057E0B4
lbl_8057DFE8:
/* 8057DFE8  C3 F9 07 70 */	lfs f31, 0x770(r25)
/* 8057DFEC  28 1B 00 00 */	cmplwi r27, 0
/* 8057DFF0  41 82 00 C4 */	beq lbl_8057E0B4
/* 8057DFF4  C3 D9 04 FC */	lfs f30, 0x4fc(r25)
/* 8057DFF8  7F 23 CB 78 */	mr r3, r25
/* 8057DFFC  4B FF FB 65 */	bl chkWaterLineIn__10daGpTaru_cFv
/* 8057E000  2C 03 00 00 */	cmpwi r3, 0
/* 8057E004  41 82 00 18 */	beq lbl_8057E01C
/* 8057E008  88 19 05 78 */	lbz r0, 0x578(r25)
/* 8057E00C  28 00 00 01 */	cmplwi r0, 1
/* 8057E010  41 82 00 0C */	beq lbl_8057E01C
/* 8057E014  7F 23 CB 78 */	mr r3, r25
/* 8057E018  48 00 0F E5 */	bl mode_init_sink__10daGpTaru_cFv
lbl_8057E01C:
/* 8057E01C  28 1A 00 00 */	cmplwi r26, 0
/* 8057E020  41 82 00 94 */	beq lbl_8057E0B4
/* 8057E024  88 19 05 A0 */	lbz r0, 0x5a0(r25)
/* 8057E028  28 00 00 00 */	cmplwi r0, 0
/* 8057E02C  40 82 00 88 */	bne lbl_8057E0B4
/* 8057E030  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 8057E034  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8057E038  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 8057E03C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8057E040  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 8057E044  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8057E048  D3 E1 00 44 */	stfs f31, 0x44(r1)
/* 8057E04C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8057E050  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8057E054  40 80 00 60 */	bge lbl_8057E0B4
/* 8057E058  38 61 00 40 */	addi r3, r1, 0x40
/* 8057E05C  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8057E060  38 80 00 00 */	li r4, 0
/* 8057E064  4B AA 18 18 */	b fopKyM_createWpillar__FPC4cXyzfi
/* 8057E068  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 8057E06C  7C 03 07 74 */	extsb r3, r0
/* 8057E070  4B AA EF FC */	b dComIfGp_getReverb__Fi
/* 8057E074  7C 67 1B 78 */	mr r7, r3
/* 8057E078  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008002A@ha */
/* 8057E07C  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0008002A@l */
/* 8057E080  90 01 00 18 */	stw r0, 0x18(r1)
/* 8057E084  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8057E088  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8057E08C  80 63 00 00 */	lwz r3, 0(r3)
/* 8057E090  38 81 00 18 */	addi r4, r1, 0x18
/* 8057E094  38 B9 05 38 */	addi r5, r25, 0x538
/* 8057E098  38 C0 00 00 */	li r6, 0
/* 8057E09C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8057E0A0  FC 40 08 90 */	fmr f2, f1
/* 8057E0A4  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 8057E0A8  FC 80 18 90 */	fmr f4, f3
/* 8057E0AC  39 00 00 00 */	li r8, 0
/* 8057E0B0  4B D2 D8 D4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8057E0B4:
/* 8057E0B4  28 1C 00 00 */	cmplwi r28, 0
/* 8057E0B8  41 82 00 B4 */	beq lbl_8057E16C
/* 8057E0BC  88 19 05 78 */	lbz r0, 0x578(r25)
/* 8057E0C0  28 00 00 02 */	cmplwi r0, 2
/* 8057E0C4  41 82 00 0C */	beq lbl_8057E0D0
/* 8057E0C8  28 00 00 03 */	cmplwi r0, 3
/* 8057E0CC  40 82 00 A0 */	bne lbl_8057E16C
lbl_8057E0D0:
/* 8057E0D0  28 1B 00 00 */	cmplwi r27, 0
/* 8057E0D4  40 82 00 98 */	bne lbl_8057E16C
/* 8057E0D8  3C 60 80 58 */	lis r3, l_HIO@ha
/* 8057E0DC  38 63 F8 E4 */	addi r3, r3, l_HIO@l
/* 8057E0E0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8057E0E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8057E0E8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8057E0EC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8057E0F0  38 61 00 28 */	addi r3, r1, 0x28
/* 8057E0F4  7C 64 1B 78 */	mr r4, r3
/* 8057E0F8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8057E0FC  4B DC 8F DC */	b PSVECScale
/* 8057E100  38 60 03 01 */	li r3, 0x301
/* 8057E104  38 80 00 03 */	li r4, 3
/* 8057E108  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 8057E10C  38 C0 FF FF */	li r6, -1
/* 8057E110  38 E0 00 00 */	li r7, 0
/* 8057E114  39 01 00 28 */	addi r8, r1, 0x28
/* 8057E118  39 20 FF FF */	li r9, -1
/* 8057E11C  4B A9 BC 7C */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8057E120  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 8057E124  7C 03 07 74 */	extsb r3, r0
/* 8057E128  4B AA EF 44 */	b dComIfGp_getReverb__Fi
/* 8057E12C  7C 67 1B 78 */	mr r7, r3
/* 8057E130  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080038@ha */
/* 8057E134  38 03 00 38 */	addi r0, r3, 0x0038 /* 0x00080038@l */
/* 8057E138  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E13C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8057E140  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8057E144  80 63 00 00 */	lwz r3, 0(r3)
/* 8057E148  38 81 00 14 */	addi r4, r1, 0x14
/* 8057E14C  38 B9 05 38 */	addi r5, r25, 0x538
/* 8057E150  38 C0 00 00 */	li r6, 0
/* 8057E154  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8057E158  FC 40 08 90 */	fmr f2, f1
/* 8057E15C  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 8057E160  FC 80 18 90 */	fmr f4, f3
/* 8057E164  39 00 00 00 */	li r8, 0
/* 8057E168  4B D2 D8 1C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8057E16C:
/* 8057E16C  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 8057E170  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8057E174  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 8057E178  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8057E17C  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 8057E180  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8057E184  C0 39 07 70 */	lfs f1, 0x770(r25)
/* 8057E188  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8057E18C  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 8057E190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057E194  40 81 00 68 */	ble lbl_8057E1FC
/* 8057E198  88 19 05 78 */	lbz r0, 0x578(r25)
/* 8057E19C  28 00 00 06 */	cmplwi r0, 6
/* 8057E1A0  40 82 00 14 */	bne lbl_8057E1B4
/* 8057E1A4  7F 23 CB 78 */	mr r3, r25
/* 8057E1A8  4B FF F9 95 */	bl chkSinkAll__10daGpTaru_cFv
/* 8057E1AC  2C 03 00 00 */	cmpwi r3, 0
/* 8057E1B0  41 82 00 38 */	beq lbl_8057E1E8
lbl_8057E1B4:
/* 8057E1B4  88 19 05 78 */	lbz r0, 0x578(r25)
/* 8057E1B8  28 00 00 00 */	cmplwi r0, 0
/* 8057E1BC  40 82 00 0C */	bne lbl_8057E1C8
/* 8057E1C0  28 1C 00 00 */	cmplwi r28, 0
/* 8057E1C4  40 82 00 24 */	bne lbl_8057E1E8
lbl_8057E1C8:
/* 8057E1C8  28 00 00 01 */	cmplwi r0, 1
/* 8057E1CC  40 82 00 30 */	bne lbl_8057E1FC
/* 8057E1D0  28 1A 00 00 */	cmplwi r26, 0
/* 8057E1D4  41 82 00 28 */	beq lbl_8057E1FC
/* 8057E1D8  7F 23 CB 78 */	mr r3, r25
/* 8057E1DC  4B FF F9 61 */	bl chkSinkAll__10daGpTaru_cFv
/* 8057E1E0  2C 03 00 00 */	cmpwi r3, 0
/* 8057E1E4  40 82 00 18 */	bne lbl_8057E1FC
lbl_8057E1E8:
/* 8057E1E8  38 79 09 50 */	addi r3, r25, 0x950
/* 8057E1EC  38 81 00 34 */	addi r4, r1, 0x34
/* 8057E1F0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8057E1F4  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8057E1F8  4B A9 EF 14 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_8057E1FC:
/* 8057E1FC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 8057E200  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8057E204  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8057E208  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8057E20C  39 61 00 90 */	addi r11, r1, 0x90
/* 8057E210  4B DE 40 08 */	b _restgpr_25
/* 8057E214  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8057E218  7C 08 03 A6 */	mtlr r0
/* 8057E21C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8057E220  4E 80 00 20 */	blr 
