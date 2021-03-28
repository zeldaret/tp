lbl_8061BC6C:
/* 8061BC6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8061BC70  7C 08 02 A6 */	mflr r0
/* 8061BC74  90 01 00 44 */	stw r0, 0x44(r1)
/* 8061BC78  39 61 00 40 */	addi r11, r1, 0x40
/* 8061BC7C  4B D4 65 50 */	b _savegpr_25
/* 8061BC80  7C 7D 1B 78 */	mr r29, r3
/* 8061BC84  3C 60 80 62 */	lis r3, lit_3650@ha
/* 8061BC88  3B E3 D9 D4 */	addi r31, r3, lit_3650@l
/* 8061BC8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8061BC90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8061BC94  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8061BC98  A8 7D 0C A0 */	lha r3, 0xca0(r29)
/* 8061BC9C  38 03 00 01 */	addi r0, r3, 1
/* 8061BCA0  B0 1D 0C A0 */	sth r0, 0xca0(r29)
/* 8061BCA4  A8 1D 05 D0 */	lha r0, 0x5d0(r29)
/* 8061BCA8  2C 00 00 03 */	cmpwi r0, 3
/* 8061BCAC  41 82 00 9C */	beq lbl_8061BD48
/* 8061BCB0  40 80 03 A8 */	bge lbl_8061C058
/* 8061BCB4  2C 00 00 00 */	cmpwi r0, 0
/* 8061BCB8  41 82 00 0C */	beq lbl_8061BCC4
/* 8061BCBC  40 80 00 64 */	bge lbl_8061BD20
/* 8061BCC0  48 00 03 98 */	b lbl_8061C058
lbl_8061BCC4:
/* 8061BCC4  38 80 00 01 */	li r4, 1
/* 8061BCC8  B0 9D 05 D0 */	sth r4, 0x5d0(r29)
/* 8061BCCC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8061BCD0  D0 1D 0C 9C */	stfs f0, 0xc9c(r29)
/* 8061BCD4  38 00 00 00 */	li r0, 0
/* 8061BCD8  B0 1D 0C A2 */	sth r0, 0xca2(r29)
/* 8061BCDC  B0 1D 0C A4 */	sth r0, 0xca4(r29)
/* 8061BCE0  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8061BCE4  A8 1D 05 E2 */	lha r0, 0x5e2(r29)
/* 8061BCE8  7C 03 00 50 */	subf r0, r3, r0
/* 8061BCEC  7C 00 07 35 */	extsh. r0, r0
/* 8061BCF0  40 81 00 0C */	ble lbl_8061BCFC
/* 8061BCF4  90 9D 0C 88 */	stw r4, 0xc88(r29)
/* 8061BCF8  48 00 00 0C */	b lbl_8061BD04
lbl_8061BCFC:
/* 8061BCFC  38 00 FF FF */	li r0, -1
/* 8061BD00  90 1D 0C 88 */	stw r0, 0xc88(r29)
lbl_8061BD04:
/* 8061BD04  38 00 00 02 */	li r0, 2
/* 8061BD08  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 8061BD0C  38 00 00 64 */	li r0, 0x64
/* 8061BD10  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 8061BD14  38 00 00 00 */	li r0, 0
/* 8061BD18  B0 1D 0C A0 */	sth r0, 0xca0(r29)
/* 8061BD1C  B0 1D 0C 98 */	sth r0, 0xc98(r29)
lbl_8061BD20:
/* 8061BD20  A8 1D 05 EC */	lha r0, 0x5ec(r29)
/* 8061BD24  2C 00 00 00 */	cmpwi r0, 0
/* 8061BD28  40 82 00 20 */	bne lbl_8061BD48
/* 8061BD2C  38 00 00 01 */	li r0, 1
/* 8061BD30  B0 1D 05 CE */	sth r0, 0x5ce(r29)
/* 8061BD34  38 00 00 00 */	li r0, 0
/* 8061BD38  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 8061BD3C  B0 1D 0C 98 */	sth r0, 0xc98(r29)
/* 8061BD40  B0 1D 0C A2 */	sth r0, 0xca2(r29)
/* 8061BD44  48 00 03 14 */	b lbl_8061C058
lbl_8061BD48:
/* 8061BD48  38 7D 0C 98 */	addi r3, r29, 0xc98
/* 8061BD4C  38 80 02 00 */	li r4, 0x200
/* 8061BD50  38 A0 00 01 */	li r5, 1
/* 8061BD54  38 C0 00 20 */	li r6, 0x20
/* 8061BD58  4B C5 48 B0 */	b cLib_addCalcAngleS2__FPssss
/* 8061BD5C  A8 1D 0C A0 */	lha r0, 0xca0(r29)
/* 8061BD60  2C 00 00 08 */	cmpwi r0, 8
/* 8061BD64  40 81 00 18 */	ble lbl_8061BD7C
/* 8061BD68  38 7D 0C 90 */	addi r3, r29, 0xc90
/* 8061BD6C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8061BD70  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8061BD74  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 8061BD78  4B C5 3C C4 */	b cLib_addCalc2__FPffff
lbl_8061BD7C:
/* 8061BD7C  A8 1D 0C A0 */	lha r0, 0xca0(r29)
/* 8061BD80  2C 00 00 46 */	cmpwi r0, 0x46
/* 8061BD84  40 80 00 CC */	bge lbl_8061BE50
/* 8061BD88  38 7D 0C A4 */	addi r3, r29, 0xca4
/* 8061BD8C  38 80 00 00 */	li r4, 0
/* 8061BD90  38 A0 00 01 */	li r5, 1
/* 8061BD94  38 C0 01 F4 */	li r6, 0x1f4
/* 8061BD98  4B C5 48 70 */	b cLib_addCalcAngleS2__FPssss
/* 8061BD9C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8061BDA0  A8 9D 05 E2 */	lha r4, 0x5e2(r29)
/* 8061BDA4  80 1D 0C 88 */	lwz r0, 0xc88(r29)
/* 8061BDA8  1C 00 FA 00 */	mulli r0, r0, -1536
/* 8061BDAC  7C 04 02 14 */	add r0, r4, r0
/* 8061BDB0  7C 04 07 34 */	extsh r4, r0
/* 8061BDB4  38 A0 00 02 */	li r5, 2
/* 8061BDB8  38 C0 04 00 */	li r6, 0x400
/* 8061BDBC  4B C5 48 4C */	b cLib_addCalcAngleS2__FPssss
/* 8061BDC0  38 7D 0C 9C */	addi r3, r29, 0xc9c
/* 8061BDC4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8061BDC8  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8061BDCC  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 8061BDD0  4B C5 3C 6C */	b cLib_addCalc2__FPffff
/* 8061BDD4  A8 1D 0C A0 */	lha r0, 0xca0(r29)
/* 8061BDD8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8061BDDC  40 80 02 34 */	bge lbl_8061C010
/* 8061BDE0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8061BDE4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8061BDE8  EC 61 00 28 */	fsubs f3, f1, f0
/* 8061BDEC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8061BDF0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8061BDF4  40 81 00 08 */	ble lbl_8061BDFC
/* 8061BDF8  FC 60 00 90 */	fmr f3, f0
lbl_8061BDFC:
/* 8061BDFC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8061BE00  EC 00 18 2A */	fadds f0, f0, f3
/* 8061BE04  FC 00 00 1E */	fctiwz f0, f0
/* 8061BE08  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8061BE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061BE10  B0 1D 0C 96 */	sth r0, 0xc96(r29)
/* 8061BE14  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8061BE18  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8061BE1C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8061BE20  FC 00 18 50 */	fneg f0, f3
/* 8061BE24  EC 01 00 32 */	fmuls f0, f1, f0
/* 8061BE28  EC 02 00 2A */	fadds f0, f2, f0
/* 8061BE2C  FC 00 00 1E */	fctiwz f0, f0
/* 8061BE30  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8061BE34  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8061BE38  38 04 C0 00 */	addi r0, r4, -16384
/* 8061BE3C  7C 04 07 34 */	extsh r4, r0
/* 8061BE40  38 A0 00 01 */	li r5, 1
/* 8061BE44  38 C0 03 E8 */	li r6, 0x3e8
/* 8061BE48  4B C5 47 C0 */	b cLib_addCalcAngleS2__FPssss
/* 8061BE4C  48 00 01 C4 */	b lbl_8061C010
lbl_8061BE50:
/* 8061BE50  A8 1D 05 EE */	lha r0, 0x5ee(r29)
/* 8061BE54  2C 00 00 00 */	cmpwi r0, 0
/* 8061BE58  41 82 00 18 */	beq lbl_8061BE70
/* 8061BE5C  38 80 00 06 */	li r4, 6
/* 8061BE60  80 1D 0C 88 */	lwz r0, 0xc88(r29)
/* 8061BE64  1C 00 23 28 */	mulli r0, r0, 0x2328
/* 8061BE68  7C 1A 07 34 */	extsh r26, r0
/* 8061BE6C  48 00 00 14 */	b lbl_8061BE80
lbl_8061BE70:
/* 8061BE70  38 80 00 0A */	li r4, 0xa
/* 8061BE74  80 1D 0C 88 */	lwz r0, 0xc88(r29)
/* 8061BE78  1C 00 13 88 */	mulli r0, r0, 0x1388
/* 8061BE7C  7C 1A 07 34 */	extsh r26, r0
lbl_8061BE80:
/* 8061BE80  38 7D 0C A2 */	addi r3, r29, 0xca2
/* 8061BE84  38 A0 00 01 */	li r5, 1
/* 8061BE88  38 C0 00 01 */	li r6, 1
/* 8061BE8C  4B C5 47 7C */	b cLib_addCalcAngleS2__FPssss
/* 8061BE90  38 7D 0C A4 */	addi r3, r29, 0xca4
/* 8061BE94  7F 44 D3 78 */	mr r4, r26
/* 8061BE98  38 A0 00 01 */	li r5, 1
/* 8061BE9C  38 C0 01 F4 */	li r6, 0x1f4
/* 8061BEA0  4B C5 47 68 */	b cLib_addCalcAngleS2__FPssss
/* 8061BEA4  A8 7D 05 EE */	lha r3, 0x5ee(r29)
/* 8061BEA8  7C 60 07 35 */	extsh. r0, r3
/* 8061BEAC  41 82 00 0C */	beq lbl_8061BEB8
/* 8061BEB0  2C 03 00 0A */	cmpwi r3, 0xa
/* 8061BEB4  40 81 00 1C */	ble lbl_8061BED0
lbl_8061BEB8:
/* 8061BEB8  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8061BEBC  80 1D 0C 88 */	lwz r0, 0xc88(r29)
/* 8061BEC0  1C 00 01 2C */	mulli r0, r0, 0x12c
/* 8061BEC4  7C 00 07 34 */	extsh r0, r0
/* 8061BEC8  7C 03 02 14 */	add r0, r3, r0
/* 8061BECC  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_8061BED0:
/* 8061BED0  A8 1D 05 D0 */	lha r0, 0x5d0(r29)
/* 8061BED4  2C 00 00 02 */	cmpwi r0, 2
/* 8061BED8  40 82 01 38 */	bne lbl_8061C010
/* 8061BEDC  3B 20 00 07 */	li r25, 7
/* 8061BEE0  3B 80 08 88 */	li r28, 0x888
/* 8061BEE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8061BEE8  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
lbl_8061BEEC:
/* 8061BEEC  3B 5C 0C EC */	addi r26, r28, 0xcec
/* 8061BEF0  7F 5D D2 14 */	add r26, r29, r26
/* 8061BEF4  7F 43 D3 78 */	mr r3, r26
/* 8061BEF8  4B A6 87 60 */	b ChkCoHit__12dCcD_GObjInfFv
/* 8061BEFC  28 03 00 00 */	cmplwi r3, 0
/* 8061BF00  41 82 01 00 */	beq lbl_8061C000
/* 8061BF04  7F 43 D3 78 */	mr r3, r26
/* 8061BF08  4B A6 87 E8 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 8061BF0C  4B C4 7B 3C */	b GetAc__8cCcD_ObjFv
/* 8061BF10  A8 03 00 08 */	lha r0, 8(r3)
/* 8061BF14  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8061BF18  40 82 00 E8 */	bne lbl_8061C000
/* 8061BF1C  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 8061BF20  28 00 00 00 */	cmplwi r0, 0
/* 8061BF24  40 82 00 DC */	bne lbl_8061C000
/* 8061BF28  7F C3 F3 78 */	mr r3, r30
/* 8061BF2C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8061BF30  81 8C 02 50 */	lwz r12, 0x250(r12)
/* 8061BF34  7D 89 03 A6 */	mtctr r12
/* 8061BF38  4E 80 04 21 */	bctrl 
/* 8061BF3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8061BF40  40 82 00 C0 */	bne lbl_8061C000
/* 8061BF44  3C 60 80 62 */	lis r3, boss@ha
/* 8061BF48  38 A3 DB D4 */	addi r5, r3, boss@l
/* 8061BF4C  80 65 00 00 */	lwz r3, 0(r5)
/* 8061BF50  88 03 47 44 */	lbz r0, 0x4744(r3)
/* 8061BF54  7C 00 07 75 */	extsb. r0, r0
/* 8061BF58  40 82 00 A8 */	bne lbl_8061C000
/* 8061BF5C  38 00 00 03 */	li r0, 3
/* 8061BF60  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 8061BF64  38 80 00 01 */	li r4, 1
/* 8061BF68  80 65 00 00 */	lwz r3, 0(r5)
/* 8061BF6C  B0 83 5C 80 */	sth r4, 0x5c80(r3)
/* 8061BF70  80 1D 05 C8 */	lwz r0, 0x5c8(r29)
/* 8061BF74  80 65 00 00 */	lwz r3, 0(r5)
/* 8061BF78  90 03 5C E8 */	stw r0, 0x5ce8(r3)
/* 8061BF7C  38 00 00 14 */	li r0, 0x14
/* 8061BF80  B0 1D 05 EE */	sth r0, 0x5ee(r29)
/* 8061BF84  80 65 00 00 */	lwz r3, 0(r5)
/* 8061BF88  A8 03 47 52 */	lha r0, 0x4752(r3)
/* 8061BF8C  2C 00 00 01 */	cmpwi r0, 1
/* 8061BF90  41 82 00 2C */	beq lbl_8061BFBC
/* 8061BF94  B0 83 47 52 */	sth r4, 0x4752(r3)
/* 8061BF98  38 00 00 00 */	li r0, 0
/* 8061BF9C  80 65 00 00 */	lwz r3, 0(r5)
/* 8061BFA0  B0 03 47 54 */	sth r0, 0x4754(r3)
/* 8061BFA4  38 00 00 1E */	li r0, 0x1e
/* 8061BFA8  80 65 00 00 */	lwz r3, 0(r5)
/* 8061BFAC  90 03 47 38 */	stw r0, 0x4738(r3)
/* 8061BFB0  38 00 00 02 */	li r0, 2
/* 8061BFB4  80 65 00 00 */	lwz r3, 0(r5)
/* 8061BFB8  98 03 47 3C */	stb r0, 0x473c(r3)
lbl_8061BFBC:
/* 8061BFBC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8061BFC0  7C 03 07 74 */	extsb r3, r0
/* 8061BFC4  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070348@ha */
/* 8061BFC8  38 04 03 48 */	addi r0, r4, 0x0348 /* 0x00070348@l */
/* 8061BFCC  90 01 00 08 */	stw r0, 8(r1)
/* 8061BFD0  4B A1 10 9C */	b dComIfGp_getReverb__Fi
/* 8061BFD4  7C 67 1B 78 */	mr r7, r3
/* 8061BFD8  3C 60 80 62 */	lis r3, boss@ha
/* 8061BFDC  38 63 DB D4 */	addi r3, r3, boss@l
/* 8061BFE0  80 63 00 00 */	lwz r3, 0(r3)
/* 8061BFE4  38 63 59 E0 */	addi r3, r3, 0x59e0
/* 8061BFE8  38 81 00 08 */	addi r4, r1, 8
/* 8061BFEC  80 1D 05 C8 */	lwz r0, 0x5c8(r29)
/* 8061BFF0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8061BFF4  38 C0 00 00 */	li r6, 0
/* 8061BFF8  4B CA 6C 8C */	b startTentacleSound__12Z2CreatureOIF10JAISoundIDUcUlSc
/* 8061BFFC  48 00 00 14 */	b lbl_8061C010
lbl_8061C000:
/* 8061C000  3B 39 00 01 */	addi r25, r25, 1
/* 8061C004  2C 19 00 0F */	cmpwi r25, 0xf
/* 8061C008  3B 9C 01 38 */	addi r28, r28, 0x138
/* 8061C00C  41 80 FE E0 */	blt lbl_8061BEEC
lbl_8061C010:
/* 8061C010  38 7D 0C 94 */	addi r3, r29, 0xc94
/* 8061C014  38 80 57 E4 */	li r4, 0x57e4
/* 8061C018  38 A0 00 01 */	li r5, 1
/* 8061C01C  38 C0 07 D0 */	li r6, 0x7d0
/* 8061C020  4B C5 45 E8 */	b cLib_addCalcAngleS2__FPssss
/* 8061C024  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 8061C028  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8061C02C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8061C030  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 8061C034  4B C5 3A 08 */	b cLib_addCalc2__FPffff
/* 8061C038  A8 1D 05 EE */	lha r0, 0x5ee(r29)
/* 8061C03C  2C 00 00 01 */	cmpwi r0, 1
/* 8061C040  40 82 00 18 */	bne lbl_8061C058
/* 8061C044  38 00 00 03 */	li r0, 3
/* 8061C048  B0 1D 05 CE */	sth r0, 0x5ce(r29)
/* 8061C04C  38 00 00 00 */	li r0, 0
/* 8061C050  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 8061C054  B0 1D 0C 98 */	sth r0, 0xc98(r29)
lbl_8061C058:
/* 8061C058  39 61 00 40 */	addi r11, r1, 0x40
/* 8061C05C  4B D4 61 BC */	b _restgpr_25
/* 8061C060  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8061C064  7C 08 03 A6 */	mtlr r0
/* 8061C068  38 21 00 40 */	addi r1, r1, 0x40
/* 8061C06C  4E 80 00 20 */	blr 
