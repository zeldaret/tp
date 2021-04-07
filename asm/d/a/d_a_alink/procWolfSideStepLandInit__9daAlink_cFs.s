lbl_8012E1E8:
/* 8012E1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012E1EC  7C 08 02 A6 */	mflr r0
/* 8012E1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012E1F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012E1F8  93 C1 00 08 */	stw r30, 8(r1)
/* 8012E1FC  7C 7E 1B 78 */	mr r30, r3
/* 8012E200  7C 9F 23 78 */	mr r31, r4
/* 8012E204  38 80 00 F8 */	li r4, 0xf8
/* 8012E208  4B F9 3D 65 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012E20C  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 8012E210  28 00 00 01 */	cmplwi r0, 1
/* 8012E214  40 82 00 38 */	bne lbl_8012E24C
/* 8012E218  7F C3 F3 78 */	mr r3, r30
/* 8012E21C  38 80 00 4D */	li r4, 0x4d
/* 8012E220  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlSideStep_c0@ha /* 0x8038EFA8@ha */
/* 8012E224  38 A5 EF A8 */	addi r5, r5, m__24daAlinkHIO_wlSideStep_c0@l /* 0x8038EFA8@l */
/* 8012E228  38 A5 00 3C */	addi r5, r5, 0x3c
/* 8012E22C  4B FF B6 1D */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012E230  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlSideStep_c0@ha /* 0x8038EFA8@ha */
/* 8012E234  38 63 EF A8 */	addi r3, r3, m__24daAlinkHIO_wlSideStep_c0@l /* 0x8038EFA8@l */
/* 8012E238  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8012E23C  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 8012E240  38 00 00 0A */	li r0, 0xa
/* 8012E244  98 1E 2F CC */	stb r0, 0x2fcc(r30)
/* 8012E248  48 00 00 44 */	b lbl_8012E28C
lbl_8012E24C:
/* 8012E24C  38 00 00 00 */	li r0, 0
/* 8012E250  98 1E 2F CC */	stb r0, 0x2fcc(r30)
/* 8012E254  7F C3 F3 78 */	mr r3, r30
/* 8012E258  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 8012E25C  28 00 00 02 */	cmplwi r0, 2
/* 8012E260  38 80 00 4B */	li r4, 0x4b
/* 8012E264  40 82 00 08 */	bne lbl_8012E26C
/* 8012E268  38 80 00 49 */	li r4, 0x49
lbl_8012E26C:
/* 8012E26C  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlSideStep_c0@ha /* 0x8038EFA8@ha */
/* 8012E270  38 A5 EF A8 */	addi r5, r5, m__24daAlinkHIO_wlSideStep_c0@l /* 0x8038EFA8@l */
/* 8012E274  38 A5 00 14 */	addi r5, r5, 0x14
/* 8012E278  4B FF B5 D1 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012E27C  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlSideStep_c0@ha /* 0x8038EFA8@ha */
/* 8012E280  38 63 EF A8 */	addi r3, r3, m__24daAlinkHIO_wlSideStep_c0@l /* 0x8038EFA8@l */
/* 8012E284  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8012E288  D0 1E 34 78 */	stfs f0, 0x3478(r30)
lbl_8012E28C:
/* 8012E28C  B3 FE 30 12 */	sth r31, 0x3012(r30)
/* 8012E290  38 00 00 04 */	li r0, 4
/* 8012E294  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 8012E298  7F C3 F3 78 */	mr r3, r30
/* 8012E29C  38 80 00 02 */	li r4, 2
/* 8012E2A0  4B FF 2F 21 */	bl setFootEffectProcType__9daAlink_cFi
/* 8012E2A4  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 8012E2A8  60 00 00 0C */	ori r0, r0, 0xc
/* 8012E2AC  90 1E 05 84 */	stw r0, 0x584(r30)
/* 8012E2B0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012E2B4  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8012E2B8  7F C3 F3 78 */	mr r3, r30
/* 8012E2BC  4B F8 79 A9 */	bl setStepLandVibration__9daAlink_cFv
/* 8012E2C0  38 60 00 01 */	li r3, 1
/* 8012E2C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012E2C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012E2CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012E2D0  7C 08 03 A6 */	mtlr r0
/* 8012E2D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8012E2D8  4E 80 00 20 */	blr 
