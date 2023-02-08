lbl_805F9220:
/* 805F9220  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F9224  7C 08 02 A6 */	mflr r0
/* 805F9228  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F922C  39 61 00 30 */	addi r11, r1, 0x30
/* 805F9230  4B D6 8F AD */	bl _savegpr_29
/* 805F9234  7C 7D 1B 78 */	mr r29, r3
/* 805F9238  3C 60 80 60 */	lis r3, lit_3815@ha /* 0x80602664@ha */
/* 805F923C  3B C3 26 64 */	addi r30, r3, lit_3815@l /* 0x80602664@l */
/* 805F9240  80 1D 1F B4 */	lwz r0, 0x1fb4(r29)
/* 805F9244  90 01 00 08 */	stw r0, 8(r1)
/* 805F9248  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805F924C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805F9250  38 81 00 08 */	addi r4, r1, 8
/* 805F9254  4B A2 05 A5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805F9258  7C 7F 1B 78 */	mr r31, r3
/* 805F925C  38 00 00 0A */	li r0, 0xa
/* 805F9260  B0 1D 0C 58 */	sth r0, 0xc58(r29)
/* 805F9264  A8 1D 05 BC */	lha r0, 0x5bc(r29)
/* 805F9268  2C 00 00 01 */	cmpwi r0, 1
/* 805F926C  41 82 00 78 */	beq lbl_805F92E4
/* 805F9270  40 80 00 74 */	bge lbl_805F92E4
/* 805F9274  2C 00 00 00 */	cmpwi r0, 0
/* 805F9278  40 80 00 08 */	bge lbl_805F9280
/* 805F927C  48 00 00 68 */	b lbl_805F92E4
lbl_805F9280:
/* 805F9280  7F A3 EB 78 */	mr r3, r29
/* 805F9284  38 80 00 55 */	li r4, 0x55
/* 805F9288  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 805F928C  38 A0 00 02 */	li r5, 2
/* 805F9290  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F9294  4B FF B8 01 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F9298  38 00 00 01 */	li r0, 1
/* 805F929C  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805F92A0  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 805F92A4  D0 1F 39 5C */	stfs f0, 0x395c(r31)
/* 805F92A8  38 00 00 32 */	li r0, 0x32
/* 805F92AC  B0 1D 26 C4 */	sth r0, 0x26c4(r29)
/* 805F92B0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F92B4  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 805F92B8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805F92BC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805F92C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805F92C4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805F92C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F92CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F92D0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805F92D4  38 80 00 06 */	li r4, 6
/* 805F92D8  38 A0 00 1F */	li r5, 0x1f
/* 805F92DC  38 C1 00 0C */	addi r6, r1, 0xc
/* 805F92E0  4B A7 67 45 */	bl StartShock__12dVibration_cFii4cXyz
lbl_805F92E4:
/* 805F92E4  39 61 00 30 */	addi r11, r1, 0x30
/* 805F92E8  4B D6 8F 41 */	bl _restgpr_29
/* 805F92EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F92F0  7C 08 03 A6 */	mtlr r0
/* 805F92F4  38 21 00 30 */	addi r1, r1, 0x30
/* 805F92F8  4E 80 00 20 */	blr 
