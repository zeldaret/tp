lbl_800BB560:
/* 800BB560  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800BB564  7C 08 02 A6 */	mflr r0
/* 800BB568  90 01 00 34 */	stw r0, 0x34(r1)
/* 800BB56C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800BB570  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800BB574  39 61 00 20 */	addi r11, r1, 0x20
/* 800BB578  48 2A 6C 65 */	bl _savegpr_29
/* 800BB57C  7C 7D 1B 78 */	mr r29, r3
/* 800BB580  FF E0 08 90 */	fmr f31, f1
/* 800BB584  7C 9E 23 78 */	mr r30, r4
/* 800BB588  7C BF 2B 78 */	mr r31, r5
/* 800BB58C  38 60 00 00 */	li r3, 0
/* 800BB590  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800BB594  28 00 00 62 */	cmplwi r0, 0x62
/* 800BB598  41 82 00 10 */	beq lbl_800BB5A8
/* 800BB59C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800BB5A0  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800BB5A4  40 82 00 08 */	bne lbl_800BB5AC
lbl_800BB5A8:
/* 800BB5A8  38 60 00 01 */	li r3, 1
lbl_800BB5AC:
/* 800BB5AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BB5B0  41 82 00 28 */	beq lbl_800BB5D8
/* 800BB5B4  48 00 4D 15 */	bl checkBossRoom__9daAlink_cFv
/* 800BB5B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BB5BC  41 82 00 1C */	beq lbl_800BB5D8
/* 800BB5C0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 800BB5C4  2C 00 00 32 */	cmpwi r0, 0x32
/* 800BB5C8  40 82 00 10 */	bne lbl_800BB5D8
/* 800BB5CC  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BB5D0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800BB5D4  40 82 00 50 */	bne lbl_800BB624
lbl_800BB5D8:
/* 800BB5D8  C0 3D 34 00 */	lfs f1, 0x3400(r29)
/* 800BB5DC  57 C0 04 38 */	rlwinm r0, r30, 0, 0x10, 0x1c
/* 800BB5E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800BB5E4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800BB5E8  7C 03 04 2E */	lfsx f0, r3, r0
/* 800BB5EC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800BB5F0  EC 01 00 2A */	fadds f0, f1, f0
/* 800BB5F4  D0 1D 34 00 */	stfs f0, 0x3400(r29)
/* 800BB5F8  C0 3D 34 04 */	lfs f1, 0x3404(r29)
/* 800BB5FC  7C 63 02 14 */	add r3, r3, r0
/* 800BB600  C0 03 00 04 */	lfs f0, 4(r3)
/* 800BB604  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800BB608  EC 01 00 2A */	fadds f0, f1, f0
/* 800BB60C  D0 1D 34 04 */	stfs f0, 0x3404(r29)
/* 800BB610  2C 1F 00 00 */	cmpwi r31, 0
/* 800BB614  41 82 00 10 */	beq lbl_800BB624
/* 800BB618  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 800BB61C  60 00 00 08 */	ori r0, r0, 8
/* 800BB620  90 1D 05 88 */	stw r0, 0x588(r29)
lbl_800BB624:
/* 800BB624  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800BB628  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800BB62C  39 61 00 20 */	addi r11, r1, 0x20
/* 800BB630  48 2A 6B F9 */	bl _restgpr_29
/* 800BB634  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800BB638  7C 08 03 A6 */	mtlr r0
/* 800BB63C  38 21 00 30 */	addi r1, r1, 0x30
/* 800BB640  4E 80 00 20 */	blr 
