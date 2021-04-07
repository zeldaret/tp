lbl_8013AC44:
/* 8013AC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013AC48  7C 08 02 A6 */	mflr r0
/* 8013AC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013AC50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013AC54  93 C1 00 08 */	stw r30, 8(r1)
/* 8013AC58  7C 7E 1B 78 */	mr r30, r3
/* 8013AC5C  7C 9F 23 78 */	mr r31, r4
/* 8013AC60  38 80 01 1F */	li r4, 0x11f
/* 8013AC64  4B F8 73 09 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013AC68  7F C3 F3 78 */	mr r3, r30
/* 8013AC6C  38 80 00 52 */	li r4, 0x52
/* 8013AC70  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtLand_c0@ha /* 0x8038F618@ha */
/* 8013AC74  38 A5 F6 18 */	addi r5, r5, m__22daAlinkHIO_wlAtLand_c0@l /* 0x8038F618@l */
/* 8013AC78  4B FE EB D1 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013AC7C  7F C3 F3 78 */	mr r3, r30
/* 8013AC80  38 80 00 02 */	li r4, 2
/* 8013AC84  4B FE 65 3D */	bl setFootEffectProcType__9daAlink_cFi
/* 8013AC88  38 00 00 18 */	li r0, 0x18
/* 8013AC8C  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 8013AC90  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013AC94  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8013AC98  38 00 00 00 */	li r0, 0
/* 8013AC9C  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 8013ACA0  B3 FE 30 0C */	sth r31, 0x300c(r30)
/* 8013ACA4  38 00 00 0C */	li r0, 0xc
/* 8013ACA8  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8013ACAC  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAttack_c0@ha /* 0x8038F7A4@ha */
/* 8013ACB0  38 63 F7 A4 */	addi r3, r3, m__22daAlinkHIO_wlAttack_c0@l /* 0x8038F7A4@l */
/* 8013ACB4  A8 03 00 16 */	lha r0, 0x16(r3)
/* 8013ACB8  B0 1E 30 7E */	sth r0, 0x307e(r30)
/* 8013ACBC  2C 1F 00 00 */	cmpwi r31, 0
/* 8013ACC0  41 82 00 18 */	beq lbl_8013ACD8
/* 8013ACC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013ACC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013ACCC  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8013ACD0  64 00 00 20 */	oris r0, r0, 0x20
/* 8013ACD4  90 03 5F 1C */	stw r0, 0x5f1c(r3)
lbl_8013ACD8:
/* 8013ACD8  38 60 00 01 */	li r3, 1
/* 8013ACDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013ACE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013ACE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013ACE8  7C 08 03 A6 */	mtlr r0
/* 8013ACEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8013ACF0  4E 80 00 20 */	blr 
