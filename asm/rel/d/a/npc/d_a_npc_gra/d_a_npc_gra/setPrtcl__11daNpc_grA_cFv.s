lbl_809C36AC:
/* 809C36AC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809C36B0  7C 08 02 A6 */	mflr r0
/* 809C36B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 809C36B8  39 61 00 60 */	addi r11, r1, 0x60
/* 809C36BC  4B 99 EB 0D */	bl _savegpr_24
/* 809C36C0  7C 7A 1B 78 */	mr r26, r3
/* 809C36C4  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C36C8  3B E3 9D 98 */	addi r31, r3, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C36CC  3B A0 00 00 */	li r29, 0
/* 809C36D0  3B 80 00 00 */	li r28, 0
/* 809C36D4  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 809C36D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809C36DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809C36E0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809C36E4  3B 60 00 00 */	li r27, 0
/* 809C36E8  3B 20 00 00 */	li r25, 0
/* 809C36EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C36F0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_809C36F4:
/* 809C36F4  28 1B 00 01 */	cmplwi r27, 1
/* 809C36F8  40 81 00 0C */	ble lbl_809C3704
/* 809C36FC  2C 1B 00 02 */	cmpwi r27, 2
/* 809C3700  40 82 00 0C */	bne lbl_809C370C
lbl_809C3704:
/* 809C3704  38 C0 00 01 */	li r6, 1
/* 809C3708  48 00 00 4C */	b lbl_809C3754
lbl_809C370C:
/* 809C370C  2C 1B 00 03 */	cmpwi r27, 3
/* 809C3710  40 82 00 40 */	bne lbl_809C3750
/* 809C3714  88 1A 14 74 */	lbz r0, 0x1474(r26)
/* 809C3718  28 00 00 02 */	cmplwi r0, 2
/* 809C371C  40 82 00 34 */	bne lbl_809C3750
/* 809C3720  38 C0 00 01 */	li r6, 1
/* 809C3724  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040002@ha */
/* 809C3728  3B A3 00 02 */	addi r29, r3, 0x0002 /* 0x00040002@l */
/* 809C372C  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 809C3730  7C 7A CA 14 */	add r3, r26, r25
/* 809C3734  D0 03 15 24 */	stfs f0, 0x1524(r3)
/* 809C3738  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 809C373C  D0 03 15 28 */	stfs f0, 0x1528(r3)
/* 809C3740  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 809C3744  D0 03 15 2C */	stfs f0, 0x152c(r3)
/* 809C3748  3B 81 00 28 */	addi r28, r1, 0x28
/* 809C374C  48 00 00 08 */	b lbl_809C3754
lbl_809C3750:
/* 809C3750  38 C0 00 00 */	li r6, 0
lbl_809C3754:
/* 809C3754  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 809C3758  7C 00 07 74 */	extsb r0, r0
/* 809C375C  7F DA CA 14 */	add r30, r26, r25
/* 809C3760  89 1E 15 20 */	lbz r8, 0x1520(r30)
/* 809C3764  28 08 00 01 */	cmplwi r8, 1
/* 809C3768  40 82 00 0C */	bne lbl_809C3774
/* 809C376C  39 3E 15 30 */	addi r9, r30, 0x1530
/* 809C3770  48 00 00 08 */	b lbl_809C3778
lbl_809C3774:
/* 809C3774  39 20 00 00 */	li r9, 0
lbl_809C3778:
/* 809C3778  90 01 00 08 */	stw r0, 8(r1)
/* 809C377C  38 7E 15 44 */	addi r3, r30, 0x1544
/* 809C3780  38 9A 01 0C */	addi r4, r26, 0x10c
/* 809C3784  38 BE 15 24 */	addi r5, r30, 0x1524
/* 809C3788  7F A7 EB 78 */	mr r7, r29
/* 809C378C  28 08 00 01 */	cmplwi r8, 1
/* 809C3790  40 82 00 0C */	bne lbl_809C379C
/* 809C3794  7C A8 2B 78 */	mr r8, r5
/* 809C3798  48 00 00 08 */	b lbl_809C37A0
lbl_809C379C:
/* 809C379C  39 00 00 00 */	li r8, 0
lbl_809C37A0:
/* 809C37A0  7F 8A E3 78 */	mr r10, r28
/* 809C37A4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809C37A8  C0 5A 05 2C */	lfs f2, 0x52c(r26)
/* 809C37AC  4B 68 D8 5D */	bl setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 809C37B0  88 1E 15 20 */	lbz r0, 0x1520(r30)
/* 809C37B4  28 00 00 00 */	cmplwi r0, 0
/* 809C37B8  41 82 00 B0 */	beq lbl_809C3868
/* 809C37BC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 809C37C0  38 63 02 10 */	addi r3, r3, 0x210
/* 809C37C4  80 9E 15 4C */	lwz r4, 0x154c(r30)
/* 809C37C8  4B 68 81 51 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 809C37CC  28 03 00 00 */	cmplwi r3, 0
/* 809C37D0  41 82 00 98 */	beq lbl_809C3868
/* 809C37D4  2C 1B 00 00 */	cmpwi r27, 0
/* 809C37D8  41 82 00 14 */	beq lbl_809C37EC
/* 809C37DC  41 80 00 8C */	blt lbl_809C3868
/* 809C37E0  2C 1B 00 03 */	cmpwi r27, 3
/* 809C37E4  40 80 00 84 */	bge lbl_809C3868
/* 809C37E8  48 00 00 44 */	b lbl_809C382C
lbl_809C37EC:
/* 809C37EC  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 809C37F0  D0 1E 15 38 */	stfs f0, 0x1538(r30)
/* 809C37F4  D0 1E 15 3C */	stfs f0, 0x153c(r30)
/* 809C37F8  D0 1E 15 40 */	stfs f0, 0x1540(r30)
/* 809C37FC  38 9E 15 38 */	addi r4, r30, 0x1538
/* 809C3800  E0 24 00 00 */	psq_l f1, 0(r4), 0, 0 /* qr0 */
/* 809C3804  C0 1E 15 40 */	lfs f0, 0x1540(r30)
/* 809C3808  F0 21 00 1C */	psq_st f1, 28(r1), 0, 0 /* qr0 */
/* 809C380C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809C3810  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 809C3814  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809C3818  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 809C381C  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 809C3820  38 00 00 40 */	li r0, 0x40
/* 809C3824  98 03 00 BB */	stb r0, 0xbb(r3)
/* 809C3828  48 00 00 40 */	b lbl_809C3868
lbl_809C382C:
/* 809C382C  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 809C3830  D0 1E 15 38 */	stfs f0, 0x1538(r30)
/* 809C3834  D0 1E 15 3C */	stfs f0, 0x153c(r30)
/* 809C3838  D0 1E 15 40 */	stfs f0, 0x1540(r30)
/* 809C383C  38 9E 15 38 */	addi r4, r30, 0x1538
/* 809C3840  E0 24 00 00 */	psq_l f1, 0(r4), 0, 0 /* qr0 */
/* 809C3844  C0 1E 15 40 */	lfs f0, 0x1540(r30)
/* 809C3848  F0 21 00 10 */	psq_st f1, 16(r1), 0, 0 /* qr0 */
/* 809C384C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809C3850  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 809C3854  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 809C3858  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 809C385C  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 809C3860  38 00 00 40 */	li r0, 0x40
/* 809C3864  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_809C3868:
/* 809C3868  38 00 00 00 */	li r0, 0
/* 809C386C  98 1E 15 20 */	stb r0, 0x1520(r30)
/* 809C3870  3B 7B 00 01 */	addi r27, r27, 1
/* 809C3874  2C 1B 00 04 */	cmpwi r27, 4
/* 809C3878  3B 39 00 5C */	addi r25, r25, 0x5c
/* 809C387C  41 80 FE 78 */	blt lbl_809C36F4
/* 809C3880  38 60 00 01 */	li r3, 1
/* 809C3884  39 61 00 60 */	addi r11, r1, 0x60
/* 809C3888  4B 99 E9 8D */	bl _restgpr_24
/* 809C388C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809C3890  7C 08 03 A6 */	mtlr r0
/* 809C3894  38 21 00 60 */	addi r1, r1, 0x60
/* 809C3898  4E 80 00 20 */	blr 
