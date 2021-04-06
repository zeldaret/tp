lbl_805D0194:
/* 805D0194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D0198  7C 08 02 A6 */	mflr r0
/* 805D019C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D01A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805D01A4  4B D9 20 35 */	bl _savegpr_28
/* 805D01A8  7C 7D 1B 78 */	mr r29, r3
/* 805D01AC  3C 80 80 5E */	lis r4, lit_3932@ha /* 0x805DCA54@ha */
/* 805D01B0  3B C4 CA 54 */	addi r30, r4, lit_3932@l /* 0x805DCA54@l */
/* 805D01B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D01B8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D01BC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805D01C0  4B A4 A5 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D01C4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805D01C8  7C 03 00 50 */	subf r0, r3, r0
/* 805D01CC  7C 1C 07 34 */	extsh r28, r0
/* 805D01D0  80 1D 06 84 */	lwz r0, 0x684(r29)
/* 805D01D4  2C 00 00 01 */	cmpwi r0, 1
/* 805D01D8  41 82 00 A4 */	beq lbl_805D027C
/* 805D01DC  40 80 00 D4 */	bge lbl_805D02B0
/* 805D01E0  2C 00 00 00 */	cmpwi r0, 0
/* 805D01E4  40 80 00 08 */	bge lbl_805D01EC
/* 805D01E8  48 00 00 C8 */	b lbl_805D02B0
lbl_805D01EC:
/* 805D01EC  80 1D 08 1C */	lwz r0, 0x81c(r29)
/* 805D01F0  2C 00 00 00 */	cmpwi r0, 0
/* 805D01F4  40 82 00 20 */	bne lbl_805D0214
/* 805D01F8  C0 3E 02 E8 */	lfs f1, 0x2e8(r30)
/* 805D01FC  4B C9 77 59 */	bl cM_rndF__Ff
/* 805D0200  FC 00 08 1E */	fctiwz f0, f1
/* 805D0204  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D0208  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805D020C  38 03 00 F0 */	addi r0, r3, 0xf0
/* 805D0210  90 1D 08 1C */	stw r0, 0x81c(r29)
lbl_805D0214:
/* 805D0214  7F 80 07 35 */	extsh. r0, r28
/* 805D0218  40 80 00 30 */	bge lbl_805D0248
/* 805D021C  7F A3 EB 78 */	mr r3, r29
/* 805D0220  88 1D 08 4F */	lbz r0, 0x84f(r29)
/* 805D0224  54 00 10 3A */	slwi r0, r0, 2
/* 805D0228  3C 80 80 5E */	lis r4, Ds_circle_id@ha /* 0x805DD57C@ha */
/* 805D022C  38 84 D5 7C */	addi r4, r4, Ds_circle_id@l /* 0x805DD57C@l */
/* 805D0230  7C 84 00 2E */	lwzx r4, r4, r0
/* 805D0234  38 A0 00 02 */	li r5, 2
/* 805D0238  C0 3E 01 90 */	lfs f1, 0x190(r30)
/* 805D023C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D0240  4B FF B8 89 */	bl setBck__8daB_DS_cFiUcff
/* 805D0244  48 00 00 30 */	b lbl_805D0274
lbl_805D0248:
/* 805D0248  7F A3 EB 78 */	mr r3, r29
/* 805D024C  3C 80 80 5E */	lis r4, Ds_circle_id@ha /* 0x805DD57C@ha */
/* 805D0250  38 84 D5 7C */	addi r4, r4, Ds_circle_id@l /* 0x805DD57C@l */
/* 805D0254  88 1D 08 4F */	lbz r0, 0x84f(r29)
/* 805D0258  54 00 10 3A */	slwi r0, r0, 2
/* 805D025C  7C 84 02 14 */	add r4, r4, r0
/* 805D0260  80 84 00 0C */	lwz r4, 0xc(r4)
/* 805D0264  38 A0 00 02 */	li r5, 2
/* 805D0268  C0 3E 01 90 */	lfs f1, 0x190(r30)
/* 805D026C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D0270  4B FF B8 59 */	bl setBck__8daB_DS_cFiUcff
lbl_805D0274:
/* 805D0274  38 00 00 01 */	li r0, 1
/* 805D0278  90 1D 06 84 */	stw r0, 0x684(r29)
lbl_805D027C:
/* 805D027C  7F A3 EB 78 */	mr r3, r29
/* 805D0280  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805D0284  4B A4 A4 8D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D0288  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805D028C  7C 03 00 50 */	subf r0, r3, r0
/* 805D0290  7C 03 07 34 */	extsh r3, r0
/* 805D0294  4B D9 4E 3D */	bl abs
/* 805D0298  2C 03 02 00 */	cmpwi r3, 0x200
/* 805D029C  40 80 00 14 */	bge lbl_805D02B0
/* 805D02A0  7F A3 EB 78 */	mr r3, r29
/* 805D02A4  38 80 00 00 */	li r4, 0
/* 805D02A8  38 A0 00 00 */	li r5, 0
/* 805D02AC  4B FF B8 C9 */	bl setActionMode__8daB_DS_cFii
lbl_805D02B0:
/* 805D02B0  7F A3 EB 78 */	mr r3, r29
/* 805D02B4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805D02B8  4B A4 A4 59 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D02BC  7C 64 1B 78 */	mr r4, r3
/* 805D02C0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805D02C4  38 A0 00 02 */	li r5, 2
/* 805D02C8  38 C0 00 64 */	li r6, 0x64
/* 805D02CC  4B CA 03 3D */	bl cLib_addCalcAngleS2__FPssss
/* 805D02D0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805D02D4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 805D02D8  7F A3 EB 78 */	mr r3, r29
/* 805D02DC  4B FF F9 B1 */	bl mHandBreathChk__8daB_DS_cFv
/* 805D02E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805D02E4  4B D9 1F 41 */	bl _restgpr_28
/* 805D02E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D02EC  7C 08 03 A6 */	mtlr r0
/* 805D02F0  38 21 00 20 */	addi r1, r1, 0x20
/* 805D02F4  4E 80 00 20 */	blr 
