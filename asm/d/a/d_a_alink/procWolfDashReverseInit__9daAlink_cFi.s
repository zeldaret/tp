lbl_8012D8C0:
/* 8012D8C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012D8C4  7C 08 02 A6 */	mflr r0
/* 8012D8C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012D8CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012D8D0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012D8D4  7C 7F 1B 78 */	mr r31, r3
/* 8012D8D8  7C 9E 23 78 */	mr r30, r4
/* 8012D8DC  38 80 00 F4 */	li r4, 0xf4
/* 8012D8E0  4B F9 46 8D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012D8E4  7F E3 FB 78 */	mr r3, r31
/* 8012D8E8  38 80 00 7A */	li r4, 0x7a
/* 8012D8EC  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D8F0  38 C5 EE 28 */	addi r6, r5, m__20daAlinkHIO_wlMove_c0@l
/* 8012D8F4  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 8012D8F8  C0 46 00 44 */	lfs f2, 0x44(r6)
/* 8012D8FC  38 A0 00 05 */	li r5, 5
/* 8012D900  C0 66 00 48 */	lfs f3, 0x48(r6)
/* 8012D904  4B FF BE 01 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8012D908  2C 1E 00 00 */	cmpwi r30, 0
/* 8012D90C  41 82 00 54 */	beq lbl_8012D960
/* 8012D910  A8 7F 31 02 */	lha r3, 0x3102(r31)
/* 8012D914  3C 63 00 01 */	addis r3, r3, 1
/* 8012D918  38 03 80 00 */	addi r0, r3, -32768
/* 8012D91C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8012D920  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 8012D924  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8012D928  48 14 34 FD */	bl cLib_distanceAngleS__Fss
/* 8012D92C  2C 03 60 00 */	cmpwi r3, 0x6000
/* 8012D930  40 81 00 14 */	ble lbl_8012D944
/* 8012D934  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 8012D938  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012D93C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8012D940  48 00 00 14 */	b lbl_8012D954
lbl_8012D944:
/* 8012D944  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 8012D948  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012D94C  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 8012D950  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_8012D954:
/* 8012D954  38 00 00 01 */	li r0, 1
/* 8012D958  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012D95C  48 00 00 34 */	b lbl_8012D990
lbl_8012D960:
/* 8012D960  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D964  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D968  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 8012D96C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012D970  C0 03 00 DC */	lfs f0, 0xdc(r3)
/* 8012D974  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8012D978  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 8012D97C  3C 63 00 01 */	addis r3, r3, 1
/* 8012D980  38 03 80 00 */	addi r0, r3, -32768
/* 8012D984  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8012D988  38 00 00 00 */	li r0, 0
/* 8012D98C  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_8012D990:
/* 8012D990  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012D994  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8012D998  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8012D99C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8012D9A0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8012D9A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8012D9A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8012D9AC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8012D9B0  38 80 00 05 */	li r4, 5
/* 8012D9B4  38 A0 00 0F */	li r5, 0xf
/* 8012D9B8  38 C1 00 14 */	addi r6, r1, 0x14
/* 8012D9BC  4B F4 20 69 */	bl StartShock__12dVibration_cFii4cXyz
/* 8012D9C0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8012D9C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8012D9C8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8012D9CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8012D9D0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8012D9D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8012D9D8  38 61 00 08 */	addi r3, r1, 8
/* 8012D9DC  38 80 00 64 */	li r4, 0x64
/* 8012D9E0  28 1F 00 00 */	cmplwi r31, 0
/* 8012D9E4  41 82 00 0C */	beq lbl_8012D9F0
/* 8012D9E8  80 BF 00 04 */	lwz r5, 4(r31)
/* 8012D9EC  48 00 00 08 */	b lbl_8012D9F4
lbl_8012D9F0:
/* 8012D9F0  38 A0 FF FF */	li r5, -1
lbl_8012D9F4:
/* 8012D9F4  38 C0 00 05 */	li r6, 5
/* 8012D9F8  48 07 A7 C9 */	bl dKy_Sound_set__F4cXyziUii
/* 8012D9FC  7F E3 FB 78 */	mr r3, r31
/* 8012DA00  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020054@ha */
/* 8012DA04  38 84 00 54 */	addi r4, r4, 0x0054 /* 0x00020054@l */
/* 8012DA08  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8012DA0C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8012DA10  7D 89 03 A6 */	mtctr r12
/* 8012DA14  4E 80 04 21 */	bctrl 
/* 8012DA18  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8012DA1C  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8012DA20  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8012DA24  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012DA28  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8012DA2C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012DA30  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8012DA34  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 8012DA38  60 00 20 00 */	ori r0, r0, 0x2000
/* 8012DA3C  90 1F 05 80 */	stw r0, 0x580(r31)
/* 8012DA40  38 60 00 01 */	li r3, 1
/* 8012DA44  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012DA48  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012DA4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012DA50  7C 08 03 A6 */	mtlr r0
/* 8012DA54  38 21 00 30 */	addi r1, r1, 0x30
/* 8012DA58  4E 80 00 20 */	blr 
