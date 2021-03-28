lbl_80CA0D9C:
/* 80CA0D9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA0DA0  7C 08 02 A6 */	mflr r0
/* 80CA0DA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA0DA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CA0DAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CA0DB0  7C 7E 1B 78 */	mr r30, r3
/* 80CA0DB4  3C 60 80 CA */	lis r3, lit_3774@ha
/* 80CA0DB8  3B E3 31 BC */	addi r31, r3, lit_3774@l
/* 80CA0DBC  80 7E 06 28 */	lwz r3, 0x628(r30)
/* 80CA0DC0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80CA0DC4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80CA0DC8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CA0DCC  41 82 00 10 */	beq lbl_80CA0DDC
/* 80CA0DD0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80CA0DD4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CA0DD8  40 82 00 88 */	bne lbl_80CA0E60
lbl_80CA0DDC:
/* 80CA0DDC  A8 7E 07 E2 */	lha r3, 0x7e2(r30)
/* 80CA0DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80CA0DE4  41 82 00 20 */	beq lbl_80CA0E04
/* 80CA0DE8  38 03 FF FF */	addi r0, r3, -1
/* 80CA0DEC  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80CA0DF0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CA0DF4  80 7E 06 28 */	lwz r3, 0x628(r30)
/* 80CA0DF8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CA0DFC  38 60 00 01 */	li r3, 1
/* 80CA0E00  48 00 00 64 */	b lbl_80CA0E64
lbl_80CA0E04:
/* 80CA0E04  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80CA0E08  4B 5C 6B 4C */	b cM_rndF__Ff
/* 80CA0E0C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80CA0E10  EC 00 08 2A */	fadds f0, f0, f1
/* 80CA0E14  FC 00 00 1E */	fctiwz f0, f0
/* 80CA0E18  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CA0E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA0E20  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CA0E24  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80CA0E28  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CA0E2C  80 7E 06 28 */	lwz r3, 0x628(r30)
/* 80CA0E30  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CA0E34  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80CA0E38  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80CA0E3C  90 01 00 08 */	stw r0, 8(r1)
/* 80CA0E40  38 7E 05 98 */	addi r3, r30, 0x598
/* 80CA0E44  38 81 00 08 */	addi r4, r1, 8
/* 80CA0E48  38 A0 00 00 */	li r5, 0
/* 80CA0E4C  38 C0 FF FF */	li r6, -1
/* 80CA0E50  81 9E 05 98 */	lwz r12, 0x598(r30)
/* 80CA0E54  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CA0E58  7D 89 03 A6 */	mtctr r12
/* 80CA0E5C  4E 80 04 21 */	bctrl 
lbl_80CA0E60:
/* 80CA0E60  38 60 00 00 */	li r3, 0
lbl_80CA0E64:
/* 80CA0E64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CA0E68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CA0E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA0E70  7C 08 03 A6 */	mtlr r0
/* 80CA0E74  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA0E78  4E 80 00 20 */	blr 
