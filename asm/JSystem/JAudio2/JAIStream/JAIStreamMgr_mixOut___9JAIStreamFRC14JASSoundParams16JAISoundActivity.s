lbl_802A34E4:
/* 802A34E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A34E8  7C 08 02 A6 */	mflr r0
/* 802A34EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A34F0  39 61 00 40 */	addi r11, r1, 0x40
/* 802A34F4  48 0B EC E1 */	bl _savegpr_27
/* 802A34F8  7C 7E 1B 78 */	mr r30, r3
/* 802A34FC  7C BF 2B 78 */	mr r31, r5
/* 802A3500  C0 02 BD F0 */	lfs f0, lit_864(r2)
/* 802A3504  D0 01 00 08 */	stfs f0, 8(r1)
/* 802A3508  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802A350C  C0 22 BD F4 */	lfs f1, lit_865(r2)
/* 802A3510  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802A3514  C0 02 BD F8 */	lfs f0, lit_866(r2)
/* 802A3518  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802A351C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802A3520  38 7E 00 3C */	addi r3, r30, 0x3c
/* 802A3524  38 A1 00 08 */	addi r5, r1, 8
/* 802A3528  38 C0 00 00 */	li r6, 0
/* 802A352C  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 802A3530  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802A3534  40 82 00 10 */	bne lbl_802A3544
/* 802A3538  88 1F 00 00 */	lbz r0, 0(r31)
/* 802A353C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802A3540  41 82 00 08 */	beq lbl_802A3548
lbl_802A3544:
/* 802A3544  38 C0 00 01 */	li r6, 1
lbl_802A3548:
/* 802A3548  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 802A354C  41 82 00 0C */	beq lbl_802A3558
/* 802A3550  C0 22 BD F4 */	lfs f1, lit_865(r2)
/* 802A3554  48 00 00 08 */	b lbl_802A355C
lbl_802A3558:
/* 802A3558  C0 3E 00 24 */	lfs f1, 0x24(r30)
lbl_802A355C:
/* 802A355C  4B FF ED 25 */	bl mixOutAll__14JAISoundParamsFRC14JASSoundParamsP14JASSoundParamsf
/* 802A3560  80 7E 02 BC */	lwz r3, 0x2bc(r30)
/* 802A3564  28 03 00 00 */	cmplwi r3, 0
/* 802A3568  41 82 00 1C */	beq lbl_802A3584
/* 802A356C  7F C4 F3 78 */	mr r4, r30
/* 802A3570  38 A1 00 08 */	addi r5, r1, 8
/* 802A3574  81 83 00 00 */	lwz r12, 0(r3)
/* 802A3578  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A357C  7D 89 03 A6 */	mtctr r12
/* 802A3580  4E 80 04 21 */	bctrl 
lbl_802A3584:
/* 802A3584  3B A1 00 08 */	addi r29, r1, 8
/* 802A3588  80 1E 00 08 */	lwz r0, 8(r30)
/* 802A358C  28 00 00 00 */	cmplwi r0, 0
/* 802A3590  41 82 00 80 */	beq lbl_802A3610
/* 802A3594  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802A3598  28 00 00 00 */	cmplwi r0, 0
/* 802A359C  41 82 00 74 */	beq lbl_802A3610
/* 802A35A0  3B 80 00 00 */	li r28, 0
/* 802A35A4  48 00 00 50 */	b lbl_802A35F4
lbl_802A35A8:
/* 802A35A8  80 7E 00 08 */	lwz r3, 8(r30)
/* 802A35AC  7F 84 E3 78 */	mr r4, r28
/* 802A35B0  81 83 00 00 */	lwz r12, 0(r3)
/* 802A35B4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A35B8  7D 89 03 A6 */	mtctr r12
/* 802A35BC  4E 80 04 21 */	bctrl 
/* 802A35C0  7C 7B 1B 79 */	or. r27, r3, r3
/* 802A35C4  41 82 00 2C */	beq lbl_802A35F0
/* 802A35C8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802A35CC  38 81 00 08 */	addi r4, r1, 8
/* 802A35D0  80 BE 00 08 */	lwz r5, 8(r30)
/* 802A35D4  7F 86 E3 78 */	mr r6, r28
/* 802A35D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802A35DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A35E0  7D 89 03 A6 */	mtctr r12
/* 802A35E4  4E 80 04 21 */	bctrl 
/* 802A35E8  7F 7D DB 78 */	mr r29, r27
/* 802A35EC  48 00 00 24 */	b lbl_802A3610
lbl_802A35F0:
/* 802A35F0  3B 9C 00 01 */	addi r28, r28, 1
lbl_802A35F4:
/* 802A35F4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802A35F8  81 83 00 00 */	lwz r12, 0(r3)
/* 802A35FC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A3600  7D 89 03 A6 */	mtctr r12
/* 802A3604  4E 80 04 21 */	bctrl 
/* 802A3608  7C 1C 18 00 */	cmpw r28, r3
/* 802A360C  41 80 FF 9C */	blt lbl_802A35A8
lbl_802A3610:
/* 802A3610  38 60 00 00 */	li r3, 0
/* 802A3614  38 00 00 06 */	li r0, 6
/* 802A3618  7C 09 03 A6 */	mtctr r0
lbl_802A361C:
/* 802A361C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 802A3620  D0 1E 02 20 */	stfs f0, 0x220(r30)
/* 802A3624  7C BE 1A 14 */	add r5, r30, r3
/* 802A3628  80 85 02 A0 */	lwz r4, 0x2a0(r5)
/* 802A362C  28 04 00 00 */	cmplwi r4, 0
/* 802A3630  41 82 00 5C */	beq lbl_802A368C
/* 802A3634  C0 24 00 00 */	lfs f1, 0(r4)
/* 802A3638  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802A363C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802A3640  D0 05 02 24 */	stfs f0, 0x224(r5)
/* 802A3644  80 85 02 A0 */	lwz r4, 0x2a0(r5)
/* 802A3648  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 802A364C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 802A3650  EC 21 00 2A */	fadds f1, f1, f0
/* 802A3654  C0 02 BD F8 */	lfs f0, lit_866(r2)
/* 802A3658  EC 01 00 28 */	fsubs f0, f1, f0
/* 802A365C  D0 05 02 3C */	stfs f0, 0x23c(r5)
/* 802A3660  80 85 02 A0 */	lwz r4, 0x2a0(r5)
/* 802A3664  C0 24 00 04 */	lfs f1, 4(r4)
/* 802A3668  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802A366C  EC 01 00 2A */	fadds f0, f1, f0
/* 802A3670  D0 05 02 54 */	stfs f0, 0x254(r5)
/* 802A3674  80 85 02 A0 */	lwz r4, 0x2a0(r5)
/* 802A3678  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802A367C  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 802A3680  EC 01 00 2A */	fadds f0, f1, f0
/* 802A3684  D0 05 02 6C */	stfs f0, 0x26c(r5)
/* 802A3688  48 00 00 24 */	b lbl_802A36AC
lbl_802A368C:
/* 802A368C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802A3690  D0 05 02 24 */	stfs f0, 0x224(r5)
/* 802A3694  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 802A3698  D0 05 02 3C */	stfs f0, 0x23c(r5)
/* 802A369C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802A36A0  D0 05 02 54 */	stfs f0, 0x254(r5)
/* 802A36A4  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 802A36A8  D0 05 02 6C */	stfs f0, 0x26c(r5)
lbl_802A36AC:
/* 802A36AC  38 63 00 04 */	addi r3, r3, 4
/* 802A36B0  42 00 FF 6C */	bdnz lbl_802A361C
/* 802A36B4  7F C3 F3 78 */	mr r3, r30
/* 802A36B8  4B FF FD 3D */	bl prepare___9JAIStreamFv
/* 802A36BC  80 1E 02 90 */	lwz r0, 0x290(r30)
/* 802A36C0  2C 00 00 04 */	cmpwi r0, 4
/* 802A36C4  40 82 00 44 */	bne lbl_802A3708
/* 802A36C8  3B A0 00 00 */	li r29, 0
/* 802A36CC  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 802A36D0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802A36D4  40 82 00 10 */	bne lbl_802A36E4
/* 802A36D8  88 1F 00 00 */	lbz r0, 0(r31)
/* 802A36DC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802A36E0  41 82 00 08 */	beq lbl_802A36E8
lbl_802A36E4:
/* 802A36E4  3B A0 00 01 */	li r29, 1
lbl_802A36E8:
/* 802A36E8  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802A36EC  88 1E 02 C4 */	lbz r0, 0x2c4(r30)
/* 802A36F0  7C 03 00 40 */	cmplw r3, r0
/* 802A36F4  41 82 00 14 */	beq lbl_802A3708
/* 802A36F8  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 802A36FC  7F A4 EB 78 */	mr r4, r29
/* 802A3700  4B FF 2F 85 */	bl pause__13JASAramStreamFb
/* 802A3704  9B BE 02 C4 */	stb r29, 0x2c4(r30)
lbl_802A3708:
/* 802A3708  39 61 00 40 */	addi r11, r1, 0x40
/* 802A370C  48 0B EB 15 */	bl _restgpr_27
/* 802A3710  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A3714  7C 08 03 A6 */	mtlr r0
/* 802A3718  38 21 00 40 */	addi r1, r1, 0x40
/* 802A371C  4E 80 00 20 */	blr 
