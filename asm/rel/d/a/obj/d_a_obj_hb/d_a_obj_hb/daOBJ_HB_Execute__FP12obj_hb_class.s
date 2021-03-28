lbl_80C1AF80:
/* 80C1AF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1AF84  7C 08 02 A6 */	mflr r0
/* 80C1AF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1AF8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1AF90  7C 7F 1B 78 */	mr r31, r3
/* 80C1AF94  A8 63 06 50 */	lha r3, 0x650(r3)
/* 80C1AF98  38 03 00 01 */	addi r0, r3, 1
/* 80C1AF9C  B0 1F 06 50 */	sth r0, 0x650(r31)
/* 80C1AFA0  38 60 00 00 */	li r3, 0
/* 80C1AFA4  38 00 00 02 */	li r0, 2
/* 80C1AFA8  7C 09 03 A6 */	mtctr r0
lbl_80C1AFAC:
/* 80C1AFAC  38 A3 06 70 */	addi r5, r3, 0x670
/* 80C1AFB0  7C 9F 2A AE */	lhax r4, r31, r5
/* 80C1AFB4  2C 04 00 00 */	cmpwi r4, 0
/* 80C1AFB8  41 82 00 0C */	beq lbl_80C1AFC4
/* 80C1AFBC  38 04 FF FF */	addi r0, r4, -1
/* 80C1AFC0  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80C1AFC4:
/* 80C1AFC4  38 63 00 02 */	addi r3, r3, 2
/* 80C1AFC8  42 00 FF E4 */	bdnz lbl_80C1AFAC
/* 80C1AFCC  A8 7F 06 74 */	lha r3, 0x674(r31)
/* 80C1AFD0  2C 03 00 00 */	cmpwi r3, 0
/* 80C1AFD4  41 82 00 0C */	beq lbl_80C1AFE0
/* 80C1AFD8  38 03 FF FF */	addi r0, r3, -1
/* 80C1AFDC  B0 1F 06 74 */	sth r0, 0x674(r31)
lbl_80C1AFE0:
/* 80C1AFE0  7F E3 FB 78 */	mr r3, r31
/* 80C1AFE4  4B FF F7 65 */	bl action__FP12obj_hb_class
/* 80C1AFE8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C1AFEC  7C 03 07 74 */	extsb r3, r0
/* 80C1AFF0  4B 41 20 7C */	b dComIfGp_getReverb__Fi
/* 80C1AFF4  7C 65 1B 78 */	mr r5, r3
/* 80C1AFF8  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80C1AFFC  38 80 00 00 */	li r4, 0
/* 80C1B000  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 80C1B004  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80C1B008  7D 89 03 A6 */	mtctr r12
/* 80C1B00C  4E 80 04 21 */	bctrl 
/* 80C1B010  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80C1B014  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C1B018  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C1B01C  3C 60 80 C2 */	lis r3, lit_3823@ha
/* 80C1B020  C0 03 B6 48 */	lfs f0, lit_3823@l(r3)
/* 80C1B024  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1B028  40 81 00 0C */	ble lbl_80C1B034
/* 80C1B02C  38 00 00 01 */	li r0, 1
/* 80C1B030  98 1F 06 B1 */	stb r0, 0x6b1(r31)
lbl_80C1B034:
/* 80C1B034  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80C1B038  28 00 00 01 */	cmplwi r0, 1
/* 80C1B03C  41 82 00 D0 */	beq lbl_80C1B10C
/* 80C1B040  88 1F 06 B1 */	lbz r0, 0x6b1(r31)
/* 80C1B044  7C 00 07 75 */	extsb. r0, r0
/* 80C1B048  41 82 00 C4 */	beq lbl_80C1B10C
/* 80C1B04C  38 80 00 00 */	li r4, 0
/* 80C1B050  98 9F 06 B1 */	stb r4, 0x6b1(r31)
/* 80C1B054  B0 9F 06 52 */	sth r4, 0x652(r31)
/* 80C1B058  B0 9F 06 54 */	sth r4, 0x654(r31)
/* 80C1B05C  3C 60 80 C2 */	lis r3, lit_3667@ha
/* 80C1B060  C0 23 B6 08 */	lfs f1, lit_3667@l(r3)
/* 80C1B064  D0 3F 04 EC */	stfs f1, 0x4ec(r31)
/* 80C1B068  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80C1B06C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C1B070  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80C1B074  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C1B078  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80C1B07C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C1B080  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80C1B084  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80C1B088  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80C1B08C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80C1B090  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80C1B094  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80C1B098  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C1B09C  98 1F 04 E2 */	stb r0, 0x4e2(r31)
/* 80C1B0A0  88 1F 04 BB */	lbz r0, 0x4bb(r31)
/* 80C1B0A4  98 1F 04 E3 */	stb r0, 0x4e3(r31)
/* 80C1B0A8  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80C1B0AC  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80C1B0B0  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80C1B0B4  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80C1B0B8  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80C1B0BC  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80C1B0C0  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80C1B0C4  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80C1B0C8  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80C1B0CC  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80C1B0D0  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80C1B0D4  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80C1B0D8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C1B0DC  98 1F 04 CE */	stb r0, 0x4ce(r31)
/* 80C1B0E0  88 1F 04 BB */	lbz r0, 0x4bb(r31)
/* 80C1B0E4  98 1F 04 CF */	stb r0, 0x4cf(r31)
/* 80C1B0E8  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 80C1B0EC  D0 3F 04 F8 */	stfs f1, 0x4f8(r31)
/* 80C1B0F0  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 80C1B0F4  D0 3F 05 00 */	stfs f1, 0x500(r31)
/* 80C1B0F8  D0 3F 06 94 */	stfs f1, 0x694(r31)
/* 80C1B0FC  D0 3F 06 88 */	stfs f1, 0x688(r31)
/* 80C1B100  B0 9F 06 90 */	sth r4, 0x690(r31)
/* 80C1B104  38 00 00 01 */	li r0, 1
/* 80C1B108  98 1F 06 B0 */	stb r0, 0x6b0(r31)
lbl_80C1B10C:
/* 80C1B10C  38 60 00 01 */	li r3, 1
/* 80C1B110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1B114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1B118  7C 08 03 A6 */	mtlr r0
/* 80C1B11C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1B120  4E 80 00 20 */	blr 
