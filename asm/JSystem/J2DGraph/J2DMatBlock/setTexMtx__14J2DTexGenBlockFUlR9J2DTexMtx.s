lbl_802EB6A4:
/* 802EB6A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802EB6A8  7C 08 02 A6 */	mflr r0
/* 802EB6AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 802EB6B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802EB6B4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802EB6B8  7C BE 2B 78 */	mr r30, r5
/* 802EB6BC  54 80 10 3A */	slwi r0, r4, 2
/* 802EB6C0  7F E3 02 14 */	add r31, r3, r0
/* 802EB6C4  80 DF 00 24 */	lwz r6, 0x24(r31)
/* 802EB6C8  28 06 00 00 */	cmplwi r6, 0
/* 802EB6CC  40 82 00 78 */	bne lbl_802EB744
/* 802EB6D0  38 60 00 54 */	li r3, 0x54
/* 802EB6D4  4B FE 35 79 */	bl __nw__FUl
/* 802EB6D8  28 03 00 00 */	cmplwi r3, 0
/* 802EB6DC  41 82 00 54 */	beq lbl_802EB730
/* 802EB6E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802EB6E4  D0 03 00 04 */	stfs f0, 4(r3)
/* 802EB6E8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 802EB6EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 802EB6F0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 802EB6F4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802EB6F8  88 1E 00 00 */	lbz r0, 0(r30)
/* 802EB6FC  98 03 00 00 */	stb r0, 0(r3)
/* 802EB700  88 1E 00 01 */	lbz r0, 1(r30)
/* 802EB704  98 03 00 01 */	stb r0, 1(r3)
/* 802EB708  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 802EB70C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802EB710  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 802EB714  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802EB718  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 802EB71C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802EB720  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 802EB724  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802EB728  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 802EB72C  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_802EB730:
/* 802EB730  90 7F 00 24 */	stw r3, 0x24(r31)
/* 802EB734  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 802EB738  28 00 00 00 */	cmplwi r0, 0
/* 802EB73C  40 82 00 84 */	bne lbl_802EB7C0
/* 802EB740  48 00 00 88 */	b lbl_802EB7C8
lbl_802EB744:
/* 802EB744  38 A1 00 04 */	addi r5, r1, 4
/* 802EB748  38 9E FF FC */	addi r4, r30, -4
/* 802EB74C  38 00 00 04 */	li r0, 4
/* 802EB750  7C 09 03 A6 */	mtctr r0
lbl_802EB754:
/* 802EB754  80 64 00 04 */	lwz r3, 4(r4)
/* 802EB758  84 04 00 08 */	lwzu r0, 8(r4)
/* 802EB75C  90 65 00 04 */	stw r3, 4(r5)
/* 802EB760  94 05 00 08 */	stwu r0, 8(r5)
/* 802EB764  42 00 FF F0 */	bdnz lbl_802EB754
/* 802EB768  80 04 00 04 */	lwz r0, 4(r4)
/* 802EB76C  90 05 00 04 */	stw r0, 4(r5)
/* 802EB770  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802EB774  D0 06 00 04 */	stfs f0, 4(r6)
/* 802EB778  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802EB77C  D0 06 00 08 */	stfs f0, 8(r6)
/* 802EB780  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802EB784  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 802EB788  88 01 00 08 */	lbz r0, 8(r1)
/* 802EB78C  98 06 00 00 */	stb r0, 0(r6)
/* 802EB790  88 01 00 09 */	lbz r0, 9(r1)
/* 802EB794  98 06 00 01 */	stb r0, 1(r6)
/* 802EB798  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802EB79C  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 802EB7A0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802EB7A4  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 802EB7A8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802EB7AC  D0 06 00 18 */	stfs f0, 0x18(r6)
/* 802EB7B0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802EB7B4  D0 06 00 1C */	stfs f0, 0x1c(r6)
/* 802EB7B8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802EB7BC  D0 06 00 20 */	stfs f0, 0x20(r6)
lbl_802EB7C0:
/* 802EB7C0  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802EB7C4  4B FF E5 01 */	bl calc__9J2DTexMtxFv
lbl_802EB7C8:
/* 802EB7C8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802EB7CC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802EB7D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802EB7D4  7C 08 03 A6 */	mtlr r0
/* 802EB7D8  38 21 00 40 */	addi r1, r1, 0x40
/* 802EB7DC  4E 80 00 20 */	blr 
