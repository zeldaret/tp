lbl_8012E398:
/* 8012E398  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012E39C  7C 08 02 A6 */	mflr r0
/* 8012E3A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012E3A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8012E3A8  48 23 3E 35 */	bl _savegpr_29
/* 8012E3AC  7C 7D 1B 78 */	mr r29, r3
/* 8012E3B0  7C 9E 23 78 */	mr r30, r4
/* 8012E3B4  3C 80 80 39 */	lis r4, lit_3757@ha
/* 8012E3B8  3B E4 D6 58 */	addi r31, r4, lit_3757@l
/* 8012E3BC  38 80 00 F9 */	li r4, 0xf9
/* 8012E3C0  4B F9 3B AD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012E3C4  2C 1E 00 01 */	cmpwi r30, 1
/* 8012E3C8  40 82 00 4C */	bne lbl_8012E414
/* 8012E3CC  7F A3 EB 78 */	mr r3, r29
/* 8012E3D0  38 80 00 66 */	li r4, 0x66
/* 8012E3D4  38 BF 20 00 */	addi r5, r31, 0x2000
/* 8012E3D8  38 A5 00 50 */	addi r5, r5, 0x50
/* 8012E3DC  4B FF B4 6D */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012E3E0  38 7F 20 00 */	addi r3, r31, 0x2000
/* 8012E3E4  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 8012E3E8  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8012E3EC  C0 03 00 98 */	lfs f0, 0x98(r3)
/* 8012E3F0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8012E3F4  7F A3 EB 78 */	mr r3, r29
/* 8012E3F8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010033@ha */
/* 8012E3FC  38 84 00 33 */	addi r4, r4, 0x0033 /* 0x00010033@l */
/* 8012E400  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8012E404  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8012E408  7D 89 03 A6 */	mtctr r12
/* 8012E40C  4E 80 04 21 */	bctrl 
/* 8012E410  48 00 00 74 */	b lbl_8012E484
lbl_8012E414:
/* 8012E414  2C 1E 00 02 */	cmpwi r30, 2
/* 8012E418  40 82 00 2C */	bne lbl_8012E444
/* 8012E41C  7F A3 EB 78 */	mr r3, r29
/* 8012E420  38 80 00 66 */	li r4, 0x66
/* 8012E424  38 BF 1F 5C */	addi r5, r31, 0x1f5c
/* 8012E428  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 8012E42C  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 8012E430  A8 BF 19 B8 */	lha r5, 0x19b8(r31)
/* 8012E434  38 DF 19 B8 */	addi r6, r31, 0x19b8
/* 8012E438  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 8012E43C  4B FF B2 C9 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8012E440  48 00 00 30 */	b lbl_8012E470
lbl_8012E444:
/* 8012E444  7F A3 EB 78 */	mr r3, r29
/* 8012E448  38 80 00 66 */	li r4, 0x66
/* 8012E44C  38 BF 19 B8 */	addi r5, r31, 0x19b8
/* 8012E450  4B FF B3 F9 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012E454  7F A3 EB 78 */	mr r3, r29
/* 8012E458  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010033@ha */
/* 8012E45C  38 84 00 33 */	addi r4, r4, 0x0033 /* 0x00010033@l */
/* 8012E460  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8012E464  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8012E468  7D 89 03 A6 */	mtctr r12
/* 8012E46C  4E 80 04 21 */	bctrl 
lbl_8012E470:
/* 8012E470  38 7F 19 B8 */	addi r3, r31, 0x19b8
/* 8012E474  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8012E478  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8012E47C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8012E480  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8012E484:
/* 8012E484  80 9D 27 EC */	lwz r4, 0x27ec(r29)
/* 8012E488  28 04 00 00 */	cmplwi r4, 0
/* 8012E48C  41 82 00 20 */	beq lbl_8012E4AC
/* 8012E490  2C 1E 00 00 */	cmpwi r30, 0
/* 8012E494  40 82 00 18 */	bne lbl_8012E4AC
/* 8012E498  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8012E49C  38 84 05 38 */	addi r4, r4, 0x538
/* 8012E4A0  48 14 27 65 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8012E4A4  B0 7D 30 0C */	sth r3, 0x300c(r29)
/* 8012E4A8  48 00 00 0C */	b lbl_8012E4B4
lbl_8012E4AC:
/* 8012E4AC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8012E4B0  B0 1D 30 0C */	sth r0, 0x300c(r29)
lbl_8012E4B4:
/* 8012E4B4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8012E4B8  3C 63 00 01 */	addis r3, r3, 1
/* 8012E4BC  38 03 80 00 */	addi r0, r3, -32768
/* 8012E4C0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8012E4C4  C0 1D 33 98 */	lfs f0, 0x3398(r29)
/* 8012E4C8  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8012E4CC  38 00 00 00 */	li r0, 0
/* 8012E4D0  B0 1D 30 12 */	sth r0, 0x3012(r29)
/* 8012E4D4  2C 1E 00 00 */	cmpwi r30, 0
/* 8012E4D8  40 82 00 10 */	bne lbl_8012E4E8
/* 8012E4DC  38 00 00 01 */	li r0, 1
/* 8012E4E0  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 8012E4E4  48 00 00 08 */	b lbl_8012E4EC
lbl_8012E4E8:
/* 8012E4E8  B0 1D 30 10 */	sth r0, 0x3010(r29)
lbl_8012E4EC:
/* 8012E4EC  38 60 00 01 */	li r3, 1
/* 8012E4F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8012E4F4  48 23 3D 35 */	bl _restgpr_29
/* 8012E4F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012E4FC  7C 08 03 A6 */	mtlr r0
/* 8012E500  38 21 00 20 */	addi r1, r1, 0x20
/* 8012E504  4E 80 00 20 */	blr 
