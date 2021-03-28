lbl_8019DD6C:
/* 8019DD6C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8019DD70  7C 08 02 A6 */	mflr r0
/* 8019DD74  90 01 00 64 */	stw r0, 0x64(r1)
/* 8019DD78  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8019DD7C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8019DD80  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8019DD84  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8019DD88  39 61 00 40 */	addi r11, r1, 0x40
/* 8019DD8C  48 1C 44 31 */	bl _savegpr_21
/* 8019DD90  7C 76 1B 78 */	mr r22, r3
/* 8019DD94  7C 97 23 78 */	mr r23, r4
/* 8019DD98  C3 E2 A2 70 */	lfs f31, lit_4850(r2)
/* 8019DD9C  3B 80 FF FF */	li r28, -1
/* 8019DDA0  3B 60 FF FF */	li r27, -1
/* 8019DDA4  3B 20 FF FF */	li r25, -1
/* 8019DDA8  C3 C2 A2 74 */	lfs f30, lit_4851(r2)
/* 8019DDAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019DDB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019DDB4  3B C3 4E 00 */	addi r30, r3, 0x4e00
/* 8019DDB8  7F C3 F3 78 */	mr r3, r30
/* 8019DDBC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019DDC0  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019DDC4  38 84 01 6C */	addi r4, r4, 0x16c
/* 8019DDC8  48 1C AB CD */	bl strcmp
/* 8019DDCC  2C 03 00 00 */	cmpwi r3, 0
/* 8019DDD0  40 82 00 08 */	bne lbl_8019DDD8
/* 8019DDD4  C3 C2 A2 78 */	lfs f30, lit_4852(r2)
lbl_8019DDD8:
/* 8019DDD8  3B 00 00 00 */	li r24, 0
/* 8019DDDC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019DDE0  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 8019DDE4  48 00 03 18 */	b lbl_8019E0FC
lbl_8019DDE8:
/* 8019DDE8  3B 40 00 00 */	li r26, 0
/* 8019DDEC  3A A0 00 00 */	li r21, 0
lbl_8019DDF0:
/* 8019DDF0  7C 7F AA 14 */	add r3, r31, r21
/* 8019DDF4  3B A3 03 F8 */	addi r29, r3, 0x3f8
/* 8019DDF8  80 83 03 F8 */	lwz r4, 0x3f8(r3)
/* 8019DDFC  28 04 00 00 */	cmplwi r4, 0
/* 8019DE00  41 82 02 E4 */	beq lbl_8019E0E4
/* 8019DE04  2C 18 00 00 */	cmpwi r24, 0
/* 8019DE08  41 82 00 0C */	beq lbl_8019DE14
/* 8019DE0C  7C 1A E0 00 */	cmpw r26, r28
/* 8019DE10  41 82 02 D4 */	beq lbl_8019E0E4
lbl_8019DE14:
/* 8019DE14  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8019DE18  C0 02 A2 68 */	lfs f0, lit_4731(r2)
/* 8019DE1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019DE20  40 81 02 C4 */	ble lbl_8019E0E4
/* 8019DE24  7E C3 B3 78 */	mr r3, r22
/* 8019DE28  48 1A 95 75 */	bl PSVECSquareDistance
/* 8019DE2C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019DE30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019DE34  40 81 00 58 */	ble lbl_8019DE8C
/* 8019DE38  FC 00 08 34 */	frsqrte f0, f1
/* 8019DE3C  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 8019DE40  FC 44 00 32 */	fmul f2, f4, f0
/* 8019DE44  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 8019DE48  FC 00 00 32 */	fmul f0, f0, f0
/* 8019DE4C  FC 01 00 32 */	fmul f0, f1, f0
/* 8019DE50  FC 03 00 28 */	fsub f0, f3, f0
/* 8019DE54  FC 02 00 32 */	fmul f0, f2, f0
/* 8019DE58  FC 44 00 32 */	fmul f2, f4, f0
/* 8019DE5C  FC 00 00 32 */	fmul f0, f0, f0
/* 8019DE60  FC 01 00 32 */	fmul f0, f1, f0
/* 8019DE64  FC 03 00 28 */	fsub f0, f3, f0
/* 8019DE68  FC 02 00 32 */	fmul f0, f2, f0
/* 8019DE6C  FC 44 00 32 */	fmul f2, f4, f0
/* 8019DE70  FC 00 00 32 */	fmul f0, f0, f0
/* 8019DE74  FC 01 00 32 */	fmul f0, f1, f0
/* 8019DE78  FC 03 00 28 */	fsub f0, f3, f0
/* 8019DE7C  FC 02 00 32 */	fmul f0, f2, f0
/* 8019DE80  FC 21 00 32 */	fmul f1, f1, f0
/* 8019DE84  FC 20 08 18 */	frsp f1, f1
/* 8019DE88  48 00 00 88 */	b lbl_8019DF10
lbl_8019DE8C:
/* 8019DE8C  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 8019DE90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019DE94  40 80 00 10 */	bge lbl_8019DEA4
/* 8019DE98  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8019DE9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8019DEA0  48 00 00 70 */	b lbl_8019DF10
lbl_8019DEA4:
/* 8019DEA4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8019DEA8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8019DEAC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8019DEB0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8019DEB4  7C 03 00 00 */	cmpw r3, r0
/* 8019DEB8  41 82 00 14 */	beq lbl_8019DECC
/* 8019DEBC  40 80 00 40 */	bge lbl_8019DEFC
/* 8019DEC0  2C 03 00 00 */	cmpwi r3, 0
/* 8019DEC4  41 82 00 20 */	beq lbl_8019DEE4
/* 8019DEC8  48 00 00 34 */	b lbl_8019DEFC
lbl_8019DECC:
/* 8019DECC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019DED0  41 82 00 0C */	beq lbl_8019DEDC
/* 8019DED4  38 00 00 01 */	li r0, 1
/* 8019DED8  48 00 00 28 */	b lbl_8019DF00
lbl_8019DEDC:
/* 8019DEDC  38 00 00 02 */	li r0, 2
/* 8019DEE0  48 00 00 20 */	b lbl_8019DF00
lbl_8019DEE4:
/* 8019DEE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019DEE8  41 82 00 0C */	beq lbl_8019DEF4
/* 8019DEEC  38 00 00 05 */	li r0, 5
/* 8019DEF0  48 00 00 10 */	b lbl_8019DF00
lbl_8019DEF4:
/* 8019DEF4  38 00 00 03 */	li r0, 3
/* 8019DEF8  48 00 00 08 */	b lbl_8019DF00
lbl_8019DEFC:
/* 8019DEFC  38 00 00 04 */	li r0, 4
lbl_8019DF00:
/* 8019DF00  2C 00 00 01 */	cmpwi r0, 1
/* 8019DF04  40 82 00 0C */	bne lbl_8019DF10
/* 8019DF08  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8019DF0C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8019DF10:
/* 8019DF10  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8019DF14  40 81 01 A8 */	ble lbl_8019E0BC
/* 8019DF18  80 9D 00 00 */	lwz r4, 0(r29)
/* 8019DF1C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8019DF20  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 8019DF24  41 82 00 2C */	beq lbl_8019DF50
/* 8019DF28  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8019DF2C  40 81 01 90 */	ble lbl_8019E0BC
/* 8019DF30  2C 18 00 00 */	cmpwi r24, 0
/* 8019DF34  40 82 00 08 */	bne lbl_8019DF3C
/* 8019DF38  7F 5C D3 78 */	mr r28, r26
lbl_8019DF3C:
/* 8019DF3C  2C 18 00 00 */	cmpwi r24, 0
/* 8019DF40  41 82 00 08 */	beq lbl_8019DF48
/* 8019DF44  7F 5B D3 78 */	mr r27, r26
lbl_8019DF48:
/* 8019DF48  FF E0 F0 90 */	fmr f31, f30
/* 8019DF4C  48 00 01 70 */	b lbl_8019E0BC
lbl_8019DF50:
/* 8019DF50  7E C3 B3 78 */	mr r3, r22
/* 8019DF54  48 1A 94 49 */	bl PSVECSquareDistance
/* 8019DF58  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019DF5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019DF60  40 81 00 58 */	ble lbl_8019DFB8
/* 8019DF64  FC 00 08 34 */	frsqrte f0, f1
/* 8019DF68  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 8019DF6C  FC 44 00 32 */	fmul f2, f4, f0
/* 8019DF70  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 8019DF74  FC 00 00 32 */	fmul f0, f0, f0
/* 8019DF78  FC 01 00 32 */	fmul f0, f1, f0
/* 8019DF7C  FC 03 00 28 */	fsub f0, f3, f0
/* 8019DF80  FC 02 00 32 */	fmul f0, f2, f0
/* 8019DF84  FC 44 00 32 */	fmul f2, f4, f0
/* 8019DF88  FC 00 00 32 */	fmul f0, f0, f0
/* 8019DF8C  FC 01 00 32 */	fmul f0, f1, f0
/* 8019DF90  FC 03 00 28 */	fsub f0, f3, f0
/* 8019DF94  FC 02 00 32 */	fmul f0, f2, f0
/* 8019DF98  FC 44 00 32 */	fmul f2, f4, f0
/* 8019DF9C  FC 00 00 32 */	fmul f0, f0, f0
/* 8019DFA0  FC 01 00 32 */	fmul f0, f1, f0
/* 8019DFA4  FC 03 00 28 */	fsub f0, f3, f0
/* 8019DFA8  FC 02 00 32 */	fmul f0, f2, f0
/* 8019DFAC  FF E1 00 32 */	fmul f31, f1, f0
/* 8019DFB0  FF E0 F8 18 */	frsp f31, f31
/* 8019DFB4  48 00 00 90 */	b lbl_8019E044
lbl_8019DFB8:
/* 8019DFB8  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 8019DFBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019DFC0  40 80 00 10 */	bge lbl_8019DFD0
/* 8019DFC4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8019DFC8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8019DFCC  48 00 00 78 */	b lbl_8019E044
lbl_8019DFD0:
/* 8019DFD0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8019DFD4  80 81 00 08 */	lwz r4, 8(r1)
/* 8019DFD8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8019DFDC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8019DFE0  7C 03 00 00 */	cmpw r3, r0
/* 8019DFE4  41 82 00 14 */	beq lbl_8019DFF8
/* 8019DFE8  40 80 00 40 */	bge lbl_8019E028
/* 8019DFEC  2C 03 00 00 */	cmpwi r3, 0
/* 8019DFF0  41 82 00 20 */	beq lbl_8019E010
/* 8019DFF4  48 00 00 34 */	b lbl_8019E028
lbl_8019DFF8:
/* 8019DFF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019DFFC  41 82 00 0C */	beq lbl_8019E008
/* 8019E000  38 00 00 01 */	li r0, 1
/* 8019E004  48 00 00 28 */	b lbl_8019E02C
lbl_8019E008:
/* 8019E008  38 00 00 02 */	li r0, 2
/* 8019E00C  48 00 00 20 */	b lbl_8019E02C
lbl_8019E010:
/* 8019E010  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019E014  41 82 00 0C */	beq lbl_8019E020
/* 8019E018  38 00 00 05 */	li r0, 5
/* 8019E01C  48 00 00 10 */	b lbl_8019E02C
lbl_8019E020:
/* 8019E020  38 00 00 03 */	li r0, 3
/* 8019E024  48 00 00 08 */	b lbl_8019E02C
lbl_8019E028:
/* 8019E028  38 00 00 04 */	li r0, 4
lbl_8019E02C:
/* 8019E02C  2C 00 00 01 */	cmpwi r0, 1
/* 8019E030  40 82 00 10 */	bne lbl_8019E040
/* 8019E034  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8019E038  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8019E03C  48 00 00 08 */	b lbl_8019E044
lbl_8019E040:
/* 8019E040  FF E0 08 90 */	fmr f31, f1
lbl_8019E044:
/* 8019E044  80 7D 00 00 */	lwz r3, 0(r29)
/* 8019E048  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8019E04C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8019E050  40 80 00 50 */	bge lbl_8019E0A0
/* 8019E054  7F C3 F3 78 */	mr r3, r30
/* 8019E058  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019E05C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019E060  38 84 00 2F */	addi r4, r4, 0x2f
/* 8019E064  48 1C A9 31 */	bl strcmp
/* 8019E068  2C 03 00 00 */	cmpwi r3, 0
/* 8019E06C  40 82 00 30 */	bne lbl_8019E09C
/* 8019E070  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8019E074  7C 00 07 75 */	extsb. r0, r0
/* 8019E078  40 82 00 24 */	bne lbl_8019E09C
/* 8019E07C  C0 22 A2 60 */	lfs f1, lit_4529(r2)
/* 8019E080  80 7D 00 00 */	lwz r3, 0(r29)
/* 8019E084  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8019E088  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019E08C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8019E090  40 80 00 10 */	bge lbl_8019E0A0
/* 8019E094  3B 20 00 63 */	li r25, 0x63
/* 8019E098  48 00 00 08 */	b lbl_8019E0A0
lbl_8019E09C:
/* 8019E09C  3B 20 00 63 */	li r25, 0x63
lbl_8019E0A0:
/* 8019E0A0  2C 19 FF FE */	cmpwi r25, -2
/* 8019E0A4  41 82 00 18 */	beq lbl_8019E0BC
/* 8019E0A8  2C 18 00 00 */	cmpwi r24, 0
/* 8019E0AC  40 82 00 0C */	bne lbl_8019E0B8
/* 8019E0B0  7F 5C D3 78 */	mr r28, r26
/* 8019E0B4  48 00 00 08 */	b lbl_8019E0BC
lbl_8019E0B8:
/* 8019E0B8  7F 5B D3 78 */	mr r27, r26
lbl_8019E0BC:
/* 8019E0BC  80 7D 00 00 */	lwz r3, 0(r29)
/* 8019E0C0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8019E0C4  2C 00 00 00 */	cmpwi r0, 0
/* 8019E0C8  40 80 00 1C */	bge lbl_8019E0E4
/* 8019E0CC  2C 19 00 63 */	cmpwi r25, 0x63
/* 8019E0D0  41 82 00 14 */	beq lbl_8019E0E4
/* 8019E0D4  2C 18 00 00 */	cmpwi r24, 0
/* 8019E0D8  40 82 00 08 */	bne lbl_8019E0E0
/* 8019E0DC  7F 5C D3 78 */	mr r28, r26
lbl_8019E0E0:
/* 8019E0E0  3B 20 FF FE */	li r25, -2
lbl_8019E0E4:
/* 8019E0E4  3B 5A 00 01 */	addi r26, r26, 1
/* 8019E0E8  2C 1A 00 64 */	cmpwi r26, 0x64
/* 8019E0EC  3A B5 00 04 */	addi r21, r21, 4
/* 8019E0F0  41 80 FD 00 */	blt lbl_8019DDF0
/* 8019E0F4  C3 E2 A2 70 */	lfs f31, lit_4850(r2)
/* 8019E0F8  3B 18 00 01 */	addi r24, r24, 1
lbl_8019E0FC:
/* 8019E0FC  7C 18 B8 00 */	cmpw r24, r23
/* 8019E100  40 81 FC E8 */	ble lbl_8019DDE8
/* 8019E104  2C 17 00 00 */	cmpwi r23, 0
/* 8019E108  7F 63 DB 78 */	mr r3, r27
/* 8019E10C  40 82 00 08 */	bne lbl_8019E114
/* 8019E110  7F 83 E3 78 */	mr r3, r28
lbl_8019E114:
/* 8019E114  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8019E118  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8019E11C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8019E120  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8019E124  39 61 00 40 */	addi r11, r1, 0x40
/* 8019E128  48 1C 40 E1 */	bl _restgpr_21
/* 8019E12C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8019E130  7C 08 03 A6 */	mtlr r0
/* 8019E134  38 21 00 60 */	addi r1, r1, 0x60
/* 8019E138  4E 80 00 20 */	blr 
