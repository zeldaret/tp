lbl_80CFAD50:
/* 80CFAD50  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80CFAD54  7C 08 02 A6 */	mflr r0
/* 80CFAD58  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80CFAD5C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80CFAD60  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80CFAD64  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80CFAD68  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80CFAD6C  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80CFAD70  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 80CFAD74  39 61 00 80 */	addi r11, r1, 0x80
/* 80CFAD78  4B 66 74 5D */	bl _savegpr_27
/* 80CFAD7C  7C 7B 1B 78 */	mr r27, r3
/* 80CFAD80  3C 60 80 D0 */	lis r3, lit_3734@ha /* 0x80CFB6EC@ha */
/* 80CFAD84  3B A3 B6 EC */	addi r29, r3, lit_3734@l /* 0x80CFB6EC@l */
/* 80CFAD88  C3 FB 0A 90 */	lfs f31, 0xa90(r27)
/* 80CFAD8C  38 60 00 00 */	li r3, 0
/* 80CFAD90  98 7B 0A 6A */	stb r3, 0xa6a(r27)
/* 80CFAD94  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CFAD98  D0 1B 0A 90 */	stfs f0, 0xa90(r27)
/* 80CFAD9C  88 1B 0A 62 */	lbz r0, 0xa62(r27)
/* 80CFADA0  28 00 00 00 */	cmplwi r0, 0
/* 80CFADA4  40 82 00 1C */	bne lbl_80CFADC0
/* 80CFADA8  88 1B 0A 61 */	lbz r0, 0xa61(r27)
/* 80CFADAC  28 00 00 00 */	cmplwi r0, 0
/* 80CFADB0  40 82 00 10 */	bne lbl_80CFADC0
/* 80CFADB4  B0 7B 0A 70 */	sth r3, 0xa70(r27)
/* 80CFADB8  B0 7B 0A 6E */	sth r3, 0xa6e(r27)
/* 80CFADBC  48 00 06 64 */	b lbl_80CFB420
lbl_80CFADC0:
/* 80CFADC0  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80CFADC4  7C 1E 07 74 */	extsb r30, r0
/* 80CFADC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFADCC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFADD0  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80CFADD4  7F 63 DB 78 */	mr r3, r27
/* 80CFADD8  48 00 06 79 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFADDC  C0 1B 04 A8 */	lfs f0, 0x4a8(r27)
/* 80CFADE0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CFADE4  C0 1B 04 AC */	lfs f0, 0x4ac(r27)
/* 80CFADE8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CFADEC  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 80CFADF0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CFADF4  80 9B 0A 74 */	lwz r4, 0xa74(r27)
/* 80CFADF8  88 1B 0A 65 */	lbz r0, 0xa65(r27)
/* 80CFADFC  1C 60 00 50 */	mulli r3, r0, 0x50
/* 80CFAE00  38 63 00 34 */	addi r3, r3, 0x34
/* 80CFAE04  7C 64 1A 14 */	add r3, r4, r3
/* 80CFAE08  C0 03 00 00 */	lfs f0, 0(r3)
/* 80CFAE0C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CFAE10  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CFAE14  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CFAE18  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CFAE1C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CFAE20  38 61 00 44 */	addi r3, r1, 0x44
/* 80CFAE24  38 81 00 50 */	addi r4, r1, 0x50
/* 80CFAE28  4B 64 C5 75 */	bl PSVECSquareDistance
/* 80CFAE2C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CFAE30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFAE34  40 81 00 58 */	ble lbl_80CFAE8C
/* 80CFAE38  FC 00 08 34 */	frsqrte f0, f1
/* 80CFAE3C  C8 9D 00 18 */	lfd f4, 0x18(r29)
/* 80CFAE40  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFAE44  C8 7D 00 20 */	lfd f3, 0x20(r29)
/* 80CFAE48  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFAE4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFAE50  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFAE54  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFAE58  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFAE5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFAE60  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFAE64  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFAE68  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFAE6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFAE70  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFAE74  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFAE78  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFAE7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFAE80  FF C1 00 32 */	fmul f30, f1, f0
/* 80CFAE84  FF C0 F0 18 */	frsp f30, f30
/* 80CFAE88  48 00 00 90 */	b lbl_80CFAF18
lbl_80CFAE8C:
/* 80CFAE8C  C8 1D 00 28 */	lfd f0, 0x28(r29)
/* 80CFAE90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFAE94  40 80 00 10 */	bge lbl_80CFAEA4
/* 80CFAE98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CFAE9C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CFAEA0  48 00 00 78 */	b lbl_80CFAF18
lbl_80CFAEA4:
/* 80CFAEA4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CFAEA8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80CFAEAC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CFAEB0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CFAEB4  7C 03 00 00 */	cmpw r3, r0
/* 80CFAEB8  41 82 00 14 */	beq lbl_80CFAECC
/* 80CFAEBC  40 80 00 40 */	bge lbl_80CFAEFC
/* 80CFAEC0  2C 03 00 00 */	cmpwi r3, 0
/* 80CFAEC4  41 82 00 20 */	beq lbl_80CFAEE4
/* 80CFAEC8  48 00 00 34 */	b lbl_80CFAEFC
lbl_80CFAECC:
/* 80CFAECC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFAED0  41 82 00 0C */	beq lbl_80CFAEDC
/* 80CFAED4  38 00 00 01 */	li r0, 1
/* 80CFAED8  48 00 00 28 */	b lbl_80CFAF00
lbl_80CFAEDC:
/* 80CFAEDC  38 00 00 02 */	li r0, 2
/* 80CFAEE0  48 00 00 20 */	b lbl_80CFAF00
lbl_80CFAEE4:
/* 80CFAEE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFAEE8  41 82 00 0C */	beq lbl_80CFAEF4
/* 80CFAEEC  38 00 00 05 */	li r0, 5
/* 80CFAEF0  48 00 00 10 */	b lbl_80CFAF00
lbl_80CFAEF4:
/* 80CFAEF4  38 00 00 03 */	li r0, 3
/* 80CFAEF8  48 00 00 08 */	b lbl_80CFAF00
lbl_80CFAEFC:
/* 80CFAEFC  38 00 00 04 */	li r0, 4
lbl_80CFAF00:
/* 80CFAF00  2C 00 00 01 */	cmpwi r0, 1
/* 80CFAF04  40 82 00 10 */	bne lbl_80CFAF14
/* 80CFAF08  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CFAF0C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CFAF10  48 00 00 08 */	b lbl_80CFAF18
lbl_80CFAF14:
/* 80CFAF14  FF C0 08 90 */	fmr f30, f1
lbl_80CFAF18:
/* 80CFAF18  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80CFAF1C  88 9B 0A 65 */	lbz r4, 0xa65(r27)
/* 80CFAF20  38 04 FF FE */	addi r0, r4, -2
/* 80CFAF24  C8 3D 00 10 */	lfd f1, 0x10(r29)
/* 80CFAF28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CFAF2C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CFAF30  3C 00 43 30 */	lis r0, 0x4330
/* 80CFAF34  90 01 00 60 */	stw r0, 0x60(r1)
/* 80CFAF38  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80CFAF3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CFAF40  EF A2 00 32 */	fmuls f29, f2, f0
/* 80CFAF44  2C 1E 00 04 */	cmpwi r30, 4
/* 80CFAF48  41 82 00 0C */	beq lbl_80CFAF54
/* 80CFAF4C  2C 1E 00 06 */	cmpwi r30, 6
/* 80CFAF50  40 82 00 30 */	bne lbl_80CFAF80
lbl_80CFAF54:
/* 80CFAF54  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80CFAF58  88 7B 0A 67 */	lbz r3, 0xa67(r27)
/* 80CFAF5C  38 03 FF FF */	addi r0, r3, -1
/* 80CFAF60  C8 3D 00 10 */	lfd f1, 0x10(r29)
/* 80CFAF64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CFAF68  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CFAF6C  3C 00 43 30 */	lis r0, 0x4330
/* 80CFAF70  90 01 00 60 */	stw r0, 0x60(r1)
/* 80CFAF74  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80CFAF78  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CFAF7C  EF A2 00 32 */	fmuls f29, f2, f0
lbl_80CFAF80:
/* 80CFAF80  88 1B 0A 61 */	lbz r0, 0xa61(r27)
/* 80CFAF84  28 00 00 00 */	cmplwi r0, 0
/* 80CFAF88  41 82 00 1C */	beq lbl_80CFAFA4
/* 80CFAF8C  FC 1E E8 40 */	fcmpo cr0, f30, f29
/* 80CFAF90  40 81 04 90 */	ble lbl_80CFB420
/* 80CFAF94  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 80CFAF98  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 80CFAF9C  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 80CFAFA0  48 00 04 80 */	b lbl_80CFB420
lbl_80CFAFA4:
/* 80CFAFA4  88 BB 0A 64 */	lbz r5, 0xa64(r27)
/* 80CFAFA8  7C 05 20 40 */	cmplw r5, r4
/* 80CFAFAC  41 82 00 20 */	beq lbl_80CFAFCC
/* 80CFAFB0  2C 1E 00 04 */	cmpwi r30, 4
/* 80CFAFB4  41 82 00 0C */	beq lbl_80CFAFC0
/* 80CFAFB8  2C 1E 00 06 */	cmpwi r30, 6
/* 80CFAFBC  40 82 02 2C */	bne lbl_80CFB1E8
lbl_80CFAFC0:
/* 80CFAFC0  88 1B 0A 67 */	lbz r0, 0xa67(r27)
/* 80CFAFC4  7C 05 00 40 */	cmplw r5, r0
/* 80CFAFC8  40 82 02 20 */	bne lbl_80CFB1E8
lbl_80CFAFCC:
/* 80CFAFCC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CFAFD0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80CFAFD4  40 82 00 14 */	bne lbl_80CFAFE8
/* 80CFAFD8  C0 1D 00 94 */	lfs f0, 0x94(r29)
/* 80CFAFDC  EC 00 E8 2A */	fadds f0, f0, f29
/* 80CFAFE0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80CFAFE4  41 81 00 18 */	bgt lbl_80CFAFFC
lbl_80CFAFE8:
/* 80CFAFE8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CFAFEC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80CFAFF0  41 82 01 90 */	beq lbl_80CFB180
/* 80CFAFF4  FC 1E E8 40 */	fcmpo cr0, f30, f29
/* 80CFAFF8  40 81 01 88 */	ble lbl_80CFB180
lbl_80CFAFFC:
/* 80CFAFFC  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80CFB000  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80CFB004  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CFB008  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CFB00C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CFB010  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CFB014  EC 20 00 72 */	fmuls f1, f0, f1
/* 80CFB018  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CFB01C  7C 63 02 14 */	add r3, r3, r0
/* 80CFB020  C0 43 00 04 */	lfs f2, 4(r3)
/* 80CFB024  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CFB028  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CFB02C  EC 21 00 72 */	fmuls f1, f1, f1
/* 80CFB030  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CFB034  EC 81 00 2A */	fadds f4, f1, f0
/* 80CFB038  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CFB03C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80CFB040  40 81 00 58 */	ble lbl_80CFB098
/* 80CFB044  FC 00 20 34 */	frsqrte f0, f4
/* 80CFB048  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 80CFB04C  FC 23 00 32 */	fmul f1, f3, f0
/* 80CFB050  C8 5D 00 20 */	lfd f2, 0x20(r29)
/* 80CFB054  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFB058  FC 04 00 32 */	fmul f0, f4, f0
/* 80CFB05C  FC 02 00 28 */	fsub f0, f2, f0
/* 80CFB060  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFB064  FC 23 00 32 */	fmul f1, f3, f0
/* 80CFB068  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFB06C  FC 04 00 32 */	fmul f0, f4, f0
/* 80CFB070  FC 02 00 28 */	fsub f0, f2, f0
/* 80CFB074  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFB078  FC 23 00 32 */	fmul f1, f3, f0
/* 80CFB07C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFB080  FC 04 00 32 */	fmul f0, f4, f0
/* 80CFB084  FC 02 00 28 */	fsub f0, f2, f0
/* 80CFB088  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFB08C  FC 84 00 32 */	fmul f4, f4, f0
/* 80CFB090  FC 80 20 18 */	frsp f4, f4
/* 80CFB094  48 00 00 88 */	b lbl_80CFB11C
lbl_80CFB098:
/* 80CFB098  C8 1D 00 28 */	lfd f0, 0x28(r29)
/* 80CFB09C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80CFB0A0  40 80 00 10 */	bge lbl_80CFB0B0
/* 80CFB0A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CFB0A8  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CFB0AC  48 00 00 70 */	b lbl_80CFB11C
lbl_80CFB0B0:
/* 80CFB0B0  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80CFB0B4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80CFB0B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CFB0BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CFB0C0  7C 03 00 00 */	cmpw r3, r0
/* 80CFB0C4  41 82 00 14 */	beq lbl_80CFB0D8
/* 80CFB0C8  40 80 00 40 */	bge lbl_80CFB108
/* 80CFB0CC  2C 03 00 00 */	cmpwi r3, 0
/* 80CFB0D0  41 82 00 20 */	beq lbl_80CFB0F0
/* 80CFB0D4  48 00 00 34 */	b lbl_80CFB108
lbl_80CFB0D8:
/* 80CFB0D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFB0DC  41 82 00 0C */	beq lbl_80CFB0E8
/* 80CFB0E0  38 00 00 01 */	li r0, 1
/* 80CFB0E4  48 00 00 28 */	b lbl_80CFB10C
lbl_80CFB0E8:
/* 80CFB0E8  38 00 00 02 */	li r0, 2
/* 80CFB0EC  48 00 00 20 */	b lbl_80CFB10C
lbl_80CFB0F0:
/* 80CFB0F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFB0F4  41 82 00 0C */	beq lbl_80CFB100
/* 80CFB0F8  38 00 00 05 */	li r0, 5
/* 80CFB0FC  48 00 00 10 */	b lbl_80CFB10C
lbl_80CFB100:
/* 80CFB100  38 00 00 03 */	li r0, 3
/* 80CFB104  48 00 00 08 */	b lbl_80CFB10C
lbl_80CFB108:
/* 80CFB108  38 00 00 04 */	li r0, 4
lbl_80CFB10C:
/* 80CFB10C  2C 00 00 01 */	cmpwi r0, 1
/* 80CFB110  40 82 00 0C */	bne lbl_80CFB11C
/* 80CFB114  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CFB118  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CFB11C:
/* 80CFB11C  D0 9B 0A 90 */	stfs f4, 0xa90(r27)
/* 80CFB120  7F 63 DB 78 */	mr r3, r27
/* 80CFB124  48 00 03 41 */	bl checkPlayerPull__14daObjSwChain_cFv
/* 80CFB128  2C 03 00 00 */	cmpwi r3, 0
/* 80CFB12C  41 82 00 5C */	beq lbl_80CFB188
/* 80CFB130  2C 1E 00 04 */	cmpwi r30, 4
/* 80CFB134  41 82 00 1C */	beq lbl_80CFB150
/* 80CFB138  2C 1E 00 06 */	cmpwi r30, 6
/* 80CFB13C  41 82 00 14 */	beq lbl_80CFB150
/* 80CFB140  88 7B 0A 64 */	lbz r3, 0xa64(r27)
/* 80CFB144  88 1B 0A 65 */	lbz r0, 0xa65(r27)
/* 80CFB148  7C 03 00 40 */	cmplw r3, r0
/* 80CFB14C  41 82 00 24 */	beq lbl_80CFB170
lbl_80CFB150:
/* 80CFB150  2C 1E 00 04 */	cmpwi r30, 4
/* 80CFB154  41 82 00 0C */	beq lbl_80CFB160
/* 80CFB158  2C 1E 00 06 */	cmpwi r30, 6
/* 80CFB15C  40 82 00 2C */	bne lbl_80CFB188
lbl_80CFB160:
/* 80CFB160  88 7B 0A 67 */	lbz r3, 0xa67(r27)
/* 80CFB164  88 1B 0A 65 */	lbz r0, 0xa65(r27)
/* 80CFB168  7C 03 00 40 */	cmplw r3, r0
/* 80CFB16C  40 82 00 1C */	bne lbl_80CFB188
lbl_80CFB170:
/* 80CFB170  80 1C 05 8C */	lwz r0, 0x58c(r28)
/* 80CFB174  64 00 02 00 */	oris r0, r0, 0x200
/* 80CFB178  90 1C 05 8C */	stw r0, 0x58c(r28)
/* 80CFB17C  48 00 00 0C */	b lbl_80CFB188
lbl_80CFB180:
/* 80CFB180  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CFB184  D0 1B 0A 90 */	stfs f0, 0xa90(r27)
lbl_80CFB188:
/* 80CFB188  80 DB 0A 74 */	lwz r6, 0xa74(r27)
/* 80CFB18C  38 61 00 14 */	addi r3, r1, 0x14
/* 80CFB190  38 86 00 34 */	addi r4, r6, 0x34
/* 80CFB194  88 1B 0A 65 */	lbz r0, 0xa65(r27)
/* 80CFB198  1C A0 00 50 */	mulli r5, r0, 0x50
/* 80CFB19C  38 A5 00 34 */	addi r5, r5, 0x34
/* 80CFB1A0  7C A6 2A 14 */	add r5, r6, r5
/* 80CFB1A4  4B 56 B9 91 */	bl __mi__4cXyzCFRC3Vec
/* 80CFB1A8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80CFB1AC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CFB1B0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CFB1B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CFB1B8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80CFB1BC  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80CFB1C0  4B 56 C4 B5 */	bl cM_atan2s__Fff
/* 80CFB1C4  7C 64 1B 78 */	mr r4, r3
/* 80CFB1C8  7F 83 E3 78 */	mr r3, r28
/* 80CFB1CC  C0 3B 0A 90 */	lfs f1, 0xa90(r27)
/* 80CFB1D0  38 A0 00 00 */	li r5, 0
/* 80CFB1D4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80CFB1D8  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80CFB1DC  7D 89 03 A6 */	mtctr r12
/* 80CFB1E0  4E 80 04 21 */	bctrl 
/* 80CFB1E4  48 00 01 B0 */	b lbl_80CFB394
lbl_80CFB1E8:
/* 80CFB1E8  2C 1E 00 04 */	cmpwi r30, 4
/* 80CFB1EC  41 82 00 0C */	beq lbl_80CFB1F8
/* 80CFB1F0  2C 1E 00 06 */	cmpwi r30, 6
/* 80CFB1F4  40 82 01 A0 */	bne lbl_80CFB394
lbl_80CFB1F8:
/* 80CFB1F8  88 7B 0A 69 */	lbz r3, 0xa69(r27)
/* 80CFB1FC  38 03 FF FF */	addi r0, r3, -1
/* 80CFB200  7C 05 00 00 */	cmpw r5, r0
/* 80CFB204  41 80 01 90 */	blt lbl_80CFB394
/* 80CFB208  7F 63 DB 78 */	mr r3, r27
/* 80CFB20C  48 00 02 59 */	bl checkPlayerPull__14daObjSwChain_cFv
/* 80CFB210  2C 03 00 00 */	cmpwi r3, 0
/* 80CFB214  41 82 01 80 */	beq lbl_80CFB394
/* 80CFB218  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CFB21C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80CFB220  40 82 00 0C */	bne lbl_80CFB22C
/* 80CFB224  FC 1E E8 40 */	fcmpo cr0, f30, f29
/* 80CFB228  40 81 01 6C */	ble lbl_80CFB394
lbl_80CFB22C:
/* 80CFB22C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80CFB230  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CFB234  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CFB238  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CFB23C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CFB240  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80CFB244  EC 20 00 72 */	fmuls f1, f0, f1
/* 80CFB248  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CFB24C  7C 63 02 14 */	add r3, r3, r0
/* 80CFB250  C0 43 00 04 */	lfs f2, 4(r3)
/* 80CFB254  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80CFB258  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80CFB25C  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 80CFB260  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CFB264  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CFB268  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CFB26C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CFB270  EC 21 00 72 */	fmuls f1, f1, f1
/* 80CFB274  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CFB278  EC 81 00 2A */	fadds f4, f1, f0
/* 80CFB27C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CFB280  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80CFB284  40 81 00 58 */	ble lbl_80CFB2DC
/* 80CFB288  FC 00 20 34 */	frsqrte f0, f4
/* 80CFB28C  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 80CFB290  FC 23 00 32 */	fmul f1, f3, f0
/* 80CFB294  C8 5D 00 20 */	lfd f2, 0x20(r29)
/* 80CFB298  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFB29C  FC 04 00 32 */	fmul f0, f4, f0
/* 80CFB2A0  FC 02 00 28 */	fsub f0, f2, f0
/* 80CFB2A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFB2A8  FC 23 00 32 */	fmul f1, f3, f0
/* 80CFB2AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFB2B0  FC 04 00 32 */	fmul f0, f4, f0
/* 80CFB2B4  FC 02 00 28 */	fsub f0, f2, f0
/* 80CFB2B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFB2BC  FC 23 00 32 */	fmul f1, f3, f0
/* 80CFB2C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFB2C4  FC 04 00 32 */	fmul f0, f4, f0
/* 80CFB2C8  FC 02 00 28 */	fsub f0, f2, f0
/* 80CFB2CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFB2D0  FC 84 00 32 */	fmul f4, f4, f0
/* 80CFB2D4  FC 80 20 18 */	frsp f4, f4
/* 80CFB2D8  48 00 00 88 */	b lbl_80CFB360
lbl_80CFB2DC:
/* 80CFB2DC  C8 1D 00 28 */	lfd f0, 0x28(r29)
/* 80CFB2E0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80CFB2E4  40 80 00 10 */	bge lbl_80CFB2F4
/* 80CFB2E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CFB2EC  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CFB2F0  48 00 00 70 */	b lbl_80CFB360
lbl_80CFB2F4:
/* 80CFB2F4  D0 81 00 08 */	stfs f4, 8(r1)
/* 80CFB2F8  80 81 00 08 */	lwz r4, 8(r1)
/* 80CFB2FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CFB300  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CFB304  7C 03 00 00 */	cmpw r3, r0
/* 80CFB308  41 82 00 14 */	beq lbl_80CFB31C
/* 80CFB30C  40 80 00 40 */	bge lbl_80CFB34C
/* 80CFB310  2C 03 00 00 */	cmpwi r3, 0
/* 80CFB314  41 82 00 20 */	beq lbl_80CFB334
/* 80CFB318  48 00 00 34 */	b lbl_80CFB34C
lbl_80CFB31C:
/* 80CFB31C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFB320  41 82 00 0C */	beq lbl_80CFB32C
/* 80CFB324  38 00 00 01 */	li r0, 1
/* 80CFB328  48 00 00 28 */	b lbl_80CFB350
lbl_80CFB32C:
/* 80CFB32C  38 00 00 02 */	li r0, 2
/* 80CFB330  48 00 00 20 */	b lbl_80CFB350
lbl_80CFB334:
/* 80CFB334  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFB338  41 82 00 0C */	beq lbl_80CFB344
/* 80CFB33C  38 00 00 05 */	li r0, 5
/* 80CFB340  48 00 00 10 */	b lbl_80CFB350
lbl_80CFB344:
/* 80CFB344  38 00 00 03 */	li r0, 3
/* 80CFB348  48 00 00 08 */	b lbl_80CFB350
lbl_80CFB34C:
/* 80CFB34C  38 00 00 04 */	li r0, 4
lbl_80CFB350:
/* 80CFB350  2C 00 00 01 */	cmpwi r0, 1
/* 80CFB354  40 82 00 0C */	bne lbl_80CFB360
/* 80CFB358  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CFB35C  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CFB360:
/* 80CFB360  D0 9B 0A 90 */	stfs f4, 0xa90(r27)
/* 80CFB364  7F 83 E3 78 */	mr r3, r28
/* 80CFB368  C0 3B 0A 90 */	lfs f1, 0xa90(r27)
/* 80CFB36C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80CFB370  38 04 7F FF */	addi r0, r4, 0x7fff
/* 80CFB374  7C 04 07 34 */	extsh r4, r0
/* 80CFB378  38 A0 00 00 */	li r5, 0
/* 80CFB37C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80CFB380  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80CFB384  7D 89 03 A6 */	mtctr r12
/* 80CFB388  4E 80 04 21 */	bctrl 
/* 80CFB38C  38 00 00 01 */	li r0, 1
/* 80CFB390  98 1B 0A 6A */	stb r0, 0xa6a(r27)
lbl_80CFB394:
/* 80CFB394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFB398  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFB39C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CFB3A0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CFB3A4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CFB3A8  41 82 00 0C */	beq lbl_80CFB3B4
/* 80CFB3AC  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 80CFB3B0  48 00 00 30 */	b lbl_80CFB3E0
lbl_80CFB3B4:
/* 80CFB3B4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80CFB3B8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CFB3BC  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80CFB3C0  7D 89 03 A6 */	mtctr r12
/* 80CFB3C4  4E 80 04 21 */	bctrl 
/* 80CFB3C8  2C 03 00 00 */	cmpwi r3, 0
/* 80CFB3CC  41 82 00 0C */	beq lbl_80CFB3D8
/* 80CFB3D0  C0 1D 00 9C */	lfs f0, 0x9c(r29)
/* 80CFB3D4  48 00 00 08 */	b lbl_80CFB3DC
lbl_80CFB3D8:
/* 80CFB3D8  C0 1D 00 34 */	lfs f0, 0x34(r29)
lbl_80CFB3DC:
/* 80CFB3DC  FC 20 00 90 */	fmr f1, f0
lbl_80CFB3E0:
/* 80CFB3E0  C0 1B 0A 90 */	lfs f0, 0xa90(r27)
/* 80CFB3E4  EC 00 08 24 */	fdivs f0, f0, f1
/* 80CFB3E8  FC 00 02 10 */	fabs f0, f0
/* 80CFB3EC  FC 20 00 18 */	frsp f1, f0
/* 80CFB3F0  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80CFB3F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CFB3F8  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80CFB3FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFB400  40 80 00 08 */	bge lbl_80CFB408
/* 80CFB404  FC 20 00 90 */	fmr f1, f0
lbl_80CFB408:
/* 80CFB408  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 80CFB40C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CFB410  FC 00 00 1E */	fctiwz f0, f0
/* 80CFB414  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80CFB418  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CFB41C  B0 1B 0A 70 */	sth r0, 0xa70(r27)
lbl_80CFB420:
/* 80CFB420  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80CFB424  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80CFB428  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80CFB42C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80CFB430  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 80CFB434  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80CFB438  39 61 00 80 */	addi r11, r1, 0x80
/* 80CFB43C  4B 66 6D E5 */	bl _restgpr_27
/* 80CFB440  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80CFB444  7C 08 03 A6 */	mtlr r0
/* 80CFB448  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80CFB44C  4E 80 00 20 */	blr 
