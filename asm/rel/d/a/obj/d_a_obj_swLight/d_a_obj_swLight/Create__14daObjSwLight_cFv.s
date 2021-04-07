lbl_80CF7038:
/* 80CF7038  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF703C  7C 08 02 A6 */	mflr r0
/* 80CF7040  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF7044  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF7048  4B 66 B1 89 */	bl _savegpr_26
/* 80CF704C  7C 7F 1B 78 */	mr r31, r3
/* 80CF7050  3C 60 80 D0 */	lis r3, l_sph_src_at@ha /* 0x80CF83A0@ha */
/* 80CF7054  3B 83 83 A0 */	addi r28, r3, l_sph_src_at@l /* 0x80CF83A0@l */
/* 80CF7058  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF705C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF7060  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF7064  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CF7068  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF706C  7C 05 07 74 */	extsb r5, r0
/* 80CF7070  4B 33 E2 F1 */	bl isSwitch__10dSv_info_cCFii
/* 80CF7074  2C 03 00 00 */	cmpwi r3, 0
/* 80CF7078  41 82 00 18 */	beq lbl_80CF7090
/* 80CF707C  7F E3 FB 78 */	mr r3, r31
/* 80CF7080  48 00 07 59 */	bl init_modeSwOffWait__14daObjSwLight_cFv
/* 80CF7084  C0 1C 00 80 */	lfs f0, 0x80(r28)
/* 80CF7088  D0 1F 0A DC */	stfs f0, 0xadc(r31)
/* 80CF708C  48 00 00 14 */	b lbl_80CF70A0
lbl_80CF7090:
/* 80CF7090  7F E3 FB 78 */	mr r3, r31
/* 80CF7094  48 00 05 89 */	bl init_modeSwOnWait__14daObjSwLight_cFv
/* 80CF7098  C0 1C 00 84 */	lfs f0, 0x84(r28)
/* 80CF709C  D0 1F 0A DC */	stfs f0, 0xadc(r31)
lbl_80CF70A0:
/* 80CF70A0  7F E3 FB 78 */	mr r3, r31
/* 80CF70A4  4B FF FE F5 */	bl initBaseMtx__14daObjSwLight_cFv
/* 80CF70A8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80CF70AC  38 03 00 24 */	addi r0, r3, 0x24
/* 80CF70B0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CF70B4  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80CF70B8  38 80 00 FF */	li r4, 0xff
/* 80CF70BC  38 A0 00 FF */	li r5, 0xff
/* 80CF70C0  7F E6 FB 78 */	mr r6, r31
/* 80CF70C4  4B 38 C7 9D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CF70C8  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80CF70CC  38 9C 00 00 */	addi r4, r28, 0
/* 80CF70D0  4B 38 D9 65 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CF70D4  3B BF 05 BC */	addi r29, r31, 0x5bc
/* 80CF70D8  93 BF 06 3C */	stw r29, 0x63c(r31)
/* 80CF70DC  3B 40 00 00 */	li r26, 0
/* 80CF70E0  3B C0 00 00 */	li r30, 0
lbl_80CF70E4:
/* 80CF70E4  7F 7F F2 14 */	add r27, r31, r30
/* 80CF70E8  38 7B 07 30 */	addi r3, r27, 0x730
/* 80CF70EC  38 9C 00 40 */	addi r4, r28, 0x40
/* 80CF70F0  4B 38 D9 45 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CF70F4  93 BB 07 74 */	stw r29, 0x774(r27)
/* 80CF70F8  3B 5A 00 01 */	addi r26, r26, 1
/* 80CF70FC  2C 1A 00 02 */	cmpwi r26, 2
/* 80CF7100  3B DE 01 38 */	addi r30, r30, 0x138
/* 80CF7104  41 80 FF E0 */	blt lbl_80CF70E4
/* 80CF7108  38 00 00 02 */	li r0, 2
/* 80CF710C  90 1F 07 58 */	stw r0, 0x758(r31)
/* 80CF7110  38 00 02 00 */	li r0, 0x200
/* 80CF7114  90 1F 08 90 */	stw r0, 0x890(r31)
/* 80CF7118  38 7F 09 A0 */	addi r3, r31, 0x9a0
/* 80CF711C  3C 80 80 D0 */	lis r4, l_cyl_src@ha /* 0x80CF84A4@ha */
/* 80CF7120  38 84 84 A4 */	addi r4, r4, l_cyl_src@l /* 0x80CF84A4@l */
/* 80CF7124  4B 38 D7 91 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CF7128  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 80CF712C  90 1F 09 E4 */	stw r0, 0x9e4(r31)
/* 80CF7130  7F E3 FB 78 */	mr r3, r31
/* 80CF7134  3C 80 80 D0 */	lis r4, l_cull_box@ha /* 0x80CF848C@ha */
/* 80CF7138  C4 24 84 8C */	lfsu f1, l_cull_box@l(r4)  /* 0x80CF848C@l */
/* 80CF713C  C0 44 00 04 */	lfs f2, 4(r4)
/* 80CF7140  C0 64 00 08 */	lfs f3, 8(r4)
/* 80CF7144  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80CF7148  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80CF714C  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80CF7150  4B 32 33 F9 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CF7154  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80CF7158  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80CF715C  B0 1F 0A E8 */	sth r0, 0xae8(r31)
/* 80CF7160  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80CF7164  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF7168  83 83 00 64 */	lwz r28, 0x64(r3)
/* 80CF716C  3B 40 00 00 */	li r26, 0
/* 80CF7170  3C 60 80 D0 */	lis r3, d_a_obj_swLight__stringBase0@ha /* 0x80CF8454@ha */
/* 80CF7174  3B C3 84 54 */	addi r30, r3, d_a_obj_swLight__stringBase0@l /* 0x80CF8454@l */
/* 80CF7178  48 00 00 28 */	b lbl_80CF71A0
lbl_80CF717C:
/* 80CF717C  7F 83 E3 78 */	mr r3, r28
/* 80CF7180  7F 44 D3 78 */	mr r4, r26
/* 80CF7184  4B 5E 79 75 */	bl getName__10JUTNameTabCFUs
/* 80CF7188  38 9E 00 0A */	addi r4, r30, 0xa
/* 80CF718C  4B 67 18 09 */	bl strcmp
/* 80CF7190  2C 03 00 00 */	cmpwi r3, 0
/* 80CF7194  40 82 00 08 */	bne lbl_80CF719C
/* 80CF7198  B3 5F 0A E8 */	sth r26, 0xae8(r31)
lbl_80CF719C:
/* 80CF719C  3B 5A 00 01 */	addi r26, r26, 1
lbl_80CF71A0:
/* 80CF71A0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80CF71A4  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF71A8  A0 63 00 5C */	lhz r3, 0x5c(r3)
/* 80CF71AC  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 80CF71B0  7C 00 18 40 */	cmplw r0, r3
/* 80CF71B4  41 80 FF C8 */	blt lbl_80CF717C
/* 80CF71B8  38 7F 0B 00 */	addi r3, r31, 0xb00
/* 80CF71BC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CF71C0  38 A0 00 01 */	li r5, 1
/* 80CF71C4  81 9F 0B 10 */	lwz r12, 0xb10(r31)
/* 80CF71C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CF71CC  7D 89 03 A6 */	mtctr r12
/* 80CF71D0  4E 80 04 21 */	bctrl 
/* 80CF71D4  38 60 00 01 */	li r3, 1
/* 80CF71D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF71DC  4B 66 B0 41 */	bl _restgpr_26
/* 80CF71E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF71E4  7C 08 03 A6 */	mtlr r0
/* 80CF71E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF71EC  4E 80 00 20 */	blr 
