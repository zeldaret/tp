lbl_80B8EF2C:
/* 80B8EF2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8EF30  7C 08 02 A6 */	mflr r0
/* 80B8EF34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8EF38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8EF3C  7C 7F 1B 78 */	mr r31, r3
/* 80B8EF40  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80B8EF44  28 00 00 00 */	cmplwi r0, 0
/* 80B8EF48  41 82 00 AC */	beq lbl_80B8EFF4
/* 80B8EF4C  38 C0 00 00 */	li r6, 0
/* 80B8EF50  3C 80 80 B9 */	lis r4, l_btkGetParamList@ha
/* 80B8EF54  84 A4 38 90 */	lwzu r5, l_btkGetParamList@l(r4)
/* 80B8EF58  2C 05 00 00 */	cmpwi r5, 0
/* 80B8EF5C  41 80 00 20 */	blt lbl_80B8EF7C
/* 80B8EF60  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8EF64  54 00 10 3A */	slwi r0, r0, 2
/* 80B8EF68  3C 80 80 B9 */	lis r4, l_resNames@ha
/* 80B8EF6C  38 84 39 48 */	addi r4, r4, l_resNames@l
/* 80B8EF70  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B8EF74  4B 5C 3C 30 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B8EF78  7C 66 1B 78 */	mr r6, r3
lbl_80B8EF7C:
/* 80B8EF7C  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80B8EF80  7C 06 00 40 */	cmplw r6, r0
/* 80B8EF84  40 82 00 64 */	bne lbl_80B8EFE8
/* 80B8EF88  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 80B8EF8C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B8EF90  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B8EF94  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B8EF98  7C 04 04 2E */	lfsx f0, r4, r0
/* 80B8EF9C  3C 60 80 B9 */	lis r3, lit_4767@ha
/* 80B8EFA0  C0 43 32 A8 */	lfs f2, lit_4767@l(r3)
/* 80B8EFA4  3C 60 80 B9 */	lis r3, lit_4768@ha
/* 80B8EFA8  C0 23 32 AC */	lfs f1, lit_4768@l(r3)
/* 80B8EFAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B8EFB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B8EFB4  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B8EFB8  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80B8EFBC  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 80B8EFC0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B8EFC4  7C 04 04 2E */	lfsx f0, r4, r0
/* 80B8EFC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B8EFCC  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B8EFD0  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80B8EFD4  38 00 00 01 */	li r0, 1
/* 80B8EFD8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B8EFDC  98 03 01 04 */	stb r0, 0x104(r3)
/* 80B8EFE0  38 60 00 01 */	li r3, 1
/* 80B8EFE4  48 00 00 14 */	b lbl_80B8EFF8
lbl_80B8EFE8:
/* 80B8EFE8  38 00 00 00 */	li r0, 0
/* 80B8EFEC  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B8EFF0  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80B8EFF4:
/* 80B8EFF4  38 60 00 00 */	li r3, 0
lbl_80B8EFF8:
/* 80B8EFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8EFFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8F000  7C 08 03 A6 */	mtlr r0
/* 80B8F004  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8F008  4E 80 00 20 */	blr 
