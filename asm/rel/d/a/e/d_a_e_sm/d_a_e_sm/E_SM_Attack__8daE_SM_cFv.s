lbl_80793E18:
/* 80793E18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80793E1C  7C 08 02 A6 */	mflr r0
/* 80793E20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80793E24  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80793E28  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80793E2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80793E30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80793E34  7C 7E 1B 78 */	mr r30, r3
/* 80793E38  3C 60 80 7A */	lis r3, lit_3920@ha /* 0x807985E0@ha */
/* 80793E3C  3B E3 85 E0 */	addi r31, r3, lit_3920@l /* 0x807985E0@l */
/* 80793E40  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 80793E44  2C 00 00 00 */	cmpwi r0, 0
/* 80793E48  40 82 00 34 */	bne lbl_80793E7C
/* 80793E4C  A8 7E 06 BC */	lha r3, 0x6bc(r30)
/* 80793E50  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80793E54  C0 1E 09 80 */	lfs f0, 0x980(r30)
/* 80793E58  EC 21 00 2A */	fadds f1, f1, f0
/* 80793E5C  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80793E60  EC 01 00 24 */	fdivs f0, f1, f0
/* 80793E64  FC 00 00 1E */	fctiwz f0, f0
/* 80793E68  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80793E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80793E70  7C 03 02 14 */	add r0, r3, r0
/* 80793E74  B0 1E 06 BC */	sth r0, 0x6bc(r30)
/* 80793E78  48 00 00 30 */	b lbl_80793EA8
lbl_80793E7C:
/* 80793E7C  A8 7E 06 BC */	lha r3, 0x6bc(r30)
/* 80793E80  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80793E84  C0 1E 09 80 */	lfs f0, 0x980(r30)
/* 80793E88  EC 21 00 2A */	fadds f1, f1, f0
/* 80793E8C  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80793E90  EC 01 00 24 */	fdivs f0, f1, f0
/* 80793E94  FC 00 00 1E */	fctiwz f0, f0
/* 80793E98  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80793E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80793EA0  7C 03 02 14 */	add r0, r3, r0
/* 80793EA4  B0 1E 06 BC */	sth r0, 0x6bc(r30)
lbl_80793EA8:
/* 80793EA8  A8 1E 09 8A */	lha r0, 0x98a(r30)
/* 80793EAC  2C 00 00 01 */	cmpwi r0, 1
/* 80793EB0  41 82 00 C4 */	beq lbl_80793F74
/* 80793EB4  40 80 00 10 */	bge lbl_80793EC4
/* 80793EB8  2C 00 00 00 */	cmpwi r0, 0
/* 80793EBC  40 80 00 14 */	bge lbl_80793ED0
/* 80793EC0  48 00 01 B8 */	b lbl_80794078
lbl_80793EC4:
/* 80793EC4  2C 00 00 03 */	cmpwi r0, 3
/* 80793EC8  40 80 01 B0 */	bge lbl_80794078
/* 80793ECC  48 00 01 1C */	b lbl_80793FE8
lbl_80793ED0:
/* 80793ED0  7F C3 F3 78 */	mr r3, r30
/* 80793ED4  38 80 00 05 */	li r4, 5
/* 80793ED8  38 A0 00 00 */	li r5, 0
/* 80793EDC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80793EE0  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80793EE4  4B FF E3 7D */	bl SetAnm__8daE_SM_cFiiff
/* 80793EE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702DB@ha */
/* 80793EEC  38 03 02 DB */	addi r0, r3, 0x02DB /* 0x000702DB@l */
/* 80793EF0  90 01 00 08 */	stw r0, 8(r1)
/* 80793EF4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80793EF8  38 81 00 08 */	addi r4, r1, 8
/* 80793EFC  38 A0 FF FF */	li r5, -1
/* 80793F00  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80793F04  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80793F08  7D 89 03 A6 */	mtctr r12
/* 80793F0C  4E 80 04 21 */	bctrl 
/* 80793F10  38 00 00 01 */	li r0, 1
/* 80793F14  B0 1E 06 B0 */	sth r0, 0x6b0(r30)
/* 80793F18  A8 7E 09 8A */	lha r3, 0x98a(r30)
/* 80793F1C  38 03 00 01 */	addi r0, r3, 1
/* 80793F20  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 80793F24  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80793F28  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 80793F2C  C0 3E 06 DC */	lfs f1, 0x6dc(r30)
/* 80793F30  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80793F34  EC 01 00 2A */	fadds f0, f1, f0
/* 80793F38  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 80793F3C  A8 1E 06 D4 */	lha r0, 0x6d4(r30)
/* 80793F40  2C 00 00 00 */	cmpwi r0, 0
/* 80793F44  41 82 00 10 */	beq lbl_80793F54
/* 80793F48  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80793F4C  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 80793F50  48 00 00 0C */	b lbl_80793F5C
lbl_80793F54:
/* 80793F54  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80793F58  D0 1E 09 80 */	stfs f0, 0x980(r30)
lbl_80793F5C:
/* 80793F5C  C0 3E 06 DC */	lfs f1, 0x6dc(r30)
/* 80793F60  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80793F64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80793F68  40 81 01 10 */	ble lbl_80794078
/* 80793F6C  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 80793F70  48 00 01 08 */	b lbl_80794078
lbl_80793F74:
/* 80793F74  C0 3E 06 DC */	lfs f1, 0x6dc(r30)
/* 80793F78  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80793F7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80793F80  40 81 00 08 */	ble lbl_80793F88
/* 80793F84  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
lbl_80793F88:
/* 80793F88  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80793F8C  38 80 00 01 */	li r4, 1
/* 80793F90  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80793F94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80793F98  40 82 00 18 */	bne lbl_80793FB0
/* 80793F9C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80793FA0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80793FA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80793FA8  41 82 00 08 */	beq lbl_80793FB0
/* 80793FAC  38 80 00 00 */	li r4, 0
lbl_80793FB0:
/* 80793FB0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80793FB4  41 82 00 C4 */	beq lbl_80794078
/* 80793FB8  7F C3 F3 78 */	mr r3, r30
/* 80793FBC  38 80 00 1B */	li r4, 0x1b
/* 80793FC0  38 A0 00 00 */	li r5, 0
/* 80793FC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80793FC8  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80793FCC  4B FF E2 95 */	bl SetAnm__8daE_SM_cFiiff
/* 80793FD0  38 00 00 0A */	li r0, 0xa
/* 80793FD4  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 80793FD8  A8 7E 09 8A */	lha r3, 0x98a(r30)
/* 80793FDC  38 03 00 01 */	addi r0, r3, 1
/* 80793FE0  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 80793FE4  48 00 00 94 */	b lbl_80794078
lbl_80793FE8:
/* 80793FE8  C0 3E 06 DC */	lfs f1, 0x6dc(r30)
/* 80793FEC  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80793FF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80793FF4  40 81 00 08 */	ble lbl_80793FFC
/* 80793FF8  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
lbl_80793FFC:
/* 80793FFC  A8 1E 06 C4 */	lha r0, 0x6c4(r30)
/* 80794000  2C 00 00 00 */	cmpwi r0, 0
/* 80794004  40 82 00 30 */	bne lbl_80794034
/* 80794008  7F C3 F3 78 */	mr r3, r30
/* 8079400C  38 80 00 14 */	li r4, 0x14
/* 80794010  38 A0 00 02 */	li r5, 2
/* 80794014  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80794018  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8079401C  4B FF E2 45 */	bl SetAnm__8daE_SM_cFiiff
/* 80794020  38 00 00 01 */	li r0, 1
/* 80794024  B0 1E 09 88 */	sth r0, 0x988(r30)
/* 80794028  38 00 00 00 */	li r0, 0
/* 8079402C  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 80794030  48 00 00 48 */	b lbl_80794078
lbl_80794034:
/* 80794034  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80794038  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8079403C  C0 1E 09 94 */	lfs f0, 0x994(r30)
/* 80794040  EC 21 00 2A */	fadds f1, f1, f0
/* 80794044  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80794048  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 8079404C  4B AD B9 F1 */	bl cLib_addCalc2__FPffff
/* 80794050  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 80794054  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80794058  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 8079405C  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80794060  4B AD B9 DD */	bl cLib_addCalc2__FPffff
/* 80794064  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 80794068  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8079406C  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 80794070  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80794074  4B AD B9 C9 */	bl cLib_addCalc2__FPffff
lbl_80794078:
/* 80794078  88 1E 06 85 */	lbz r0, 0x685(r30)
/* 8079407C  28 00 00 01 */	cmplwi r0, 1
/* 80794080  40 82 00 24 */	bne lbl_807940A4
/* 80794084  A8 1E 06 BE */	lha r0, 0x6be(r30)
/* 80794088  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8079408C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80794090  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80794094  7C 23 04 2E */	lfsx f1, r3, r0
/* 80794098  C0 1E 09 78 */	lfs f0, 0x978(r30)
/* 8079409C  EF E0 00 72 */	fmuls f31, f0, f1
/* 807940A0  48 00 00 08 */	b lbl_807940A8
lbl_807940A4:
/* 807940A4  C3 FE 09 78 */	lfs f31, 0x978(r30)
lbl_807940A8:
/* 807940A8  38 7E 06 9C */	addi r3, r30, 0x69c
/* 807940AC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807940B0  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 807940B4  C0 7F 00 00 */	lfs f3, 0(r31)
/* 807940B8  4B AD B9 85 */	bl cLib_addCalc2__FPffff
/* 807940BC  38 7E 09 78 */	addi r3, r30, 0x978
/* 807940C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807940C4  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 807940C8  4B AD C6 79 */	bl cLib_chaseF__FPfff
/* 807940CC  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 807940D0  C0 7F 00 08 */	lfs f3, 8(r31)
/* 807940D4  EC 23 F8 2A */	fadds f1, f3, f31
/* 807940D8  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 807940DC  4B AD B9 61 */	bl cLib_addCalc2__FPffff
/* 807940E0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807940E4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807940E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807940EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807940F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807940F4  7C 08 03 A6 */	mtlr r0
/* 807940F8  38 21 00 30 */	addi r1, r1, 0x30
/* 807940FC  4E 80 00 20 */	blr 
