lbl_802441FC:
/* 802441FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80244200  7C 08 02 A6 */	mflr r0
/* 80244204  90 01 00 24 */	stw r0, 0x24(r1)
/* 80244208  39 61 00 20 */	addi r11, r1, 0x20
/* 8024420C  48 11 DF CD */	bl _savegpr_28
/* 80244210  7C 7C 1B 78 */	mr r28, r3
/* 80244214  4B FF FF 39 */	bl calcPitchLevel__14dMsgScrnHowl_cFv
/* 80244218  3B A0 00 00 */	li r29, 0
/* 8024421C  3B E0 00 00 */	li r31, 0
lbl_80244220:
/* 80244220  A0 1C 21 38 */	lhz r0, 0x2138(r28)
/* 80244224  28 00 01 5E */	cmplwi r0, 0x15e
/* 80244228  41 81 00 70 */	bgt lbl_80244298
/* 8024422C  7C 1D 00 00 */	cmpw r29, r0
/* 80244230  40 80 00 4C */	bge lbl_8024427C
/* 80244234  7F 83 E3 78 */	mr r3, r28
/* 80244238  7F A4 EB 78 */	mr r4, r29
/* 8024423C  48 00 01 51 */	bl getGuideDataType__14dMsgScrnHowl_cFi
/* 80244240  7C 7E 1B 78 */	mr r30, r3
/* 80244244  7F 83 E3 78 */	mr r3, r28
/* 80244248  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8024424C  C8 22 B2 80 */	lfd f1, lit_4587(r2)
/* 80244250  90 01 00 0C */	stw r0, 0xc(r1)
/* 80244254  3C 00 43 30 */	lis r0, 0x4330
/* 80244258  90 01 00 08 */	stw r0, 8(r1)
/* 8024425C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80244260  EC 20 08 28 */	fsubs f1, f0, f1
/* 80244264  4B FF FE A5 */	bl getPlotPitch__14dMsgScrnHowl_cFf
/* 80244268  38 1F 0D 80 */	addi r0, r31, 0xd80
/* 8024426C  7C 3C 05 2E */	stfsx f1, r28, r0
/* 80244270  38 1D 21 98 */	addi r0, r29, 0x2198
/* 80244274  7F DC 01 AE */	stbx r30, r28, r0
/* 80244278  48 00 00 64 */	b lbl_802442DC
lbl_8024427C:
/* 8024427C  C0 02 B2 50 */	lfs f0, lit_4427(r2)
/* 80244280  38 1F 0D 80 */	addi r0, r31, 0xd80
/* 80244284  7C 1C 05 2E */	stfsx f0, r28, r0
/* 80244288  38 60 00 00 */	li r3, 0
/* 8024428C  38 1D 21 98 */	addi r0, r29, 0x2198
/* 80244290  7C 7C 01 AE */	stbx r3, r28, r0
/* 80244294  48 00 00 48 */	b lbl_802442DC
lbl_80244298:
/* 80244298  7F 83 E3 78 */	mr r3, r28
/* 8024429C  7F A4 EB 78 */	mr r4, r29
/* 802442A0  48 00 00 ED */	bl getGuideDataType__14dMsgScrnHowl_cFi
/* 802442A4  7C 7E 1B 78 */	mr r30, r3
/* 802442A8  7F 83 E3 78 */	mr r3, r28
/* 802442AC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802442B0  C8 22 B2 80 */	lfd f1, lit_4587(r2)
/* 802442B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802442B8  3C 00 43 30 */	lis r0, 0x4330
/* 802442BC  90 01 00 08 */	stw r0, 8(r1)
/* 802442C0  C8 01 00 08 */	lfd f0, 8(r1)
/* 802442C4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802442C8  4B FF FE 41 */	bl getPlotPitch__14dMsgScrnHowl_cFf
/* 802442CC  38 1F 0D 80 */	addi r0, r31, 0xd80
/* 802442D0  7C 3C 05 2E */	stfsx f1, r28, r0
/* 802442D4  38 1D 21 98 */	addi r0, r29, 0x2198
/* 802442D8  7F DC 01 AE */	stbx r30, r28, r0
lbl_802442DC:
/* 802442DC  3B BD 00 01 */	addi r29, r29, 1
/* 802442E0  2C 1D 01 5E */	cmpwi r29, 0x15e
/* 802442E4  3B FF 00 04 */	addi r31, r31, 4
/* 802442E8  41 80 FF 38 */	blt lbl_80244220
/* 802442EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802442F0  48 11 DF 35 */	bl _restgpr_28
/* 802442F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802442F8  7C 08 03 A6 */	mtlr r0
/* 802442FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80244300  4E 80 00 20 */	blr 
