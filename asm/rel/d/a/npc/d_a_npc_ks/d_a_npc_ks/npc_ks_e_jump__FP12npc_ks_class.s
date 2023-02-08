lbl_80A4F228:
/* 80A4F228  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A4F22C  7C 08 02 A6 */	mflr r0
/* 80A4F230  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A4F234  39 61 00 80 */	addi r11, r1, 0x80
/* 80A4F238  4B 91 2F 9D */	bl _savegpr_27
/* 80A4F23C  7C 7B 1B 78 */	mr r27, r3
/* 80A4F240  3C 80 80 A6 */	lis r4, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A4F244  3B E4 DE FC */	addi r31, r4, lit_4030@l /* 0x80A5DEFC@l */
/* 80A4F248  83 C3 09 34 */	lwz r30, 0x934(r3)
/* 80A4F24C  83 A3 09 30 */	lwz r29, 0x930(r3)
/* 80A4F250  3B 80 00 02 */	li r28, 2
/* 80A4F254  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A4F258  28 00 00 14 */	cmplwi r0, 0x14
/* 80A4F25C  41 81 0A E4 */	bgt lbl_80A4FD40
/* 80A4F260  3C 80 80 A6 */	lis r4, lit_6633@ha /* 0x80A5E8C0@ha */
/* 80A4F264  38 84 E8 C0 */	addi r4, r4, lit_6633@l /* 0x80A5E8C0@l */
/* 80A4F268  54 00 10 3A */	slwi r0, r0, 2
/* 80A4F26C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A4F270  7C 09 03 A6 */	mtctr r0
/* 80A4F274  4E 80 04 20 */	bctr 
lbl_80A4F278:
/* 80A4F278  38 00 00 01 */	li r0, 1
/* 80A4F27C  98 1B 0A EC */	stb r0, 0xaec(r27)
/* 80A4F280  C0 3B 05 C4 */	lfs f1, 0x5c4(r27)
/* 80A4F284  3C 80 80 A6 */	lis r4, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A4F288  38 84 FE B8 */	addi r4, r4, l_HIO@l /* 0x80A5FEB8@l */
/* 80A4F28C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80A4F290  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4F294  40 81 00 2C */	ble lbl_80A4F2C0
/* 80A4F298  38 80 00 1C */	li r4, 0x1c
/* 80A4F29C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4F2A0  38 A0 00 02 */	li r5, 2
/* 80A4F2A4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4F2A8  4B FF 9E FD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4F2AC  38 00 00 01 */	li r0, 1
/* 80A4F2B0  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A4F2B4  38 00 00 14 */	li r0, 0x14
/* 80A4F2B8  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80A4F2BC  48 00 00 28 */	b lbl_80A4F2E4
lbl_80A4F2C0:
/* 80A4F2C0  38 80 00 33 */	li r4, 0x33
/* 80A4F2C4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4F2C8  38 A0 00 02 */	li r5, 2
/* 80A4F2CC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4F2D0  4B FF 9E D5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4F2D4  38 00 00 05 */	li r0, 5
/* 80A4F2D8  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A4F2DC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4F2E0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80A4F2E4:
/* 80A4F2E4  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80A4F2E8  2C 00 00 04 */	cmpwi r0, 4
/* 80A4F2EC  40 82 0A 54 */	bne lbl_80A4FD40
/* 80A4F2F0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A4F2F4  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80A4F2F8  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 80A4F2FC  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80A4F300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4F304  40 81 00 0C */	ble lbl_80A4F310
/* 80A4F308  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80A4F30C  48 00 0A 34 */	b lbl_80A4FD40
lbl_80A4F310:
/* 80A4F310  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 80A4F314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4F318  40 80 0A 28 */	bge lbl_80A4FD40
/* 80A4F31C  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80A4F320  48 00 0A 20 */	b lbl_80A4FD40
lbl_80A4F324:
/* 80A4F324  3C 60 80 A6 */	lis r3, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A4F328  38 63 FE B8 */	addi r3, r3, l_HIO@l /* 0x80A5FEB8@l */
/* 80A4F32C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A4F330  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A4F334  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80A4F338  A8 9B 05 C8 */	lha r4, 0x5c8(r27)
/* 80A4F33C  38 A0 00 01 */	li r5, 1
/* 80A4F340  38 C0 20 00 */	li r6, 0x2000
/* 80A4F344  4B 82 12 C5 */	bl cLib_addCalcAngleS2__FPssss
/* 80A4F348  3B 80 00 01 */	li r28, 1
/* 80A4F34C  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A4F350  2C 00 00 00 */	cmpwi r0, 0
/* 80A4F354  41 82 00 24 */	beq lbl_80A4F378
/* 80A4F358  C0 5B 05 C4 */	lfs f2, 0x5c4(r27)
/* 80A4F35C  3C 60 80 A6 */	lis r3, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A4F360  38 63 FE B8 */	addi r3, r3, l_HIO@l /* 0x80A5FEB8@l */
/* 80A4F364  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80A4F368  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A4F36C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A4F370  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A4F374  40 80 09 CC */	bge lbl_80A4FD40
lbl_80A4F378:
/* 80A4F378  7F 63 DB 78 */	mr r3, r27
/* 80A4F37C  38 80 00 33 */	li r4, 0x33
/* 80A4F380  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4F384  38 A0 00 02 */	li r5, 2
/* 80A4F388  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4F38C  4B FF 9E 19 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4F390  38 00 00 05 */	li r0, 5
/* 80A4F394  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A4F398  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4F39C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A4F3A0  48 00 09 A0 */	b lbl_80A4FD40
lbl_80A4F3A4:
/* 80A4F3A4  38 00 00 01 */	li r0, 1
/* 80A4F3A8  98 1B 05 FD */	stb r0, 0x5fd(r27)
/* 80A4F3AC  38 61 00 48 */	addi r3, r1, 0x48
/* 80A4F3B0  38 9D 06 14 */	addi r4, r29, 0x614
/* 80A4F3B4  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80A4F3B8  4B 81 77 7D */	bl __mi__4cXyzCFRC3Vec
/* 80A4F3BC  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80A4F3C0  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80A4F3C4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A4F3C8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A4F3CC  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80A4F3D0  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80A4F3D4  4B 81 82 A1 */	bl cM_atan2s__Fff
/* 80A4F3D8  B0 7B 08 FE */	sth r3, 0x8fe(r27)
/* 80A4F3DC  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80A4F3E0  A8 9B 08 FE */	lha r4, 0x8fe(r27)
/* 80A4F3E4  38 A0 00 01 */	li r5, 1
/* 80A4F3E8  38 C0 20 00 */	li r6, 0x2000
/* 80A4F3EC  4B 82 12 1D */	bl cLib_addCalcAngleS2__FPssss
/* 80A4F3F0  88 7B 05 B6 */	lbz r3, 0x5b6(r27)
/* 80A4F3F4  4B FF FD E5 */	bl go_jump_check__Fi
/* 80A4F3F8  2C 03 00 00 */	cmpwi r3, 0
/* 80A4F3FC  41 82 09 44 */	beq lbl_80A4FD40
/* 80A4F400  7F 63 DB 78 */	mr r3, r27
/* 80A4F404  38 80 00 1A */	li r4, 0x1a
/* 80A4F408  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4F40C  38 A0 00 02 */	li r5, 2
/* 80A4F410  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4F414  4B FF 9D 91 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4F418  38 00 00 0A */	li r0, 0xa
/* 80A4F41C  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80A4F420  38 00 00 06 */	li r0, 6
/* 80A4F424  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A4F428  38 00 00 00 */	li r0, 0
/* 80A4F42C  98 1B 0A EC */	stb r0, 0xaec(r27)
/* 80A4F430  48 00 09 10 */	b lbl_80A4FD40
lbl_80A4F434:
/* 80A4F434  38 00 00 01 */	li r0, 1
/* 80A4F438  98 1B 05 FD */	stb r0, 0x5fd(r27)
/* 80A4F43C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A4F440  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A4F444  3B 80 00 01 */	li r28, 1
/* 80A4F448  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A4F44C  2C 00 00 00 */	cmpwi r0, 0
/* 80A4F450  40 82 08 F0 */	bne lbl_80A4FD40
/* 80A4F454  38 80 00 20 */	li r4, 0x20
/* 80A4F458  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A4F45C  38 A0 00 00 */	li r5, 0
/* 80A4F460  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4F464  4B FF 9D 41 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4F468  38 00 00 07 */	li r0, 7
/* 80A4F46C  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A4F470  48 00 08 D0 */	b lbl_80A4FD40
lbl_80A4F474:
/* 80A4F474  38 80 00 01 */	li r4, 1
/* 80A4F478  98 9B 05 FD */	stb r4, 0x5fd(r27)
/* 80A4F47C  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A4F480  2C 00 00 20 */	cmpwi r0, 0x20
/* 80A4F484  40 82 00 C8 */	bne lbl_80A4F54C
/* 80A4F488  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A4F48C  D0 3B 05 2C */	stfs f1, 0x52c(r27)
/* 80A4F490  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 80A4F494  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4F498  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4F49C  40 82 00 14 */	bne lbl_80A4F4B0
/* 80A4F4A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4F4A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4F4A8  41 82 00 08 */	beq lbl_80A4F4B0
/* 80A4F4AC  38 80 00 00 */	li r4, 0
lbl_80A4F4B0:
/* 80A4F4B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4F4B4  41 82 00 98 */	beq lbl_80A4F54C
/* 80A4F4B8  7F 63 DB 78 */	mr r3, r27
/* 80A4F4BC  38 80 00 21 */	li r4, 0x21
/* 80A4F4C0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4F4C4  38 A0 00 00 */	li r5, 0
/* 80A4F4C8  FC 40 08 90 */	fmr f2, f1
/* 80A4F4CC  4B FF 9C D9 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4F4D0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A4F4D4  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A4F4D8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A4F4DC  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A4F4E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A4F4E4  38 7B 08 60 */	addi r3, r27, 0x860
/* 80A4F4E8  38 81 00 20 */	addi r4, r1, 0x20
/* 80A4F4EC  38 A0 FF FF */	li r5, -1
/* 80A4F4F0  81 9B 08 60 */	lwz r12, 0x860(r27)
/* 80A4F4F4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4F4F8  7D 89 03 A6 */	mtctr r12
/* 80A4F4FC  4E 80 04 21 */	bctrl 
/* 80A4F500  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A4F504  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A4F508  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A4F50C  38 7B 08 60 */	addi r3, r27, 0x860
/* 80A4F510  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A4F514  38 A0 00 00 */	li r5, 0
/* 80A4F518  38 C0 FF FF */	li r6, -1
/* 80A4F51C  81 9B 08 60 */	lwz r12, 0x860(r27)
/* 80A4F520  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4F524  7D 89 03 A6 */	mtctr r12
/* 80A4F528  4E 80 04 21 */	bctrl 
/* 80A4F52C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A4F530  D0 1B 09 10 */	stfs f0, 0x910(r27)
/* 80A4F534  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80A4F538  D0 1B 09 14 */	stfs f0, 0x914(r27)
/* 80A4F53C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A4F540  D0 1B 09 18 */	stfs f0, 0x918(r27)
/* 80A4F544  38 00 00 01 */	li r0, 1
/* 80A4F548  98 1B 0B E0 */	stb r0, 0xbe0(r27)
lbl_80A4F54C:
/* 80A4F54C  C0 1D 06 14 */	lfs f0, 0x614(r29)
/* 80A4F550  D0 1B 08 F0 */	stfs f0, 0x8f0(r27)
/* 80A4F554  C0 1D 06 18 */	lfs f0, 0x618(r29)
/* 80A4F558  D0 1B 08 F4 */	stfs f0, 0x8f4(r27)
/* 80A4F55C  C0 1D 06 1C */	lfs f0, 0x61c(r29)
/* 80A4F560  D0 1B 08 F8 */	stfs f0, 0x8f8(r27)
/* 80A4F564  C0 1B 08 F0 */	lfs f0, 0x8f0(r27)
/* 80A4F568  D0 1B 09 1C */	stfs f0, 0x91c(r27)
/* 80A4F56C  C0 1B 08 F4 */	lfs f0, 0x8f4(r27)
/* 80A4F570  D0 1B 09 20 */	stfs f0, 0x920(r27)
/* 80A4F574  C0 1B 08 F8 */	lfs f0, 0x8f8(r27)
/* 80A4F578  D0 1B 09 24 */	stfs f0, 0x924(r27)
/* 80A4F57C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80A4F580  38 9B 08 F0 */	addi r4, r27, 0x8f0
/* 80A4F584  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80A4F588  4B 81 75 AD */	bl __mi__4cXyzCFRC3Vec
/* 80A4F58C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80A4F590  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80A4F594  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80A4F598  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A4F59C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80A4F5A0  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80A4F5A4  4B 81 80 D1 */	bl cM_atan2s__Fff
/* 80A4F5A8  B0 7B 08 FE */	sth r3, 0x8fe(r27)
/* 80A4F5AC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A4F5B0  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A4F5B4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A4F5B8  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A4F5BC  EC 41 00 2A */	fadds f2, f1, f0
/* 80A4F5C0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4F5C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A4F5C8  40 81 00 0C */	ble lbl_80A4F5D4
/* 80A4F5CC  FC 00 10 34 */	frsqrte f0, f2
/* 80A4F5D0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A4F5D4:
/* 80A4F5D4  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80A4F5D8  4B 81 80 9D */	bl cM_atan2s__Fff
/* 80A4F5DC  7C 03 00 D0 */	neg r0, r3
/* 80A4F5E0  B0 1B 08 FC */	sth r0, 0x8fc(r27)
/* 80A4F5E4  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80A4F5E8  A8 9B 08 FE */	lha r4, 0x8fe(r27)
/* 80A4F5EC  38 A0 00 01 */	li r5, 1
/* 80A4F5F0  38 C0 20 00 */	li r6, 0x2000
/* 80A4F5F4  4B 82 10 15 */	bl cLib_addCalcAngleS2__FPssss
/* 80A4F5F8  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80A4F5FC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A4F600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4F604  4C 41 13 82 */	cror 2, 1, 2
/* 80A4F608  40 82 00 34 */	bne lbl_80A4F63C
/* 80A4F60C  38 00 00 01 */	li r0, 1
/* 80A4F610  98 1B 09 0C */	stb r0, 0x90c(r27)
/* 80A4F614  38 7B 09 28 */	addi r3, r27, 0x928
/* 80A4F618  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 80A4F61C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4F620  C0 7F 01 38 */	lfs f3, 0x138(r31)
/* 80A4F624  4B 82 04 19 */	bl cLib_addCalc2__FPffff
/* 80A4F628  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 80A4F62C  38 80 18 00 */	li r4, 0x1800
/* 80A4F630  38 A0 00 04 */	li r5, 4
/* 80A4F634  38 C0 18 00 */	li r6, 0x1800
/* 80A4F638  4B 82 0F D1 */	bl cLib_addCalcAngleS2__FPssss
lbl_80A4F63C:
/* 80A4F63C  38 61 00 54 */	addi r3, r1, 0x54
/* 80A4F640  4B 8F 7A F9 */	bl PSVECSquareMag
/* 80A4F644  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4F648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4F64C  40 81 00 58 */	ble lbl_80A4F6A4
/* 80A4F650  FC 00 08 34 */	frsqrte f0, f1
/* 80A4F654  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80A4F658  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4F65C  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80A4F660  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4F664  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4F668  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4F66C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4F670  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4F674  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4F678  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4F67C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4F680  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4F684  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4F688  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4F68C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4F690  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4F694  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4F698  FC 21 00 32 */	fmul f1, f1, f0
/* 80A4F69C  FC 20 08 18 */	frsp f1, f1
/* 80A4F6A0  48 00 00 88 */	b lbl_80A4F728
lbl_80A4F6A4:
/* 80A4F6A4  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80A4F6A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4F6AC  40 80 00 10 */	bge lbl_80A4F6BC
/* 80A4F6B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4F6B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A4F6B8  48 00 00 70 */	b lbl_80A4F728
lbl_80A4F6BC:
/* 80A4F6BC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A4F6C0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A4F6C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A4F6C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A4F6CC  7C 03 00 00 */	cmpw r3, r0
/* 80A4F6D0  41 82 00 14 */	beq lbl_80A4F6E4
/* 80A4F6D4  40 80 00 40 */	bge lbl_80A4F714
/* 80A4F6D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A4F6DC  41 82 00 20 */	beq lbl_80A4F6FC
/* 80A4F6E0  48 00 00 34 */	b lbl_80A4F714
lbl_80A4F6E4:
/* 80A4F6E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4F6E8  41 82 00 0C */	beq lbl_80A4F6F4
/* 80A4F6EC  38 00 00 01 */	li r0, 1
/* 80A4F6F0  48 00 00 28 */	b lbl_80A4F718
lbl_80A4F6F4:
/* 80A4F6F4  38 00 00 02 */	li r0, 2
/* 80A4F6F8  48 00 00 20 */	b lbl_80A4F718
lbl_80A4F6FC:
/* 80A4F6FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4F700  41 82 00 0C */	beq lbl_80A4F70C
/* 80A4F704  38 00 00 05 */	li r0, 5
/* 80A4F708  48 00 00 10 */	b lbl_80A4F718
lbl_80A4F70C:
/* 80A4F70C  38 00 00 03 */	li r0, 3
/* 80A4F710  48 00 00 08 */	b lbl_80A4F718
lbl_80A4F714:
/* 80A4F714  38 00 00 04 */	li r0, 4
lbl_80A4F718:
/* 80A4F718  2C 00 00 01 */	cmpwi r0, 1
/* 80A4F71C  40 82 00 0C */	bne lbl_80A4F728
/* 80A4F720  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4F724  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A4F728:
/* 80A4F728  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80A4F72C  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80A4F730  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A4F734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4F738  4C 40 13 82 */	cror 2, 0, 2
/* 80A4F73C  40 82 06 04 */	bne lbl_80A4FD40
/* 80A4F740  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4F744  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A4F748  38 00 00 0A */	li r0, 0xa
/* 80A4F74C  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A4F750  7F 63 DB 78 */	mr r3, r27
/* 80A4F754  38 80 00 30 */	li r4, 0x30
/* 80A4F758  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A4F75C  38 A0 00 02 */	li r5, 2
/* 80A4F760  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4F764  4B FF 9A 41 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4F768  38 00 00 02 */	li r0, 2
/* 80A4F76C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4F770  48 00 05 D0 */	b lbl_80A4FD40
lbl_80A4F774:
/* 80A4F774  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A4F778  B0 1B 04 B6 */	sth r0, 0x4b6(r27)
/* 80A4F77C  A8 1B 04 B6 */	lha r0, 0x4b6(r27)
/* 80A4F780  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80A4F784  C0 1D 06 14 */	lfs f0, 0x614(r29)
/* 80A4F788  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80A4F78C  C0 1D 06 18 */	lfs f0, 0x618(r29)
/* 80A4F790  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80A4F794  C0 1D 06 1C */	lfs f0, 0x61c(r29)
/* 80A4F798  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80A4F79C  A8 1D 06 02 */	lha r0, 0x602(r29)
/* 80A4F7A0  54 00 08 3C */	slwi r0, r0, 1
/* 80A4F7A4  B0 1B 04 DC */	sth r0, 0x4dc(r27)
/* 80A4F7A8  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 80A4F7AC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A4F7B0  40 82 05 90 */	bne lbl_80A4FD40
/* 80A4F7B4  38 00 00 00 */	li r0, 0
/* 80A4F7B8  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80A4F7BC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A4F7C0  D0 1B 09 10 */	stfs f0, 0x910(r27)
/* 80A4F7C4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80A4F7C8  D0 1B 09 14 */	stfs f0, 0x914(r27)
/* 80A4F7CC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A4F7D0  D0 1B 09 18 */	stfs f0, 0x918(r27)
/* 80A4F7D4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050019@ha */
/* 80A4F7D8  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00050019@l */
/* 80A4F7DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A4F7E0  38 7B 08 60 */	addi r3, r27, 0x860
/* 80A4F7E4  38 81 00 18 */	addi r4, r1, 0x18
/* 80A4F7E8  38 A0 FF FF */	li r5, -1
/* 80A4F7EC  81 9B 08 60 */	lwz r12, 0x860(r27)
/* 80A4F7F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4F7F4  7D 89 03 A6 */	mtctr r12
/* 80A4F7F8  4E 80 04 21 */	bctrl 
/* 80A4F7FC  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80A4F800  2C 00 00 02 */	cmpwi r0, 2
/* 80A4F804  40 82 00 10 */	bne lbl_80A4F814
/* 80A4F808  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A4F80C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A4F810  48 00 00 0C */	b lbl_80A4F81C
lbl_80A4F814:
/* 80A4F814  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A4F818  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80A4F81C:
/* 80A4F81C  88 9D 05 B6 */	lbz r4, 0x5b6(r29)
/* 80A4F820  88 7B 05 B6 */	lbz r3, 0x5b6(r27)
/* 80A4F824  38 03 FF FF */	addi r0, r3, -1
/* 80A4F828  7C 04 00 00 */	cmpw r4, r0
/* 80A4F82C  40 82 00 10 */	bne lbl_80A4F83C
/* 80A4F830  38 00 00 0B */	li r0, 0xb
/* 80A4F834  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A4F838  48 00 00 28 */	b lbl_80A4F860
lbl_80A4F83C:
/* 80A4F83C  38 00 00 14 */	li r0, 0x14
/* 80A4F840  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A4F844  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A4F848  38 63 E4 78 */	addi r3, r3, saru_p@l /* 0x80A5E478@l */
/* 80A4F84C  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 80A4F850  54 00 10 3A */	slwi r0, r0, 2
/* 80A4F854  7C 63 02 14 */	add r3, r3, r0
/* 80A4F858  80 03 00 04 */	lwz r0, 4(r3)
/* 80A4F85C  90 1B 09 30 */	stw r0, 0x930(r27)
lbl_80A4F860:
/* 80A4F860  7F 63 DB 78 */	mr r3, r27
/* 80A4F864  38 80 00 21 */	li r4, 0x21
/* 80A4F868  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4F86C  38 A0 00 00 */	li r5, 0
/* 80A4F870  FC 40 08 90 */	fmr f2, f1
/* 80A4F874  4B FF 99 31 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4F878  38 00 00 01 */	li r0, 1
/* 80A4F87C  98 1B 0B E0 */	stb r0, 0xbe0(r27)
lbl_80A4F880:
/* 80A4F880  38 00 00 01 */	li r0, 1
/* 80A4F884  98 1B 09 0C */	stb r0, 0x90c(r27)
/* 80A4F888  88 7B 05 B6 */	lbz r3, 0x5b6(r27)
/* 80A4F88C  38 A3 00 01 */	addi r5, r3, 1
/* 80A4F890  80 9E 0D 8C */	lwz r4, 0xd8c(r30)
/* 80A4F894  80 7E 09 1C */	lwz r3, 0x91c(r30)
/* 80A4F898  38 03 00 01 */	addi r0, r3, 1
/* 80A4F89C  7C 04 03 D6 */	divw r0, r4, r0
/* 80A4F8A0  7C 65 01 D6 */	mullw r3, r5, r0
/* 80A4F8A4  38 03 FF FF */	addi r0, r3, -1
/* 80A4F8A8  90 1B 06 30 */	stw r0, 0x630(r27)
/* 80A4F8AC  80 1B 06 30 */	lwz r0, 0x630(r27)
/* 80A4F8B0  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80A4F8B4  38 63 09 20 */	addi r3, r3, 0x920
/* 80A4F8B8  7C 7E 1A 14 */	add r3, r30, r3
/* 80A4F8BC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80A4F8C0  D0 1B 08 F0 */	stfs f0, 0x8f0(r27)
/* 80A4F8C4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A4F8C8  D0 1B 08 F4 */	stfs f0, 0x8f4(r27)
/* 80A4F8CC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A4F8D0  D0 1B 08 F8 */	stfs f0, 0x8f8(r27)
/* 80A4F8D4  28 1E 00 00 */	cmplwi r30, 0
/* 80A4F8D8  41 82 00 0C */	beq lbl_80A4F8E4
/* 80A4F8DC  80 1E 00 04 */	lwz r0, 4(r30)
/* 80A4F8E0  48 00 00 08 */	b lbl_80A4F8E8
lbl_80A4F8E4:
/* 80A4F8E4  38 00 FF FF */	li r0, -1
lbl_80A4F8E8:
/* 80A4F8E8  90 1B 04 A4 */	stw r0, 0x4a4(r27)
/* 80A4F8EC  C0 1B 08 F0 */	lfs f0, 0x8f0(r27)
/* 80A4F8F0  D0 1B 09 1C */	stfs f0, 0x91c(r27)
/* 80A4F8F4  C0 1B 08 F4 */	lfs f0, 0x8f4(r27)
/* 80A4F8F8  D0 1B 09 20 */	stfs f0, 0x920(r27)
/* 80A4F8FC  C0 1B 08 F8 */	lfs f0, 0x8f8(r27)
/* 80A4F900  D0 1B 09 24 */	stfs f0, 0x924(r27)
/* 80A4F904  38 61 00 30 */	addi r3, r1, 0x30
/* 80A4F908  38 9B 08 F0 */	addi r4, r27, 0x8f0
/* 80A4F90C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80A4F910  4B 81 72 25 */	bl __mi__4cXyzCFRC3Vec
/* 80A4F914  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80A4F918  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80A4F91C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A4F920  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A4F924  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80A4F928  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80A4F92C  4B 81 7D 49 */	bl cM_atan2s__Fff
/* 80A4F930  B0 7B 08 FE */	sth r3, 0x8fe(r27)
/* 80A4F934  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A4F938  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A4F93C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A4F940  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A4F944  EC 41 00 2A */	fadds f2, f1, f0
/* 80A4F948  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4F94C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A4F950  40 81 00 0C */	ble lbl_80A4F95C
/* 80A4F954  FC 00 10 34 */	frsqrte f0, f2
/* 80A4F958  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A4F95C:
/* 80A4F95C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80A4F960  4B 81 7D 15 */	bl cM_atan2s__Fff
/* 80A4F964  7C 03 00 D0 */	neg r0, r3
/* 80A4F968  B0 1B 08 FC */	sth r0, 0x8fc(r27)
/* 80A4F96C  38 61 00 54 */	addi r3, r1, 0x54
/* 80A4F970  4B 8F 77 C9 */	bl PSVECSquareMag
/* 80A4F974  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4F978  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4F97C  40 81 00 58 */	ble lbl_80A4F9D4
/* 80A4F980  FC 00 08 34 */	frsqrte f0, f1
/* 80A4F984  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80A4F988  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4F98C  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80A4F990  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4F994  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4F998  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4F99C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4F9A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4F9A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4F9A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4F9AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4F9B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4F9B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4F9B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4F9BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4F9C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4F9C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4F9C8  FC 21 00 32 */	fmul f1, f1, f0
/* 80A4F9CC  FC 20 08 18 */	frsp f1, f1
/* 80A4F9D0  48 00 00 88 */	b lbl_80A4FA58
lbl_80A4F9D4:
/* 80A4F9D4  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80A4F9D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4F9DC  40 80 00 10 */	bge lbl_80A4F9EC
/* 80A4F9E0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4F9E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A4F9E8  48 00 00 70 */	b lbl_80A4FA58
lbl_80A4F9EC:
/* 80A4F9EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A4F9F0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A4F9F4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A4F9F8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A4F9FC  7C 03 00 00 */	cmpw r3, r0
/* 80A4FA00  41 82 00 14 */	beq lbl_80A4FA14
/* 80A4FA04  40 80 00 40 */	bge lbl_80A4FA44
/* 80A4FA08  2C 03 00 00 */	cmpwi r3, 0
/* 80A4FA0C  41 82 00 20 */	beq lbl_80A4FA2C
/* 80A4FA10  48 00 00 34 */	b lbl_80A4FA44
lbl_80A4FA14:
/* 80A4FA14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4FA18  41 82 00 0C */	beq lbl_80A4FA24
/* 80A4FA1C  38 00 00 01 */	li r0, 1
/* 80A4FA20  48 00 00 28 */	b lbl_80A4FA48
lbl_80A4FA24:
/* 80A4FA24  38 00 00 02 */	li r0, 2
/* 80A4FA28  48 00 00 20 */	b lbl_80A4FA48
lbl_80A4FA2C:
/* 80A4FA2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4FA30  41 82 00 0C */	beq lbl_80A4FA3C
/* 80A4FA34  38 00 00 05 */	li r0, 5
/* 80A4FA38  48 00 00 10 */	b lbl_80A4FA48
lbl_80A4FA3C:
/* 80A4FA3C  38 00 00 03 */	li r0, 3
/* 80A4FA40  48 00 00 08 */	b lbl_80A4FA48
lbl_80A4FA44:
/* 80A4FA44  38 00 00 04 */	li r0, 4
lbl_80A4FA48:
/* 80A4FA48  2C 00 00 01 */	cmpwi r0, 1
/* 80A4FA4C  40 82 00 0C */	bne lbl_80A4FA58
/* 80A4FA50  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4FA54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A4FA58:
/* 80A4FA58  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80A4FA5C  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80A4FA60  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A4FA64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4FA68  4C 40 13 82 */	cror 2, 0, 2
/* 80A4FA6C  40 82 00 70 */	bne lbl_80A4FADC
/* 80A4FA70  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4FA74  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A4FA78  38 00 00 0C */	li r0, 0xc
/* 80A4FA7C  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A4FA80  7F 63 DB 78 */	mr r3, r27
/* 80A4FA84  38 80 00 18 */	li r4, 0x18
/* 80A4FA88  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A4FA8C  38 A0 00 02 */	li r5, 2
/* 80A4FA90  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4FA94  4B FF 97 11 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4FA98  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003000E@ha */
/* 80A4FA9C  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0003000E@l */
/* 80A4FAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4FAA4  38 7B 08 60 */	addi r3, r27, 0x860
/* 80A4FAA8  38 81 00 14 */	addi r4, r1, 0x14
/* 80A4FAAC  38 A0 00 00 */	li r5, 0
/* 80A4FAB0  38 C0 FF FF */	li r6, -1
/* 80A4FAB4  81 9B 08 60 */	lwz r12, 0x860(r27)
/* 80A4FAB8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4FABC  7D 89 03 A6 */	mtctr r12
/* 80A4FAC0  4E 80 04 21 */	bctrl 
/* 80A4FAC4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A4FAC8  D0 1E 08 FC */	stfs f0, 0x8fc(r30)
/* 80A4FACC  38 80 00 0A */	li r4, 0xa
/* 80A4FAD0  80 1B 06 30 */	lwz r0, 0x630(r27)
/* 80A4FAD4  7C 7E 02 14 */	add r3, r30, r0
/* 80A4FAD8  98 83 0D 10 */	stb r4, 0xd10(r3)
lbl_80A4FADC:
/* 80A4FADC  38 7B 09 28 */	addi r3, r27, 0x928
/* 80A4FAE0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4FAE4  C0 5F 01 38 */	lfs f2, 0x138(r31)
/* 80A4FAE8  4B 81 FF 99 */	bl cLib_addCalc0__FPfff
/* 80A4FAEC  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 80A4FAF0  38 80 80 00 */	li r4, -32768
/* 80A4FAF4  38 A0 00 01 */	li r5, 1
/* 80A4FAF8  38 C0 07 00 */	li r6, 0x700
/* 80A4FAFC  4B 82 0B 0D */	bl cLib_addCalcAngleS2__FPssss
/* 80A4FB00  A8 1B 05 EA */	lha r0, 0x5ea(r27)
/* 80A4FB04  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A4FB08  40 82 02 38 */	bne lbl_80A4FD40
/* 80A4FB0C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A4FB10  C0 1B 09 28 */	lfs f0, 0x928(r27)
/* 80A4FB14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4FB18  40 82 02 28 */	bne lbl_80A4FD40
/* 80A4FB1C  88 7B 05 B6 */	lbz r3, 0x5b6(r27)
/* 80A4FB20  80 9E 09 1C */	lwz r4, 0x91c(r30)
/* 80A4FB24  4B FF F6 4D */	bl all_move_check__Fii
/* 80A4FB28  2C 03 00 00 */	cmpwi r3, 0
/* 80A4FB2C  41 82 00 10 */	beq lbl_80A4FB3C
/* 80A4FB30  80 7E 09 1C */	lwz r3, 0x91c(r30)
/* 80A4FB34  4B FF E2 C5 */	bl all_carry_finish__Fi
/* 80A4FB38  48 00 02 08 */	b lbl_80A4FD40
lbl_80A4FB3C:
/* 80A4FB3C  38 00 00 15 */	li r0, 0x15
/* 80A4FB40  B0 1B 05 E8 */	sth r0, 0x5e8(r27)
/* 80A4FB44  38 00 00 00 */	li r0, 0
/* 80A4FB48  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A4FB4C  38 00 00 0F */	li r0, 0xf
/* 80A4FB50  B0 1B 05 F4 */	sth r0, 0x5f4(r27)
/* 80A4FB54  48 00 01 EC */	b lbl_80A4FD40
lbl_80A4FB58:
/* 80A4FB58  38 00 00 01 */	li r0, 1
/* 80A4FB5C  98 1B 09 0C */	stb r0, 0x90c(r27)
/* 80A4FB60  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 80A4FB64  38 80 18 00 */	li r4, 0x1800
/* 80A4FB68  38 A0 00 04 */	li r5, 4
/* 80A4FB6C  38 C0 18 00 */	li r6, 0x1800
/* 80A4FB70  4B 82 0A 99 */	bl cLib_addCalcAngleS2__FPssss
/* 80A4FB74  C0 1D 06 14 */	lfs f0, 0x614(r29)
/* 80A4FB78  D0 1B 08 F0 */	stfs f0, 0x8f0(r27)
/* 80A4FB7C  C0 1D 06 18 */	lfs f0, 0x618(r29)
/* 80A4FB80  D0 1B 08 F4 */	stfs f0, 0x8f4(r27)
/* 80A4FB84  C0 1D 06 1C */	lfs f0, 0x61c(r29)
/* 80A4FB88  D0 1B 08 F8 */	stfs f0, 0x8f8(r27)
/* 80A4FB8C  C0 1B 08 F0 */	lfs f0, 0x8f0(r27)
/* 80A4FB90  D0 1B 09 1C */	stfs f0, 0x91c(r27)
/* 80A4FB94  C0 1B 08 F4 */	lfs f0, 0x8f4(r27)
/* 80A4FB98  D0 1B 09 20 */	stfs f0, 0x920(r27)
/* 80A4FB9C  C0 1B 08 F8 */	lfs f0, 0x8f8(r27)
/* 80A4FBA0  D0 1B 09 24 */	stfs f0, 0x924(r27)
/* 80A4FBA4  38 61 00 24 */	addi r3, r1, 0x24
/* 80A4FBA8  38 9B 08 F0 */	addi r4, r27, 0x8f0
/* 80A4FBAC  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80A4FBB0  4B 81 6F 85 */	bl __mi__4cXyzCFRC3Vec
/* 80A4FBB4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80A4FBB8  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80A4FBBC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A4FBC0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A4FBC4  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80A4FBC8  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80A4FBCC  4B 81 7A A9 */	bl cM_atan2s__Fff
/* 80A4FBD0  B0 7B 08 FE */	sth r3, 0x8fe(r27)
/* 80A4FBD4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A4FBD8  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A4FBDC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A4FBE0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A4FBE4  EC 41 00 2A */	fadds f2, f1, f0
/* 80A4FBE8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4FBEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A4FBF0  40 81 00 0C */	ble lbl_80A4FBFC
/* 80A4FBF4  FC 00 10 34 */	frsqrte f0, f2
/* 80A4FBF8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A4FBFC:
/* 80A4FBFC  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80A4FC00  4B 81 7A 75 */	bl cM_atan2s__Fff
/* 80A4FC04  7C 03 00 D0 */	neg r0, r3
/* 80A4FC08  B0 1B 08 FC */	sth r0, 0x8fc(r27)
/* 80A4FC0C  38 61 00 54 */	addi r3, r1, 0x54
/* 80A4FC10  4B 8F 75 29 */	bl PSVECSquareMag
/* 80A4FC14  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4FC18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4FC1C  40 81 00 58 */	ble lbl_80A4FC74
/* 80A4FC20  FC 00 08 34 */	frsqrte f0, f1
/* 80A4FC24  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80A4FC28  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4FC2C  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80A4FC30  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4FC34  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4FC38  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4FC3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4FC40  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4FC44  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4FC48  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4FC4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4FC50  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4FC54  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4FC58  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4FC5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4FC60  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4FC64  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4FC68  FC 21 00 32 */	fmul f1, f1, f0
/* 80A4FC6C  FC 20 08 18 */	frsp f1, f1
/* 80A4FC70  48 00 00 88 */	b lbl_80A4FCF8
lbl_80A4FC74:
/* 80A4FC74  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80A4FC78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4FC7C  40 80 00 10 */	bge lbl_80A4FC8C
/* 80A4FC80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4FC84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A4FC88  48 00 00 70 */	b lbl_80A4FCF8
lbl_80A4FC8C:
/* 80A4FC8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A4FC90  80 81 00 08 */	lwz r4, 8(r1)
/* 80A4FC94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A4FC98  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A4FC9C  7C 03 00 00 */	cmpw r3, r0
/* 80A4FCA0  41 82 00 14 */	beq lbl_80A4FCB4
/* 80A4FCA4  40 80 00 40 */	bge lbl_80A4FCE4
/* 80A4FCA8  2C 03 00 00 */	cmpwi r3, 0
/* 80A4FCAC  41 82 00 20 */	beq lbl_80A4FCCC
/* 80A4FCB0  48 00 00 34 */	b lbl_80A4FCE4
lbl_80A4FCB4:
/* 80A4FCB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4FCB8  41 82 00 0C */	beq lbl_80A4FCC4
/* 80A4FCBC  38 00 00 01 */	li r0, 1
/* 80A4FCC0  48 00 00 28 */	b lbl_80A4FCE8
lbl_80A4FCC4:
/* 80A4FCC4  38 00 00 02 */	li r0, 2
/* 80A4FCC8  48 00 00 20 */	b lbl_80A4FCE8
lbl_80A4FCCC:
/* 80A4FCCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4FCD0  41 82 00 0C */	beq lbl_80A4FCDC
/* 80A4FCD4  38 00 00 05 */	li r0, 5
/* 80A4FCD8  48 00 00 10 */	b lbl_80A4FCE8
lbl_80A4FCDC:
/* 80A4FCDC  38 00 00 03 */	li r0, 3
/* 80A4FCE0  48 00 00 08 */	b lbl_80A4FCE8
lbl_80A4FCE4:
/* 80A4FCE4  38 00 00 04 */	li r0, 4
lbl_80A4FCE8:
/* 80A4FCE8  2C 00 00 01 */	cmpwi r0, 1
/* 80A4FCEC  40 82 00 0C */	bne lbl_80A4FCF8
/* 80A4FCF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4FCF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A4FCF8:
/* 80A4FCF8  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80A4FCFC  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80A4FD00  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A4FD04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4FD08  4C 40 13 82 */	cror 2, 0, 2
/* 80A4FD0C  40 82 00 34 */	bne lbl_80A4FD40
/* 80A4FD10  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4FD14  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A4FD18  38 00 00 0A */	li r0, 0xa
/* 80A4FD1C  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A4FD20  7F 63 DB 78 */	mr r3, r27
/* 80A4FD24  38 80 00 30 */	li r4, 0x30
/* 80A4FD28  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A4FD2C  38 A0 00 02 */	li r5, 2
/* 80A4FD30  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4FD34  4B FF 94 71 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4FD38  38 00 00 02 */	li r0, 2
/* 80A4FD3C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A4FD40:
/* 80A4FD40  A8 1B 05 EA */	lha r0, 0x5ea(r27)
/* 80A4FD44  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A4FD48  41 82 00 18 */	beq lbl_80A4FD60
/* 80A4FD4C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A4FD50  41 82 00 10 */	beq lbl_80A4FD60
/* 80A4FD54  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 80A4FD58  54 00 08 3C */	slwi r0, r0, 1
/* 80A4FD5C  B0 1B 06 08 */	sth r0, 0x608(r27)
lbl_80A4FD60:
/* 80A4FD60  7F 83 E3 78 */	mr r3, r28
/* 80A4FD64  39 61 00 80 */	addi r11, r1, 0x80
/* 80A4FD68  4B 91 24 B9 */	bl _restgpr_27
/* 80A4FD6C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A4FD70  7C 08 03 A6 */	mtlr r0
/* 80A4FD74  38 21 00 80 */	addi r1, r1, 0x80
/* 80A4FD78  4E 80 00 20 */	blr 
