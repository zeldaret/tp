lbl_8079F210:
/* 8079F210  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8079F214  7C 08 02 A6 */	mflr r0
/* 8079F218  90 01 00 34 */	stw r0, 0x34(r1)
/* 8079F21C  39 61 00 30 */	addi r11, r1, 0x30
/* 8079F220  4B BC 2F BC */	b _savegpr_29
/* 8079F224  7C 7E 1B 78 */	mr r30, r3
/* 8079F228  3C 80 80 7A */	lis r4, lit_3903@ha
/* 8079F22C  3B E4 68 24 */	addi r31, r4, lit_3903@l
/* 8079F230  A8 03 06 80 */	lha r0, 0x680(r3)
/* 8079F234  2C 00 00 01 */	cmpwi r0, 1
/* 8079F238  41 82 00 90 */	beq lbl_8079F2C8
/* 8079F23C  40 80 00 10 */	bge lbl_8079F24C
/* 8079F240  2C 00 00 00 */	cmpwi r0, 0
/* 8079F244  40 80 00 14 */	bge lbl_8079F258
/* 8079F248  48 00 01 60 */	b lbl_8079F3A8
lbl_8079F24C:
/* 8079F24C  2C 00 00 03 */	cmpwi r0, 3
/* 8079F250  40 80 01 58 */	bge lbl_8079F3A8
/* 8079F254  48 00 01 10 */	b lbl_8079F364
lbl_8079F258:
/* 8079F258  38 00 00 01 */	li r0, 1
/* 8079F25C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079F260  38 80 00 22 */	li r4, 0x22
/* 8079F264  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8079F268  38 A0 00 02 */	li r5, 2
/* 8079F26C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079F270  4B FF EB DD */	bl anm_init__FP10e_st_classifUcf
/* 8079F274  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8079F278  4B AC 86 DC */	b cM_rndF__Ff
/* 8079F27C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8079F280  EC 00 08 2A */	fadds f0, f0, f1
/* 8079F284  FC 00 00 1E */	fctiwz f0, f0
/* 8079F288  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8079F28C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079F290  B0 1E 06 82 */	sth r0, 0x682(r30)
/* 8079F294  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8079F298  4B AC 86 BC */	b cM_rndF__Ff
/* 8079F29C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8079F2A0  EC 00 08 2A */	fadds f0, f0, f1
/* 8079F2A4  FC 00 00 1E */	fctiwz f0, f0
/* 8079F2A8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8079F2AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8079F2B0  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 8079F2B4  38 00 00 00 */	li r0, 0
/* 8079F2B8  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 8079F2BC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8079F2C0  D0 1E 06 B4 */	stfs f0, 0x6b4(r30)
/* 8079F2C4  48 00 00 E4 */	b lbl_8079F3A8
lbl_8079F2C8:
/* 8079F2C8  A8 1E 06 7C */	lha r0, 0x67c(r30)
/* 8079F2CC  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8079F2D0  40 82 00 40 */	bne lbl_8079F310
/* 8079F2D4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8079F2D8  4B AC 86 7C */	b cM_rndF__Ff
/* 8079F2DC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8079F2E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079F2E4  40 80 00 2C */	bge lbl_8079F310
/* 8079F2E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B8@ha */
/* 8079F2EC  38 03 00 B8 */	addi r0, r3, 0x00B8 /* 0x000700B8@l */
/* 8079F2F0  90 01 00 08 */	stw r0, 8(r1)
/* 8079F2F4  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8079F2F8  38 81 00 08 */	addi r4, r1, 8
/* 8079F2FC  38 A0 FF FF */	li r5, -1
/* 8079F300  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 8079F304  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8079F308  7D 89 03 A6 */	mtctr r12
/* 8079F30C  4E 80 04 21 */	bctrl 
lbl_8079F310:
/* 8079F310  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 8079F314  2C 00 00 00 */	cmpwi r0, 0
/* 8079F318  40 82 00 90 */	bne lbl_8079F3A8
/* 8079F31C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8079F320  4B AC 86 6C */	b cM_rndFX__Ff
/* 8079F324  FC 00 08 1E */	fctiwz f0, f1
/* 8079F328  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8079F32C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8079F330  7F C3 F3 78 */	mr r3, r30
/* 8079F334  4B FF FD 59 */	bl next_angle_get__FP10e_st_class
/* 8079F338  7C 03 EA 14 */	add r0, r3, r29
/* 8079F33C  B0 1E 05 C8 */	sth r0, 0x5c8(r30)
/* 8079F340  38 00 00 02 */	li r0, 2
/* 8079F344  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079F348  7F C3 F3 78 */	mr r3, r30
/* 8079F34C  38 80 00 21 */	li r4, 0x21
/* 8079F350  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8079F354  38 A0 00 02 */	li r5, 2
/* 8079F358  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079F35C  4B FF EA F1 */	bl anm_init__FP10e_st_classifUcf
/* 8079F360  48 00 00 48 */	b lbl_8079F3A8
lbl_8079F364:
/* 8079F364  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8079F368  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 8079F36C  38 A0 00 02 */	li r5, 2
/* 8079F370  38 C0 01 00 */	li r6, 0x100
/* 8079F374  4B AD 12 94 */	b cLib_addCalcAngleS2__FPssss
/* 8079F378  A8 7E 05 C8 */	lha r3, 0x5c8(r30)
/* 8079F37C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8079F380  7C 03 00 50 */	subf r0, r3, r0
/* 8079F384  7C 00 07 34 */	extsh r0, r0
/* 8079F388  2C 00 00 10 */	cmpwi r0, 0x10
/* 8079F38C  40 80 00 1C */	bge lbl_8079F3A8
/* 8079F390  2C 00 FF F0 */	cmpwi r0, -16
/* 8079F394  40 81 00 14 */	ble lbl_8079F3A8
/* 8079F398  38 00 00 01 */	li r0, 1
/* 8079F39C  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8079F3A0  38 00 00 00 */	li r0, 0
/* 8079F3A4  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_8079F3A8:
/* 8079F3A8  A8 1E 06 84 */	lha r0, 0x684(r30)
/* 8079F3AC  2C 00 00 00 */	cmpwi r0, 0
/* 8079F3B0  40 82 00 34 */	bne lbl_8079F3E4
/* 8079F3B4  7F C3 F3 78 */	mr r3, r30
/* 8079F3B8  3C 80 80 7A */	lis r4, l_HIO@ha
/* 8079F3BC  38 84 6D F4 */	addi r4, r4, l_HIO@l
/* 8079F3C0  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8079F3C4  4B FF F1 8D */	bl pl_check__FP10e_st_classf
/* 8079F3C8  2C 03 00 00 */	cmpwi r3, 0
/* 8079F3CC  41 82 00 18 */	beq lbl_8079F3E4
/* 8079F3D0  38 00 00 02 */	li r0, 2
/* 8079F3D4  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8079F3D8  38 00 00 00 */	li r0, 0
/* 8079F3DC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079F3E0  B0 1E 06 82 */	sth r0, 0x682(r30)
lbl_8079F3E4:
/* 8079F3E4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8079F3E8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8079F3EC  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 8079F3F0  4B AD 06 90 */	b cLib_addCalc0__FPfff
/* 8079F3F4  7F C3 F3 78 */	mr r3, r30
/* 8079F3F8  4B FF F6 B1 */	bl move_bg_check__FP10e_st_class
/* 8079F3FC  2C 03 00 00 */	cmpwi r3, 0
/* 8079F400  41 82 00 0C */	beq lbl_8079F40C
/* 8079F404  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8079F408  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8079F40C:
/* 8079F40C  7F C3 F3 78 */	mr r3, r30
/* 8079F410  4B FF FD 1D */	bl move_calc__FP10e_st_class
/* 8079F414  39 61 00 30 */	addi r11, r1, 0x30
/* 8079F418  4B BC 2E 10 */	b _restgpr_29
/* 8079F41C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8079F420  7C 08 03 A6 */	mtlr r0
/* 8079F424  38 21 00 30 */	addi r1, r1, 0x30
/* 8079F428  4E 80 00 20 */	blr 
