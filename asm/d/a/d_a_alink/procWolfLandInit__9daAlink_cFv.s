lbl_8012F138:
/* 8012F138  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012F13C  7C 08 02 A6 */	mflr r0
/* 8012F140  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012F144  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8012F148  7C 7F 1B 78 */	mr r31, r3
/* 8012F14C  38 80 00 FE */	li r4, 0xfe
/* 8012F150  4B F9 2E 1D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012F154  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012F158  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012F15C  38 00 00 0C */	li r0, 0xc
/* 8012F160  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8012F164  7F E3 FB 78 */	mr r3, r31
/* 8012F168  38 80 00 06 */	li r4, 6
/* 8012F16C  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlAutoJump_c0@ha
/* 8012F170  38 A5 F0 A8 */	addi r5, r5, m__24daAlinkHIO_wlAutoJump_c0@l
/* 8012F174  38 A5 00 14 */	addi r5, r5, 0x14
/* 8012F178  4B FF A6 D1 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012F17C  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlAutoJump_c0@ha
/* 8012F180  38 63 F0 A8 */	addi r3, r3, m__24daAlinkHIO_wlAutoJump_c0@l
/* 8012F184  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8012F188  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8012F18C  38 00 00 01 */	li r0, 1
/* 8012F190  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012F194  38 00 00 04 */	li r0, 4
/* 8012F198  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 8012F19C  7F E3 FB 78 */	mr r3, r31
/* 8012F1A0  38 80 00 04 */	li r4, 4
/* 8012F1A4  4B FF 20 1D */	bl setFootEffectProcType__9daAlink_cFi
/* 8012F1A8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012F1AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8012F1B0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8012F1B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8012F1B8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8012F1BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8012F1C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8012F1C4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8012F1C8  38 80 00 01 */	li r4, 1
/* 8012F1CC  38 A0 00 0F */	li r5, 0xf
/* 8012F1D0  38 C1 00 08 */	addi r6, r1, 8
/* 8012F1D4  4B F4 08 51 */	bl StartShock__12dVibration_cFii4cXyz
/* 8012F1D8  38 60 00 01 */	li r3, 1
/* 8012F1DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012F1E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012F1E4  7C 08 03 A6 */	mtlr r0
/* 8012F1E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8012F1EC  4E 80 00 20 */	blr 
