lbl_8029BD44:
/* 8029BD44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029BD48  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 8029BD4C  28 00 00 00 */	cmplwi r0, 0
/* 8029BD50  41 82 00 0C */	beq lbl_8029BD5C
/* 8029BD54  C0 22 BC E0 */	lfs f1, lit_341(r2)
/* 8029BD58  48 00 00 78 */	b lbl_8029BDD0
lbl_8029BD5C:
/* 8029BD5C  C0 22 BC E0 */	lfs f1, lit_341(r2)
/* 8029BD60  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 8029BD64  FC 01 18 00 */	fcmpu cr0, f1, f3
/* 8029BD68  40 82 00 08 */	bne lbl_8029BD70
/* 8029BD6C  48 00 00 64 */	b lbl_8029BDD0
lbl_8029BD70:
/* 8029BD70  C0 43 00 08 */	lfs f2, 8(r3)
/* 8029BD74  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8029BD78  40 80 00 30 */	bge lbl_8029BDA8
/* 8029BD7C  C0 02 BC E8 */	lfs f0, lit_363(r2)
/* 8029BD80  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8029BD84  FC 00 00 1E */	fctiwz f0, f0
/* 8029BD88  D8 01 00 08 */	stfd f0, 8(r1)
/* 8029BD8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8029BD90  54 00 1C 38 */	rlwinm r0, r0, 3, 0x10, 0x1c
/* 8029BD94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8029BD98  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8029BD9C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8029BDA0  FC 00 00 50 */	fneg f0, f0
/* 8029BDA4  48 00 00 28 */	b lbl_8029BDCC
lbl_8029BDA8:
/* 8029BDA8  C0 02 BC EC */	lfs f0, lit_364(r2)
/* 8029BDAC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8029BDB0  FC 00 00 1E */	fctiwz f0, f0
/* 8029BDB4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8029BDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029BDBC  54 00 1C 38 */	rlwinm r0, r0, 3, 0x10, 0x1c
/* 8029BDC0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8029BDC4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8029BDC8  7C 03 04 2E */	lfsx f0, r3, r0
lbl_8029BDCC:
/* 8029BDCC  EC 23 00 32 */	fmuls f1, f3, f0
lbl_8029BDD0:
/* 8029BDD0  38 21 00 20 */	addi r1, r1, 0x20
/* 8029BDD4  4E 80 00 20 */	blr 
