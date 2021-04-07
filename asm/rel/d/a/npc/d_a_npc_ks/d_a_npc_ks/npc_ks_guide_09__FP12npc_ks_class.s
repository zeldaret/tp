lbl_80A57124:
/* 80A57124  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A57128  7C 08 02 A6 */	mflr r0
/* 80A5712C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A57130  39 61 00 50 */	addi r11, r1, 0x50
/* 80A57134  4B 90 B0 A9 */	bl _savegpr_29
/* 80A57138  7C 7D 1B 78 */	mr r29, r3
/* 80A5713C  3C 80 80 A6 */	lis r4, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A57140  3B E4 DE FC */	addi r31, r4, lit_4030@l /* 0x80A5DEFC@l */
/* 80A57144  3B C0 00 01 */	li r30, 1
/* 80A57148  80 83 05 CC */	lwz r4, 0x5cc(r3)
/* 80A5714C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80A57150  FC 00 00 1E */	fctiwz f0, f0
/* 80A57154  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A57158  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80A5715C  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A57160  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A57164  41 82 04 FC */	beq lbl_80A57660
/* 80A57168  40 80 00 2C */	bge lbl_80A57194
/* 80A5716C  2C 00 00 02 */	cmpwi r0, 2
/* 80A57170  41 82 02 00 */	beq lbl_80A57370
/* 80A57174  40 80 00 14 */	bge lbl_80A57188
/* 80A57178  2C 00 00 00 */	cmpwi r0, 0
/* 80A5717C  41 82 00 3C */	beq lbl_80A571B8
/* 80A57180  40 80 00 64 */	bge lbl_80A571E4
/* 80A57184  48 00 06 E0 */	b lbl_80A57864
lbl_80A57188:
/* 80A57188  2C 00 00 05 */	cmpwi r0, 5
/* 80A5718C  41 82 04 58 */	beq lbl_80A575E4
/* 80A57190  48 00 06 D4 */	b lbl_80A57864
lbl_80A57194:
/* 80A57194  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A57198  41 82 05 B4 */	beq lbl_80A5774C
/* 80A5719C  40 80 00 10 */	bge lbl_80A571AC
/* 80A571A0  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A571A4  40 80 05 68 */	bge lbl_80A5770C
/* 80A571A8  48 00 06 BC */	b lbl_80A57864
lbl_80A571AC:
/* 80A571AC  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A571B0  40 80 06 B4 */	bge lbl_80A57864
/* 80A571B4  48 00 06 4C */	b lbl_80A57800
lbl_80A571B8:
/* 80A571B8  38 80 00 1A */	li r4, 0x1a
/* 80A571BC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A571C0  38 A0 00 02 */	li r5, 2
/* 80A571C4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A571C8  4B FF 1F DD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A571CC  38 00 00 01 */	li r0, 1
/* 80A571D0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A571D4  38 00 00 00 */	li r0, 0
/* 80A571D8  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A571DC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A571E0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A571E4:
/* 80A571E4  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A571E8  C0 1F 04 20 */	lfs f0, 0x420(r31)
/* 80A571EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A571F0  41 81 00 20 */	bgt lbl_80A57210
/* 80A571F4  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A571F8  1C A0 00 34 */	mulli r5, r0, 0x34
/* 80A571FC  3C 60 80 A6 */	lis r3, guide_path_09@ha /* 0x80A5F6BC@ha */
/* 80A57200  38 83 F6 BC */	addi r4, r3, guide_path_09@l /* 0x80A5F6BC@l */
/* 80A57204  7C 04 28 2E */	lwzx r0, r4, r5
/* 80A57208  2C 00 00 00 */	cmpwi r0, 0
/* 80A5720C  40 80 00 70 */	bge lbl_80A5727C
lbl_80A57210:
/* 80A57210  3C 60 80 A6 */	lis r3, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A57214  80 03 FE A4 */	lwz r0, call_pt@l(r3)  /* 0x80A5FEA4@l */
/* 80A57218  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A5721C  41 82 00 20 */	beq lbl_80A5723C
/* 80A57220  7F A3 EB 78 */	mr r3, r29
/* 80A57224  38 80 00 08 */	li r4, 8
/* 80A57228  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A5722C  38 A0 00 02 */	li r5, 2
/* 80A57230  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A57234  4B FF 1F 71 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A57238  48 00 00 1C */	b lbl_80A57254
lbl_80A5723C:
/* 80A5723C  7F A3 EB 78 */	mr r3, r29
/* 80A57240  38 80 00 07 */	li r4, 7
/* 80A57244  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A57248  38 A0 00 02 */	li r5, 2
/* 80A5724C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A57250  4B FF 1F 55 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A57254:
/* 80A57254  3C 60 80 A6 */	lis r3, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A57258  38 83 FE A4 */	addi r4, r3, call_pt@l /* 0x80A5FEA4@l */
/* 80A5725C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A57260  38 03 00 01 */	addi r0, r3, 1
/* 80A57264  90 04 00 00 */	stw r0, 0(r4)
/* 80A57268  38 00 00 0A */	li r0, 0xa
/* 80A5726C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A57270  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57274  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A57278  48 00 05 EC */	b lbl_80A57864
lbl_80A5727C:
/* 80A5727C  41 82 00 94 */	beq lbl_80A57310
/* 80A57280  7C 64 2A 14 */	add r3, r4, r5
/* 80A57284  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A57288  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A5728C  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A57290  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A57294  7C 64 02 14 */	add r3, r4, r0
/* 80A57298  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A5729C  D0 1D 08 F4 */	stfs f0, 0x8f4(r29)
/* 80A572A0  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A572A4  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A572A8  7C 64 02 14 */	add r3, r4, r0
/* 80A572AC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A572B0  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A572B4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A572B8  D0 1D 09 10 */	stfs f0, 0x910(r29)
/* 80A572BC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A572C0  D0 1D 09 14 */	stfs f0, 0x914(r29)
/* 80A572C4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A572C8  D0 1D 09 18 */	stfs f0, 0x918(r29)
/* 80A572CC  C0 1D 08 F0 */	lfs f0, 0x8f0(r29)
/* 80A572D0  D0 1D 09 1C */	stfs f0, 0x91c(r29)
/* 80A572D4  C0 1D 08 F4 */	lfs f0, 0x8f4(r29)
/* 80A572D8  D0 1D 09 20 */	stfs f0, 0x920(r29)
/* 80A572DC  C0 1D 08 F8 */	lfs f0, 0x8f8(r29)
/* 80A572E0  D0 1D 09 24 */	stfs f0, 0x924(r29)
/* 80A572E4  38 00 00 02 */	li r0, 2
/* 80A572E8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A572EC  7F A3 EB 78 */	mr r3, r29
/* 80A572F0  38 80 00 20 */	li r4, 0x20
/* 80A572F4  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A572F8  38 A0 00 00 */	li r5, 0
/* 80A572FC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A57300  4B FF 1E A5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A57304  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57308  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A5730C  48 00 05 58 */	b lbl_80A57864
lbl_80A57310:
/* 80A57310  7C 64 2A 14 */	add r3, r4, r5
/* 80A57314  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A57318  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A5731C  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A57320  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A57324  7C 64 02 14 */	add r3, r4, r0
/* 80A57328  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A5732C  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A57330  38 00 00 05 */	li r0, 5
/* 80A57334  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A57338  3C 60 80 A6 */	lis r3, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A5733C  38 63 FE B8 */	addi r3, r3, l_HIO@l /* 0x80A5FEB8@l */
/* 80A57340  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A57344  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A57348  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A5734C  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A57350  41 82 05 14 */	beq lbl_80A57864
/* 80A57354  7F A3 EB 78 */	mr r3, r29
/* 80A57358  38 80 00 1A */	li r4, 0x1a
/* 80A5735C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A57360  38 A0 00 02 */	li r5, 2
/* 80A57364  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A57368  4B FF 1E 3D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A5736C  48 00 04 F8 */	b lbl_80A57864
lbl_80A57370:
/* 80A57370  3B C0 00 02 */	li r30, 2
/* 80A57374  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A57378  2C 00 00 20 */	cmpwi r0, 0x20
/* 80A5737C  40 82 00 D0 */	bne lbl_80A5744C
/* 80A57380  38 60 00 01 */	li r3, 1
/* 80A57384  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80A57388  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A5738C  40 82 00 18 */	bne lbl_80A573A4
/* 80A57390  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A57394  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80A57398  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A5739C  41 82 00 08 */	beq lbl_80A573A4
/* 80A573A0  38 60 00 00 */	li r3, 0
lbl_80A573A4:
/* 80A573A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A573A8  41 82 00 A4 */	beq lbl_80A5744C
/* 80A573AC  7F A3 EB 78 */	mr r3, r29
/* 80A573B0  38 80 00 21 */	li r4, 0x21
/* 80A573B4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A573B8  38 A0 00 00 */	li r5, 0
/* 80A573BC  FC 40 08 90 */	fmr f2, f1
/* 80A573C0  4B FF 1D E5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A573C4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A573C8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A573CC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A573D0  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A573D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A573D8  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A573DC  38 81 00 14 */	addi r4, r1, 0x14
/* 80A573E0  38 A0 FF FF */	li r5, -1
/* 80A573E4  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A573E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A573EC  7D 89 03 A6 */	mtctr r12
/* 80A573F0  4E 80 04 21 */	bctrl 
/* 80A573F4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A573F8  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A573FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A57400  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A57404  38 81 00 10 */	addi r4, r1, 0x10
/* 80A57408  38 A0 00 00 */	li r5, 0
/* 80A5740C  38 C0 FF FF */	li r6, -1
/* 80A57410  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A57414  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A57418  7D 89 03 A6 */	mtctr r12
/* 80A5741C  4E 80 04 21 */	bctrl 
/* 80A57420  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060024@ha */
/* 80A57424  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00060024@l */
/* 80A57428  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A5742C  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A57430  38 81 00 0C */	addi r4, r1, 0xc
/* 80A57434  38 A0 00 00 */	li r5, 0
/* 80A57438  38 C0 FF FF */	li r6, -1
/* 80A5743C  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A57440  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A57444  7D 89 03 A6 */	mtctr r12
/* 80A57448  4E 80 04 21 */	bctrl 
lbl_80A5744C:
/* 80A5744C  38 61 00 18 */	addi r3, r1, 0x18
/* 80A57450  38 9D 08 F0 */	addi r4, r29, 0x8f0
/* 80A57454  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80A57458  4B 80 F6 DD */	bl __mi__4cXyzCFRC3Vec
/* 80A5745C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A57460  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A57464  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A57468  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A5746C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80A57470  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A57474  4B 81 02 01 */	bl cM_atan2s__Fff
/* 80A57478  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A5747C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A57480  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A57484  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A57488  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A5748C  EC 41 00 2A */	fadds f2, f1, f0
/* 80A57490  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57494  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A57498  40 81 00 0C */	ble lbl_80A574A4
/* 80A5749C  FC 00 10 34 */	frsqrte f0, f2
/* 80A574A0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A574A4:
/* 80A574A4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A574A8  4B 81 01 CD */	bl cM_atan2s__Fff
/* 80A574AC  7C 03 00 D0 */	neg r0, r3
/* 80A574B0  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80A574B4  38 61 00 24 */	addi r3, r1, 0x24
/* 80A574B8  4B 8E FC 81 */	bl PSVECSquareMag
/* 80A574BC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A574C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A574C4  40 81 00 58 */	ble lbl_80A5751C
/* 80A574C8  FC 00 08 34 */	frsqrte f0, f1
/* 80A574CC  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80A574D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A574D4  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80A574D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A574DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A574E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A574E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A574E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A574EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A574F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A574F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A574F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A574FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A57500  FC 00 00 32 */	fmul f0, f0, f0
/* 80A57504  FC 01 00 32 */	fmul f0, f1, f0
/* 80A57508  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5750C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A57510  FC 21 00 32 */	fmul f1, f1, f0
/* 80A57514  FC 20 08 18 */	frsp f1, f1
/* 80A57518  48 00 00 88 */	b lbl_80A575A0
lbl_80A5751C:
/* 80A5751C  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80A57520  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A57524  40 80 00 10 */	bge lbl_80A57534
/* 80A57528  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A5752C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A57530  48 00 00 70 */	b lbl_80A575A0
lbl_80A57534:
/* 80A57534  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A57538  80 81 00 08 */	lwz r4, 8(r1)
/* 80A5753C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A57540  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A57544  7C 03 00 00 */	cmpw r3, r0
/* 80A57548  41 82 00 14 */	beq lbl_80A5755C
/* 80A5754C  40 80 00 40 */	bge lbl_80A5758C
/* 80A57550  2C 03 00 00 */	cmpwi r3, 0
/* 80A57554  41 82 00 20 */	beq lbl_80A57574
/* 80A57558  48 00 00 34 */	b lbl_80A5758C
lbl_80A5755C:
/* 80A5755C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A57560  41 82 00 0C */	beq lbl_80A5756C
/* 80A57564  38 00 00 01 */	li r0, 1
/* 80A57568  48 00 00 28 */	b lbl_80A57590
lbl_80A5756C:
/* 80A5756C  38 00 00 02 */	li r0, 2
/* 80A57570  48 00 00 20 */	b lbl_80A57590
lbl_80A57574:
/* 80A57574  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A57578  41 82 00 0C */	beq lbl_80A57584
/* 80A5757C  38 00 00 05 */	li r0, 5
/* 80A57580  48 00 00 10 */	b lbl_80A57590
lbl_80A57584:
/* 80A57584  38 00 00 03 */	li r0, 3
/* 80A57588  48 00 00 08 */	b lbl_80A57590
lbl_80A5758C:
/* 80A5758C  38 00 00 04 */	li r0, 4
lbl_80A57590:
/* 80A57590  2C 00 00 01 */	cmpwi r0, 1
/* 80A57594  40 82 00 0C */	bne lbl_80A575A0
/* 80A57598  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A5759C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A575A0:
/* 80A575A0  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80A575A4  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A575A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A575AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A575B0  40 80 02 B4 */	bge lbl_80A57864
/* 80A575B4  C0 1D 08 F0 */	lfs f0, 0x8f0(r29)
/* 80A575B8  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A575BC  C0 1D 08 F4 */	lfs f0, 0x8f4(r29)
/* 80A575C0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A575C4  C0 1D 08 F8 */	lfs f0, 0x8f8(r29)
/* 80A575C8  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A575CC  38 00 00 01 */	li r0, 1
/* 80A575D0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A575D4  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A575D8  38 03 00 01 */	addi r0, r3, 1
/* 80A575DC  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A575E0  48 00 02 84 */	b lbl_80A57864
lbl_80A575E4:
/* 80A575E4  C0 3D 08 F0 */	lfs f1, 0x8f0(r29)
/* 80A575E8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A575EC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A575F0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A575F4  C0 5D 08 F8 */	lfs f2, 0x8f8(r29)
/* 80A575F8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A575FC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A57600  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A57604  4B 81 00 71 */	bl cM_atan2s__Fff
/* 80A57608  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A5760C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A57610  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A57614  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A57618  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A5761C  EC 41 00 2A */	fadds f2, f1, f0
/* 80A57620  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57624  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A57628  40 81 00 0C */	ble lbl_80A57634
/* 80A5762C  FC 00 10 34 */	frsqrte f0, f2
/* 80A57630  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A57634:
/* 80A57634  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A57638  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A5763C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A57640  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A57644  40 80 02 20 */	bge lbl_80A57864
/* 80A57648  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A5764C  38 03 00 01 */	addi r0, r3, 1
/* 80A57650  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A57654  38 00 00 01 */	li r0, 1
/* 80A57658  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A5765C  48 00 02 08 */	b lbl_80A57864
lbl_80A57660:
/* 80A57660  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A57664  2C 00 00 08 */	cmpwi r0, 8
/* 80A57668  40 82 00 18 */	bne lbl_80A57680
/* 80A5766C  A8 7D 05 C8 */	lha r3, 0x5c8(r29)
/* 80A57670  3C 63 00 01 */	addis r3, r3, 1
/* 80A57674  38 03 80 00 */	addi r0, r3, -32768
/* 80A57678  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A5767C  48 00 00 0C */	b lbl_80A57688
lbl_80A57680:
/* 80A57680  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A57684  B0 1D 08 FE */	sth r0, 0x8fe(r29)
lbl_80A57688:
/* 80A57688  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A5768C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A57690  3C 60 80 A6 */	lis r3, guide_path_09@ha /* 0x80A5F6BC@ha */
/* 80A57694  38 63 F6 BC */	addi r3, r3, guide_path_09@l /* 0x80A5F6BC@l */
/* 80A57698  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A5769C  2C 00 00 00 */	cmpwi r0, 0
/* 80A576A0  41 80 00 20 */	blt lbl_80A576C0
/* 80A576A4  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A576A8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80A576AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A576B0  40 80 01 B4 */	bge lbl_80A57864
/* 80A576B4  38 00 00 01 */	li r0, 1
/* 80A576B8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A576BC  48 00 01 A8 */	b lbl_80A57864
lbl_80A576C0:
/* 80A576C0  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A576C4  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80A576C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A576CC  40 80 00 28 */	bge lbl_80A576F4
/* 80A576D0  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A576D4  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A576D8  41 82 00 1C */	beq lbl_80A576F4
/* 80A576DC  7F A3 EB 78 */	mr r3, r29
/* 80A576E0  38 80 00 33 */	li r4, 0x33
/* 80A576E4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A576E8  38 A0 00 02 */	li r5, 2
/* 80A576EC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A576F0  4B FF 1A B5 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A576F4:
/* 80A576F4  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A576F8  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A576FC  40 82 01 68 */	bne lbl_80A57864
/* 80A57700  38 00 00 01 */	li r0, 1
/* 80A57704  98 1D 05 FC */	stb r0, 0x5fc(r29)
/* 80A57708  48 00 01 5C */	b lbl_80A57864
lbl_80A5770C:
/* 80A5770C  38 80 00 27 */	li r4, 0x27
/* 80A57710  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A57714  38 A0 00 02 */	li r5, 2
/* 80A57718  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A5771C  4B FF 1A 89 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A57720  38 00 00 29 */	li r0, 0x29
/* 80A57724  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A57728  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A5772C  4B 81 02 29 */	bl cM_rndF__Ff
/* 80A57730  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A57734  EC 00 08 2A */	fadds f0, f0, f1
/* 80A57738  FC 00 00 1E */	fctiwz f0, f0
/* 80A5773C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A57740  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A57744  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A57748  48 00 01 1C */	b lbl_80A57864
lbl_80A5774C:
/* 80A5774C  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A57750  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A57754  41 82 00 2C */	beq lbl_80A57780
/* 80A57758  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A5775C  40 82 00 0C */	bne lbl_80A57768
/* 80A57760  2C 05 00 07 */	cmpwi r5, 7
/* 80A57764  41 80 00 1C */	blt lbl_80A57780
lbl_80A57768:
/* 80A57768  2C 05 00 28 */	cmpwi r5, 0x28
/* 80A5776C  40 81 00 0C */	ble lbl_80A57778
/* 80A57770  2C 05 00 30 */	cmpwi r5, 0x30
/* 80A57774  41 80 00 0C */	blt lbl_80A57780
lbl_80A57778:
/* 80A57778  2C 05 00 41 */	cmpwi r5, 0x41
/* 80A5777C  40 81 00 0C */	ble lbl_80A57788
lbl_80A57780:
/* 80A57780  38 00 00 04 */	li r0, 4
/* 80A57784  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
lbl_80A57788:
/* 80A57788  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A5778C  2C 00 00 00 */	cmpwi r0, 0
/* 80A57790  40 82 00 28 */	bne lbl_80A577B8
/* 80A57794  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A57798  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A5779C  40 82 00 1C */	bne lbl_80A577B8
/* 80A577A0  7F A3 EB 78 */	mr r3, r29
/* 80A577A4  38 80 00 2B */	li r4, 0x2b
/* 80A577A8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A577AC  38 A0 00 00 */	li r5, 0
/* 80A577B0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A577B4  4B FF 19 F1 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A577B8:
/* 80A577B8  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A577BC  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A577C0  40 82 00 A4 */	bne lbl_80A57864
/* 80A577C4  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A577C8  38 80 00 01 */	li r4, 1
/* 80A577CC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A577D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A577D4  40 82 00 18 */	bne lbl_80A577EC
/* 80A577D8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A577DC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A577E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A577E4  41 82 00 08 */	beq lbl_80A577EC
/* 80A577E8  38 80 00 00 */	li r4, 0
lbl_80A577EC:
/* 80A577EC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A577F0  41 82 00 74 */	beq lbl_80A57864
/* 80A577F4  38 00 00 28 */	li r0, 0x28
/* 80A577F8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A577FC  48 00 00 68 */	b lbl_80A57864
lbl_80A57800:
/* 80A57800  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A57804  2C 00 00 00 */	cmpwi r0, 0
/* 80A57808  40 82 00 5C */	bne lbl_80A57864
/* 80A5780C  3C 80 80 A6 */	lis r4, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A57810  80 04 FE A4 */	lwz r0, call_pt@l(r4)  /* 0x80A5FEA4@l */
/* 80A57814  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A57818  41 82 00 1C */	beq lbl_80A57834
/* 80A5781C  38 80 00 08 */	li r4, 8
/* 80A57820  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A57824  38 A0 00 02 */	li r5, 2
/* 80A57828  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A5782C  4B FF 19 79 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A57830  48 00 00 18 */	b lbl_80A57848
lbl_80A57834:
/* 80A57834  38 80 00 07 */	li r4, 7
/* 80A57838  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A5783C  38 A0 00 02 */	li r5, 2
/* 80A57840  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A57844  4B FF 19 61 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A57848:
/* 80A57848  3C 60 80 A6 */	lis r3, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A5784C  38 83 FE A4 */	addi r4, r3, call_pt@l /* 0x80A5FEA4@l */
/* 80A57850  80 64 00 00 */	lwz r3, 0(r4)
/* 80A57854  38 03 00 01 */	addi r0, r3, 1
/* 80A57858  90 04 00 00 */	stw r0, 0(r4)
/* 80A5785C  38 00 00 0A */	li r0, 0xa
/* 80A57860  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A57864:
/* 80A57864  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80A57868  38 80 00 00 */	li r4, 0
/* 80A5786C  38 A0 00 01 */	li r5, 1
/* 80A57870  38 C0 08 00 */	li r6, 0x800
/* 80A57874  4B 81 8D 95 */	bl cLib_addCalcAngleS2__FPssss
/* 80A57878  4B FF 17 DD */	bl checkDoorDemo__Fv
/* 80A5787C  2C 03 00 00 */	cmpwi r3, 0
/* 80A57880  41 82 00 14 */	beq lbl_80A57894
/* 80A57884  38 00 00 64 */	li r0, 0x64
/* 80A57888  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80A5788C  38 00 00 00 */	li r0, 0
/* 80A57890  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A57894:
/* 80A57894  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80A57898  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A5789C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A578A0  40 81 00 10 */	ble lbl_80A578B0
/* 80A578A4  38 00 00 01 */	li r0, 1
/* 80A578A8  98 1D 09 0C */	stb r0, 0x90c(r29)
/* 80A578AC  48 00 00 28 */	b lbl_80A578D4
lbl_80A578B0:
/* 80A578B0  A8 7D 08 FE */	lha r3, 0x8fe(r29)
/* 80A578B4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A578B8  7C 03 00 50 */	subf r0, r3, r0
/* 80A578BC  7C 00 07 34 */	extsh r0, r0
/* 80A578C0  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80A578C4  41 81 00 0C */	bgt lbl_80A578D0
/* 80A578C8  2C 00 F0 00 */	cmpwi r0, -4096
/* 80A578CC  40 80 00 08 */	bge lbl_80A578D4
lbl_80A578D0:
/* 80A578D0  3B C0 00 00 */	li r30, 0
lbl_80A578D4:
/* 80A578D4  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A578D8  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A578DC  41 80 00 68 */	blt lbl_80A57944
/* 80A578E0  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A578E4  41 81 00 60 */	bgt lbl_80A57944
/* 80A578E8  7F A3 EB 78 */	mr r3, r29
/* 80A578EC  C0 3F 03 FC */	lfs f1, 0x3fc(r31)
/* 80A578F0  4B FF 25 AD */	bl enemy_check__FP12npc_ks_classf
/* 80A578F4  28 03 00 00 */	cmplwi r3, 0
/* 80A578F8  40 82 00 18 */	bne lbl_80A57910
/* 80A578FC  38 00 00 2A */	li r0, 0x2a
/* 80A57900  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A57904  38 00 00 1E */	li r0, 0x1e
/* 80A57908  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A5790C  48 00 00 5C */	b lbl_80A57968
lbl_80A57910:
/* 80A57910  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 80A57914  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A57918  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A5791C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A57920  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80A57924  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A57928  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A5792C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A57930  4B 80 FD 45 */	bl cM_atan2s__Fff
/* 80A57934  3C 63 00 01 */	addis r3, r3, 1
/* 80A57938  38 03 80 00 */	addi r0, r3, -32768
/* 80A5793C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A57940  48 00 00 28 */	b lbl_80A57968
lbl_80A57944:
/* 80A57944  7F A3 EB 78 */	mr r3, r29
/* 80A57948  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80A5794C  4B FF 25 2D */	bl enemy_view_check__FP12npc_ks_classf
/* 80A57950  28 03 00 00 */	cmplwi r3, 0
/* 80A57954  41 82 00 14 */	beq lbl_80A57968
/* 80A57958  38 00 00 28 */	li r0, 0x28
/* 80A5795C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A57960  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57964  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A57968:
/* 80A57968  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A5796C  A8 9D 08 FE */	lha r4, 0x8fe(r29)
/* 80A57970  38 A0 00 01 */	li r5, 1
/* 80A57974  38 C0 10 00 */	li r6, 0x1000
/* 80A57978  4B 81 8C 91 */	bl cLib_addCalcAngleS2__FPssss
/* 80A5797C  7F C3 F3 78 */	mr r3, r30
/* 80A57980  39 61 00 50 */	addi r11, r1, 0x50
/* 80A57984  4B 90 A8 A5 */	bl _restgpr_29
/* 80A57988  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A5798C  7C 08 03 A6 */	mtlr r0
/* 80A57990  38 21 00 50 */	addi r1, r1, 0x50
/* 80A57994  4E 80 00 20 */	blr 
