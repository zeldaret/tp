lbl_804E6DBC:
/* 804E6DBC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804E6DC0  7C 08 02 A6 */	mflr r0
/* 804E6DC4  90 01 00 64 */	stw r0, 0x64(r1)
/* 804E6DC8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804E6DCC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804E6DD0  39 61 00 50 */	addi r11, r1, 0x50
/* 804E6DD4  4B E7 B4 04 */	b _savegpr_28
/* 804E6DD8  7C 7C 1B 78 */	mr r28, r3
/* 804E6DDC  3C 80 80 4F */	lis r4, lit_3789@ha
/* 804E6DE0  3B E4 E8 AC */	addi r31, r4, lit_3789@l
/* 804E6DE4  4B FF F4 19 */	bl bomb_check__FP10e_dn_class
/* 804E6DE8  7C 7E 1B 79 */	or. r30, r3, r3
/* 804E6DEC  40 82 00 18 */	bne lbl_804E6E04
/* 804E6DF0  38 00 00 03 */	li r0, 3
/* 804E6DF4  B0 1C 06 CE */	sth r0, 0x6ce(r28)
/* 804E6DF8  38 00 00 00 */	li r0, 0
/* 804E6DFC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 804E6E00  48 00 04 A8 */	b lbl_804E72A8
lbl_804E6E04:
/* 804E6E04  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804E6E08  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 804E6E0C  EC 21 00 28 */	fsubs f1, f1, f0
/* 804E6E10  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804E6E14  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 804E6E18  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 804E6E1C  EC 42 00 28 */	fsubs f2, f2, f0
/* 804E6E20  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 804E6E24  4B D8 08 50 */	b cM_atan2s__Fff
/* 804E6E28  7C 7D 1B 78 */	mr r29, r3
/* 804E6E2C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 804E6E30  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 804E6E34  28 00 00 0B */	cmplwi r0, 0xb
/* 804E6E38  41 81 04 28 */	bgt lbl_804E7260
/* 804E6E3C  3C 60 80 4F */	lis r3, lit_4719@ha
/* 804E6E40  38 63 EA A4 */	addi r3, r3, lit_4719@l
/* 804E6E44  54 00 10 3A */	slwi r0, r0, 2
/* 804E6E48  7C 03 00 2E */	lwzx r0, r3, r0
/* 804E6E4C  7C 09 03 A6 */	mtctr r0
/* 804E6E50  4E 80 04 20 */	bctr 
lbl_804E6E54:
/* 804E6E54  7F 83 E3 78 */	mr r3, r28
/* 804E6E58  38 80 00 15 */	li r4, 0x15
/* 804E6E5C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804E6E60  38 A0 00 00 */	li r5, 0
/* 804E6E64  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 804E6E68  4B FF E4 69 */	bl anm_init__FP10e_dn_classifUcf
/* 804E6E6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007004F@ha */
/* 804E6E70  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0007004F@l */
/* 804E6E74  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E6E78  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 804E6E7C  38 81 00 10 */	addi r4, r1, 0x10
/* 804E6E80  38 A0 FF FF */	li r5, -1
/* 804E6E84  81 9C 05 E8 */	lwz r12, 0x5e8(r28)
/* 804E6E88  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E6E8C  7D 89 03 A6 */	mtctr r12
/* 804E6E90  4E 80 04 21 */	bctrl 
/* 804E6E94  38 00 00 01 */	li r0, 1
/* 804E6E98  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 804E6E9C  48 00 03 C4 */	b lbl_804E7260
lbl_804E6EA0:
/* 804E6EA0  80 7C 05 DC */	lwz r3, 0x5dc(r28)
/* 804E6EA4  38 80 00 01 */	li r4, 1
/* 804E6EA8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E6EAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E6EB0  40 82 00 14 */	bne lbl_804E6EC4
/* 804E6EB4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E6EB8  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 804E6EBC  41 82 00 08 */	beq lbl_804E6EC4
/* 804E6EC0  38 80 00 00 */	li r4, 0
lbl_804E6EC4:
/* 804E6EC4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E6EC8  41 82 03 98 */	beq lbl_804E7260
/* 804E6ECC  38 00 00 02 */	li r0, 2
/* 804E6ED0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 804E6ED4  48 00 03 8C */	b lbl_804E7260
lbl_804E6ED8:
/* 804E6ED8  38 00 00 03 */	li r0, 3
/* 804E6EDC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 804E6EE0  7F 83 E3 78 */	mr r3, r28
/* 804E6EE4  38 80 00 1F */	li r4, 0x1f
/* 804E6EE8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E6EEC  38 A0 00 02 */	li r5, 2
/* 804E6EF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E6EF4  4B FF E3 DD */	bl anm_init__FP10e_dn_classifUcf
/* 804E6EF8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E6EFC  4B D8 0A 58 */	b cM_rndF__Ff
/* 804E6F00  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804E6F04  EC 00 08 2A */	fadds f0, f0, f1
/* 804E6F08  FC 00 00 1E */	fctiwz f0, f0
/* 804E6F0C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804E6F10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E6F14  B0 1C 06 E2 */	sth r0, 0x6e2(r28)
lbl_804E6F18:
/* 804E6F18  A8 1C 06 E2 */	lha r0, 0x6e2(r28)
/* 804E6F1C  2C 00 00 00 */	cmpwi r0, 0
/* 804E6F20  40 82 03 40 */	bne lbl_804E7260
/* 804E6F24  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804E6F28  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804E6F2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6F30  40 80 03 30 */	bge lbl_804E7260
/* 804E6F34  38 00 00 04 */	li r0, 4
/* 804E6F38  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 804E6F3C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804E6F40  4B D8 0A 4C */	b cM_rndFX__Ff
/* 804E6F44  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804E6F48  EC 40 08 2A */	fadds f2, f0, f1
/* 804E6F4C  7F 83 E3 78 */	mr r3, r28
/* 804E6F50  38 80 00 1E */	li r4, 0x1e
/* 804E6F54  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E6F58  38 A0 00 02 */	li r5, 2
/* 804E6F5C  4B FF E3 75 */	bl anm_init__FP10e_dn_classifUcf
/* 804E6F60  48 00 03 00 */	b lbl_804E7260
lbl_804E6F64:
/* 804E6F64  88 1C 05 B7 */	lbz r0, 0x5b7(r28)
/* 804E6F68  28 00 00 01 */	cmplwi r0, 1
/* 804E6F6C  40 82 00 84 */	bne lbl_804E6FF0
/* 804E6F70  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804E6F74  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804E6F78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6F7C  40 80 00 74 */	bge lbl_804E6FF0
/* 804E6F80  7F C3 F3 78 */	mr r3, r30
/* 804E6F84  4B B4 B0 10 */	b checkStateCarry__7dBomb_cFv
/* 804E6F88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E6F8C  40 82 00 64 */	bne lbl_804E6FF0
/* 804E6F90  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804E6F94  EC 20 00 32 */	fmuls f1, f0, f0
/* 804E6F98  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804E6F9C  EC 00 00 32 */	fmuls f0, f0, f0
/* 804E6FA0  EC 21 00 2A */	fadds f1, f1, f0
/* 804E6FA4  FC 00 F8 90 */	fmr f0, f31
/* 804E6FA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6FAC  40 81 00 0C */	ble lbl_804E6FB8
/* 804E6FB0  FC 00 08 34 */	frsqrte f0, f1
/* 804E6FB4  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804E6FB8:
/* 804E6FB8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 804E6FBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6FC0  40 80 00 30 */	bge lbl_804E6FF0
/* 804E6FC4  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 804E6FC8  A8 1C 06 D4 */	lha r0, 0x6d4(r28)
/* 804E6FCC  7C 03 00 50 */	subf r0, r3, r0
/* 804E6FD0  7C 00 07 34 */	extsh r0, r0
/* 804E6FD4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804E6FD8  40 80 00 18 */	bge lbl_804E6FF0
/* 804E6FDC  2C 00 C0 00 */	cmpwi r0, -16384
/* 804E6FE0  40 81 00 10 */	ble lbl_804E6FF0
/* 804E6FE4  38 00 00 0A */	li r0, 0xa
/* 804E6FE8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 804E6FEC  48 00 02 74 */	b lbl_804E7260
lbl_804E6FF0:
/* 804E6FF0  3F BD 00 01 */	addis r29, r29, 1
/* 804E6FF4  3C 60 80 4F */	lis r3, l_HIO@ha
/* 804E6FF8  38 63 EF 3C */	addi r3, r3, l_HIO@l
/* 804E6FFC  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 804E7000  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804E7004  EC 20 00 32 */	fmuls f1, f0, f0
/* 804E7008  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804E700C  EC 00 00 32 */	fmuls f0, f0, f0
/* 804E7010  EC 21 00 2A */	fadds f1, f1, f0
/* 804E7014  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E7018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E701C  3B BD 80 00 */	addi r29, r29, -32768
/* 804E7020  40 81 00 0C */	ble lbl_804E702C
/* 804E7024  FC 00 08 34 */	frsqrte f0, f1
/* 804E7028  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804E702C:
/* 804E702C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 804E7030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E7034  40 81 02 2C */	ble lbl_804E7260
/* 804E7038  38 00 00 05 */	li r0, 5
/* 804E703C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 804E7040  7F 83 E3 78 */	mr r3, r28
/* 804E7044  38 80 00 1F */	li r4, 0x1f
/* 804E7048  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E704C  38 A0 00 02 */	li r5, 2
/* 804E7050  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E7054  4B FF E2 7D */	bl anm_init__FP10e_dn_classifUcf
/* 804E7058  48 00 02 08 */	b lbl_804E7260
lbl_804E705C:
/* 804E705C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070050@ha */
/* 804E7060  38 03 00 50 */	addi r0, r3, 0x0050 /* 0x00070050@l */
/* 804E7064  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E7068  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 804E706C  38 81 00 0C */	addi r4, r1, 0xc
/* 804E7070  38 A0 00 00 */	li r5, 0
/* 804E7074  38 C0 FF FF */	li r6, -1
/* 804E7078  81 9C 05 E8 */	lwz r12, 0x5e8(r28)
/* 804E707C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E7080  7D 89 03 A6 */	mtctr r12
/* 804E7084  4E 80 04 21 */	bctrl 
/* 804E7088  AB BC 06 D4 */	lha r29, 0x6d4(r28)
/* 804E708C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804E7090  EC 20 00 32 */	fmuls f1, f0, f0
/* 804E7094  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804E7098  EC 00 00 32 */	fmuls f0, f0, f0
/* 804E709C  EC 21 00 2A */	fadds f1, f1, f0
/* 804E70A0  FC 00 F8 90 */	fmr f0, f31
/* 804E70A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E70A8  40 81 00 0C */	ble lbl_804E70B4
/* 804E70AC  FC 00 08 34 */	frsqrte f0, f1
/* 804E70B0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804E70B4:
/* 804E70B4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804E70B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E70BC  40 80 01 A4 */	bge lbl_804E7260
/* 804E70C0  38 00 00 02 */	li r0, 2
/* 804E70C4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 804E70C8  48 00 01 98 */	b lbl_804E7260
lbl_804E70CC:
/* 804E70CC  38 00 00 00 */	li r0, 0
/* 804E70D0  98 1C 06 F2 */	stb r0, 0x6f2(r28)
/* 804E70D4  3C 60 80 4F */	lis r3, l_HIO@ha
/* 804E70D8  38 63 EF 3C */	addi r3, r3, l_HIO@l
/* 804E70DC  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 804E70E0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804E70E4  EC 20 00 32 */	fmuls f1, f0, f0
/* 804E70E8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804E70EC  EC 00 00 32 */	fmuls f0, f0, f0
/* 804E70F0  EC 21 00 2A */	fadds f1, f1, f0
/* 804E70F4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E70F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E70FC  40 81 00 0C */	ble lbl_804E7108
/* 804E7100  FC 00 08 34 */	frsqrte f0, f1
/* 804E7104  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804E7108:
/* 804E7108  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804E710C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E7110  40 80 00 60 */	bge lbl_804E7170
/* 804E7114  38 00 00 14 */	li r0, 0x14
/* 804E7118  B0 1C 06 E0 */	sth r0, 0x6e0(r28)
/* 804E711C  38 00 00 0B */	li r0, 0xb
/* 804E7120  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 804E7124  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804E7128  4B D8 08 64 */	b cM_rndFX__Ff
/* 804E712C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804E7130  EC 40 08 2A */	fadds f2, f0, f1
/* 804E7134  7F 83 E3 78 */	mr r3, r28
/* 804E7138  38 80 00 1E */	li r4, 0x1e
/* 804E713C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E7140  38 A0 00 00 */	li r5, 0
/* 804E7144  4B FF E1 8D */	bl anm_init__FP10e_dn_classifUcf
/* 804E7148  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070051@ha */
/* 804E714C  38 03 00 51 */	addi r0, r3, 0x0051 /* 0x00070051@l */
/* 804E7150  90 01 00 08 */	stw r0, 8(r1)
/* 804E7154  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 804E7158  38 81 00 08 */	addi r4, r1, 8
/* 804E715C  38 A0 FF FF */	li r5, -1
/* 804E7160  81 9C 05 E8 */	lwz r12, 0x5e8(r28)
/* 804E7164  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E7168  7D 89 03 A6 */	mtctr r12
/* 804E716C  4E 80 04 21 */	bctrl 
lbl_804E7170:
/* 804E7170  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804E7174  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804E7178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E717C  40 81 00 E4 */	ble lbl_804E7260
/* 804E7180  38 00 00 02 */	li r0, 2
/* 804E7184  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 804E7188  48 00 00 D8 */	b lbl_804E7260
lbl_804E718C:
/* 804E718C  38 00 00 00 */	li r0, 0
/* 804E7190  98 1C 06 F2 */	stb r0, 0x6f2(r28)
/* 804E7194  AB BC 06 D4 */	lha r29, 0x6d4(r28)
/* 804E7198  A8 1C 06 E0 */	lha r0, 0x6e0(r28)
/* 804E719C  2C 00 00 0A */	cmpwi r0, 0xa
/* 804E71A0  41 80 00 94 */	blt lbl_804E7234
/* 804E71A4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E71A8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E71AC  80 63 00 00 */	lwz r3, 0(r3)
/* 804E71B0  7F A4 EB 78 */	mr r4, r29
/* 804E71B4  4B B2 52 28 */	b mDoMtx_YrotS__FPA4_fs
/* 804E71B8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 804E71BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E71C0  FC 00 F8 90 */	fmr f0, f31
/* 804E71C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E71C8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804E71CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804E71D0  38 61 00 20 */	addi r3, r1, 0x20
/* 804E71D4  38 81 00 14 */	addi r4, r1, 0x14
/* 804E71D8  4B D8 9D 14 */	b MtxPosition__FP4cXyzP4cXyz
/* 804E71DC  38 61 00 14 */	addi r3, r1, 0x14
/* 804E71E0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804E71E4  7C 65 1B 78 */	mr r5, r3
/* 804E71E8  4B E5 FE A8 */	b PSVECAdd
/* 804E71EC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804E71F0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804E71F4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E71F8  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 804E71FC  4B D8 88 40 */	b cLib_addCalc2__FPffff
/* 804E7200  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 804E7204  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804E7208  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E720C  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 804E7210  4B D8 88 2C */	b cLib_addCalc2__FPffff
/* 804E7214  A8 1C 06 E0 */	lha r0, 0x6e0(r28)
/* 804E7218  2C 00 00 0A */	cmpwi r0, 0xa
/* 804E721C  40 82 00 18 */	bne lbl_804E7234
/* 804E7220  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804E7224  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804E7228  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804E722C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 804E7230  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_804E7234:
/* 804E7234  A8 1C 06 E0 */	lha r0, 0x6e0(r28)
/* 804E7238  2C 00 00 00 */	cmpwi r0, 0
/* 804E723C  40 82 00 24 */	bne lbl_804E7260
/* 804E7240  7F 83 E3 78 */	mr r3, r28
/* 804E7244  38 80 00 1F */	li r4, 0x1f
/* 804E7248  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E724C  38 A0 00 02 */	li r5, 2
/* 804E7250  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E7254  4B FF E0 7D */	bl anm_init__FP10e_dn_classifUcf
/* 804E7258  38 00 00 05 */	li r0, 5
/* 804E725C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_804E7260:
/* 804E7260  38 7C 05 2C */	addi r3, r28, 0x52c
/* 804E7264  FC 20 F8 90 */	fmr f1, f31
/* 804E7268  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E726C  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 804E7270  4B D8 87 CC */	b cLib_addCalc2__FPffff
/* 804E7274  38 7C 04 DE */	addi r3, r28, 0x4de
/* 804E7278  7F A4 EB 78 */	mr r4, r29
/* 804E727C  38 A0 00 04 */	li r5, 4
/* 804E7280  38 C0 10 00 */	li r6, 0x1000
/* 804E7284  4B D8 93 84 */	b cLib_addCalcAngleS2__FPssss
/* 804E7288  38 00 00 02 */	li r0, 2
/* 804E728C  98 1C 06 F4 */	stb r0, 0x6f4(r28)
/* 804E7290  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804E7294  D0 1C 07 38 */	stfs f0, 0x738(r28)
/* 804E7298  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804E729C  D0 1C 07 3C */	stfs f0, 0x73c(r28)
/* 804E72A0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804E72A4  D0 1C 07 40 */	stfs f0, 0x740(r28)
lbl_804E72A8:
/* 804E72A8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804E72AC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804E72B0  39 61 00 50 */	addi r11, r1, 0x50
/* 804E72B4  4B E7 AF 70 */	b _restgpr_28
/* 804E72B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804E72BC  7C 08 03 A6 */	mtlr r0
/* 804E72C0  38 21 00 60 */	addi r1, r1, 0x60
/* 804E72C4  4E 80 00 20 */	blr 
