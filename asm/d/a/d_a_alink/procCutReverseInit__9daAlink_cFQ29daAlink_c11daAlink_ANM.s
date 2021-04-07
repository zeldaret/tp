lbl_800D4068:
/* 800D4068  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D406C  7C 08 02 A6 */	mflr r0
/* 800D4070  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D4074  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800D4078  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800D407C  7C 7F 1B 79 */	or. r31, r3, r3
/* 800D4080  7C 9E 23 78 */	mr r30, r4
/* 800D4084  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800D4088  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800D408C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 800D4090  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800D4094  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 800D4098  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800D409C  38 61 00 14 */	addi r3, r1, 0x14
/* 800D40A0  38 80 00 64 */	li r4, 0x64
/* 800D40A4  41 82 00 0C */	beq lbl_800D40B0
/* 800D40A8  80 BF 00 04 */	lwz r5, 4(r31)
/* 800D40AC  48 00 00 08 */	b lbl_800D40B4
lbl_800D40B0:
/* 800D40B0  38 A0 FF FF */	li r5, -1
lbl_800D40B4:
/* 800D40B4  38 C0 00 05 */	li r6, 5
/* 800D40B8  48 0D 41 09 */	bl dKy_Sound_set__F4cXyziUii
/* 800D40BC  2C 1E 00 71 */	cmpwi r30, 0x71
/* 800D40C0  40 82 00 0C */	bne lbl_800D40CC
/* 800D40C4  38 60 00 01 */	li r3, 1
/* 800D40C8  48 00 01 1C */	b lbl_800D41E4
lbl_800D40CC:
/* 800D40CC  7F E3 FB 78 */	mr r3, r31
/* 800D40D0  38 80 00 25 */	li r4, 0x25
/* 800D40D4  4B FE DE 99 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D40D8  2C 1E 00 2F */	cmpwi r30, 0x2f
/* 800D40DC  40 82 00 4C */	bne lbl_800D4128
/* 800D40E0  7F E3 FB 78 */	mr r3, r31
/* 800D40E4  7F C4 F3 78 */	mr r4, r30
/* 800D40E8  3C A0 80 39 */	lis r5, m__19daAlinkHIO_guard_c0@ha /* 0x8038DF9C@ha */
/* 800D40EC  38 A5 DF 9C */	addi r5, r5, m__19daAlinkHIO_guard_c0@l /* 0x8038DF9C@l */
/* 800D40F0  38 A5 00 28 */	addi r5, r5, 0x28
/* 800D40F4  4B FD 90 01 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D40F8  38 00 00 01 */	li r0, 1
/* 800D40FC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800D4100  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha /* 0x8038DF9C@ha */
/* 800D4104  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l /* 0x8038DF9C@l */
/* 800D4108  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800D410C  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800D4110  38 00 00 02 */	li r0, 2
/* 800D4114  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800D4118  7F E3 FB 78 */	mr r3, r31
/* 800D411C  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800D4120  48 00 8E E9 */	bl setUpperGuardAnime__9daAlink_cFf
/* 800D4124  48 00 00 3C */	b lbl_800D4160
lbl_800D4128:
/* 800D4128  7F E3 FB 78 */	mr r3, r31
/* 800D412C  7F C4 F3 78 */	mr r4, r30
/* 800D4130  3C A0 80 39 */	lis r5, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D4134  38 A5 DE 8C */	addi r5, r5, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D4138  38 A5 00 28 */	addi r5, r5, 0x28
/* 800D413C  4B FD 8F B9 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D4140  38 00 00 00 */	li r0, 0
/* 800D4144  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800D4148  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D414C  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D4150  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800D4154  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800D4158  38 00 00 04 */	li r0, 4
/* 800D415C  98 1F 2F 98 */	stb r0, 0x2f98(r31)
lbl_800D4160:
/* 800D4160  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D4164  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D4168  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 800D416C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D4170  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800D4174  3C 63 00 01 */	addis r3, r3, 1
/* 800D4178  38 03 80 00 */	addi r0, r3, -32768
/* 800D417C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800D4180  38 00 00 00 */	li r0, 0
/* 800D4184  B0 1F 30 7E */	sth r0, 0x307e(r31)
/* 800D4188  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800D418C  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 800D4190  28 00 00 1A */	cmplwi r0, 0x1a
/* 800D4194  41 82 00 14 */	beq lbl_800D41A8
/* 800D4198  28 00 00 1F */	cmplwi r0, 0x1f
/* 800D419C  41 82 00 0C */	beq lbl_800D41A8
/* 800D41A0  28 00 00 0A */	cmplwi r0, 0xa
/* 800D41A4  40 82 00 0C */	bne lbl_800D41B0
lbl_800D41A8:
/* 800D41A8  38 80 00 05 */	li r4, 5
/* 800D41AC  48 00 00 08 */	b lbl_800D41B4
lbl_800D41B0:
/* 800D41B0  38 80 00 03 */	li r4, 3
lbl_800D41B4:
/* 800D41B4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D41B8  D0 21 00 08 */	stfs f1, 8(r1)
/* 800D41BC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D41C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800D41C4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800D41C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D41CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D41D0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D41D4  38 A0 00 1F */	li r5, 0x1f
/* 800D41D8  38 C1 00 08 */	addi r6, r1, 8
/* 800D41DC  4B F9 B8 49 */	bl StartShock__12dVibration_cFii4cXyz
/* 800D41E0  38 60 00 01 */	li r3, 1
lbl_800D41E4:
/* 800D41E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800D41E8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800D41EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D41F0  7C 08 03 A6 */	mtlr r0
/* 800D41F4  38 21 00 30 */	addi r1, r1, 0x30
/* 800D41F8  4E 80 00 20 */	blr 
