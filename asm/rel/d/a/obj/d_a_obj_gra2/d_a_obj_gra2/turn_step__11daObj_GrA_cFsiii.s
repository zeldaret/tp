lbl_80C0F17C:
/* 80C0F17C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C0F180  7C 08 02 A6 */	mflr r0
/* 80C0F184  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C0F188  39 61 00 30 */	addi r11, r1, 0x30
/* 80C0F18C  4B 75 30 50 */	b _savegpr_29
/* 80C0F190  7C 7D 1B 78 */	mr r29, r3
/* 80C0F194  7C 9E 23 78 */	mr r30, r4
/* 80C0F198  7C DF 33 78 */	mr r31, r6
/* 80C0F19C  80 03 1F CC */	lwz r0, 0x1fcc(r3)
/* 80C0F1A0  2C 00 00 00 */	cmpwi r0, 0
/* 80C0F1A4  40 82 00 EC */	bne lbl_80C0F290
/* 80C0F1A8  3C 80 80 C1 */	lis r4, lit_10292@ha
/* 80C0F1AC  C0 44 FD E0 */	lfs f2, lit_10292@l(r4)
/* 80C0F1B0  A8 1D 09 1C */	lha r0, 0x91c(r29)
/* 80C0F1B4  7C 00 F0 50 */	subf r0, r0, r30
/* 80C0F1B8  7C 00 07 34 */	extsh r0, r0
/* 80C0F1BC  3C 80 80 C1 */	lis r4, lit_4501@ha
/* 80C0F1C0  C8 24 FB AC */	lfd f1, lit_4501@l(r4)
/* 80C0F1C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C0F1C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C0F1CC  3C 00 43 30 */	lis r0, 0x4330
/* 80C0F1D0  90 01 00 08 */	stw r0, 8(r1)
/* 80C0F1D4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C0F1D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C0F1DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C0F1E0  FC 00 02 10 */	fabs f0, f0
/* 80C0F1E4  FC 00 00 18 */	frsp f0, f0
/* 80C0F1E8  FC 00 00 1E */	fctiwz f0, f0
/* 80C0F1EC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C0F1F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C0F1F4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80C0F1F8  40 81 00 50 */	ble lbl_80C0F248
/* 80C0F1FC  2C 05 00 00 */	cmpwi r5, 0
/* 80C0F200  41 80 00 20 */	blt lbl_80C0F220
/* 80C0F204  A0 1D 0A 92 */	lhz r0, 0xa92(r29)
/* 80C0F208  7C 00 28 00 */	cmpw r0, r5
/* 80C0F20C  41 82 00 14 */	beq lbl_80C0F220
/* 80C0F210  7C A4 2B 78 */	mr r4, r5
/* 80C0F214  3C A0 80 C1 */	lis r5, lit_7003@ha
/* 80C0F218  C0 25 FD 10 */	lfs f1, lit_7003@l(r5)
/* 80C0F21C  4B FF 25 91 */	bl setFaceMotion__11daObj_GrA_cFif
lbl_80C0F220:
/* 80C0F220  2C 1F 00 00 */	cmpwi r31, 0
/* 80C0F224  41 80 00 24 */	blt lbl_80C0F248
/* 80C0F228  A0 1D 0A 90 */	lhz r0, 0xa90(r29)
/* 80C0F22C  7C 00 F8 00 */	cmpw r0, r31
/* 80C0F230  41 82 00 18 */	beq lbl_80C0F248
/* 80C0F234  7F A3 EB 78 */	mr r3, r29
/* 80C0F238  7F E4 FB 78 */	mr r4, r31
/* 80C0F23C  3C A0 80 C1 */	lis r5, lit_7003@ha
/* 80C0F240  C0 25 FD 10 */	lfs f1, lit_7003@l(r5)
/* 80C0F244  4B FF 25 49 */	bl setBaseMotion__11daObj_GrA_cFif
lbl_80C0F248:
/* 80C0F248  B3 DD 1F D6 */	sth r30, 0x1fd6(r29)
/* 80C0F24C  38 00 00 00 */	li r0, 0
/* 80C0F250  90 1D 1F C8 */	stw r0, 0x1fc8(r29)
/* 80C0F254  A8 7D 09 1C */	lha r3, 0x91c(r29)
/* 80C0F258  A8 1D 1F D6 */	lha r0, 0x1fd6(r29)
/* 80C0F25C  7C 03 00 00 */	cmpw r3, r0
/* 80C0F260  40 82 00 10 */	bne lbl_80C0F270
/* 80C0F264  80 7D 1F CC */	lwz r3, 0x1fcc(r29)
/* 80C0F268  38 03 00 01 */	addi r0, r3, 1
/* 80C0F26C  90 1D 1F CC */	stw r0, 0x1fcc(r29)
lbl_80C0F270:
/* 80C0F270  A8 1D 09 1C */	lha r0, 0x91c(r29)
/* 80C0F274  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80C0F278  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C0F27C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C0F280  80 7D 1F CC */	lwz r3, 0x1fcc(r29)
/* 80C0F284  38 03 00 01 */	addi r0, r3, 1
/* 80C0F288  90 1D 1F CC */	stw r0, 0x1fcc(r29)
/* 80C0F28C  48 00 00 70 */	b lbl_80C0F2FC
lbl_80C0F290:
/* 80C0F290  2C 00 00 01 */	cmpwi r0, 1
/* 80C0F294  40 82 00 68 */	bne lbl_80C0F2FC
/* 80C0F298  A8 9D 1F D6 */	lha r4, 0x1fd6(r29)
/* 80C0F29C  3C A0 80 C1 */	lis r5, lit_4501@ha
/* 80C0F2A0  C8 25 FB AC */	lfd f1, lit_4501@l(r5)
/* 80C0F2A4  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80C0F2A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0F2AC  3C 00 43 30 */	lis r0, 0x4330
/* 80C0F2B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C0F2B4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C0F2B8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C0F2BC  38 A0 00 00 */	li r5, 0
/* 80C0F2C0  4B FF FD 05 */	bl turn__11daObj_GrA_cFsfi
/* 80C0F2C4  2C 03 00 00 */	cmpwi r3, 0
/* 80C0F2C8  41 82 00 24 */	beq lbl_80C0F2EC
/* 80C0F2CC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C0F2D0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C0F2D4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C0F2D8  B0 1D 09 1C */	sth r0, 0x91c(r29)
/* 80C0F2DC  80 7D 1F CC */	lwz r3, 0x1fcc(r29)
/* 80C0F2E0  38 03 00 01 */	addi r0, r3, 1
/* 80C0F2E4  90 1D 1F CC */	stw r0, 0x1fcc(r29)
/* 80C0F2E8  48 00 00 14 */	b lbl_80C0F2FC
lbl_80C0F2EC:
/* 80C0F2EC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C0F2F0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C0F2F4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C0F2F8  B0 1D 09 1C */	sth r0, 0x91c(r29)
lbl_80C0F2FC:
/* 80C0F2FC  80 9D 1F CC */	lwz r4, 0x1fcc(r29)
/* 80C0F300  38 00 00 01 */	li r0, 1
/* 80C0F304  7C 80 02 78 */	xor r0, r4, r0
/* 80C0F308  7C 03 0E 70 */	srawi r3, r0, 1
/* 80C0F30C  7C 00 20 38 */	and r0, r0, r4
/* 80C0F310  7C 00 18 50 */	subf r0, r0, r3
/* 80C0F314  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80C0F318  39 61 00 30 */	addi r11, r1, 0x30
/* 80C0F31C  4B 75 2F 0C */	b _restgpr_29
/* 80C0F320  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C0F324  7C 08 03 A6 */	mtlr r0
/* 80C0F328  38 21 00 30 */	addi r1, r1, 0x30
/* 80C0F32C  4E 80 00 20 */	blr 
