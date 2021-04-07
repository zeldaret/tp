lbl_800E6D6C:
/* 800E6D6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E6D70  7C 08 02 A6 */	mflr r0
/* 800E6D74  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E6D78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E6D7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E6D80  7C 7E 1B 78 */	mr r30, r3
/* 800E6D84  7C 9F 23 78 */	mr r31, r4
/* 800E6D88  38 80 00 72 */	li r4, 0x72
/* 800E6D8C  4B FD B1 E1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E6D90  7F C3 F3 78 */	mr r3, r30
/* 800E6D94  38 80 00 B4 */	li r4, 0xb4
/* 800E6D98  3C A0 80 39 */	lis r5, m__18daAlinkHIO_grab_c0@ha /* 0x8038EC48@ha */
/* 800E6D9C  38 A5 EC 48 */	addi r5, r5, m__18daAlinkHIO_grab_c0@l /* 0x8038EC48@l */
/* 800E6DA0  38 A5 00 64 */	addi r5, r5, 0x64
/* 800E6DA4  4B FC 63 51 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800E6DA8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E6DAC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800E6DB0  93 FE 31 98 */	stw r31, 0x3198(r30)
/* 800E6DB4  2C 1F 00 00 */	cmpwi r31, 0
/* 800E6DB8  41 82 00 08 */	beq lbl_800E6DC0
/* 800E6DBC  D0 1E 1F DC */	stfs f0, 0x1fdc(r30)
lbl_800E6DC0:
/* 800E6DC0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E6DC4  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E6DC8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E6DCC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E6DD0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800E6DD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E6DD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E6DDC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800E6DE0  38 80 00 01 */	li r4, 1
/* 800E6DE4  38 A0 00 0F */	li r5, 0xf
/* 800E6DE8  38 C1 00 08 */	addi r6, r1, 8
/* 800E6DEC  4B F8 8C 39 */	bl StartShock__12dVibration_cFii4cXyz
/* 800E6DF0  38 60 00 01 */	li r3, 1
/* 800E6DF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E6DF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E6DFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E6E00  7C 08 03 A6 */	mtlr r0
/* 800E6E04  38 21 00 20 */	addi r1, r1, 0x20
/* 800E6E08  4E 80 00 20 */	blr 
