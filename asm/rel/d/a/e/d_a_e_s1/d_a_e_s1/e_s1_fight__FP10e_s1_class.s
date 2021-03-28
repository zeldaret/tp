lbl_8077BFFC:
/* 8077BFFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8077C000  7C 08 02 A6 */	mflr r0
/* 8077C004  90 01 00 44 */	stw r0, 0x44(r1)
/* 8077C008  39 61 00 40 */	addi r11, r1, 0x40
/* 8077C00C  4B BE 61 D0 */	b _savegpr_29
/* 8077C010  7C 7E 1B 78 */	mr r30, r3
/* 8077C014  3C 80 80 78 */	lis r4, lit_3903@ha
/* 8077C018  3B E4 0D C4 */	addi r31, r4, lit_3903@l
/* 8077C01C  80 83 05 D4 */	lwz r4, 0x5d4(r3)
/* 8077C020  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8077C024  FC 00 00 1E */	fctiwz f0, f0
/* 8077C028  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8077C02C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8077C030  A8 03 06 98 */	lha r0, 0x698(r3)
/* 8077C034  2C 00 00 01 */	cmpwi r0, 1
/* 8077C038  41 82 00 60 */	beq lbl_8077C098
/* 8077C03C  40 80 00 10 */	bge lbl_8077C04C
/* 8077C040  2C 00 00 00 */	cmpwi r0, 0
/* 8077C044  40 80 00 14 */	bge lbl_8077C058
/* 8077C048  48 00 02 5C */	b lbl_8077C2A4
lbl_8077C04C:
/* 8077C04C  2C 00 00 03 */	cmpwi r0, 3
/* 8077C050  40 80 02 54 */	bge lbl_8077C2A4
/* 8077C054  48 00 01 04 */	b lbl_8077C158
lbl_8077C058:
/* 8077C058  38 80 00 1D */	li r4, 0x1d
/* 8077C05C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8077C060  38 A0 00 02 */	li r5, 2
/* 8077C064  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077C068  4B FF EB 91 */	bl anm_init__FP10e_s1_classifUcf
/* 8077C06C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8077C070  4B AE B8 E4 */	b cM_rndF__Ff
/* 8077C074  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8077C078  EC 00 08 2A */	fadds f0, f0, f1
/* 8077C07C  FC 00 00 1E */	fctiwz f0, f0
/* 8077C080  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8077C084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8077C088  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 8077C08C  38 00 00 01 */	li r0, 1
/* 8077C090  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077C094  48 00 02 10 */	b lbl_8077C2A4
lbl_8077C098:
/* 8077C098  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 8077C09C  2C 00 00 00 */	cmpwi r0, 0
/* 8077C0A0  40 82 02 04 */	bne lbl_8077C2A4
/* 8077C0A4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8077C0A8  4B AE B8 AC */	b cM_rndF__Ff
/* 8077C0AC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8077C0B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077C0B4  40 80 00 50 */	bge lbl_8077C104
/* 8077C0B8  7F C3 F3 78 */	mr r3, r30
/* 8077C0BC  38 80 00 05 */	li r4, 5
/* 8077C0C0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8077C0C4  38 A0 00 00 */	li r5, 0
/* 8077C0C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077C0CC  4B FF EB 2D */	bl anm_init__FP10e_s1_classifUcf
/* 8077C0D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070115@ha */
/* 8077C0D4  38 03 01 15 */	addi r0, r3, 0x0115 /* 0x00070115@l */
/* 8077C0D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8077C0DC  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077C0E0  38 81 00 18 */	addi r4, r1, 0x18
/* 8077C0E4  38 A0 FF FF */	li r5, -1
/* 8077C0E8  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077C0EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077C0F0  7D 89 03 A6 */	mtctr r12
/* 8077C0F4  4E 80 04 21 */	bctrl 
/* 8077C0F8  38 00 00 00 */	li r0, 0
/* 8077C0FC  98 1E 06 B8 */	stb r0, 0x6b8(r30)
/* 8077C100  48 00 00 4C */	b lbl_8077C14C
lbl_8077C104:
/* 8077C104  7F C3 F3 78 */	mr r3, r30
/* 8077C108  38 80 00 06 */	li r4, 6
/* 8077C10C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8077C110  38 A0 00 00 */	li r5, 0
/* 8077C114  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077C118  4B FF EA E1 */	bl anm_init__FP10e_s1_classifUcf
/* 8077C11C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070119@ha */
/* 8077C120  38 03 01 19 */	addi r0, r3, 0x0119 /* 0x00070119@l */
/* 8077C124  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077C128  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077C12C  38 81 00 14 */	addi r4, r1, 0x14
/* 8077C130  38 A0 FF FF */	li r5, -1
/* 8077C134  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077C138  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077C13C  7D 89 03 A6 */	mtctr r12
/* 8077C140  4E 80 04 21 */	bctrl 
/* 8077C144  38 00 00 01 */	li r0, 1
/* 8077C148  98 1E 06 B8 */	stb r0, 0x6b8(r30)
lbl_8077C14C:
/* 8077C14C  38 00 00 02 */	li r0, 2
/* 8077C150  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077C154  48 00 01 50 */	b lbl_8077C2A4
lbl_8077C158:
/* 8077C158  88 7E 06 B8 */	lbz r3, 0x6b8(r30)
/* 8077C15C  7C 60 07 75 */	extsb. r0, r3
/* 8077C160  40 82 00 88 */	bne lbl_8077C1E8
/* 8077C164  2C 1D 00 15 */	cmpwi r29, 0x15
/* 8077C168  41 80 00 80 */	blt lbl_8077C1E8
/* 8077C16C  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 8077C170  41 81 00 78 */	bgt lbl_8077C1E8
/* 8077C174  38 00 00 01 */	li r0, 1
/* 8077C178  98 1E 06 B9 */	stb r0, 0x6b9(r30)
/* 8077C17C  2C 1D 00 15 */	cmpwi r29, 0x15
/* 8077C180  40 82 00 30 */	bne lbl_8077C1B0
/* 8077C184  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007000D@ha */
/* 8077C188  38 03 00 0D */	addi r0, r3, 0x000D /* 0x0007000D@l */
/* 8077C18C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8077C190  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077C194  38 81 00 10 */	addi r4, r1, 0x10
/* 8077C198  38 A0 00 00 */	li r5, 0
/* 8077C19C  38 C0 FF FF */	li r6, -1
/* 8077C1A0  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077C1A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077C1A8  7D 89 03 A6 */	mtctr r12
/* 8077C1AC  4E 80 04 21 */	bctrl 
lbl_8077C1B0:
/* 8077C1B0  2C 1D 00 19 */	cmpwi r29, 0x19
/* 8077C1B4  40 82 00 8C */	bne lbl_8077C240
/* 8077C1B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FC@ha */
/* 8077C1BC  38 03 00 FC */	addi r0, r3, 0x00FC /* 0x000700FC@l */
/* 8077C1C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8077C1C4  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077C1C8  38 81 00 0C */	addi r4, r1, 0xc
/* 8077C1CC  38 A0 00 00 */	li r5, 0
/* 8077C1D0  38 C0 FF FF */	li r6, -1
/* 8077C1D4  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077C1D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077C1DC  7D 89 03 A6 */	mtctr r12
/* 8077C1E0  4E 80 04 21 */	bctrl 
/* 8077C1E4  48 00 00 5C */	b lbl_8077C240
lbl_8077C1E8:
/* 8077C1E8  7C 60 07 74 */	extsb r0, r3
/* 8077C1EC  2C 00 00 01 */	cmpwi r0, 1
/* 8077C1F0  40 82 00 50 */	bne lbl_8077C240
/* 8077C1F4  2C 1D 00 19 */	cmpwi r29, 0x19
/* 8077C1F8  41 80 00 48 */	blt lbl_8077C240
/* 8077C1FC  2C 1D 00 21 */	cmpwi r29, 0x21
/* 8077C200  41 81 00 40 */	bgt lbl_8077C240
/* 8077C204  38 00 00 01 */	li r0, 1
/* 8077C208  98 1E 06 B9 */	stb r0, 0x6b9(r30)
/* 8077C20C  2C 1D 00 19 */	cmpwi r29, 0x19
/* 8077C210  40 82 00 30 */	bne lbl_8077C240
/* 8077C214  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007000D@ha */
/* 8077C218  38 03 00 0D */	addi r0, r3, 0x000D /* 0x0007000D@l */
/* 8077C21C  90 01 00 08 */	stw r0, 8(r1)
/* 8077C220  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077C224  38 81 00 08 */	addi r4, r1, 8
/* 8077C228  38 A0 00 00 */	li r5, 0
/* 8077C22C  38 C0 FF FF */	li r6, -1
/* 8077C230  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077C234  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077C238  7D 89 03 A6 */	mtctr r12
/* 8077C23C  4E 80 04 21 */	bctrl 
lbl_8077C240:
/* 8077C240  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8077C244  38 80 00 01 */	li r4, 1
/* 8077C248  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077C24C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077C250  40 82 00 18 */	bne lbl_8077C268
/* 8077C254  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077C258  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077C25C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077C260  41 82 00 08 */	beq lbl_8077C268
/* 8077C264  38 80 00 00 */	li r4, 0
lbl_8077C268:
/* 8077C268  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077C26C  41 82 00 38 */	beq lbl_8077C2A4
/* 8077C270  7F C3 F3 78 */	mr r3, r30
/* 8077C274  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8077C278  3C 80 80 78 */	lis r4, l_HIO@ha
/* 8077C27C  38 84 13 8C */	addi r4, r4, l_HIO@l
/* 8077C280  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8077C284  EC 21 00 2A */	fadds f1, f1, f0
/* 8077C288  4B FF EC 75 */	bl pl_at_check__FP10e_s1_classf
/* 8077C28C  2C 03 00 00 */	cmpwi r3, 0
/* 8077C290  40 82 00 0C */	bne lbl_8077C29C
/* 8077C294  38 00 00 02 */	li r0, 2
/* 8077C298  B0 1E 06 96 */	sth r0, 0x696(r30)
lbl_8077C29C:
/* 8077C29C  38 00 00 00 */	li r0, 0
/* 8077C2A0  B0 1E 06 98 */	sth r0, 0x698(r30)
lbl_8077C2A4:
/* 8077C2A4  7F C3 F3 78 */	mr r3, r30
/* 8077C2A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8077C2AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8077C2B0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8077C2B4  4B 89 E4 5C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8077C2B8  7C 64 1B 78 */	mr r4, r3
/* 8077C2BC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8077C2C0  38 A0 00 04 */	li r5, 4
/* 8077C2C4  38 C0 08 00 */	li r6, 0x800
/* 8077C2C8  4B AF 43 40 */	b cLib_addCalcAngleS2__FPssss
/* 8077C2CC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8077C2D0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077C2D4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077C2D8  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 8077C2DC  4B AF 37 60 */	b cLib_addCalc2__FPffff
/* 8077C2E0  39 61 00 40 */	addi r11, r1, 0x40
/* 8077C2E4  4B BE 5F 44 */	b _restgpr_29
/* 8077C2E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8077C2EC  7C 08 03 A6 */	mtlr r0
/* 8077C2F0  38 21 00 40 */	addi r1, r1, 0x40
/* 8077C2F4  4E 80 00 20 */	blr 
