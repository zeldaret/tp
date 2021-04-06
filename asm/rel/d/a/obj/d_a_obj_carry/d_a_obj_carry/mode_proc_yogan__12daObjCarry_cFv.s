lbl_80474E08:
/* 80474E08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80474E0C  7C 08 02 A6 */	mflr r0
/* 80474E10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80474E14  39 61 00 20 */	addi r11, r1, 0x20
/* 80474E18  4B EE D3 C5 */	bl _savegpr_29
/* 80474E1C  7C 7D 1B 78 */	mr r29, r3
/* 80474E20  C0 43 07 40 */	lfs f2, 0x740(r3)
/* 80474E24  3C 80 80 48 */	lis r4, lit_6767@ha /* 0x8047A488@ha */
/* 80474E28  C0 24 A4 88 */	lfs f1, lit_6767@l(r4)  /* 0x8047A488@l */
/* 80474E2C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80474E30  EC 01 00 2A */	fadds f0, f1, f0
/* 80474E34  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80474E38  7C 00 00 26 */	mfcr r0
/* 80474E3C  54 1E 17 FE */	rlwinm r30, r0, 2, 0x1f, 0x1f
/* 80474E40  80 03 05 A0 */	lwz r0, 0x5a0(r3)
/* 80474E44  54 1F CF FE */	rlwinm r31, r0, 0x19, 0x1f, 0x1f
/* 80474E48  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80474E4C  3C 80 80 48 */	lis r4, lit_6768@ha /* 0x8047A48C@ha */
/* 80474E50  C0 04 A4 8C */	lfs f0, lit_6768@l(r4)  /* 0x8047A48C@l */
/* 80474E54  EC 01 00 32 */	fmuls f0, f1, f0
/* 80474E58  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80474E5C  38 80 00 00 */	li r4, 0
/* 80474E60  4B BA 58 6D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80474E64  28 1E 00 00 */	cmplwi r30, 0
/* 80474E68  40 82 00 0C */	bne lbl_80474E74
/* 80474E6C  28 1F 00 00 */	cmplwi r31, 0
/* 80474E70  41 82 00 0C */	beq lbl_80474E7C
lbl_80474E74:
/* 80474E74  7F A3 EB 78 */	mr r3, r29
/* 80474E78  4B BA 4E 05 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80474E7C:
/* 80474E7C  38 60 00 01 */	li r3, 1
/* 80474E80  39 61 00 20 */	addi r11, r1, 0x20
/* 80474E84  4B EE D3 A5 */	bl _restgpr_29
/* 80474E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80474E8C  7C 08 03 A6 */	mtlr r0
/* 80474E90  38 21 00 20 */	addi r1, r1, 0x20
/* 80474E94  4E 80 00 20 */	blr 
