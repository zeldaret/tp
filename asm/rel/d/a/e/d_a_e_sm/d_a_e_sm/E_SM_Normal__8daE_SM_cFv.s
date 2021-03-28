lbl_807936B4:
/* 807936B4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807936B8  7C 08 02 A6 */	mflr r0
/* 807936BC  90 01 00 94 */	stw r0, 0x94(r1)
/* 807936C0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 807936C4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 807936C8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 807936CC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 807936D0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 807936D4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 807936D8  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 807936DC  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 807936E0  39 61 00 50 */	addi r11, r1, 0x50
/* 807936E4  4B BC EA F8 */	b _savegpr_29
/* 807936E8  7C 7E 1B 78 */	mr r30, r3
/* 807936EC  3C 80 80 7A */	lis r4, lit_3920@ha
/* 807936F0  3B E4 85 E0 */	addi r31, r4, lit_3920@l
/* 807936F4  C3 DF 00 04 */	lfs f30, 4(r31)
/* 807936F8  FF A0 F0 90 */	fmr f29, f30
/* 807936FC  A8 83 06 BC */	lha r4, 0x6bc(r3)
/* 80793700  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80793704  C0 03 09 80 */	lfs f0, 0x980(r3)
/* 80793708  EC 21 00 2A */	fadds f1, f1, f0
/* 8079370C  C0 03 06 F0 */	lfs f0, 0x6f0(r3)
/* 80793710  EC 01 00 24 */	fdivs f0, f1, f0
/* 80793714  FC 00 00 1E */	fctiwz f0, f0
/* 80793718  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8079371C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80793720  7C 04 02 14 */	add r0, r4, r0
/* 80793724  B0 03 06 BC */	sth r0, 0x6bc(r3)
/* 80793728  A8 03 06 BC */	lha r0, 0x6bc(r3)
/* 8079372C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80793730  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80793734  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 80793738  7F E4 04 2E */	lfsx f31, r4, r0
/* 8079373C  A8 83 09 8A */	lha r4, 0x98a(r3)
/* 80793740  2C 04 00 02 */	cmpwi r4, 2
/* 80793744  41 82 01 84 */	beq lbl_807938C8
/* 80793748  40 80 02 FC */	bge lbl_80793A44
/* 8079374C  2C 04 00 00 */	cmpwi r4, 0
/* 80793750  41 82 00 10 */	beq lbl_80793760
/* 80793754  40 80 00 30 */	bge lbl_80793784
/* 80793758  48 00 02 EC */	b lbl_80793A44
/* 8079375C  48 00 02 E8 */	b lbl_80793A44
lbl_80793760:
/* 80793760  80 1E 0C A4 */	lwz r0, 0xca4(r30)
/* 80793764  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80793768  41 82 02 DC */	beq lbl_80793A44
/* 8079376C  38 04 00 01 */	addi r0, r4, 1
/* 80793770  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 80793774  D3 DE 09 A8 */	stfs f30, 0x9a8(r30)
/* 80793778  38 00 00 00 */	li r0, 0
/* 8079377C  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 80793780  48 00 02 C4 */	b lbl_80793A44
lbl_80793784:
/* 80793784  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 80793788  2C 00 00 00 */	cmpwi r0, 0
/* 8079378C  40 82 01 28 */	bne lbl_807938B4
/* 80793790  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80793794  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80793798  4C 40 13 82 */	cror 2, 0, 2
/* 8079379C  40 82 01 18 */	bne lbl_807938B4
/* 807937A0  38 04 00 01 */	addi r0, r4, 1
/* 807937A4  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 807937A8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807937AC  4B AD 41 A8 */	b cM_rndF__Ff
/* 807937B0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807937B4  EC 00 08 2A */	fadds f0, f0, f1
/* 807937B8  FC 00 00 1E */	fctiwz f0, f0
/* 807937BC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 807937C0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 807937C4  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 807937C8  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 807937CC  2C 00 00 14 */	cmpwi r0, 0x14
/* 807937D0  41 82 00 1C */	beq lbl_807937EC
/* 807937D4  7F C3 F3 78 */	mr r3, r30
/* 807937D8  38 80 00 14 */	li r4, 0x14
/* 807937DC  38 A0 00 02 */	li r5, 2
/* 807937E0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807937E4  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 807937E8  4B FF EA 79 */	bl SetAnm__8daE_SM_cFiiff
lbl_807937EC:
/* 807937EC  88 1E 0A 10 */	lbz r0, 0xa10(r30)
/* 807937F0  28 00 00 00 */	cmplwi r0, 0
/* 807937F4  41 82 00 5C */	beq lbl_80793850
/* 807937F8  3C 60 80 7A */	lis r3, data_807989E4@ha
/* 807937FC  A8 03 89 E4 */	lha r0, data_807989E4@l(r3)
/* 80793800  B0 1E 09 B2 */	sth r0, 0x9b2(r30)
/* 80793804  C0 1E 09 90 */	lfs f0, 0x990(r30)
/* 80793808  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8079380C  C0 1E 09 94 */	lfs f0, 0x994(r30)
/* 80793810  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80793814  C0 1E 09 98 */	lfs f0, 0x998(r30)
/* 80793818  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8079381C  7F C3 F3 78 */	mr r3, r30
/* 80793820  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80793824  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80793828  EC 21 00 32 */	fmuls f1, f1, f0
/* 8079382C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80793830  A8 BE 09 B2 */	lha r5, 0x9b2(r30)
/* 80793834  4B FF ED D1 */	bl way_bg_check__FP8daE_SM_cf4cXyzs
/* 80793838  2C 03 00 00 */	cmpwi r3, 0
/* 8079383C  41 82 00 78 */	beq lbl_807938B4
/* 80793840  A8 7E 09 B2 */	lha r3, 0x9b2(r30)
/* 80793844  38 03 01 00 */	addi r0, r3, 0x100
/* 80793848  B0 1E 09 B2 */	sth r0, 0x9b2(r30)
/* 8079384C  48 00 00 68 */	b lbl_807938B4
lbl_80793850:
/* 80793850  3B A0 00 00 */	li r29, 0
/* 80793854  C3 9F 00 00 */	lfs f28, 0(r31)
lbl_80793858:
/* 80793858  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8079385C  4B AD 41 30 */	b cM_rndFX__Ff
/* 80793860  FC 00 08 1E */	fctiwz f0, f1
/* 80793864  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80793868  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8079386C  B0 1E 09 B2 */	sth r0, 0x9b2(r30)
/* 80793870  C0 1E 09 90 */	lfs f0, 0x990(r30)
/* 80793874  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80793878  C0 1E 09 94 */	lfs f0, 0x994(r30)
/* 8079387C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80793880  C0 1E 09 98 */	lfs f0, 0x998(r30)
/* 80793884  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80793888  7F C3 F3 78 */	mr r3, r30
/* 8079388C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80793890  EC 3C 00 32 */	fmuls f1, f28, f0
/* 80793894  38 81 00 20 */	addi r4, r1, 0x20
/* 80793898  A8 BE 09 B2 */	lha r5, 0x9b2(r30)
/* 8079389C  4B FF ED 69 */	bl way_bg_check__FP8daE_SM_cf4cXyzs
/* 807938A0  2C 03 00 00 */	cmpwi r3, 0
/* 807938A4  41 82 00 10 */	beq lbl_807938B4
/* 807938A8  3B BD 00 01 */	addi r29, r29, 1
/* 807938AC  2C 1D 00 64 */	cmpwi r29, 0x64
/* 807938B0  41 80 FF A8 */	blt lbl_80793858
lbl_807938B4:
/* 807938B4  38 7E 09 A8 */	addi r3, r30, 0x9a8
/* 807938B8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807938BC  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 807938C0  4B AD C1 C0 */	b cLib_addCalc0__FPfff
/* 807938C4  48 00 01 80 */	b lbl_80793A44
lbl_807938C8:
/* 807938C8  88 1E 0A 10 */	lbz r0, 0xa10(r30)
/* 807938CC  28 00 00 00 */	cmplwi r0, 0
/* 807938D0  41 82 00 54 */	beq lbl_80793924
/* 807938D4  3C 80 80 7A */	lis r4, data_807989E4@ha
/* 807938D8  A8 04 89 E4 */	lha r0, data_807989E4@l(r4)
/* 807938DC  B0 1E 09 B2 */	sth r0, 0x9b2(r30)
/* 807938E0  C0 1E 09 90 */	lfs f0, 0x990(r30)
/* 807938E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807938E8  C0 1E 09 94 */	lfs f0, 0x994(r30)
/* 807938EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807938F0  C0 1E 09 98 */	lfs f0, 0x998(r30)
/* 807938F4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807938F8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807938FC  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80793900  EC 21 00 32 */	fmuls f1, f1, f0
/* 80793904  38 81 00 14 */	addi r4, r1, 0x14
/* 80793908  A8 BE 09 B2 */	lha r5, 0x9b2(r30)
/* 8079390C  4B FF EC F9 */	bl way_bg_check__FP8daE_SM_cf4cXyzs
/* 80793910  2C 03 00 00 */	cmpwi r3, 0
/* 80793914  41 82 00 10 */	beq lbl_80793924
/* 80793918  A8 7E 09 B2 */	lha r3, 0x9b2(r30)
/* 8079391C  38 03 01 00 */	addi r0, r3, 0x100
/* 80793920  B0 1E 09 B2 */	sth r0, 0x9b2(r30)
lbl_80793924:
/* 80793924  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 80793928  2C 00 00 00 */	cmpwi r0, 0
/* 8079392C  40 82 00 54 */	bne lbl_80793980
/* 80793930  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80793934  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80793938  4C 40 13 82 */	cror 2, 0, 2
/* 8079393C  40 82 00 44 */	bne lbl_80793980
/* 80793940  38 00 00 01 */	li r0, 1
/* 80793944  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 80793948  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8079394C  4B AD 40 08 */	b cM_rndF__Ff
/* 80793950  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80793954  EC 00 08 2A */	fadds f0, f0, f1
/* 80793958  FC 00 00 1E */	fctiwz f0, f0
/* 8079395C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80793960  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80793964  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 80793968  7F C3 F3 78 */	mr r3, r30
/* 8079396C  38 80 00 1C */	li r4, 0x1c
/* 80793970  38 A0 00 02 */	li r5, 2
/* 80793974  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80793978  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8079397C  4B FF E8 E5 */	bl SetAnm__8daE_SM_cFiiff
lbl_80793980:
/* 80793980  A8 7E 06 BC */	lha r3, 0x6bc(r30)
/* 80793984  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80793988  C0 1E 09 80 */	lfs f0, 0x980(r30)
/* 8079398C  EC 21 00 2A */	fadds f1, f1, f0
/* 80793990  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80793994  EC 01 00 24 */	fdivs f0, f1, f0
/* 80793998  FC 00 00 1E */	fctiwz f0, f0
/* 8079399C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 807939A0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 807939A4  7C 63 02 14 */	add r3, r3, r0
/* 807939A8  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 807939AC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807939B0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807939B4  7C 23 04 2E */	lfsx f1, r3, r0
/* 807939B8  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807939BC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807939C0  40 80 00 64 */	bge lbl_80793A24
/* 807939C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807939C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807939CC  40 81 00 58 */	ble lbl_80793A24
/* 807939D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702D5@ha */
/* 807939D4  38 03 02 D5 */	addi r0, r3, 0x02D5 /* 0x000702D5@l */
/* 807939D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807939DC  38 7E 06 60 */	addi r3, r30, 0x660
/* 807939E0  38 81 00 0C */	addi r4, r1, 0xc
/* 807939E4  38 A0 00 00 */	li r5, 0
/* 807939E8  38 C0 FF FF */	li r6, -1
/* 807939EC  81 9E 06 70 */	lwz r12, 0x670(r30)
/* 807939F0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807939F4  7D 89 03 A6 */	mtctr r12
/* 807939F8  4E 80 04 21 */	bctrl 
/* 807939FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C8@ha */
/* 80793A00  38 03 02 C8 */	addi r0, r3, 0x02C8 /* 0x000702C8@l */
/* 80793A04  90 01 00 08 */	stw r0, 8(r1)
/* 80793A08  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80793A0C  38 81 00 08 */	addi r4, r1, 8
/* 80793A10  38 A0 FF FF */	li r5, -1
/* 80793A14  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80793A18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80793A1C  7D 89 03 A6 */	mtctr r12
/* 80793A20  4E 80 04 21 */	bctrl 
lbl_80793A24:
/* 80793A24  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80793A28  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80793A2C  EF C1 00 2A */	fadds f30, f1, f0
/* 80793A30  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80793A34  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80793A38  EC 01 00 2A */	fadds f0, f1, f0
/* 80793A3C  D0 1E 09 A8 */	stfs f0, 0x9a8(r30)
/* 80793A40  C3 BF 00 B4 */	lfs f29, 0xb4(r31)
lbl_80793A44:
/* 80793A44  38 7E 06 E4 */	addi r3, r30, 0x6e4
/* 80793A48  FC 20 F0 90 */	fmr f1, f30
/* 80793A4C  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80793A50  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80793A54  4B AD BF E8 */	b cLib_addCalc2__FPffff
/* 80793A58  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 80793A5C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80793A60  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80793A64  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80793A68  4B AD BF D4 */	b cLib_addCalc2__FPffff
/* 80793A6C  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 80793A70  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80793A74  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80793A78  FC 60 10 90 */	fmr f3, f2
/* 80793A7C  4B AD BF C0 */	b cLib_addCalc2__FPffff
/* 80793A80  38 7E 06 9C */	addi r3, r30, 0x69c
/* 80793A84  FC 20 E8 90 */	fmr f1, f29
/* 80793A88  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80793A8C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80793A90  4B AD BF AC */	b cLib_addCalc2__FPffff
/* 80793A94  80 1E 0C A4 */	lwz r0, 0xca4(r30)
/* 80793A98  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80793A9C  41 82 00 90 */	beq lbl_80793B2C
/* 80793AA0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80793AA4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80793AA8  4C 40 13 82 */	cror 2, 0, 2
/* 80793AAC  40 82 00 80 */	bne lbl_80793B2C
/* 80793AB0  A8 1E 09 8A */	lha r0, 0x98a(r30)
/* 80793AB4  2C 00 00 03 */	cmpwi r0, 3
/* 80793AB8  41 82 00 74 */	beq lbl_80793B2C
/* 80793ABC  38 00 FF FF */	li r0, -1
/* 80793AC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80793AC4  3C 60 80 7A */	lis r3, data_807989E0@ha
/* 80793AC8  C0 23 89 E0 */	lfs f1, data_807989E0@l(r3)
/* 80793ACC  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80793AD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80793AD4  40 80 00 10 */	bge lbl_80793AE4
/* 80793AD8  7F C3 F3 78 */	mr r3, r30
/* 80793ADC  38 81 00 10 */	addi r4, r1, 0x10
/* 80793AE0  4B FF ED 7D */	bl move_check__FP8daE_SM_cPi
lbl_80793AE4:
/* 80793AE4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80793AE8  2C 00 00 00 */	cmpwi r0, 0
/* 80793AEC  41 80 00 2C */	blt lbl_80793B18
/* 80793AF0  38 00 00 05 */	li r0, 5
/* 80793AF4  B0 1E 09 88 */	sth r0, 0x988(r30)
/* 80793AF8  38 00 00 00 */	li r0, 0
/* 80793AFC  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 80793B00  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80793B04  38 80 00 01 */	li r4, 1
/* 80793B08  4B B2 E0 74 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 80793B0C  38 00 00 00 */	li r0, 0
/* 80793B10  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 80793B14  48 00 00 18 */	b lbl_80793B2C
lbl_80793B18:
/* 80793B18  38 00 00 00 */	li r0, 0
/* 80793B1C  B0 1E 06 B0 */	sth r0, 0x6b0(r30)
/* 80793B20  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80793B24  38 80 00 00 */	li r4, 0
/* 80793B28  4B B2 E0 54 */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_80793B2C:
/* 80793B2C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80793B30  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80793B34  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80793B38  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80793B3C  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80793B40  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80793B44  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 80793B48  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 80793B4C  39 61 00 50 */	addi r11, r1, 0x50
/* 80793B50  4B BC E6 D8 */	b _restgpr_29
/* 80793B54  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80793B58  7C 08 03 A6 */	mtlr r0
/* 80793B5C  38 21 00 90 */	addi r1, r1, 0x90
/* 80793B60  4E 80 00 20 */	blr 
