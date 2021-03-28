lbl_80CFA05C:
/* 80CFA05C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CFA060  7C 08 02 A6 */	mflr r0
/* 80CFA064  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CFA068  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80CFA06C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80CFA070  39 61 00 30 */	addi r11, r1, 0x30
/* 80CFA074  4B 66 81 60 */	b _savegpr_27
/* 80CFA078  7C 7B 1B 78 */	mr r27, r3
/* 80CFA07C  3B A0 00 00 */	li r29, 0
/* 80CFA080  3B 80 00 00 */	li r28, 0
/* 80CFA084  3B E0 00 00 */	li r31, 0
/* 80CFA088  3C 60 80 D0 */	lis r3, lit_3734@ha
/* 80CFA08C  3B C3 B6 EC */	addi r30, r3, lit_3734@l
/* 80CFA090  3C 60 80 D0 */	lis r3, lit_4479@ha
/* 80CFA094  C3 E3 B7 5C */	lfs f31, lit_4479@l(r3)
/* 80CFA098  48 00 00 54 */	b lbl_80CFA0EC
lbl_80CFA09C:
/* 80CFA09C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CFA0A0  4B 56 D8 EC */	b cM_rndFX__Ff
/* 80CFA0A4  EC 1F 08 2A */	fadds f0, f31, f1
/* 80CFA0A8  FC 00 00 1E */	fctiwz f0, f0
/* 80CFA0AC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80CFA0B0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80CFA0B4  7F BD 02 14 */	add r29, r29, r0
/* 80CFA0B8  88 1B 0A 65 */	lbz r0, 0xa65(r27)
/* 80CFA0BC  7C 1C 00 00 */	cmpw r28, r0
/* 80CFA0C0  40 82 00 18 */	bne lbl_80CFA0D8
/* 80CFA0C4  38 80 00 00 */	li r4, 0
/* 80CFA0C8  80 7B 0A 74 */	lwz r3, 0xa74(r27)
/* 80CFA0CC  38 1F 00 44 */	addi r0, r31, 0x44
/* 80CFA0D0  7C 83 03 2E */	sthx r4, r3, r0
/* 80CFA0D4  48 00 00 10 */	b lbl_80CFA0E4
lbl_80CFA0D8:
/* 80CFA0D8  80 7B 0A 74 */	lwz r3, 0xa74(r27)
/* 80CFA0DC  38 1F 00 44 */	addi r0, r31, 0x44
/* 80CFA0E0  7F A3 03 2E */	sthx r29, r3, r0
lbl_80CFA0E4:
/* 80CFA0E4  3B 9C 00 01 */	addi r28, r28, 1
/* 80CFA0E8  3B FF 00 50 */	addi r31, r31, 0x50
lbl_80CFA0EC:
/* 80CFA0EC  88 7B 0A 65 */	lbz r3, 0xa65(r27)
/* 80CFA0F0  38 03 00 01 */	addi r0, r3, 1
/* 80CFA0F4  7C 1C 00 00 */	cmpw r28, r0
/* 80CFA0F8  41 80 FF A4 */	blt lbl_80CFA09C
/* 80CFA0FC  7F 63 DB 78 */	mr r3, r27
/* 80CFA100  48 00 00 25 */	bl setChainMtx__14daObjSwChain_cFv
/* 80CFA104  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80CFA108  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80CFA10C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CFA110  4B 66 81 10 */	b _restgpr_27
/* 80CFA114  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CFA118  7C 08 03 A6 */	mtlr r0
/* 80CFA11C  38 21 00 40 */	addi r1, r1, 0x40
/* 80CFA120  4E 80 00 20 */	blr 
