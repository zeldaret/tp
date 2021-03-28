lbl_804D5118:
/* 804D5118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D511C  7C 08 02 A6 */	mflr r0
/* 804D5120  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5124  7C 65 1B 78 */	mr r5, r3
/* 804D5128  3C 60 80 4D */	lis r3, lit_3640@ha
/* 804D512C  38 83 52 3C */	addi r4, r3, lit_3640@l
/* 804D5130  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 804D5134  7C 00 07 75 */	extsb. r0, r0
/* 804D5138  7C 03 03 78 */	mr r3, r0
/* 804D513C  40 80 00 10 */	bge lbl_804D514C
/* 804D5140  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 804D5144  54 00 B6 3E */	rlwinm r0, r0, 0x16, 0x18, 0x1f
/* 804D5148  7C 03 07 74 */	extsb r3, r0
lbl_804D514C:
/* 804D514C  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 804D5150  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 804D5154  54 07 C7 FE */	rlwinm r7, r0, 0x18, 0x1f, 0x1f
/* 804D5158  54 08 BF FE */	rlwinm r8, r0, 0x17, 0x1f, 0x1f
/* 804D515C  54 00 17 BF */	rlwinm. r0, r0, 2, 0x1e, 0x1f
/* 804D5160  41 82 00 34 */	beq lbl_804D5194
/* 804D5164  C0 05 04 EC */	lfs f0, 0x4ec(r5)
/* 804D5168  C0 44 00 00 */	lfs f2, 0(r4)
/* 804D516C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804D5170  D0 05 04 EC */	stfs f0, 0x4ec(r5)
/* 804D5174  C0 25 04 F0 */	lfs f1, 0x4f0(r5)
/* 804D5178  C0 04 00 04 */	lfs f0, 4(r4)
/* 804D517C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804D5180  D0 05 04 F0 */	stfs f0, 0x4f0(r5)
/* 804D5184  C0 05 04 F4 */	lfs f0, 0x4f4(r5)
/* 804D5188  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804D518C  D0 05 04 F4 */	stfs f0, 0x4f4(r5)
/* 804D5190  48 00 00 30 */	b lbl_804D51C0
lbl_804D5194:
/* 804D5194  C0 05 04 EC */	lfs f0, 0x4ec(r5)
/* 804D5198  C0 44 00 08 */	lfs f2, 8(r4)
/* 804D519C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804D51A0  D0 05 04 EC */	stfs f0, 0x4ec(r5)
/* 804D51A4  C0 25 04 F0 */	lfs f1, 0x4f0(r5)
/* 804D51A8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 804D51AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804D51B0  D0 05 04 F0 */	stfs f0, 0x4f0(r5)
/* 804D51B4  C0 05 04 F4 */	lfs f0, 0x4f4(r5)
/* 804D51B8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804D51BC  D0 05 04 F4 */	stfs f0, 0x4f4(r5)
lbl_804D51C0:
/* 804D51C0  38 85 04 D0 */	addi r4, r5, 0x4d0
/* 804D51C4  38 A5 04 EC */	addi r5, r5, 0x4ec
/* 804D51C8  4B B5 C0 80 */	b newData__7daSus_cFScRC4cXyzRC4cXyzUcUcUc
/* 804D51CC  38 60 00 04 */	li r3, 4
/* 804D51D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D51D4  7C 08 03 A6 */	mtlr r0
/* 804D51D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D51DC  4E 80 00 20 */	blr 
