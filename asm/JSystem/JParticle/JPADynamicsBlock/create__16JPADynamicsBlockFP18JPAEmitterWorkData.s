lbl_8027BBE8:
/* 8027BBE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027BBEC  7C 08 02 A6 */	mflr r0
/* 8027BBF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027BBF4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8027BBF8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8027BBFC  7C 9F 23 78 */	mr r31, r4
/* 8027BC00  80 C4 00 00 */	lwz r6, 0(r4)
/* 8027BC04  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 8027BC08  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8027BC0C  41 82 01 58 */	beq lbl_8027BD64
/* 8027BC10  80 86 00 E8 */	lwz r4, 0xe8(r6)
/* 8027BC14  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 8027BC18  80 84 00 00 */	lwz r4, 0(r4)
/* 8027BC1C  80 04 00 08 */	lwz r0, 8(r4)
/* 8027BC20  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8027BC24  41 82 00 40 */	beq lbl_8027BC64
/* 8027BC28  80 63 00 00 */	lwz r3, 0(r3)
/* 8027BC2C  80 03 00 08 */	lwz r0, 8(r3)
/* 8027BC30  54 00 C7 7E */	rlwinm r0, r0, 0x18, 0x1d, 0x1f
/* 8027BC34  28 00 00 01 */	cmplwi r0, 1
/* 8027BC38  40 82 00 18 */	bne lbl_8027BC50
/* 8027BC3C  A0 63 00 76 */	lhz r3, 0x76(r3)
/* 8027BC40  54 60 10 3A */	slwi r0, r3, 2
/* 8027BC44  7C 63 01 D6 */	mullw r3, r3, r0
/* 8027BC48  38 03 00 02 */	addi r0, r3, 2
/* 8027BC4C  48 00 00 08 */	b lbl_8027BC54
lbl_8027BC50:
/* 8027BC50  A0 03 00 76 */	lhz r0, 0x76(r3)
lbl_8027BC54:
/* 8027BC54  7C 04 03 78 */	mr r4, r0
/* 8027BC58  38 00 00 00 */	li r0, 0
/* 8027BC5C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8027BC60  48 00 00 C8 */	b lbl_8027BD28
lbl_8027BC64:
/* 8027BC64  80 A6 00 C4 */	lwz r5, 0xc4(r6)
/* 8027BC68  3C 80 00 19 */	lis r4, 0x0019 /* 0x0019660D@ha */
/* 8027BC6C  38 04 66 0D */	addi r0, r4, 0x660D /* 0x0019660D@l */
/* 8027BC70  7C 85 01 D6 */	mullw r4, r5, r0
/* 8027BC74  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027BC78  38 04 F3 5F */	addi r0, r4, -3233
/* 8027BC7C  90 06 00 C4 */	stw r0, 0xc4(r6)
/* 8027BC80  54 00 BA 7E */	srwi r0, r0, 9
/* 8027BC84  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027BC88  90 01 00 08 */	stw r0, 8(r1)
/* 8027BC8C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8027BC90  C0 62 B9 14 */	lfs f3, lit_2288(r2)
/* 8027BC94  EC 00 18 28 */	fsubs f0, f0, f3
/* 8027BC98  EC 00 00 2A */	fadds f0, f0, f0
/* 8027BC9C  EC 40 18 28 */	fsubs f2, f0, f3
/* 8027BCA0  80 9F 00 00 */	lwz r4, 0(r31)
/* 8027BCA4  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8027BCA8  80 63 00 00 */	lwz r3, 0(r3)
/* 8027BCAC  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8027BCB0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8027BCB4  EC 03 00 2A */	fadds f0, f3, f0
/* 8027BCB8  EC 81 00 32 */	fmuls f4, f1, f0
/* 8027BCBC  C0 04 00 F8 */	lfs f0, 0xf8(r4)
/* 8027BCC0  EC 00 20 2A */	fadds f0, f0, f4
/* 8027BCC4  D0 04 00 F8 */	stfs f0, 0xf8(r4)
/* 8027BCC8  FC 00 00 1E */	fctiwz f0, f0
/* 8027BCCC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8027BCD0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8027BCD4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027BCD8  C0 43 00 F8 */	lfs f2, 0xf8(r3)
/* 8027BCDC  C8 22 B9 20 */	lfd f1, lit_2321(r2)
/* 8027BCE0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8027BCE4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8027BCE8  3C 00 43 30 */	lis r0, 0x4330
/* 8027BCEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8027BCF0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8027BCF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027BCF8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8027BCFC  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 8027BD00  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027BD04  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8027BD08  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8027BD0C  41 82 00 1C */	beq lbl_8027BD28
/* 8027BD10  C0 02 B9 10 */	lfs f0, lit_2287(r2)
/* 8027BD14  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8027BD18  40 80 00 10 */	bge lbl_8027BD28
/* 8027BD1C  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 8027BD20  40 80 00 08 */	bge lbl_8027BD28
/* 8027BD24  38 80 00 01 */	li r4, 1
lbl_8027BD28:
/* 8027BD28  90 9F 00 40 */	stw r4, 0x40(r31)
/* 8027BD2C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027BD30  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8027BD34  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8027BD38  41 82 00 08 */	beq lbl_8027BD40
/* 8027BD3C  38 80 00 00 */	li r4, 0
lbl_8027BD40:
/* 8027BD40  7C 9E 23 78 */	mr r30, r4
/* 8027BD44  48 00 00 18 */	b lbl_8027BD5C
lbl_8027BD48:
/* 8027BD48  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027BD4C  48 00 2C F5 */	bl createParticle__14JPABaseEmitterFv
/* 8027BD50  28 03 00 00 */	cmplwi r3, 0
/* 8027BD54  41 82 00 10 */	beq lbl_8027BD64
/* 8027BD58  3B DE FF FF */	addi r30, r30, -1
lbl_8027BD5C:
/* 8027BD5C  2C 1E 00 00 */	cmpwi r30, 0
/* 8027BD60  41 81 FF E8 */	bgt lbl_8027BD48
lbl_8027BD64:
/* 8027BD64  80 BF 00 00 */	lwz r5, 0(r31)
/* 8027BD68  A8 65 01 06 */	lha r3, 0x106(r5)
/* 8027BD6C  38 03 00 01 */	addi r0, r3, 1
/* 8027BD70  B0 05 01 06 */	sth r0, 0x106(r5)
/* 8027BD74  7C 04 07 34 */	extsh r4, r0
/* 8027BD78  88 65 00 56 */	lbz r3, 0x56(r5)
/* 8027BD7C  38 03 00 01 */	addi r0, r3, 1
/* 8027BD80  7C 04 00 00 */	cmpw r4, r0
/* 8027BD84  41 80 00 30 */	blt lbl_8027BDB4
/* 8027BD88  80 9F 00 00 */	lwz r4, 0(r31)
/* 8027BD8C  88 64 00 56 */	lbz r3, 0x56(r4)
/* 8027BD90  38 63 00 01 */	addi r3, r3, 1
/* 8027BD94  A8 04 01 06 */	lha r0, 0x106(r4)
/* 8027BD98  7C 03 00 50 */	subf r0, r3, r0
/* 8027BD9C  B0 04 01 06 */	sth r0, 0x106(r4)
/* 8027BDA0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027BDA4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8027BDA8  60 00 00 20 */	ori r0, r0, 0x20
/* 8027BDAC  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8027BDB0  48 00 00 14 */	b lbl_8027BDC4
lbl_8027BDB4:
/* 8027BDB4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027BDB8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8027BDBC  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8027BDC0  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8027BDC4:
/* 8027BDC4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027BDC8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8027BDCC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8027BDD0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8027BDD4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027BDD8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8027BDDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027BDE0  7C 08 03 A6 */	mtlr r0
/* 8027BDE4  38 21 00 30 */	addi r1, r1, 0x30
/* 8027BDE8  4E 80 00 20 */	blr 
