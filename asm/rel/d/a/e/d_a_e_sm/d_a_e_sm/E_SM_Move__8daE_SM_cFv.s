lbl_80793B64:
/* 80793B64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80793B68  7C 08 02 A6 */	mflr r0
/* 80793B6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80793B70  39 61 00 40 */	addi r11, r1, 0x40
/* 80793B74  4B BC E6 68 */	b _savegpr_29
/* 80793B78  7C 7E 1B 78 */	mr r30, r3
/* 80793B7C  3C 60 80 7A */	lis r3, lit_3920@ha
/* 80793B80  3B E3 85 E0 */	addi r31, r3, lit_3920@l
/* 80793B84  A8 7E 06 BC */	lha r3, 0x6bc(r30)
/* 80793B88  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80793B8C  C0 1E 09 80 */	lfs f0, 0x980(r30)
/* 80793B90  EC 21 00 2A */	fadds f1, f1, f0
/* 80793B94  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80793B98  EC 01 00 24 */	fdivs f0, f1, f0
/* 80793B9C  FC 00 00 1E */	fctiwz f0, f0
/* 80793BA0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80793BA4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80793BA8  7C 03 02 14 */	add r0, r3, r0
/* 80793BAC  B0 1E 06 BC */	sth r0, 0x6bc(r30)
/* 80793BB0  A8 1E 09 8A */	lha r0, 0x98a(r30)
/* 80793BB4  2C 00 00 01 */	cmpwi r0, 1
/* 80793BB8  41 82 00 BC */	beq lbl_80793C74
/* 80793BBC  40 80 02 44 */	bge lbl_80793E00
/* 80793BC0  2C 00 00 00 */	cmpwi r0, 0
/* 80793BC4  40 80 00 08 */	bge lbl_80793BCC
/* 80793BC8  48 00 02 38 */	b lbl_80793E00
lbl_80793BCC:
/* 80793BCC  80 1E 0C A4 */	lwz r0, 0xca4(r30)
/* 80793BD0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80793BD4  41 82 02 2C */	beq lbl_80793E00
/* 80793BD8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702D7@ha */
/* 80793BDC  38 03 02 D7 */	addi r0, r3, 0x02D7 /* 0x000702D7@l */
/* 80793BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80793BE4  38 7E 06 60 */	addi r3, r30, 0x660
/* 80793BE8  38 81 00 14 */	addi r4, r1, 0x14
/* 80793BEC  38 A0 00 00 */	li r5, 0
/* 80793BF0  38 C0 FF FF */	li r6, -1
/* 80793BF4  81 9E 06 70 */	lwz r12, 0x670(r30)
/* 80793BF8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80793BFC  7D 89 03 A6 */	mtctr r12
/* 80793C00  4E 80 04 21 */	bctrl 
/* 80793C04  38 00 00 01 */	li r0, 1
/* 80793C08  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 80793C0C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80793C10  4B AD 3D 7C */	b cM_rndFX__Ff
/* 80793C14  3C 60 80 7A */	lis r3, data_807989E4@ha
/* 80793C18  A8 03 89 E4 */	lha r0, data_807989E4@l(r3)
/* 80793C1C  C8 5F 00 68 */	lfd f2, 0x68(r31)
/* 80793C20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80793C24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80793C28  3C 00 43 30 */	lis r0, 0x4330
/* 80793C2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80793C30  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80793C34  EC 00 10 28 */	fsubs f0, f0, f2
/* 80793C38  EC 00 08 2A */	fadds f0, f0, f1
/* 80793C3C  FC 00 00 1E */	fctiwz f0, f0
/* 80793C40  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80793C44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80793C48  B0 1E 09 B2 */	sth r0, 0x9b2(r30)
/* 80793C4C  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80793C50  D0 1E 09 BC */	stfs f0, 0x9bc(r30)
/* 80793C54  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80793C58  4B AD 3C FC */	b cM_rndF__Ff
/* 80793C5C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80793C60  EC 20 08 2A */	fadds f1, f0, f1
/* 80793C64  C0 1E 09 C8 */	lfs f0, 0x9c8(r30)
/* 80793C68  EC 00 00 72 */	fmuls f0, f0, f1
/* 80793C6C  D0 1E 09 A8 */	stfs f0, 0x9a8(r30)
/* 80793C70  48 00 01 90 */	b lbl_80793E00
lbl_80793C74:
/* 80793C74  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 80793C78  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80793C7C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80793C80  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80793C84  4B AD BD B8 */	b cLib_addCalc2__FPffff
/* 80793C88  38 7E 06 E4 */	addi r3, r30, 0x6e4
/* 80793C8C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80793C90  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80793C94  4B AD BD EC */	b cLib_addCalc0__FPfff
/* 80793C98  80 1E 0C A4 */	lwz r0, 0xca4(r30)
/* 80793C9C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80793CA0  41 82 01 04 */	beq lbl_80793DA4
/* 80793CA4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702D8@ha */
/* 80793CA8  38 03 02 D8 */	addi r0, r3, 0x02D8 /* 0x000702D8@l */
/* 80793CAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80793CB0  38 7E 06 60 */	addi r3, r30, 0x660
/* 80793CB4  38 81 00 10 */	addi r4, r1, 0x10
/* 80793CB8  38 A0 00 00 */	li r5, 0
/* 80793CBC  38 C0 FF FF */	li r6, -1
/* 80793CC0  81 9E 06 70 */	lwz r12, 0x670(r30)
/* 80793CC4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80793CC8  7D 89 03 A6 */	mtctr r12
/* 80793CCC  4E 80 04 21 */	bctrl 
/* 80793CD0  80 1E 0C A4 */	lwz r0, 0xca4(r30)
/* 80793CD4  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80793CD8  41 82 00 34 */	beq lbl_80793D0C
/* 80793CDC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002F@ha */
/* 80793CE0  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0006002F@l */
/* 80793CE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80793CE8  38 7E 06 60 */	addi r3, r30, 0x660
/* 80793CEC  38 81 00 0C */	addi r4, r1, 0xc
/* 80793CF0  38 A0 00 00 */	li r5, 0
/* 80793CF4  38 C0 FF FF */	li r6, -1
/* 80793CF8  81 9E 06 70 */	lwz r12, 0x670(r30)
/* 80793CFC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80793D00  7D 89 03 A6 */	mtctr r12
/* 80793D04  4E 80 04 21 */	bctrl 
/* 80793D08  48 00 00 30 */	b lbl_80793D38
lbl_80793D0C:
/* 80793D0C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 80793D10  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 80793D14  90 01 00 08 */	stw r0, 8(r1)
/* 80793D18  38 7E 06 60 */	addi r3, r30, 0x660
/* 80793D1C  38 81 00 08 */	addi r4, r1, 8
/* 80793D20  38 A0 00 00 */	li r5, 0
/* 80793D24  38 C0 FF FF */	li r6, -1
/* 80793D28  81 9E 06 70 */	lwz r12, 0x670(r30)
/* 80793D2C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80793D30  7D 89 03 A6 */	mtctr r12
/* 80793D34  4E 80 04 21 */	bctrl 
lbl_80793D38:
/* 80793D38  80 1E 10 00 */	lwz r0, 0x1000(r30)
/* 80793D3C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80793D40  90 1E 10 00 */	stw r0, 0x1000(r30)
/* 80793D44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80793D48  D0 1E 09 A8 */	stfs f0, 0x9a8(r30)
/* 80793D4C  38 60 00 00 */	li r3, 0
/* 80793D50  B0 7E 06 BC */	sth r3, 0x6bc(r30)
/* 80793D54  38 00 00 02 */	li r0, 2
/* 80793D58  B0 1E 09 88 */	sth r0, 0x988(r30)
/* 80793D5C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80793D60  D0 1E 09 78 */	stfs f0, 0x978(r30)
/* 80793D64  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80793D68  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 80793D6C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80793D70  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 80793D74  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80793D78  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 80793D7C  38 00 00 1E */	li r0, 0x1e
/* 80793D80  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 80793D84  B0 7E 06 BE */	sth r3, 0x6be(r30)
/* 80793D88  3B A0 00 00 */	li r29, 0
lbl_80793D8C:
/* 80793D8C  7F C3 F3 78 */	mr r3, r30
/* 80793D90  4B FF EE 91 */	bl E_SM_Damage__8daE_SM_cFv
/* 80793D94  3B BD 00 01 */	addi r29, r29, 1
/* 80793D98  2C 1D 00 02 */	cmpwi r29, 2
/* 80793D9C  41 80 FF F0 */	blt lbl_80793D8C
/* 80793DA0  48 00 00 4C */	b lbl_80793DEC
lbl_80793DA4:
/* 80793DA4  C0 1E 09 BC */	lfs f0, 0x9bc(r30)
/* 80793DA8  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80793DAC  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 80793DB0  40 80 00 28 */	bge lbl_80793DD8
/* 80793DB4  80 1E 10 00 */	lwz r0, 0x1000(r30)
/* 80793DB8  60 00 00 01 */	ori r0, r0, 1
/* 80793DBC  90 1E 10 00 */	stw r0, 0x1000(r30)
/* 80793DC0  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 80793DC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80793DC8  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80793DCC  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80793DD0  4B AD BB AC */	b cLib_addCalc__FPfffff
/* 80793DD4  48 00 00 18 */	b lbl_80793DEC
lbl_80793DD8:
/* 80793DD8  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 80793DDC  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80793DE0  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80793DE4  FC 60 10 90 */	fmr f3, f2
/* 80793DE8  4B AD BB 94 */	b cLib_addCalc__FPfffff
lbl_80793DEC:
/* 80793DEC  38 7E 06 9C */	addi r3, r30, 0x69c
/* 80793DF0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80793DF4  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80793DF8  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80793DFC  4B AD BC 40 */	b cLib_addCalc2__FPffff
lbl_80793E00:
/* 80793E00  39 61 00 40 */	addi r11, r1, 0x40
/* 80793E04  4B BC E4 24 */	b _restgpr_29
/* 80793E08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80793E0C  7C 08 03 A6 */	mtlr r0
/* 80793E10  38 21 00 40 */	addi r1, r1, 0x40
/* 80793E14  4E 80 00 20 */	blr 
