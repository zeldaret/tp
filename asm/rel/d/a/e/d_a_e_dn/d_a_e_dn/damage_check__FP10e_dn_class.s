lbl_804EAF94:
/* 804EAF94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804EAF98  7C 08 02 A6 */	mflr r0
/* 804EAF9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804EAFA0  39 61 00 30 */	addi r11, r1, 0x30
/* 804EAFA4  4B E7 72 25 */	bl _savegpr_24
/* 804EAFA8  7C 7D 1B 78 */	mr r29, r3
/* 804EAFAC  3C 60 80 4F */	lis r3, lit_3789@ha /* 0x804EE8AC@ha */
/* 804EAFB0  3B C3 E8 AC */	addi r30, r3, lit_3789@l /* 0x804EE8AC@l */
/* 804EAFB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804EAFB8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804EAFBC  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 804EAFC0  3C 60 80 4F */	lis r3, l_HIO@ha /* 0x804EEF3C@ha */
/* 804EAFC4  38 63 EF 3C */	addi r3, r3, l_HIO@l /* 0x804EEF3C@l */
/* 804EAFC8  88 03 00 24 */	lbz r0, 0x24(r3)
/* 804EAFCC  28 00 00 00 */	cmplwi r0, 0
/* 804EAFD0  41 82 00 0C */	beq lbl_804EAFDC
/* 804EAFD4  38 00 00 00 */	li r0, 0
/* 804EAFD8  90 1D 07 44 */	stw r0, 0x744(r29)
lbl_804EAFDC:
/* 804EAFDC  38 7D 0A 7C */	addi r3, r29, 0xa7c
/* 804EAFE0  4B B9 88 51 */	bl Move__10dCcD_GSttsFv
/* 804EAFE4  A8 1D 06 E8 */	lha r0, 0x6e8(r29)
/* 804EAFE8  2C 00 00 00 */	cmpwi r0, 0
/* 804EAFEC  40 82 03 40 */	bne lbl_804EB32C
/* 804EAFF0  7F B9 EB 78 */	mr r25, r29
/* 804EAFF4  3C 60 80 4F */	lis r3, l_HIO@ha /* 0x804EEF3C@ha */
/* 804EAFF8  38 63 EF 3C */	addi r3, r3, l_HIO@l /* 0x804EEF3C@l */
/* 804EAFFC  88 03 00 23 */	lbz r0, 0x23(r3)
/* 804EB000  28 00 00 00 */	cmplwi r0, 0
/* 804EB004  41 82 00 0C */	beq lbl_804EB010
/* 804EB008  38 00 00 64 */	li r0, 0x64
/* 804EB00C  B0 1D 05 62 */	sth r0, 0x562(r29)
lbl_804EB010:
/* 804EB010  3B 00 00 00 */	li r24, 0
/* 804EB014  3B 60 00 00 */	li r27, 0
lbl_804EB018:
/* 804EB018  3B 5B 0A 9C */	addi r26, r27, 0xa9c
/* 804EB01C  7F 5D D2 14 */	add r26, r29, r26
/* 804EB020  7F 43 D3 78 */	mr r3, r26
/* 804EB024  4B B9 94 3D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 804EB028  28 03 00 00 */	cmplwi r3, 0
/* 804EB02C  41 82 02 C4 */	beq lbl_804EB2F0
/* 804EB030  7F 43 D3 78 */	mr r3, r26
/* 804EB034  4B B9 94 C5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 804EB038  90 7D 10 B4 */	stw r3, 0x10b4(r29)
/* 804EB03C  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 804EB040  28 00 00 2C */	cmplwi r0, 0x2c
/* 804EB044  41 82 00 80 */	beq lbl_804EB0C4
/* 804EB048  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804EB04C  28 00 00 2D */	cmplwi r0, 0x2d
/* 804EB050  41 82 00 74 */	beq lbl_804EB0C4
/* 804EB054  80 7D 10 B4 */	lwz r3, 0x10b4(r29)
/* 804EB058  80 03 00 10 */	lwz r0, 0x10(r3)
/* 804EB05C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 804EB060  41 82 00 64 */	beq lbl_804EB0C4
/* 804EB064  7F 83 E3 78 */	mr r3, r28
/* 804EB068  7F 24 CB 78 */	mr r4, r25
/* 804EB06C  38 A0 00 40 */	li r5, 0x40
/* 804EB070  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804EB074  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 804EB078  7D 89 03 A6 */	mtctr r12
/* 804EB07C  4E 80 04 21 */	bctrl 
/* 804EB080  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804EB084  41 82 02 A8 */	beq lbl_804EB32C
/* 804EB088  38 00 00 0D */	li r0, 0xd
/* 804EB08C  B0 1D 06 CE */	sth r0, 0x6ce(r29)
/* 804EB090  38 00 00 00 */	li r0, 0
/* 804EB094  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804EB098  38 00 03 E8 */	li r0, 0x3e8
/* 804EB09C  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
/* 804EB0A0  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 804EB0A4  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 804EB0A8  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 804EB0AC  38 A0 00 1F */	li r5, 0x1f
/* 804EB0B0  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 804EB0B4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 804EB0B8  7D 89 03 A6 */	mtctr r12
/* 804EB0BC  4E 80 04 21 */	bctrl 
/* 804EB0C0  48 00 02 6C */	b lbl_804EB32C
lbl_804EB0C4:
/* 804EB0C4  38 00 00 03 */	li r0, 3
/* 804EB0C8  98 1D 10 DA */	stb r0, 0x10da(r29)
/* 804EB0CC  80 7D 10 B4 */	lwz r3, 0x10b4(r29)
/* 804EB0D0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 804EB0D4  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804EB0D8  41 82 00 18 */	beq lbl_804EB0F0
/* 804EB0DC  7F A3 EB 78 */	mr r3, r29
/* 804EB0E0  4B FF FC 3D */	bl wolfkick_damage__FP10e_dn_class
/* 804EB0E4  38 00 03 E8 */	li r0, 0x3e8
/* 804EB0E8  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
/* 804EB0EC  48 00 02 14 */	b lbl_804EB300
lbl_804EB0F0:
/* 804EB0F0  38 7D 10 B4 */	addi r3, r29, 0x10b4
/* 804EB0F4  4B B9 C9 65 */	bl at_power_check__FP11dCcU_AtInfo
/* 804EB0F8  AB 7D 05 62 */	lha r27, 0x562(r29)
/* 804EB0FC  7F A3 EB 78 */	mr r3, r29
/* 804EB100  38 9D 10 B4 */	addi r4, r29, 0x10b4
/* 804EB104  4B B9 CB 01 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 804EB108  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804EB10C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 804EB110  28 00 00 05 */	cmplwi r0, 5
/* 804EB114  40 82 00 0C */	bne lbl_804EB120
/* 804EB118  38 00 00 00 */	li r0, 0
/* 804EB11C  98 1D 10 D3 */	stb r0, 0x10d3(r29)
lbl_804EB120:
/* 804EB120  80 7D 10 B4 */	lwz r3, 0x10b4(r29)
/* 804EB124  80 03 00 10 */	lwz r0, 0x10(r3)
/* 804EB128  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 804EB12C  41 82 00 10 */	beq lbl_804EB13C
/* 804EB130  38 00 00 14 */	li r0, 0x14
/* 804EB134  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
/* 804EB138  48 00 00 0C */	b lbl_804EB144
lbl_804EB13C:
/* 804EB13C  38 00 00 0A */	li r0, 0xa
/* 804EB140  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
lbl_804EB144:
/* 804EB144  A0 1D 10 D0 */	lhz r0, 0x10d0(r29)
/* 804EB148  28 00 00 01 */	cmplwi r0, 1
/* 804EB14C  41 81 00 0C */	bgt lbl_804EB158
/* 804EB150  38 00 00 0A */	li r0, 0xa
/* 804EB154  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
lbl_804EB158:
/* 804EB158  80 7D 07 44 */	lwz r3, 0x744(r29)
/* 804EB15C  80 1D 10 C8 */	lwz r0, 0x10c8(r29)
/* 804EB160  7C 60 03 78 */	or r0, r3, r0
/* 804EB164  90 1D 07 44 */	stw r0, 0x744(r29)
/* 804EB168  88 1D 10 D4 */	lbz r0, 0x10d4(r29)
/* 804EB16C  28 00 00 10 */	cmplwi r0, 0x10
/* 804EB170  41 82 00 14 */	beq lbl_804EB184
/* 804EB174  80 7D 10 B4 */	lwz r3, 0x10b4(r29)
/* 804EB178  80 03 00 10 */	lwz r0, 0x10(r3)
/* 804EB17C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 804EB180  41 82 00 74 */	beq lbl_804EB1F4
lbl_804EB184:
/* 804EB184  B3 7D 05 62 */	sth r27, 0x562(r29)
/* 804EB188  38 00 00 0C */	li r0, 0xc
/* 804EB18C  B0 1D 06 CE */	sth r0, 0x6ce(r29)
/* 804EB190  38 00 00 00 */	li r0, 0
/* 804EB194  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804EB198  88 1D 08 2E */	lbz r0, 0x82e(r29)
/* 804EB19C  7C 00 07 75 */	extsb. r0, r0
/* 804EB1A0  41 82 00 0C */	beq lbl_804EB1AC
/* 804EB1A4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 804EB1A8  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_804EB1AC:
/* 804EB1AC  A8 9D 10 C2 */	lha r4, 0x10c2(r29)
/* 804EB1B0  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 804EB1B4  38 03 80 00 */	addi r0, r3, -32768
/* 804EB1B8  7C 04 00 50 */	subf r0, r4, r0
/* 804EB1BC  B0 1D 07 50 */	sth r0, 0x750(r29)
/* 804EB1C0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804EB1C4  D0 1D 07 4C */	stfs f0, 0x74c(r29)
/* 804EB1C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070021@ha */
/* 804EB1CC  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00070021@l */
/* 804EB1D0  90 01 00 08 */	stw r0, 8(r1)
/* 804EB1D4  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 804EB1D8  38 81 00 08 */	addi r4, r1, 8
/* 804EB1DC  38 A0 FF FF */	li r5, -1
/* 804EB1E0  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 804EB1E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804EB1E8  7D 89 03 A6 */	mtctr r12
/* 804EB1EC  4E 80 04 21 */	bctrl 
/* 804EB1F0  48 00 01 10 */	b lbl_804EB300
lbl_804EB1F4:
/* 804EB1F4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804EB1F8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804EB1FC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 804EB200  7D 89 03 A6 */	mtctr r12
/* 804EB204  4E 80 04 21 */	bctrl 
/* 804EB208  28 03 00 00 */	cmplwi r3, 0
/* 804EB20C  41 82 00 68 */	beq lbl_804EB274
/* 804EB210  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804EB214  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804EB218  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 804EB21C  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 804EB220  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 804EB224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EB228  4C 41 13 82 */	cror 2, 1, 2
/* 804EB22C  40 82 00 48 */	bne lbl_804EB274
/* 804EB230  88 1D 10 D4 */	lbz r0, 0x10d4(r29)
/* 804EB234  28 00 00 01 */	cmplwi r0, 1
/* 804EB238  40 82 00 3C */	bne lbl_804EB274
/* 804EB23C  38 00 00 14 */	li r0, 0x14
/* 804EB240  B0 1D 10 D0 */	sth r0, 0x10d0(r29)
/* 804EB244  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804EB248  4B D7 C7 0D */	bl cM_rndF__Ff
/* 804EB24C  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 804EB250  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EB254  40 80 00 14 */	bge lbl_804EB268
/* 804EB258  80 1D 10 C8 */	lwz r0, 0x10c8(r29)
/* 804EB25C  60 00 00 80 */	ori r0, r0, 0x80
/* 804EB260  90 1D 10 C8 */	stw r0, 0x10c8(r29)
/* 804EB264  48 00 00 10 */	b lbl_804EB274
lbl_804EB268:
/* 804EB268  80 1D 10 C8 */	lwz r0, 0x10c8(r29)
/* 804EB26C  60 00 08 00 */	ori r0, r0, 0x800
/* 804EB270  90 1D 10 C8 */	stw r0, 0x10c8(r29)
lbl_804EB274:
/* 804EB274  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 804EB278  2C 00 00 00 */	cmpwi r0, 0
/* 804EB27C  40 81 00 10 */	ble lbl_804EB28C
/* 804EB280  88 1D 10 D3 */	lbz r0, 0x10d3(r29)
/* 804EB284  7C 00 07 75 */	extsb. r0, r0
/* 804EB288  41 82 00 54 */	beq lbl_804EB2DC
lbl_804EB28C:
/* 804EB28C  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 804EB290  28 00 00 0A */	cmplwi r0, 0xa
/* 804EB294  40 82 00 34 */	bne lbl_804EB2C8
/* 804EB298  7F 83 E3 78 */	mr r3, r28
/* 804EB29C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804EB2A0  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 804EB2A4  7D 89 03 A6 */	mtctr r12
/* 804EB2A8  4E 80 04 21 */	bctrl 
/* 804EB2AC  2C 03 00 00 */	cmpwi r3, 0
/* 804EB2B0  41 82 00 18 */	beq lbl_804EB2C8
/* 804EB2B4  7F A3 EB 78 */	mr r3, r29
/* 804EB2B8  4B FF FC 2D */	bl small_damage__FP10e_dn_class
/* 804EB2BC  38 00 00 03 */	li r0, 3
/* 804EB2C0  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
/* 804EB2C4  48 00 00 20 */	b lbl_804EB2E4
lbl_804EB2C8:
/* 804EB2C8  7F A3 EB 78 */	mr r3, r29
/* 804EB2CC  4B FF FB 09 */	bl big_damage__FP10e_dn_class
/* 804EB2D0  38 00 03 E8 */	li r0, 0x3e8
/* 804EB2D4  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
/* 804EB2D8  48 00 00 0C */	b lbl_804EB2E4
lbl_804EB2DC:
/* 804EB2DC  7F A3 EB 78 */	mr r3, r29
/* 804EB2E0  4B FF FC 05 */	bl small_damage__FP10e_dn_class
lbl_804EB2E4:
/* 804EB2E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804EB2E8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 804EB2EC  48 00 00 14 */	b lbl_804EB300
lbl_804EB2F0:
/* 804EB2F0  3B 18 00 01 */	addi r24, r24, 1
/* 804EB2F4  2C 18 00 02 */	cmpwi r24, 2
/* 804EB2F8  3B 7B 01 38 */	addi r27, r27, 0x138
/* 804EB2FC  40 81 FD 1C */	ble lbl_804EB018
lbl_804EB300:
/* 804EB300  38 60 00 00 */	li r3, 0
/* 804EB304  38 80 00 03 */	li r4, 3
/* 804EB308  38 00 00 03 */	li r0, 3
/* 804EB30C  7C 09 03 A6 */	mtctr r0
lbl_804EB310:
/* 804EB310  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 804EB314  2C 00 00 01 */	cmpwi r0, 1
/* 804EB318  41 81 00 0C */	bgt lbl_804EB324
/* 804EB31C  38 03 0B 56 */	addi r0, r3, 0xb56
/* 804EB320  7C 9D 01 AE */	stbx r4, r29, r0
lbl_804EB324:
/* 804EB324  38 63 01 38 */	addi r3, r3, 0x138
/* 804EB328  42 00 FF E8 */	bdnz lbl_804EB310
lbl_804EB32C:
/* 804EB32C  39 61 00 30 */	addi r11, r1, 0x30
/* 804EB330  4B E7 6E E5 */	bl _restgpr_24
/* 804EB334  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804EB338  7C 08 03 A6 */	mtlr r0
/* 804EB33C  38 21 00 30 */	addi r1, r1, 0x30
/* 804EB340  4E 80 00 20 */	blr 
