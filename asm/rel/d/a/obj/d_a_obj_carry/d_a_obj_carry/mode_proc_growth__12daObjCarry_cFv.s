lbl_804750C8:
/* 804750C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804750CC  7C 08 02 A6 */	mflr r0
/* 804750D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804750D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804750D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804750DC  7C 7E 1B 78 */	mr r30, r3
/* 804750E0  3C 80 80 48 */	lis r4, l_cyl_info@ha
/* 804750E4  3B E4 99 0C */	addi r31, r4, l_cyl_info@l
/* 804750E8  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 804750EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 804750F0  4B FF A5 B5 */	bl data__12daObjCarry_cFv
/* 804750F4  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 804750F8  38 61 00 08 */	addi r3, r1, 8
/* 804750FC  C0 5F 0B 04 */	lfs f2, 0xb04(r31)
/* 80475100  C0 7F 0B 34 */	lfs f3, 0xb34(r31)
/* 80475104  C0 9F 0B 58 */	lfs f4, 0xb58(r31)
/* 80475108  4B DF A8 74 */	b cLib_addCalc__FPfffff
/* 8047510C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80475110  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80475114  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80475118  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 8047511C  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80475120  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80475124  40 82 00 1C */	bne lbl_80475140
/* 80475128  38 00 00 0A */	li r0, 0xa
/* 8047512C  98 1E 0C F3 */	stb r0, 0xcf3(r30)
/* 80475130  38 00 00 01 */	li r0, 1
/* 80475134  98 1E 0D B1 */	stb r0, 0xdb1(r30)
/* 80475138  7F C3 F3 78 */	mr r3, r30
/* 8047513C  4B FF E2 AD */	bl mode_init_wait__12daObjCarry_cFv
lbl_80475140:
/* 80475140  38 60 00 01 */	li r3, 1
/* 80475144  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80475148  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8047514C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80475150  7C 08 03 A6 */	mtlr r0
/* 80475154  38 21 00 20 */	addi r1, r1, 0x20
/* 80475158  4E 80 00 20 */	blr 
