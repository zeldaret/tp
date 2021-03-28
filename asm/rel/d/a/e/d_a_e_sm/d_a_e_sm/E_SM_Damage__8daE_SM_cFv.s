lbl_80792C20:
/* 80792C20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80792C24  7C 08 02 A6 */	mflr r0
/* 80792C28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80792C2C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80792C30  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80792C34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80792C38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80792C3C  7C 7E 1B 78 */	mr r30, r3
/* 80792C40  3C 80 80 7A */	lis r4, lit_3920@ha
/* 80792C44  3B E4 85 E0 */	addi r31, r4, lit_3920@l
/* 80792C48  A8 83 06 BC */	lha r4, 0x6bc(r3)
/* 80792C4C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80792C50  C0 03 09 80 */	lfs f0, 0x980(r3)
/* 80792C54  EC 21 00 2A */	fadds f1, f1, f0
/* 80792C58  C0 03 06 F0 */	lfs f0, 0x6f0(r3)
/* 80792C5C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80792C60  FC 00 00 1E */	fctiwz f0, f0
/* 80792C64  D8 01 00 08 */	stfd f0, 8(r1)
/* 80792C68  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80792C6C  7C 04 02 14 */	add r0, r4, r0
/* 80792C70  B0 03 06 BC */	sth r0, 0x6bc(r3)
/* 80792C74  80 03 10 00 */	lwz r0, 0x1000(r3)
/* 80792C78  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80792C7C  90 03 10 00 */	stw r0, 0x1000(r3)
/* 80792C80  A8 03 06 C0 */	lha r0, 0x6c0(r3)
/* 80792C84  2C 00 00 00 */	cmpwi r0, 0
/* 80792C88  41 82 00 E4 */	beq lbl_80792D6C
/* 80792C8C  88 1E 06 85 */	lbz r0, 0x685(r30)
/* 80792C90  28 00 00 01 */	cmplwi r0, 1
/* 80792C94  40 82 00 24 */	bne lbl_80792CB8
/* 80792C98  A8 1E 06 BE */	lha r0, 0x6be(r30)
/* 80792C9C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80792CA0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80792CA4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80792CA8  7C 23 04 2E */	lfsx f1, r3, r0
/* 80792CAC  C0 1E 09 78 */	lfs f0, 0x978(r30)
/* 80792CB0  EF E0 00 72 */	fmuls f31, f0, f1
/* 80792CB4  48 00 00 08 */	b lbl_80792CBC
lbl_80792CB8:
/* 80792CB8  C3 FE 09 78 */	lfs f31, 0x978(r30)
lbl_80792CBC:
/* 80792CBC  A8 7E 06 BE */	lha r3, 0x6be(r30)
/* 80792CC0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80792CC4  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80792CC8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80792CCC  FC 00 00 1E */	fctiwz f0, f0
/* 80792CD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80792CD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80792CD8  7C 03 02 14 */	add r0, r3, r0
/* 80792CDC  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 80792CE0  38 7E 06 E4 */	addi r3, r30, 0x6e4
/* 80792CE4  C0 3E 09 74 */	lfs f1, 0x974(r30)
/* 80792CE8  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80792CEC  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80792CF0  4B AD CD 4C */	b cLib_addCalc2__FPffff
/* 80792CF4  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 80792CF8  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80792CFC  EC 23 F8 2A */	fadds f1, f3, f31
/* 80792D00  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80792D04  4B AD CD 38 */	b cLib_addCalc2__FPffff
/* 80792D08  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 80792D0C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80792D10  C0 1E 09 7C */	lfs f0, 0x97c(r30)
/* 80792D14  EC 21 00 2A */	fadds f1, f1, f0
/* 80792D18  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80792D1C  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80792D20  4B AD CD 1C */	b cLib_addCalc2__FPffff
/* 80792D24  38 7E 09 80 */	addi r3, r30, 0x980
/* 80792D28  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80792D2C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80792D30  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80792D34  4B AD CD 08 */	b cLib_addCalc2__FPffff
/* 80792D38  38 7E 09 74 */	addi r3, r30, 0x974
/* 80792D3C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80792D40  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80792D44  4B AD D9 FC */	b cLib_chaseF__FPfff
/* 80792D48  38 7E 09 78 */	addi r3, r30, 0x978
/* 80792D4C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80792D50  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80792D54  4B AD D9 EC */	b cLib_chaseF__FPfff
/* 80792D58  38 7E 09 7C */	addi r3, r30, 0x97c
/* 80792D5C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80792D60  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 80792D64  4B AD D9 DC */	b cLib_chaseF__FPfff
/* 80792D68  48 00 00 E8 */	b lbl_80792E50
lbl_80792D6C:
/* 80792D6C  38 80 00 00 */	li r4, 0
/* 80792D70  98 9E 06 85 */	stb r4, 0x685(r30)
/* 80792D74  A8 BE 06 B0 */	lha r5, 0x6b0(r30)
/* 80792D78  2C 05 00 04 */	cmpwi r5, 4
/* 80792D7C  41 82 00 D4 */	beq lbl_80792E50
/* 80792D80  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80792D84  2C 00 00 00 */	cmpwi r0, 0
/* 80792D88  40 81 00 C8 */	ble lbl_80792E50
/* 80792D8C  2C 05 00 07 */	cmpwi r5, 7
/* 80792D90  41 82 00 C0 */	beq lbl_80792E50
/* 80792D94  A8 1E 09 88 */	lha r0, 0x988(r30)
/* 80792D98  2C 00 00 05 */	cmpwi r0, 5
/* 80792D9C  41 82 00 B4 */	beq lbl_80792E50
/* 80792DA0  2C 00 00 01 */	cmpwi r0, 1
/* 80792DA4  41 82 00 AC */	beq lbl_80792E50
/* 80792DA8  2C 05 00 03 */	cmpwi r5, 3
/* 80792DAC  41 82 00 94 */	beq lbl_80792E40
/* 80792DB0  2C 05 00 05 */	cmpwi r5, 5
/* 80792DB4  41 82 00 8C */	beq lbl_80792E40
/* 80792DB8  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 80792DBC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80792DC0  40 82 00 5C */	bne lbl_80792E1C
/* 80792DC4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80792DC8  38 A0 00 01 */	li r5, 1
/* 80792DCC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80792DD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80792DD4  40 82 00 18 */	bne lbl_80792DEC
/* 80792DD8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80792DDC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80792DE0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80792DE4  41 82 00 08 */	beq lbl_80792DEC
/* 80792DE8  7C 85 23 78 */	mr r5, r4
lbl_80792DEC:
/* 80792DEC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80792DF0  41 82 00 60 */	beq lbl_80792E50
/* 80792DF4  7F C3 F3 78 */	mr r3, r30
/* 80792DF8  38 80 00 14 */	li r4, 0x14
/* 80792DFC  38 A0 00 02 */	li r5, 2
/* 80792E00  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80792E04  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80792E08  4B FF F4 59 */	bl SetAnm__8daE_SM_cFiiff
/* 80792E0C  38 00 00 00 */	li r0, 0
/* 80792E10  B0 1E 09 88 */	sth r0, 0x988(r30)
/* 80792E14  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 80792E18  48 00 00 38 */	b lbl_80792E50
lbl_80792E1C:
/* 80792E1C  38 80 00 14 */	li r4, 0x14
/* 80792E20  38 A0 00 02 */	li r5, 2
/* 80792E24  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80792E28  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80792E2C  4B FF F4 35 */	bl SetAnm__8daE_SM_cFiiff
/* 80792E30  38 00 00 00 */	li r0, 0
/* 80792E34  B0 1E 09 88 */	sth r0, 0x988(r30)
/* 80792E38  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 80792E3C  48 00 00 14 */	b lbl_80792E50
lbl_80792E40:
/* 80792E40  38 00 00 03 */	li r0, 3
/* 80792E44  B0 1E 09 88 */	sth r0, 0x988(r30)
/* 80792E48  38 00 00 00 */	li r0, 0
/* 80792E4C  B0 1E 09 8A */	sth r0, 0x98a(r30)
lbl_80792E50:
/* 80792E50  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80792E54  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80792E58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80792E5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80792E60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80792E64  7C 08 03 A6 */	mtlr r0
/* 80792E68  38 21 00 30 */	addi r1, r1, 0x30
/* 80792E6C  4E 80 00 20 */	blr 
