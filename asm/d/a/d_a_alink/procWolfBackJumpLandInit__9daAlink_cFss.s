lbl_8012E5F4:
/* 8012E5F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012E5F8  7C 08 02 A6 */	mflr r0
/* 8012E5FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012E600  39 61 00 20 */	addi r11, r1, 0x20
/* 8012E604  48 23 3B D9 */	bl _savegpr_29
/* 8012E608  7C 7D 1B 78 */	mr r29, r3
/* 8012E60C  7C 9E 23 78 */	mr r30, r4
/* 8012E610  7C BF 2B 78 */	mr r31, r5
/* 8012E614  38 80 00 FA */	li r4, 0xfa
/* 8012E618  4B F9 39 55 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012E61C  7F A3 EB 78 */	mr r3, r29
/* 8012E620  38 80 00 67 */	li r4, 0x67
/* 8012E624  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlBackJump_c0@ha
/* 8012E628  38 A5 F0 10 */	addi r5, r5, m__24daAlinkHIO_wlBackJump_c0@l
/* 8012E62C  38 A5 00 14 */	addi r5, r5, 0x14
/* 8012E630  4B FF B2 19 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012E634  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012E638  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8012E63C  38 00 00 04 */	li r0, 4
/* 8012E640  98 1D 2F 9D */	stb r0, 0x2f9d(r29)
/* 8012E644  7F A3 EB 78 */	mr r3, r29
/* 8012E648  38 80 00 02 */	li r4, 2
/* 8012E64C  4B FF 2B 75 */	bl setFootEffectProcType__9daAlink_cFi
/* 8012E650  38 00 00 0A */	li r0, 0xa
/* 8012E654  98 1D 2F CC */	stb r0, 0x2fcc(r29)
/* 8012E658  B3 DD 30 12 */	sth r30, 0x3012(r29)
/* 8012E65C  B3 FD 30 10 */	sth r31, 0x3010(r29)
/* 8012E660  7F A3 EB 78 */	mr r3, r29
/* 8012E664  4B F8 76 01 */	bl setStepLandVibration__9daAlink_cFv
/* 8012E668  38 60 00 01 */	li r3, 1
/* 8012E66C  39 61 00 20 */	addi r11, r1, 0x20
/* 8012E670  48 23 3B B9 */	bl _restgpr_29
/* 8012E674  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012E678  7C 08 03 A6 */	mtlr r0
/* 8012E67C  38 21 00 20 */	addi r1, r1, 0x20
/* 8012E680  4E 80 00 20 */	blr 
