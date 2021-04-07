lbl_80254C90:
/* 80254C90  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80254C94  7C 08 02 A6 */	mflr r0
/* 80254C98  90 01 01 64 */	stw r0, 0x164(r1)
/* 80254C9C  39 61 01 60 */	addi r11, r1, 0x160
/* 80254CA0  48 10 D5 29 */	bl _savegpr_24
/* 80254CA4  7C 7F 1B 78 */	mr r31, r3
/* 80254CA8  7C 98 23 78 */	mr r24, r4
/* 80254CAC  7C B9 2B 78 */	mr r25, r5
/* 80254CB0  7C DA 33 78 */	mr r26, r6
/* 80254CB4  7C FB 3B 78 */	mr r27, r7
/* 80254CB8  7D 1C 43 78 */	mr r28, r8
/* 80254CBC  7D 3D 4B 78 */	mr r29, r9
/* 80254CC0  7F 23 CB 78 */	mr r3, r25
/* 80254CC4  48 0A 2E 39 */	bl getParentPane__7J2DPaneFv
/* 80254CC8  7C 7E 1B 78 */	mr r30, r3
/* 80254CCC  38 61 00 60 */	addi r3, r1, 0x60
/* 80254CD0  C0 22 B4 88 */	lfs f1, lit_3858(r2)
/* 80254CD4  FC 40 08 90 */	fmr f2, f1
/* 80254CD8  C0 62 B4 A8 */	lfs f3, lit_4473(r2)
/* 80254CDC  C0 82 B4 AC */	lfs f4, lit_4474(r2)
/* 80254CE0  C0 A2 B4 B0 */	lfs f5, lit_4475(r2)
/* 80254CE4  C0 C2 B4 B4 */	lfs f6, lit_4476(r2)
/* 80254CE8  48 09 49 E9 */	bl __ct__13J2DOrthoGraphFffffff
/* 80254CEC  C0 02 B4 88 */	lfs f0, lit_3858(r2)
/* 80254CF0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80254CF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80254CF8  C0 02 B4 A8 */	lfs f0, lit_4473(r2)
/* 80254CFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80254D00  C0 02 B4 AC */	lfs f0, lit_4474(r2)
/* 80254D04  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80254D08  38 61 00 60 */	addi r3, r1, 0x60
/* 80254D0C  38 81 00 08 */	addi r4, r1, 8
/* 80254D10  C0 22 B4 B0 */	lfs f1, lit_4475(r2)
/* 80254D14  C0 42 B4 B4 */	lfs f2, lit_4476(r2)
/* 80254D18  48 09 4A F5 */	bl func_802E980C
/* 80254D1C  28 1E 00 00 */	cmplwi r30, 0
/* 80254D20  41 82 00 44 */	beq lbl_80254D64
/* 80254D24  38 61 00 18 */	addi r3, r1, 0x18
/* 80254D28  7F 04 C3 78 */	mr r4, r24
/* 80254D2C  7F C5 F3 78 */	mr r5, r30
/* 80254D30  7F 46 D3 78 */	mr r6, r26
/* 80254D34  7F 67 DB 78 */	mr r7, r27
/* 80254D38  7F 88 E3 78 */	mr r8, r28
/* 80254D3C  7F A9 07 34 */	extsh r9, r29
/* 80254D40  4B FF FF 51 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80254D44  7F 43 D3 78 */	mr r3, r26
/* 80254D48  38 81 00 30 */	addi r4, r1, 0x30
/* 80254D4C  48 0F 17 65 */	bl PSMTXCopy
/* 80254D50  38 61 00 30 */	addi r3, r1, 0x30
/* 80254D54  38 99 00 50 */	addi r4, r25, 0x50
/* 80254D58  7F 45 D3 78 */	mr r5, r26
/* 80254D5C  48 0F 17 89 */	bl PSMTXConcat
/* 80254D60  48 00 00 24 */	b lbl_80254D84
lbl_80254D64:
/* 80254D64  7F 23 CB 78 */	mr r3, r25
/* 80254D68  81 99 00 00 */	lwz r12, 0(r25)
/* 80254D6C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80254D70  7D 89 03 A6 */	mtctr r12
/* 80254D74  4E 80 04 21 */	bctrl 
/* 80254D78  38 79 00 50 */	addi r3, r25, 0x50
/* 80254D7C  7F 44 D3 78 */	mr r4, r26
/* 80254D80  48 0F 17 31 */	bl PSMTXCopy
lbl_80254D84:
/* 80254D84  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80254D88  28 00 00 04 */	cmplwi r0, 4
/* 80254D8C  41 80 00 48 */	blt lbl_80254DD4
/* 80254D90  C0 02 B4 88 */	lfs f0, lit_3858(r2)
/* 80254D94  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80254D98  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80254D9C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80254DA0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80254DA4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80254DA8  90 7F 00 00 */	stw r3, 0(r31)
/* 80254DAC  90 1F 00 04 */	stw r0, 4(r31)
/* 80254DB0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80254DB4  90 1F 00 08 */	stw r0, 8(r31)
/* 80254DB8  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha /* 0x803CC9E0@ha */
/* 80254DBC  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l /* 0x803CC9E0@l */
/* 80254DC0  90 01 00 60 */	stw r0, 0x60(r1)
/* 80254DC4  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha /* 0x803CC9B8@ha */
/* 80254DC8  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l /* 0x803CC9B8@l */
/* 80254DCC  90 01 00 60 */	stw r0, 0x60(r1)
/* 80254DD0  48 00 00 D4 */	b lbl_80254EA4
lbl_80254DD4:
/* 80254DD4  7F 03 C3 78 */	mr r3, r24
/* 80254DD8  7F 24 CB 78 */	mr r4, r25
/* 80254DDC  48 00 01 DD */	bl getBounds__8CPaneMgrFP7J2DPane
/* 80254DE0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80254DE4  C0 23 00 04 */	lfs f1, 4(r3)
/* 80254DE8  C0 63 00 08 */	lfs f3, 8(r3)
/* 80254DEC  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 80254DF0  57 63 06 3E */	clrlwi r3, r27, 0x18
/* 80254DF4  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 80254DF8  41 82 00 08 */	beq lbl_80254E00
/* 80254DFC  48 00 00 08 */	b lbl_80254E04
lbl_80254E00:
/* 80254E00  FC 60 00 90 */	fmr f3, f0
lbl_80254E04:
/* 80254E04  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80254E08  41 82 00 08 */	beq lbl_80254E10
/* 80254E0C  48 00 00 08 */	b lbl_80254E14
lbl_80254E10:
/* 80254E10  FC 80 08 90 */	fmr f4, f1
lbl_80254E14:
/* 80254E14  C0 5A 00 0C */	lfs f2, 0xc(r26)
/* 80254E18  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80254E1C  EC 23 00 32 */	fmuls f1, f3, f0
/* 80254E20  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80254E24  EC 04 00 32 */	fmuls f0, f4, f0
/* 80254E28  EC 01 00 2A */	fadds f0, f1, f0
/* 80254E2C  EC 02 00 2A */	fadds f0, f2, f0
/* 80254E30  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80254E34  C0 5A 00 1C */	lfs f2, 0x1c(r26)
/* 80254E38  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 80254E3C  EC 23 00 32 */	fmuls f1, f3, f0
/* 80254E40  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 80254E44  EC 04 00 32 */	fmuls f0, f4, f0
/* 80254E48  EC 01 00 2A */	fadds f0, f1, f0
/* 80254E4C  EC 02 00 2A */	fadds f0, f2, f0
/* 80254E50  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80254E54  C0 5A 00 2C */	lfs f2, 0x2c(r26)
/* 80254E58  C0 1A 00 20 */	lfs f0, 0x20(r26)
/* 80254E5C  EC 23 00 32 */	fmuls f1, f3, f0
/* 80254E60  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 80254E64  EC 04 00 32 */	fmuls f0, f4, f0
/* 80254E68  EC 01 00 2A */	fadds f0, f1, f0
/* 80254E6C  EC 02 00 2A */	fadds f0, f2, f0
/* 80254E70  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80254E74  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80254E78  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80254E7C  90 7F 00 00 */	stw r3, 0(r31)
/* 80254E80  90 1F 00 04 */	stw r0, 4(r31)
/* 80254E84  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80254E88  90 1F 00 08 */	stw r0, 8(r31)
/* 80254E8C  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha /* 0x803CC9E0@ha */
/* 80254E90  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l /* 0x803CC9E0@l */
/* 80254E94  90 01 00 60 */	stw r0, 0x60(r1)
/* 80254E98  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha /* 0x803CC9B8@ha */
/* 80254E9C  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l /* 0x803CC9B8@l */
/* 80254EA0  90 01 00 60 */	stw r0, 0x60(r1)
lbl_80254EA4:
/* 80254EA4  39 61 01 60 */	addi r11, r1, 0x160
/* 80254EA8  48 10 D3 6D */	bl _restgpr_24
/* 80254EAC  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80254EB0  7C 08 03 A6 */	mtlr r0
/* 80254EB4  38 21 01 60 */	addi r1, r1, 0x160
/* 80254EB8  4E 80 00 20 */	blr 
