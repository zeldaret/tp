lbl_8012E9C8:
/* 8012E9C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8012E9CC  7C 08 02 A6 */	mflr r0
/* 8012E9D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8012E9D4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8012E9D8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8012E9DC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8012E9E0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8012E9E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8012E9E8  48 23 37 F5 */	bl _savegpr_29
/* 8012E9EC  7C 7F 1B 78 */	mr r31, r3
/* 8012E9F0  7C 9D 23 78 */	mr r29, r4
/* 8012E9F4  38 80 00 FC */	li r4, 0xfc
/* 8012E9F8  4B F9 35 75 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012E9FC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8012EA00  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8012EA04  41 82 00 40 */	beq lbl_8012EA44
/* 8012EA08  88 1F 2F C7 */	lbz r0, 0x2fc7(r31)
/* 8012EA0C  28 00 00 03 */	cmplwi r0, 3
/* 8012EA10  41 82 00 34 */	beq lbl_8012EA44
/* 8012EA14  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 8012EA18  38 63 F0 A8 */	addi r3, r3, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 8012EA1C  C0 23 00 04 */	lfs f1, 4(r3)
/* 8012EA20  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 8012EA24  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 8012EA28  C3 E3 00 48 */	lfs f31, 0x48(r3)
/* 8012EA2C  C3 C3 00 4C */	lfs f30, 0x4c(r3)
/* 8012EA30  AB C3 00 40 */	lha r30, 0x40(r3)
/* 8012EA34  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 8012EA38  64 00 00 01 */	oris r0, r0, 1
/* 8012EA3C  90 1F 05 78 */	stw r0, 0x578(r31)
/* 8012EA40  48 00 00 24 */	b lbl_8012EA64
lbl_8012EA44:
/* 8012EA44  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 8012EA48  38 63 F0 A8 */	addi r3, r3, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 8012EA4C  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 8012EA50  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 8012EA54  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 8012EA58  C3 E3 00 68 */	lfs f31, 0x68(r3)
/* 8012EA5C  C3 C3 00 6C */	lfs f30, 0x6c(r3)
/* 8012EA60  AB C3 00 42 */	lha r30, 0x42(r3)
lbl_8012EA64:
/* 8012EA64  7F E3 FB 78 */	mr r3, r31
/* 8012EA68  38 80 00 04 */	li r4, 4
/* 8012EA6C  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 8012EA70  38 C5 F0 A8 */	addi r6, r5, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 8012EA74  C0 46 00 08 */	lfs f2, 8(r6)
/* 8012EA78  A8 A6 00 00 */	lha r5, 0(r6)
/* 8012EA7C  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 8012EA80  4B FF AC 85 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8012EA84  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 8012EA88  C0 1F 05 94 */	lfs f0, 0x594(r31)
/* 8012EA8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012EA90  41 81 00 20 */	bgt lbl_8012EAB0
/* 8012EA94  2C 1D 00 00 */	cmpwi r29, 0
/* 8012EA98  40 82 00 18 */	bne lbl_8012EAB0
/* 8012EA9C  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 8012EAA0  38 63 F0 A8 */	addi r3, r3, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 8012EAA4  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 8012EAA8  28 00 00 01 */	cmplwi r0, 1
/* 8012EAAC  40 82 00 0C */	bne lbl_8012EAB8
lbl_8012EAB0:
/* 8012EAB0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8012EAB4  48 00 00 10 */	b lbl_8012EAC4
lbl_8012EAB8:
/* 8012EAB8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8012EABC  40 80 00 08 */	bge lbl_8012EAC4
/* 8012EAC0  D3 FF 05 2C */	stfs f31, 0x52c(r31)
lbl_8012EAC4:
/* 8012EAC4  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 8012EAC8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8012EACC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012EAD0  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 8012EAD4  57 C0 04 38 */	rlwinm r0, r30, 0, 0x10, 0x1c
/* 8012EAD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8012EADC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8012EAE0  7C 03 04 2E */	lfsx f0, r3, r0
/* 8012EAE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8012EAE8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8012EAEC  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 8012EAF0  7C 63 02 14 */	add r3, r3, r0
/* 8012EAF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012EAF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8012EAFC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012EB00  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 8012EB04  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 8012EB08  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8012EB0C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012EB10  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8012EB14  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012EB18  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8012EB1C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012EB20  D0 1F 33 B0 */	stfs f0, 0x33b0(r31)
/* 8012EB24  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012EB28  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8012EB2C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8012EB30  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 8012EB34  90 1F 05 70 */	stw r0, 0x570(r31)
/* 8012EB38  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 8012EB3C  60 00 01 00 */	ori r0, r0, 0x100
/* 8012EB40  90 1F 05 80 */	stw r0, 0x580(r31)
/* 8012EB44  7F E3 FB 78 */	mr r3, r31
/* 8012EB48  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010033@ha */
/* 8012EB4C  38 84 00 33 */	addi r4, r4, 0x0033 /* 0x00010033@l */
/* 8012EB50  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8012EB54  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8012EB58  7D 89 03 A6 */	mtctr r12
/* 8012EB5C  4E 80 04 21 */	bctrl 
/* 8012EB60  38 00 00 01 */	li r0, 1
/* 8012EB64  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012EB68  38 60 00 01 */	li r3, 1
/* 8012EB6C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8012EB70  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8012EB74  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8012EB78  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8012EB7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8012EB80  48 23 36 A9 */	bl _restgpr_29
/* 8012EB84  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8012EB88  7C 08 03 A6 */	mtlr r0
/* 8012EB8C  38 21 00 40 */	addi r1, r1, 0x40
/* 8012EB90  4E 80 00 20 */	blr 
