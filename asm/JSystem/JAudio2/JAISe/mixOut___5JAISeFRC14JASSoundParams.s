lbl_8029F0F8:
/* 8029F0F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8029F0FC  7C 08 02 A6 */	mflr r0
/* 8029F100  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029F104  39 61 00 30 */	addi r11, r1, 0x30
/* 8029F108  48 0C 30 D5 */	bl _savegpr_29
/* 8029F10C  7C 7D 1B 78 */	mr r29, r3
/* 8029F110  7C 9E 23 78 */	mr r30, r4
/* 8029F114  38 7D 00 C8 */	addi r3, r29, 0xc8
/* 8029F118  C0 3D 03 28 */	lfs f1, 0x328(r29)
/* 8029F11C  4B FF 3A 71 */	bl setTempoRate__8JASTrackFf
/* 8029F120  C0 02 BD 78 */	lfs f0, lit_626(r2)
/* 8029F124  D0 01 00 08 */	stfs f0, 8(r1)
/* 8029F128  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8029F12C  C0 22 BD 7C */	lfs f1, lit_627(r2)
/* 8029F130  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8029F134  C0 02 BD 80 */	lfs f0, lit_628(r2)
/* 8029F138  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8029F13C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8029F140  38 7D 00 4C */	addi r3, r29, 0x4c
/* 8029F144  7F C4 F3 78 */	mr r4, r30
/* 8029F148  38 A1 00 08 */	addi r5, r1, 8
/* 8029F14C  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 8029F150  48 00 31 31 */	bl mixOutAll__14JAISoundParamsFRC14JASSoundParamsP14JASSoundParamsf
/* 8029F154  80 7D 03 24 */	lwz r3, 0x324(r29)
/* 8029F158  28 03 00 00 */	cmplwi r3, 0
/* 8029F15C  41 82 00 1C */	beq lbl_8029F178
/* 8029F160  7F A4 EB 78 */	mr r4, r29
/* 8029F164  38 A1 00 08 */	addi r5, r1, 8
/* 8029F168  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F16C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8029F170  7D 89 03 A6 */	mtctr r12
/* 8029F174  4E 80 04 21 */	bctrl 
lbl_8029F178:
/* 8029F178  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8029F17C  28 00 00 00 */	cmplwi r0, 0
/* 8029F180  41 82 00 54 */	beq lbl_8029F1D4
/* 8029F184  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8029F188  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F18C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8029F190  7D 89 03 A6 */	mtctr r12
/* 8029F194  4E 80 04 21 */	bctrl 
/* 8029F198  7C 7F 1B 78 */	mr r31, r3
/* 8029F19C  3B C0 00 00 */	li r30, 0
/* 8029F1A0  48 00 00 28 */	b lbl_8029F1C8
lbl_8029F1A4:
/* 8029F1A4  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8029F1A8  38 81 00 08 */	addi r4, r1, 8
/* 8029F1AC  80 BD 00 18 */	lwz r5, 0x18(r29)
/* 8029F1B0  7F C6 F3 78 */	mr r6, r30
/* 8029F1B4  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F1B8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8029F1BC  7D 89 03 A6 */	mtctr r12
/* 8029F1C0  4E 80 04 21 */	bctrl 
/* 8029F1C4  3B DE 00 01 */	addi r30, r30, 1
lbl_8029F1C8:
/* 8029F1C8  7C 1E F8 00 */	cmpw r30, r31
/* 8029F1CC  41 80 FF D8 */	blt lbl_8029F1A4
/* 8029F1D0  48 00 00 2C */	b lbl_8029F1FC
lbl_8029F1D4:
/* 8029F1D4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8029F1D8  D0 1D 00 B4 */	stfs f0, 0xb4(r29)
/* 8029F1DC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8029F1E0  D0 1D 00 B8 */	stfs f0, 0xb8(r29)
/* 8029F1E4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8029F1E8  D0 1D 00 BC */	stfs f0, 0xbc(r29)
/* 8029F1EC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8029F1F0  D0 1D 00 C0 */	stfs f0, 0xc0(r29)
/* 8029F1F4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8029F1F8  D0 1D 00 C4 */	stfs f0, 0xc4(r29)
lbl_8029F1FC:
/* 8029F1FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8029F200  48 0C 30 29 */	bl _restgpr_29
/* 8029F204  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8029F208  7C 08 03 A6 */	mtlr r0
/* 8029F20C  38 21 00 30 */	addi r1, r1, 0x30
/* 8029F210  4E 80 00 20 */	blr 
