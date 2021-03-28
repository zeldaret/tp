lbl_80315260:
/* 80315260  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80315264  7C 08 02 A6 */	mflr r0
/* 80315268  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031526C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80315270  7C 7F 1B 78 */	mr r31, r3
/* 80315274  88 0D 90 4C */	lbz r0, data_804515CC(r13)
/* 80315278  7C 00 07 75 */	extsb. r0, r0
/* 8031527C  40 82 00 14 */	bne lbl_80315290
/* 80315280  48 02 84 75 */	bl OSDisableInterrupts
/* 80315284  90 6D 90 48 */	stw r3, sInterruptFlag(r13)
/* 80315288  38 00 00 01 */	li r0, 1
/* 8031528C  98 0D 90 4C */	stb r0, data_804515CC(r13)
lbl_80315290:
/* 80315290  48 02 BA 35 */	bl OSDisableScheduler
/* 80315294  38 61 00 08 */	addi r3, r1, 8
/* 80315298  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8031529C  38 A0 00 C0 */	li r5, 0xc0
/* 803152A0  48 04 BC F9 */	bl GDInitGDLObj
/* 803152A4  38 01 00 08 */	addi r0, r1, 8
/* 803152A8  90 0D 94 00 */	stw r0, __GDCurrentDL(r13)
/* 803152AC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 803152B0  48 04 BE 55 */	bl GDSetVtxDescv
/* 803152B4  7F E3 FB 78 */	mr r3, r31
/* 803152B8  4B FF FC E1 */	bl makeVtxArrayCmd__8J3DShapeFv
/* 803152BC  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 803152C0  80 83 00 14 */	lwz r4, 0x14(r3)
/* 803152C4  38 60 00 00 */	li r3, 0
/* 803152C8  88 BF 00 34 */	lbz r5, 0x34(r31)
/* 803152CC  4B FF 88 39 */	bl J3DGDSetVtxAttrFmtv__F9_GXVtxFmtPC17_GXVtxAttrFmtListb
/* 803152D0  48 04 BD 0D */	bl GDPadCurr32
/* 803152D4  48 04 BC DD */	bl GDFlushCurrToMem
/* 803152D8  38 00 00 00 */	li r0, 0
/* 803152DC  90 0D 94 00 */	stw r0, __GDCurrentDL(r13)
/* 803152E0  48 02 BA 25 */	bl OSEnableScheduler
/* 803152E4  80 6D 90 48 */	lwz r3, sInterruptFlag(r13)
/* 803152E8  48 02 84 35 */	bl OSRestoreInterrupts
/* 803152EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803152F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803152F4  7C 08 03 A6 */	mtlr r0
/* 803152F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803152FC  4E 80 00 20 */	blr 
