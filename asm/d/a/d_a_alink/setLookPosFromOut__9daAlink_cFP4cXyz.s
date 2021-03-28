lbl_800A0744:
/* 800A0744  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A0748  7C 08 02 A6 */	mflr r0
/* 800A074C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A0750  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800A0754  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800A0758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A075C  93 C1 00 08 */	stw r30, 8(r1)
/* 800A0760  7C 7E 1B 78 */	mr r30, r3
/* 800A0764  7C 9F 23 78 */	mr r31, r4
/* 800A0768  80 03 05 88 */	lwz r0, 0x588(r3)
/* 800A076C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800A0770  41 82 00 24 */	beq lbl_800A0794
/* 800A0774  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800A0778  48 2A 6C 25 */	bl PSVECSquareDistance
/* 800A077C  FF E0 08 90 */	fmr f31, f1
/* 800A0780  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800A0784  38 9E 35 7C */	addi r4, r30, 0x357c
/* 800A0788  48 2A 6C 15 */	bl PSVECSquareDistance
/* 800A078C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 800A0790  41 80 00 28 */	blt lbl_800A07B8
lbl_800A0794:
/* 800A0794  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800A0798  60 00 00 04 */	ori r0, r0, 4
/* 800A079C  90 1E 05 88 */	stw r0, 0x588(r30)
/* 800A07A0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800A07A4  D0 1E 35 7C */	stfs f0, 0x357c(r30)
/* 800A07A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 800A07AC  D0 1E 35 80 */	stfs f0, 0x3580(r30)
/* 800A07B0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800A07B4  D0 1E 35 84 */	stfs f0, 0x3584(r30)
lbl_800A07B8:
/* 800A07B8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800A07BC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800A07C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A07C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A07C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A07CC  7C 08 03 A6 */	mtlr r0
/* 800A07D0  38 21 00 20 */	addi r1, r1, 0x20
/* 800A07D4  4E 80 00 20 */	blr 
