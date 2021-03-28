lbl_802FB7C8:
/* 802FB7C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FB7CC  7C 08 02 A6 */	mflr r0
/* 802FB7D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FB7D4  7C E9 3B 78 */	mr r9, r7
/* 802FB7D8  54 CB 06 3E */	clrlwi r11, r6, 0x18
/* 802FB7DC  20 0B 00 00 */	subfic r0, r11, 0
/* 802FB7E0  7C 00 01 10 */	subfe r0, r0, r0
/* 802FB7E4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 802FB7E8  39 46 80 00 */	addi r10, r6, 0x8000 /* 0x00008000@l */
/* 802FB7EC  7D 48 00 38 */	and r8, r10, r0
/* 802FB7F0  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 802FB7F4  20 05 00 00 */	subfic r0, r5, 0
/* 802FB7F8  7C 00 01 10 */	subfe r0, r0, r0
/* 802FB7FC  7D 47 00 38 */	and r7, r10, r0
/* 802FB800  20 0B 00 00 */	subfic r0, r11, 0
/* 802FB804  7C 00 01 10 */	subfe r0, r0, r0
/* 802FB808  7D 46 00 78 */	andc r6, r10, r0
/* 802FB80C  20 05 00 00 */	subfic r0, r5, 0
/* 802FB810  7C 00 01 10 */	subfe r0, r0, r0
/* 802FB814  7D 45 00 78 */	andc r5, r10, r0
/* 802FB818  81 64 00 20 */	lwz r11, 0x20(r4)
/* 802FB81C  A0 0B 00 02 */	lhz r0, 2(r11)
/* 802FB820  C8 82 C8 40 */	lfd f4, lit_1971(r2)
/* 802FB824  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FB828  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FB82C  3D 40 43 30 */	lis r10, 0x4330
/* 802FB830  91 41 00 08 */	stw r10, 8(r1)
/* 802FB834  C8 01 00 08 */	lfd f0, 8(r1)
/* 802FB838  EC 60 20 28 */	fsubs f3, f0, f4
/* 802FB83C  A0 0B 00 04 */	lhz r0, 4(r11)
/* 802FB840  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FB844  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FB848  91 41 00 10 */	stw r10, 0x10(r1)
/* 802FB84C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802FB850  EC 80 20 28 */	fsubs f4, f0, f4
/* 802FB854  4B FF FD E1 */	bl drawFrameTexture__9J2DWindowFP10JUTTextureffffUsUsUsUsb
/* 802FB858  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FB85C  7C 08 03 A6 */	mtlr r0
/* 802FB860  38 21 00 20 */	addi r1, r1, 0x20
/* 802FB864  4E 80 00 20 */	blr 
