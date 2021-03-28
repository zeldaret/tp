lbl_8061C2C4:
/* 8061C2C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8061C2C8  7C 08 02 A6 */	mflr r0
/* 8061C2CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8061C2D0  39 61 00 60 */	addi r11, r1, 0x60
/* 8061C2D4  4B D4 5E F4 */	b _savegpr_24
/* 8061C2D8  7C 7D 1B 78 */	mr r29, r3
/* 8061C2DC  3C 80 80 62 */	lis r4, lit_1109@ha
/* 8061C2E0  3B C4 DB 78 */	addi r30, r4, lit_1109@l
/* 8061C2E4  3C 80 80 62 */	lis r4, lit_3650@ha
/* 8061C2E8  3B E4 D9 D4 */	addi r31, r4, lit_3650@l
/* 8061C2EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8061C2F0  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l
/* 8061C2F4  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 8061C2F8  4B 9F E4 18 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8061C2FC  B0 7D 05 E2 */	sth r3, 0x5e2(r29)
/* 8061C300  7F A3 EB 78 */	mr r3, r29
/* 8061C304  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 8061C308  4B 9F E4 D8 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8061C30C  D0 3D 05 E4 */	stfs f1, 0x5e4(r29)
/* 8061C310  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8061C314  54 00 00 3E */	slwi r0, r0, 0
/* 8061C318  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8061C31C  38 00 00 00 */	li r0, 0
/* 8061C320  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8061C324  3B 80 00 00 */	li r28, 0
/* 8061C328  3B 60 00 01 */	li r27, 1
/* 8061C32C  38 7D 0C 98 */	addi r3, r29, 0xc98
/* 8061C330  38 80 08 00 */	li r4, 0x800
/* 8061C334  38 A0 00 01 */	li r5, 1
/* 8061C338  38 C0 00 10 */	li r6, 0x10
/* 8061C33C  4B C5 42 CC */	b cLib_addCalcAngleS2__FPssss
/* 8061C340  A8 1D 05 CE */	lha r0, 0x5ce(r29)
/* 8061C344  28 00 00 0B */	cmplwi r0, 0xb
/* 8061C348  41 81 00 94 */	bgt lbl_8061C3DC
/* 8061C34C  3C 60 80 62 */	lis r3, lit_4166@ha
/* 8061C350  38 63 DA 7C */	addi r3, r3, lit_4166@l
/* 8061C354  54 00 10 3A */	slwi r0, r0, 2
/* 8061C358  7C 03 00 2E */	lwzx r0, r3, r0
/* 8061C35C  7C 09 03 A6 */	mtctr r0
/* 8061C360  4E 80 04 20 */	bctr 
lbl_8061C364:
/* 8061C364  7F A3 EB 78 */	mr r3, r29
/* 8061C368  4B FF F5 F9 */	bl start__FP10b_oh_class
/* 8061C36C  3B 80 00 01 */	li r28, 1
/* 8061C370  48 00 00 6C */	b lbl_8061C3DC
lbl_8061C374:
/* 8061C374  7F A3 EB 78 */	mr r3, r29
/* 8061C378  4B FF F7 DD */	bl wait__FP10b_oh_class
/* 8061C37C  3B 80 00 01 */	li r28, 1
/* 8061C380  48 00 00 5C */	b lbl_8061C3DC
lbl_8061C384:
/* 8061C384  7F A3 EB 78 */	mr r3, r29
/* 8061C388  4B FF F8 E5 */	bl attack__FP10b_oh_class
/* 8061C38C  3B 80 00 02 */	li r28, 2
/* 8061C390  38 00 00 B4 */	li r0, 0xb4
/* 8061C394  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 8061C398  B0 03 47 94 */	sth r0, 0x4794(r3)
/* 8061C39C  48 00 00 40 */	b lbl_8061C3DC
lbl_8061C3A0:
/* 8061C3A0  7F A3 EB 78 */	mr r3, r29
/* 8061C3A4  4B FF FC CD */	bl caught__FP10b_oh_class
/* 8061C3A8  3B 60 00 00 */	li r27, 0
/* 8061C3AC  3B 80 00 03 */	li r28, 3
/* 8061C3B0  38 00 00 B4 */	li r0, 0xb4
/* 8061C3B4  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 8061C3B8  B0 03 47 94 */	sth r0, 0x4794(r3)
/* 8061C3BC  48 00 00 20 */	b lbl_8061C3DC
lbl_8061C3C0:
/* 8061C3C0  7F A3 EB 78 */	mr r3, r29
/* 8061C3C4  4B FF FE 35 */	bl end__FP10b_oh_class
/* 8061C3C8  3B 80 00 01 */	li r28, 1
/* 8061C3CC  48 00 00 10 */	b lbl_8061C3DC
lbl_8061C3D0:
/* 8061C3D0  7F A3 EB 78 */	mr r3, r29
/* 8061C3D4  4B FF FE C5 */	bl non__FP10b_oh_class
/* 8061C3D8  48 00 07 5C */	b lbl_8061CB34
lbl_8061C3DC:
/* 8061C3DC  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 8061C3E0  A8 03 47 52 */	lha r0, 0x4752(r3)
/* 8061C3E4  2C 00 00 02 */	cmpwi r0, 2
/* 8061C3E8  40 82 00 18 */	bne lbl_8061C400
/* 8061C3EC  38 7D 06 0C */	addi r3, r29, 0x60c
/* 8061C3F0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8061C3F4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8061C3F8  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 8061C3FC  4B C5 36 40 */	b cLib_addCalc2__FPffff
lbl_8061C400:
/* 8061C400  2C 1C 00 01 */	cmpwi r28, 1
/* 8061C404  40 82 02 14 */	bne lbl_8061C618
/* 8061C408  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8061C40C  C0 5D 06 08 */	lfs f2, 0x608(r29)
/* 8061C410  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8061C414  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8061C418  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8061C41C  38 A0 07 D0 */	li r5, 0x7d0
/* 8061C420  80 DD 0C A8 */	lwz r6, 0xca8(r29)
/* 8061C424  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8061C428  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8061C42C  C8 DF 00 88 */	lfd f6, 0x88(r31)
/* 8061C430  3C 00 43 30 */	lis r0, 0x4330
/* 8061C434  C0 BF 00 44 */	lfs f5, 0x44(r31)
/* 8061C438  C0 9F 00 00 */	lfs f4, 0(r31)
/* 8061C43C  1D 66 07 08 */	mulli r11, r6, 0x708
/* 8061C440  1D 46 00 06 */	mulli r10, r6, 6
/* 8061C444  1D 26 1B 58 */	mulli r9, r6, 0x1b58
/* 8061C448  1D 06 D8 F0 */	mulli r8, r6, -10000
/* 8061C44C  54 C7 10 3A */	slwi r7, r6, 2
/* 8061C450  20 86 00 1E */	subfic r4, r6, 0x1e
/* 8061C454  7C 89 03 A6 */	mtctr r4
/* 8061C458  2C 06 00 1E */	cmpwi r6, 0x1e
/* 8061C45C  40 80 01 90 */	bge lbl_8061C5EC
lbl_8061C460:
/* 8061C460  C1 1F 00 00 */	lfs f8, 0(r31)
/* 8061C464  2C 06 00 05 */	cmpwi r6, 5
/* 8061C468  40 80 00 2C */	bge lbl_8061C494
/* 8061C46C  C0 FF 00 78 */	lfs f7, 0x78(r31)
/* 8061C470  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 8061C474  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 8061C478  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8061C47C  3C 80 43 30 */	lis r4, 0x4330
/* 8061C480  90 81 00 18 */	stw r4, 0x18(r1)
/* 8061C484  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8061C488  EC 42 18 28 */	fsubs f2, f2, f3
/* 8061C48C  ED 07 00 B2 */	fmuls f8, f7, f2
/* 8061C490  48 00 00 38 */	b lbl_8061C4C8
lbl_8061C494:
/* 8061C494  2C 06 00 14 */	cmpwi r6, 0x14
/* 8061C498  41 80 00 30 */	blt lbl_8061C4C8
/* 8061C49C  C0 FF 00 10 */	lfs f7, 0x10(r31)
/* 8061C4A0  38 86 FF EC */	addi r4, r6, -20
/* 8061C4A4  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 8061C4A8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8061C4AC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8061C4B0  3C 80 43 30 */	lis r4, 0x4330
/* 8061C4B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8061C4B8  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8061C4BC  EC 42 18 28 */	fsubs f2, f2, f3
/* 8061C4C0  EC 47 00 B2 */	fmuls f2, f7, f2
/* 8061C4C4  ED 08 10 2A */	fadds f8, f8, f2
lbl_8061C4C8:
/* 8061C4C8  A8 9D 05 F8 */	lha r4, 0x5f8(r29)
/* 8061C4CC  7C 84 5A 14 */	add r4, r4, r11
/* 8061C4D0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8061C4D4  7C 84 1E 70 */	srawi r4, r4, 3
/* 8061C4D8  54 84 18 38 */	slwi r4, r4, 3
/* 8061C4DC  7C 43 24 2E */	lfsx f2, r3, r4
/* 8061C4E0  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8061C4E4  EC 48 00 B2 */	fmuls f2, f8, f2
/* 8061C4E8  FC 40 10 1E */	fctiwz f2, f2
/* 8061C4EC  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 8061C4F0  81 81 00 1C */	lwz r12, 0x1c(r1)
/* 8061C4F4  7C 9D 52 14 */	add r4, r29, r10
/* 8061C4F8  B1 84 06 D0 */	sth r12, 0x6d0(r4)
/* 8061C4FC  A9 9D 05 FA */	lha r12, 0x5fa(r29)
/* 8061C500  7D 8C 5A 14 */	add r12, r12, r11
/* 8061C504  55 8C 04 38 */	rlwinm r12, r12, 0, 0x10, 0x1c
/* 8061C508  7C 43 64 2E */	lfsx f2, r3, r12
/* 8061C50C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8061C510  EC 48 00 B2 */	fmuls f2, f8, f2
/* 8061C514  FC 40 10 1E */	fctiwz f2, f2
/* 8061C518  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 8061C51C  81 81 00 24 */	lwz r12, 0x24(r1)
/* 8061C520  B1 84 06 D2 */	sth r12, 0x6d2(r4)
/* 8061C524  A9 9D 05 FA */	lha r12, 0x5fa(r29)
/* 8061C528  7D 8C 4A 14 */	add r12, r12, r9
/* 8061C52C  55 8C 04 38 */	rlwinm r12, r12, 0, 0x10, 0x1c
/* 8061C530  7C E3 64 2E */	lfsx f7, r3, r12
/* 8061C534  7C AC 07 34 */	extsh r12, r5
/* 8061C538  6D 8C 80 00 */	xoris r12, r12, 0x8000
/* 8061C53C  91 81 00 2C */	stw r12, 0x2c(r1)
/* 8061C540  90 01 00 28 */	stw r0, 0x28(r1)
/* 8061C544  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 8061C548  EC 62 30 28 */	fsubs f3, f2, f6
/* 8061C54C  EC 40 01 F2 */	fmuls f2, f0, f7
/* 8061C550  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8061C554  EC 48 00 B2 */	fmuls f2, f8, f2
/* 8061C558  EC 43 10 2A */	fadds f2, f3, f2
/* 8061C55C  FC 40 10 1E */	fctiwz f2, f2
/* 8061C560  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8061C564  81 81 00 34 */	lwz r12, 0x34(r1)
/* 8061C568  B1 84 08 38 */	sth r12, 0x838(r4)
/* 8061C56C  A9 9D 05 F8 */	lha r12, 0x5f8(r29)
/* 8061C570  7D 8C 4A 14 */	add r12, r12, r9
/* 8061C574  55 8C 04 38 */	rlwinm r12, r12, 0, 0x10, 0x1c
/* 8061C578  7C 43 64 2E */	lfsx f2, r3, r12
/* 8061C57C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8061C580  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8061C584  EC 48 00 B2 */	fmuls f2, f8, f2
/* 8061C588  FC 40 10 1E */	fctiwz f2, f2
/* 8061C58C  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 8061C590  81 81 00 3C */	lwz r12, 0x3c(r1)
/* 8061C594  B1 84 08 3A */	sth r12, 0x83a(r4)
/* 8061C598  38 A5 FF 38 */	addi r5, r5, -200
/* 8061C59C  7C A4 07 35 */	extsh. r4, r5
/* 8061C5A0  40 80 00 08 */	bge lbl_8061C5A8
/* 8061C5A4  38 A0 00 00 */	li r5, 0
lbl_8061C5A8:
/* 8061C5A8  A8 9D 05 F6 */	lha r4, 0x5f6(r29)
/* 8061C5AC  7C 84 42 14 */	add r4, r4, r8
/* 8061C5B0  54 84 04 38 */	rlwinm r4, r4, 0, 0x10, 0x1c
/* 8061C5B4  7C 43 24 2E */	lfsx f2, r3, r4
/* 8061C5B8  C0 FD 06 10 */	lfs f7, 0x610(r29)
/* 8061C5BC  EC 64 38 2A */	fadds f3, f4, f7
/* 8061C5C0  EC 47 00 B2 */	fmuls f2, f7, f2
/* 8061C5C4  EC 43 10 2A */	fadds f2, f3, f2
/* 8061C5C8  38 87 09 64 */	addi r4, r7, 0x964
/* 8061C5CC  7C 5D 25 2E */	stfsx f2, r29, r4
/* 8061C5D0  38 C6 00 01 */	addi r6, r6, 1
/* 8061C5D4  38 E7 00 04 */	addi r7, r7, 4
/* 8061C5D8  39 08 D8 F0 */	addi r8, r8, -10000
/* 8061C5DC  39 29 1B 58 */	addi r9, r9, 0x1b58
/* 8061C5E0  39 4A 00 06 */	addi r10, r10, 6
/* 8061C5E4  39 6B 07 08 */	addi r11, r11, 0x708
/* 8061C5E8  42 00 FE 78 */	bdnz lbl_8061C460
lbl_8061C5EC:
/* 8061C5EC  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8061C5F0  38 80 F0 D4 */	li r4, -3884
/* 8061C5F4  38 A0 00 04 */	li r5, 4
/* 8061C5F8  38 C0 00 64 */	li r6, 0x64
/* 8061C5FC  4B C5 40 0C */	b cLib_addCalcAngleS2__FPssss
/* 8061C600  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8061C604  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 8061C608  38 A0 00 04 */	li r5, 4
/* 8061C60C  38 C0 01 00 */	li r6, 0x100
/* 8061C610  4B C5 3F F8 */	b cLib_addCalcAngleS2__FPssss
/* 8061C614  48 00 02 28 */	b lbl_8061C83C
lbl_8061C618:
/* 8061C618  2C 1C 00 02 */	cmpwi r28, 2
/* 8061C61C  40 82 01 40 */	bne lbl_8061C75C
/* 8061C620  C0 9D 0C 8C */	lfs f4, 0xc8c(r29)
/* 8061C624  80 9D 0C A8 */	lwz r4, 0xca8(r29)
/* 8061C628  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8061C62C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8061C630  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8061C634  1D 04 00 06 */	mulli r8, r4, 6
/* 8061C638  1C E4 F0 60 */	mulli r7, r4, -4000
/* 8061C63C  1C C4 D8 F0 */	mulli r6, r4, -10000
/* 8061C640  54 85 10 3A */	slwi r5, r4, 2
/* 8061C644  20 04 00 1E */	subfic r0, r4, 0x1e
/* 8061C648  7C 09 03 A6 */	mtctr r0
/* 8061C64C  2C 04 00 1E */	cmpwi r4, 0x1e
/* 8061C650  40 80 01 EC */	bge lbl_8061C83C
lbl_8061C654:
/* 8061C654  A8 1D 0C A2 */	lha r0, 0xca2(r29)
/* 8061C658  20 00 00 1E */	subfic r0, r0, 0x1e
/* 8061C65C  7C 04 00 00 */	cmpw r4, r0
/* 8061C660  41 80 00 14 */	blt lbl_8061C674
/* 8061C664  A9 3D 0C A4 */	lha r9, 0xca4(r29)
/* 8061C668  38 08 06 D2 */	addi r0, r8, 0x6d2
/* 8061C66C  7D 3D 03 2E */	sthx r9, r29, r0
/* 8061C670  48 00 00 10 */	b lbl_8061C680
lbl_8061C674:
/* 8061C674  39 20 00 00 */	li r9, 0
/* 8061C678  38 08 06 D2 */	addi r0, r8, 0x6d2
/* 8061C67C  7D 3D 03 2E */	sthx r9, r29, r0
lbl_8061C680:
/* 8061C680  2C 04 00 0D */	cmpwi r4, 0xd
/* 8061C684  41 80 00 14 */	blt lbl_8061C698
/* 8061C688  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8061C68C  C0 1D 0C 90 */	lfs f0, 0xc90(r29)
/* 8061C690  EC 01 00 2A */	fadds f0, f1, f0
/* 8061C694  EC 84 00 32 */	fmuls f4, f4, f0
lbl_8061C698:
/* 8061C698  A9 3D 0C 94 */	lha r9, 0xc94(r29)
/* 8061C69C  A8 1D 0C 96 */	lha r0, 0xc96(r29)
/* 8061C6A0  7C 04 01 D6 */	mullw r0, r4, r0
/* 8061C6A4  7C 09 02 14 */	add r0, r9, r0
/* 8061C6A8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8061C6AC  7C 03 04 2E */	lfsx f0, r3, r0
/* 8061C6B0  EC 04 00 32 */	fmuls f0, f4, f0
/* 8061C6B4  FC 00 00 1E */	fctiwz f0, f0
/* 8061C6B8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8061C6BC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8061C6C0  7D 5D 42 14 */	add r10, r29, r8
/* 8061C6C4  B0 0A 06 D0 */	sth r0, 0x6d0(r10)
/* 8061C6C8  2C 04 00 12 */	cmpwi r4, 0x12
/* 8061C6CC  41 80 00 3C */	blt lbl_8061C708
/* 8061C6D0  A8 1D 05 CC */	lha r0, 0x5cc(r29)
/* 8061C6D4  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 8061C6D8  7C 00 3A 14 */	add r0, r0, r7
/* 8061C6DC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8061C6E0  3D 20 80 44 */	lis r9, sincosTable___5JMath@ha
/* 8061C6E4  39 29 9A 20 */	addi r9, r9, sincosTable___5JMath@l
/* 8061C6E8  7C 29 04 2E */	lfsx f1, r9, r0
/* 8061C6EC  C0 1D 0C 9C */	lfs f0, 0xc9c(r29)
/* 8061C6F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061C6F4  FC 00 00 1E */	fctiwz f0, f0
/* 8061C6F8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8061C6FC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8061C700  B0 0A 08 38 */	sth r0, 0x838(r10)
/* 8061C704  48 00 00 0C */	b lbl_8061C710
lbl_8061C708:
/* 8061C708  38 00 00 00 */	li r0, 0
/* 8061C70C  B0 0A 08 38 */	sth r0, 0x838(r10)
lbl_8061C710:
/* 8061C710  38 00 00 00 */	li r0, 0
/* 8061C714  B0 0A 08 3A */	sth r0, 0x83a(r10)
/* 8061C718  A8 1D 05 F6 */	lha r0, 0x5f6(r29)
/* 8061C71C  7C 00 32 14 */	add r0, r0, r6
/* 8061C720  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8061C724  7C 03 04 2E */	lfsx f0, r3, r0
/* 8061C728  C0 7D 06 10 */	lfs f3, 0x610(r29)
/* 8061C72C  EC 22 18 2A */	fadds f1, f2, f3
/* 8061C730  EC 03 00 32 */	fmuls f0, f3, f0
/* 8061C734  EC 01 00 2A */	fadds f0, f1, f0
/* 8061C738  38 05 09 64 */	addi r0, r5, 0x964
/* 8061C73C  7C 1D 05 2E */	stfsx f0, r29, r0
/* 8061C740  38 84 00 01 */	addi r4, r4, 1
/* 8061C744  38 A5 00 04 */	addi r5, r5, 4
/* 8061C748  38 C6 D8 F0 */	addi r6, r6, -10000
/* 8061C74C  38 E7 F0 60 */	addi r7, r7, -4000
/* 8061C750  39 08 00 06 */	addi r8, r8, 6
/* 8061C754  42 00 FF 00 */	bdnz lbl_8061C654
/* 8061C758  48 00 00 E4 */	b lbl_8061C83C
lbl_8061C75C:
/* 8061C75C  2C 1C 00 03 */	cmpwi r28, 3
/* 8061C760  40 82 00 DC */	bne lbl_8061C83C
/* 8061C764  81 1D 0C A8 */	lwz r8, 0xca8(r29)
/* 8061C768  1C A8 00 06 */	mulli r5, r8, 6
/* 8061C76C  55 04 10 3A */	slwi r4, r8, 2
/* 8061C770  1C 68 D8 F0 */	mulli r3, r8, -10000
/* 8061C774  20 08 00 1E */	subfic r0, r8, 0x1e
/* 8061C778  7C 09 03 A6 */	mtctr r0
/* 8061C77C  2C 08 00 1E */	cmpwi r8, 0x1e
/* 8061C780  40 80 00 94 */	bge lbl_8061C814
lbl_8061C784:
/* 8061C784  38 C0 00 00 */	li r6, 0
/* 8061C788  7C FD 2A 14 */	add r7, r29, r5
/* 8061C78C  B0 C7 08 3A */	sth r6, 0x83a(r7)
/* 8061C790  B0 C7 08 38 */	sth r6, 0x838(r7)
/* 8061C794  A8 1D 0C A2 */	lha r0, 0xca2(r29)
/* 8061C798  20 00 00 1E */	subfic r0, r0, 0x1e
/* 8061C79C  7C 08 00 00 */	cmpw r8, r0
/* 8061C7A0  41 80 00 20 */	blt lbl_8061C7C0
/* 8061C7A4  A8 1D 0C A4 */	lha r0, 0xca4(r29)
/* 8061C7A8  B0 07 06 D2 */	sth r0, 0x6d2(r7)
/* 8061C7AC  B0 C7 06 D0 */	sth r6, 0x6d0(r7)
/* 8061C7B0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8061C7B4  38 04 09 64 */	addi r0, r4, 0x964
/* 8061C7B8  7C 1D 05 2E */	stfsx f0, r29, r0
/* 8061C7BC  48 00 00 44 */	b lbl_8061C800
lbl_8061C7C0:
/* 8061C7C0  B0 C7 06 D2 */	sth r6, 0x6d2(r7)
/* 8061C7C4  38 00 08 CA */	li r0, 0x8ca
/* 8061C7C8  B0 07 06 D0 */	sth r0, 0x6d0(r7)
/* 8061C7CC  A8 1D 05 F6 */	lha r0, 0x5f6(r29)
/* 8061C7D0  7C 00 1A 14 */	add r0, r0, r3
/* 8061C7D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8061C7D8  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha
/* 8061C7DC  38 C6 9A 20 */	addi r6, r6, sincosTable___5JMath@l
/* 8061C7E0  7C 46 04 2E */	lfsx f2, r6, r0
/* 8061C7E4  C0 7D 06 10 */	lfs f3, 0x610(r29)
/* 8061C7E8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8061C7EC  EC 20 18 2A */	fadds f1, f0, f3
/* 8061C7F0  EC 03 00 B2 */	fmuls f0, f3, f2
/* 8061C7F4  EC 01 00 2A */	fadds f0, f1, f0
/* 8061C7F8  38 04 09 64 */	addi r0, r4, 0x964
/* 8061C7FC  7C 1D 05 2E */	stfsx f0, r29, r0
lbl_8061C800:
/* 8061C800  39 08 00 01 */	addi r8, r8, 1
/* 8061C804  38 63 D8 F0 */	addi r3, r3, -10000
/* 8061C808  38 84 00 04 */	addi r4, r4, 4
/* 8061C80C  38 A5 00 06 */	addi r5, r5, 6
/* 8061C810  42 00 FF 74 */	bdnz lbl_8061C784
lbl_8061C814:
/* 8061C814  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8061C818  38 80 0A 92 */	li r4, 0xa92
/* 8061C81C  38 A0 00 04 */	li r5, 4
/* 8061C820  38 C0 02 00 */	li r6, 0x200
/* 8061C824  4B C5 3D E4 */	b cLib_addCalcAngleS2__FPssss
/* 8061C828  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8061C82C  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 8061C830  38 A0 00 04 */	li r5, 4
/* 8061C834  38 C0 08 00 */	li r6, 0x800
/* 8061C838  4B C5 3D D0 */	b cLib_addCalcAngleS2__FPssss
lbl_8061C83C:
/* 8061C83C  A8 1D 05 CC */	lha r0, 0x5cc(r29)
/* 8061C840  1C 00 00 C8 */	mulli r0, r0, 0xc8
/* 8061C844  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8061C848  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8061C84C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8061C850  7C 63 04 2E */	lfsx f3, r3, r0
/* 8061C854  C0 1D 06 14 */	lfs f0, 0x614(r29)
/* 8061C858  FC 20 00 50 */	fneg f1, f0
/* 8061C85C  C0 1D 06 0C */	lfs f0, 0x60c(r29)
/* 8061C860  EC 21 00 28 */	fsubs f1, f1, f0
/* 8061C864  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 8061C868  EC 02 00 F2 */	fmuls f0, f2, f3
/* 8061C86C  EC 01 00 2A */	fadds f0, f1, f0
/* 8061C870  D0 1D 06 00 */	stfs f0, 0x600(r29)
/* 8061C874  A8 1D 05 CC */	lha r0, 0x5cc(r29)
/* 8061C878  1C 00 00 C8 */	mulli r0, r0, 0xc8
/* 8061C87C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8061C880  7C 63 04 2E */	lfsx f3, r3, r0
/* 8061C884  C0 1D 06 14 */	lfs f0, 0x614(r29)
/* 8061C888  EC 22 00 28 */	fsubs f1, f2, f0
/* 8061C88C  C0 1D 06 0C */	lfs f0, 0x60c(r29)
/* 8061C890  EC 21 00 28 */	fsubs f1, f1, f0
/* 8061C894  EC 02 00 F2 */	fmuls f0, f2, f3
/* 8061C898  EC 01 00 2A */	fadds f0, f1, f0
/* 8061C89C  D0 1D 06 04 */	stfs f0, 0x604(r29)
/* 8061C8A0  A8 7D 05 F8 */	lha r3, 0x5f8(r29)
/* 8061C8A4  C0 1D 06 00 */	lfs f0, 0x600(r29)
/* 8061C8A8  FC 00 00 1E */	fctiwz f0, f0
/* 8061C8AC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8061C8B0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8061C8B4  7C 03 02 14 */	add r0, r3, r0
/* 8061C8B8  B0 1D 05 F8 */	sth r0, 0x5f8(r29)
/* 8061C8BC  A8 7D 05 FA */	lha r3, 0x5fa(r29)
/* 8061C8C0  C0 1D 06 04 */	lfs f0, 0x604(r29)
/* 8061C8C4  FC 00 00 1E */	fctiwz f0, f0
/* 8061C8C8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8061C8CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061C8D0  7C 03 02 14 */	add r0, r3, r0
/* 8061C8D4  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 8061C8D8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8061C8DC  C0 1D 06 0C */	lfs f0, 0x60c(r29)
/* 8061C8E0  EC 01 00 2A */	fadds f0, f1, f0
/* 8061C8E4  D0 1D 05 FC */	stfs f0, 0x5fc(r29)
/* 8061C8E8  A8 7D 05 F6 */	lha r3, 0x5f6(r29)
/* 8061C8EC  C0 1D 05 FC */	lfs f0, 0x5fc(r29)
/* 8061C8F0  FC 00 00 1E */	fctiwz f0, f0
/* 8061C8F4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8061C8F8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8061C8FC  7C 03 02 14 */	add r0, r3, r0
/* 8061C900  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 8061C904  38 7D 06 0C */	addi r3, r29, 0x60c
/* 8061C908  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8061C90C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8061C910  4B C5 31 70 */	b cLib_addCalc0__FPfff
/* 8061C914  38 7D 06 10 */	addi r3, r29, 0x610
/* 8061C918  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8061C91C  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8061C920  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 8061C924  4B C5 31 18 */	b cLib_addCalc2__FPffff
/* 8061C928  2C 1C 00 03 */	cmpwi r28, 3
/* 8061C92C  41 81 00 1C */	bgt lbl_8061C948
/* 8061C930  38 7D 06 18 */	addi r3, r29, 0x618
/* 8061C934  38 9E 00 4C */	addi r4, r30, 0x4c
/* 8061C938  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8061C93C  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8061C940  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 8061C944  4B C5 30 F8 */	b cLib_addCalc2__FPffff
lbl_8061C948:
/* 8061C948  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 8061C94C  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 8061C950  80 63 00 04 */	lwz r3, 4(r3)
/* 8061C954  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8061C958  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8061C95C  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 8061C960  38 03 00 08 */	addi r0, r3, 8
/* 8061C964  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8061C968  7C 64 02 14 */	add r3, r4, r0
/* 8061C96C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8061C970  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8061C974  4B D2 9B 3C */	b PSMTXCopy
/* 8061C978  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061C97C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061C980  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8061C984  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8061C988  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8061C98C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8061C990  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8061C994  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8061C998  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8061C99C  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 8061C9A0  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 8061C9A4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8061C9A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8061C9AC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8061C9B0  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 8061C9B4  EC 42 00 28 */	fsubs f2, f2, f0
/* 8061C9B8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8061C9BC  4B C4 AC B8 */	b cM_atan2s__Fff
/* 8061C9C0  B0 7D 04 B6 */	sth r3, 0x4b6(r29)
/* 8061C9C4  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8061C9C8  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8061C9CC  38 A0 00 02 */	li r5, 2
/* 8061C9D0  38 C0 20 00 */	li r6, 0x2000
/* 8061C9D4  4B C5 3C 34 */	b cLib_addCalcAngleS2__FPssss
/* 8061C9D8  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8061C9DC  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 8061C9E0  38 A0 00 02 */	li r5, 2
/* 8061C9E4  38 C0 20 00 */	li r6, 0x2000
/* 8061C9E8  4B C5 3C 20 */	b cLib_addCalcAngleS2__FPssss
/* 8061C9EC  83 1D 0C A8 */	lwz r24, 0xca8(r29)
/* 8061C9F0  1F 58 00 06 */	mulli r26, r24, 6
/* 8061C9F4  57 1C 10 3A */	slwi r28, r24, 2
/* 8061C9F8  48 00 00 DC */	b lbl_8061CAD4
lbl_8061C9FC:
/* 8061C9FC  80 1E 00 60 */	lwz r0, 0x60(r30)
/* 8061CA00  2C 00 00 00 */	cmpwi r0, 0
/* 8061CA04  41 82 00 48 */	beq lbl_8061CA4C
/* 8061CA08  7C 7D D2 14 */	add r3, r29, r26
/* 8061CA0C  A8 03 06 D0 */	lha r0, 0x6d0(r3)
/* 8061CA10  B0 03 06 1C */	sth r0, 0x61c(r3)
/* 8061CA14  A8 03 06 D2 */	lha r0, 0x6d2(r3)
/* 8061CA18  B0 03 06 1E */	sth r0, 0x61e(r3)
/* 8061CA1C  A8 03 06 D4 */	lha r0, 0x6d4(r3)
/* 8061CA20  B0 03 06 20 */	sth r0, 0x620(r3)
/* 8061CA24  A8 03 08 38 */	lha r0, 0x838(r3)
/* 8061CA28  B0 03 07 84 */	sth r0, 0x784(r3)
/* 8061CA2C  A8 03 08 3A */	lha r0, 0x83a(r3)
/* 8061CA30  B0 03 07 86 */	sth r0, 0x786(r3)
/* 8061CA34  A8 03 08 3C */	lha r0, 0x83c(r3)
/* 8061CA38  B0 03 07 88 */	sth r0, 0x788(r3)
/* 8061CA3C  7C 7D E2 14 */	add r3, r29, r28
/* 8061CA40  C0 03 09 64 */	lfs f0, 0x964(r3)
/* 8061CA44  D0 03 08 EC */	stfs f0, 0x8ec(r3)
/* 8061CA48  48 00 00 80 */	b lbl_8061CAC8
lbl_8061CA4C:
/* 8061CA4C  7F 3D D2 14 */	add r25, r29, r26
/* 8061CA50  38 79 06 1C */	addi r3, r25, 0x61c
/* 8061CA54  A8 99 06 D0 */	lha r4, 0x6d0(r25)
/* 8061CA58  38 A0 00 02 */	li r5, 2
/* 8061CA5C  A8 DD 0C 98 */	lha r6, 0xc98(r29)
/* 8061CA60  4B C5 3B A8 */	b cLib_addCalcAngleS2__FPssss
/* 8061CA64  38 79 06 1E */	addi r3, r25, 0x61e
/* 8061CA68  A8 99 06 D2 */	lha r4, 0x6d2(r25)
/* 8061CA6C  38 A0 00 02 */	li r5, 2
/* 8061CA70  A8 DD 0C 98 */	lha r6, 0xc98(r29)
/* 8061CA74  4B C5 3B 94 */	b cLib_addCalcAngleS2__FPssss
/* 8061CA78  38 79 07 84 */	addi r3, r25, 0x784
/* 8061CA7C  A8 99 08 38 */	lha r4, 0x838(r25)
/* 8061CA80  38 A0 00 02 */	li r5, 2
/* 8061CA84  A8 DD 0C 98 */	lha r6, 0xc98(r29)
/* 8061CA88  4B C5 3B 80 */	b cLib_addCalcAngleS2__FPssss
/* 8061CA8C  38 79 07 86 */	addi r3, r25, 0x786
/* 8061CA90  A8 99 08 3A */	lha r4, 0x83a(r25)
/* 8061CA94  38 A0 00 02 */	li r5, 2
/* 8061CA98  A8 DD 0C 98 */	lha r6, 0xc98(r29)
/* 8061CA9C  4B C5 3B 6C */	b cLib_addCalcAngleS2__FPssss
/* 8061CAA0  7F 3D E2 14 */	add r25, r29, r28
/* 8061CAA4  38 79 08 EC */	addi r3, r25, 0x8ec
/* 8061CAA8  C0 39 09 64 */	lfs f1, 0x964(r25)
/* 8061CAAC  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8061CAB0  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8061CAB4  4B C5 2F 88 */	b cLib_addCalc2__FPffff
/* 8061CAB8  38 79 09 DC */	addi r3, r25, 0x9dc
/* 8061CABC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8061CAC0  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 8061CAC4  4B C5 2F BC */	b cLib_addCalc0__FPfff
lbl_8061CAC8:
/* 8061CAC8  3B 18 00 01 */	addi r24, r24, 1
/* 8061CACC  3B 9C 00 04 */	addi r28, r28, 4
/* 8061CAD0  3B 5A 00 06 */	addi r26, r26, 6
lbl_8061CAD4:
/* 8061CAD4  2C 18 00 1E */	cmpwi r24, 0x1e
/* 8061CAD8  41 80 FF 24 */	blt lbl_8061C9FC
/* 8061CADC  38 60 00 00 */	li r3, 0
/* 8061CAE0  38 00 00 0F */	li r0, 0xf
/* 8061CAE4  7C 09 03 A6 */	mtctr r0
lbl_8061CAE8:
/* 8061CAE8  2C 1B 00 00 */	cmpwi r27, 0
/* 8061CAEC  41 82 00 28 */	beq lbl_8061CB14
/* 8061CAF0  80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 8061CAF4  A8 04 5C 80 */	lha r0, 0x5c80(r4)
/* 8061CAF8  2C 00 00 00 */	cmpwi r0, 0
/* 8061CAFC  40 82 00 18 */	bne lbl_8061CB14
/* 8061CB00  38 83 0D 18 */	addi r4, r3, 0xd18
/* 8061CB04  7C 1D 20 2E */	lwzx r0, r29, r4
/* 8061CB08  60 00 00 01 */	ori r0, r0, 1
/* 8061CB0C  7C 1D 21 2E */	stwx r0, r29, r4
/* 8061CB10  48 00 00 14 */	b lbl_8061CB24
lbl_8061CB14:
/* 8061CB14  38 83 0D 18 */	addi r4, r3, 0xd18
/* 8061CB18  7C 1D 20 2E */	lwzx r0, r29, r4
/* 8061CB1C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8061CB20  7C 1D 21 2E */	stwx r0, r29, r4
lbl_8061CB24:
/* 8061CB24  38 63 01 38 */	addi r3, r3, 0x138
/* 8061CB28  42 00 FF C0 */	bdnz lbl_8061CAE8
/* 8061CB2C  38 00 00 00 */	li r0, 0
/* 8061CB30  90 1E 00 60 */	stw r0, 0x60(r30)
lbl_8061CB34:
/* 8061CB34  39 61 00 60 */	addi r11, r1, 0x60
/* 8061CB38  4B D4 56 DC */	b _restgpr_24
/* 8061CB3C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8061CB40  7C 08 03 A6 */	mtlr r0
/* 8061CB44  38 21 00 60 */	addi r1, r1, 0x60
/* 8061CB48  4E 80 00 20 */	blr 
