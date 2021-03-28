lbl_8036BCA4:
/* 8036BCA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036BCA8  3C 60 80 3A */	lis r3, atanhi@ha
/* 8036BCAC  3C 00 44 10 */	lis r0, 0x4410
/* 8036BCB0  D8 21 00 08 */	stfd f1, 8(r1)
/* 8036BCB4  38 A3 25 F0 */	addi r5, r3, atanhi@l
/* 8036BCB8  80 C1 00 08 */	lwz r6, 8(r1)
/* 8036BCBC  54 C4 00 7E */	clrlwi r4, r6, 1
/* 8036BCC0  7C 04 00 00 */	cmpw r4, r0
/* 8036BCC4  41 80 00 70 */	blt lbl_8036BD34
/* 8036BCC8  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8036BCCC  7C 04 00 00 */	cmpw r4, r0
/* 8036BCD0  41 81 00 1C */	bgt lbl_8036BCEC
/* 8036BCD4  3C 04 80 10 */	addis r0, r4, 0x8010
/* 8036BCD8  28 00 00 00 */	cmplwi r0, 0
/* 8036BCDC  40 82 00 1C */	bne lbl_8036BCF8
/* 8036BCE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036BCE4  2C 00 00 00 */	cmpwi r0, 0
/* 8036BCE8  41 82 00 10 */	beq lbl_8036BCF8
lbl_8036BCEC:
/* 8036BCEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8036BCF0  FC 20 00 2A */	fadd f1, f0, f0
/* 8036BCF4  48 00 01 C0 */	b lbl_8036BEB4
lbl_8036BCF8:
/* 8036BCF8  2C 06 00 00 */	cmpwi r6, 0
/* 8036BCFC  40 81 00 1C */	ble lbl_8036BD18
/* 8036BD00  38 85 00 00 */	addi r4, r5, 0
/* 8036BD04  38 65 00 20 */	addi r3, r5, 0x20
/* 8036BD08  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 8036BD0C  C8 03 00 18 */	lfd f0, 0x18(r3)
/* 8036BD10  FC 21 00 2A */	fadd f1, f1, f0
/* 8036BD14  48 00 01 A0 */	b lbl_8036BEB4
lbl_8036BD18:
/* 8036BD18  38 85 00 00 */	addi r4, r5, 0
/* 8036BD1C  38 65 00 20 */	addi r3, r5, 0x20
/* 8036BD20  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 8036BD24  C8 03 00 18 */	lfd f0, 0x18(r3)
/* 8036BD28  FC 20 08 50 */	fneg f1, f1
/* 8036BD2C  FC 21 00 28 */	fsub f1, f1, f0
/* 8036BD30  48 00 01 84 */	b lbl_8036BEB4
lbl_8036BD34:
/* 8036BD34  3C 00 3F DC */	lis r0, 0x3fdc
/* 8036BD38  7C 04 00 00 */	cmpw r4, r0
/* 8036BD3C  40 80 00 30 */	bge lbl_8036BD6C
/* 8036BD40  3C 00 3E 20 */	lis r0, 0x3e20
/* 8036BD44  7C 04 00 00 */	cmpw r4, r0
/* 8036BD48  40 80 00 1C */	bge lbl_8036BD64
/* 8036BD4C  C8 42 D0 B8 */	lfd f2, lit_115(r2)
/* 8036BD50  C8 02 D0 C0 */	lfd f0, lit_116(r2)
/* 8036BD54  FC 42 08 2A */	fadd f2, f2, f1
/* 8036BD58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8036BD5C  40 81 00 08 */	ble lbl_8036BD64
/* 8036BD60  48 00 01 54 */	b lbl_8036BEB4
lbl_8036BD64:
/* 8036BD64  38 00 FF FF */	li r0, -1
/* 8036BD68  48 00 00 A0 */	b lbl_8036BE08
lbl_8036BD6C:
/* 8036BD6C  FC 60 0A 10 */	fabs f3, f1
/* 8036BD70  3C 00 3F F3 */	lis r0, 0x3ff3
/* 8036BD74  7C 04 00 00 */	cmpw r4, r0
/* 8036BD78  D8 61 00 08 */	stfd f3, 8(r1)
/* 8036BD7C  40 80 00 4C */	bge lbl_8036BDC8
/* 8036BD80  3C 00 3F E6 */	lis r0, 0x3fe6
/* 8036BD84  7C 04 00 00 */	cmpw r4, r0
/* 8036BD88  40 80 00 24 */	bge lbl_8036BDAC
/* 8036BD8C  C8 42 D0 C8 */	lfd f2, lit_117(r2)
/* 8036BD90  38 00 00 00 */	li r0, 0
/* 8036BD94  C8 22 D0 C0 */	lfd f1, lit_116(r2)
/* 8036BD98  FC 02 18 2A */	fadd f0, f2, f3
/* 8036BD9C  FC 22 08 F8 */	fmsub f1, f2, f3, f1
/* 8036BDA0  FC 01 00 24 */	fdiv f0, f1, f0
/* 8036BDA4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8036BDA8  48 00 00 60 */	b lbl_8036BE08
lbl_8036BDAC:
/* 8036BDAC  C8 02 D0 C0 */	lfd f0, lit_116(r2)
/* 8036BDB0  38 00 00 01 */	li r0, 1
/* 8036BDB4  FC 23 00 28 */	fsub f1, f3, f0
/* 8036BDB8  FC 00 18 2A */	fadd f0, f0, f3
/* 8036BDBC  FC 01 00 24 */	fdiv f0, f1, f0
/* 8036BDC0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8036BDC4  48 00 00 44 */	b lbl_8036BE08
lbl_8036BDC8:
/* 8036BDC8  3C 60 40 04 */	lis r3, 0x4004 /* 0x40038000@ha */
/* 8036BDCC  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x40038000@l */
/* 8036BDD0  7C 04 00 00 */	cmpw r4, r0
/* 8036BDD4  40 80 00 24 */	bge lbl_8036BDF8
/* 8036BDD8  C8 42 D0 D0 */	lfd f2, lit_118(r2)
/* 8036BDDC  38 00 00 02 */	li r0, 2
/* 8036BDE0  C8 02 D0 C0 */	lfd f0, lit_116(r2)
/* 8036BDE4  FC 23 10 28 */	fsub f1, f3, f2
/* 8036BDE8  FC 02 00 FA */	fmadd f0, f2, f3, f0
/* 8036BDEC  FC 01 00 24 */	fdiv f0, f1, f0
/* 8036BDF0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8036BDF4  48 00 00 14 */	b lbl_8036BE08
lbl_8036BDF8:
/* 8036BDF8  C8 02 D0 D8 */	lfd f0, lit_119(r2)
/* 8036BDFC  38 00 00 03 */	li r0, 3
/* 8036BE00  FC 00 18 24 */	fdiv f0, f0, f3
/* 8036BE04  D8 01 00 08 */	stfd f0, 8(r1)
lbl_8036BE08:
/* 8036BE08  C9 21 00 08 */	lfd f9, 8(r1)
/* 8036BE0C  38 65 00 40 */	addi r3, r5, 0x40
/* 8036BE10  C8 83 00 50 */	lfd f4, 0x50(r3)
/* 8036BE14  2C 00 00 00 */	cmpwi r0, 0
/* 8036BE18  FD 69 02 72 */	fmul f11, f9, f9
/* 8036BE1C  C8 23 00 40 */	lfd f1, 0x40(r3)
/* 8036BE20  C8 E3 00 30 */	lfd f7, 0x30(r3)
/* 8036BE24  C8 63 00 48 */	lfd f3, 0x48(r3)
/* 8036BE28  C8 03 00 38 */	lfd f0, 0x38(r3)
/* 8036BE2C  FD 4B 02 F2 */	fmul f10, f11, f11
/* 8036BE30  C8 C3 00 20 */	lfd f6, 0x20(r3)
/* 8036BE34  C8 43 00 28 */	lfd f2, 0x28(r3)
/* 8036BE38  C8 A3 00 10 */	lfd f5, 0x10(r3)
/* 8036BE3C  FD 0A 09 3A */	fmadd f8, f10, f4, f1
/* 8036BE40  C8 23 00 18 */	lfd f1, 0x18(r3)
/* 8036BE44  C8 85 00 40 */	lfd f4, 0x40(r5)
/* 8036BE48  FC 6A 00 FA */	fmadd f3, f10, f3, f0
/* 8036BE4C  C8 03 00 08 */	lfd f0, 8(r3)
/* 8036BE50  FC EA 3A 3A */	fmadd f7, f10, f8, f7
/* 8036BE54  FC 4A 10 FA */	fmadd f2, f10, f3, f2
/* 8036BE58  FC 6A 31 FA */	fmadd f3, f10, f7, f6
/* 8036BE5C  FC 2A 08 BA */	fmadd f1, f10, f2, f1
/* 8036BE60  FC 4A 28 FA */	fmadd f2, f10, f3, f5
/* 8036BE64  FC 0A 00 7A */	fmadd f0, f10, f1, f0
/* 8036BE68  FC 2A 20 BA */	fmadd f1, f10, f2, f4
/* 8036BE6C  FC 4A 00 32 */	fmul f2, f10, f0
/* 8036BE70  FC 0B 00 72 */	fmul f0, f11, f1
/* 8036BE74  40 80 00 10 */	bge lbl_8036BE84
/* 8036BE78  FC 00 10 2A */	fadd f0, f0, f2
/* 8036BE7C  FC 29 48 3C */	fnmsub f1, f9, f0, f9
/* 8036BE80  48 00 00 34 */	b lbl_8036BEB4
lbl_8036BE84:
/* 8036BE84  54 00 18 38 */	slwi r0, r0, 3
/* 8036BE88  38 65 00 20 */	addi r3, r5, 0x20
/* 8036BE8C  FC 20 10 2A */	fadd f1, f0, f2
/* 8036BE90  7C 03 04 AE */	lfdx f0, r3, r0
/* 8036BE94  38 65 00 00 */	addi r3, r5, 0
/* 8036BE98  2C 06 00 00 */	cmpwi r6, 0
/* 8036BE9C  7C 43 04 AE */	lfdx f2, r3, r0
/* 8036BEA0  FC 09 00 78 */	fmsub f0, f9, f1, f0
/* 8036BEA4  FC 00 48 28 */	fsub f0, f0, f9
/* 8036BEA8  FC 22 00 28 */	fsub f1, f2, f0
/* 8036BEAC  40 80 00 08 */	bge lbl_8036BEB4
/* 8036BEB0  FC 20 08 50 */	fneg f1, f1
lbl_8036BEB4:
/* 8036BEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8036BEB8  4E 80 00 20 */	blr 
