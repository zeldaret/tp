lbl_800D42FC:
/* 800D42FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D4300  7C 08 02 A6 */	mflr r0
/* 800D4304  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D4308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D430C  93 C1 00 08 */	stw r30, 8(r1)
/* 800D4310  7C 7E 1B 78 */	mr r30, r3
/* 800D4314  7C 9F 23 78 */	mr r31, r4
/* 800D4318  38 80 00 26 */	li r4, 0x26
/* 800D431C  4B FE DC 51 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D4320  7F C3 F3 78 */	mr r3, r30
/* 800D4324  38 80 00 71 */	li r4, 0x71
/* 800D4328  3C A0 80 39 */	lis r5, m__21daAlinkHIO_cutJump_c0@ha
/* 800D432C  38 A5 DB 40 */	addi r5, r5, m__21daAlinkHIO_cutJump_c0@l
/* 800D4330  4B FD 8D C5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D4334  2C 1F 00 00 */	cmpwi r31, 0
/* 800D4338  41 82 00 20 */	beq lbl_800D4358
/* 800D433C  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutJump_c0@ha
/* 800D4340  38 63 DB 40 */	addi r3, r3, m__21daAlinkHIO_cutJump_c0@l
/* 800D4344  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800D4348  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800D434C  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 800D4350  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800D4354  48 00 00 1C */	b lbl_800D4370
lbl_800D4358:
/* 800D4358  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutJump_c0@ha
/* 800D435C  38 63 DB 40 */	addi r3, r3, m__21daAlinkHIO_cutJump_c0@l
/* 800D4360  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 800D4364  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800D4368  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800D436C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_800D4370:
/* 800D4370  7F C3 F3 78 */	mr r3, r30
/* 800D4374  7F E4 FB 78 */	mr r4, r31
/* 800D4378  4B FF E9 01 */	bl setCutJumpSpeed__9daAlink_cFi
/* 800D437C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800D4380  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800D4384  7F C3 F3 78 */	mr r3, r30
/* 800D4388  38 80 00 01 */	li r4, 1
/* 800D438C  38 A0 00 03 */	li r5, 3
/* 800D4390  38 C0 00 01 */	li r6, 1
/* 800D4394  38 E0 00 03 */	li r7, 3
/* 800D4398  3D 00 80 39 */	lis r8, m__17daAlinkHIO_cut_c0@ha
/* 800D439C  39 08 DE 8C */	addi r8, r8, m__17daAlinkHIO_cut_c0@l
/* 800D43A0  C0 28 00 74 */	lfs f1, 0x74(r8)
/* 800D43A4  C0 48 00 78 */	lfs f2, 0x78(r8)
/* 800D43A8  4B FF D2 E1 */	bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
/* 800D43AC  7F C3 F3 78 */	mr r3, r30
/* 800D43B0  38 80 00 0A */	li r4, 0xa
/* 800D43B4  4B FF D1 79 */	bl setCutType__9daAlink_cFUc
/* 800D43B8  7F C3 F3 78 */	mr r3, r30
/* 800D43BC  4B FF DF 49 */	bl setSwordComboVoice__9daAlink_cFv
/* 800D43C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D43C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D43C8  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800D43CC  60 00 80 00 */	ori r0, r0, 0x8000
/* 800D43D0  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800D43D4  38 00 00 02 */	li r0, 2
/* 800D43D8  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800D43DC  38 60 00 01 */	li r3, 1
/* 800D43E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D43E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D43E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D43EC  7C 08 03 A6 */	mtlr r0
/* 800D43F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800D43F4  4E 80 00 20 */	blr 
