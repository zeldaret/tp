lbl_80192D9C:
/* 80192D9C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80192DA0  7C 08 02 A6 */	mflr r0
/* 80192DA4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80192DA8  39 61 00 50 */	addi r11, r1, 0x50
/* 80192DAC  48 1C F4 31 */	bl _savegpr_29
/* 80192DB0  7C 7D 1B 78 */	mr r29, r3
/* 80192DB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80192DB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80192DBC  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 80192DC0  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80192DC4  28 03 00 00 */	cmplwi r3, 0
/* 80192DC8  41 82 00 94 */	beq lbl_80192E5C
/* 80192DCC  38 03 00 80 */	addi r0, r3, 0x80
/* 80192DD0  7C 1E 03 78 */	mr r30, r0
/* 80192DD4  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 80192DD8  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80192DDC  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80192DE0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80192DE4  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80192DE8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80192DEC  EC 61 00 28 */	fsubs f3, f1, f0
/* 80192DF0  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80192DF4  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80192DF8  EC 81 00 28 */	fsubs f4, f1, f0
/* 80192DFC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80192E00  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80192E04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80192E08  38 61 00 08 */	addi r3, r1, 8
/* 80192E0C  EC 20 20 24 */	fdivs f1, f0, f4
/* 80192E10  EC 43 10 24 */	fdivs f2, f3, f2
/* 80192E14  C0 62 9F F8 */	lfs f3, lit_4000(r2)
/* 80192E18  48 1B 3B 51 */	bl PSMTXScale
/* 80192E1C  7F C3 F3 78 */	mr r3, r30
/* 80192E20  38 81 00 08 */	addi r4, r1, 8
/* 80192E24  7F C5 F3 78 */	mr r5, r30
/* 80192E28  48 1B 36 BD */	bl PSMTXConcat
/* 80192E2C  80 7D 00 04 */	lwz r3, 4(r29)
/* 80192E30  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F3032@ha */
/* 80192E34  38 C4 30 32 */	addi r6, r4, 0x3032 /* 0x6D5F3032@l */
/* 80192E38  38 A0 00 4E */	li r5, 0x4e
/* 80192E3C  81 83 00 00 */	lwz r12, 0(r3)
/* 80192E40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80192E44  7D 89 03 A6 */	mtctr r12
/* 80192E48  4E 80 04 21 */	bctrl 
/* 80192E4C  7C 64 1B 78 */	mr r4, r3
/* 80192E50  7F C3 F3 78 */	mr r3, r30
/* 80192E54  38 84 00 50 */	addi r4, r4, 0x50
/* 80192E58  48 1B 36 59 */	bl PSMTXCopy
lbl_80192E5C:
/* 80192E5C  80 7D 00 04 */	lwz r3, 4(r29)
/* 80192E60  C0 22 9F FC */	lfs f1, lit_4001(r2)
/* 80192E64  FC 40 08 90 */	fmr f2, f1
/* 80192E68  7F E4 FB 78 */	mr r4, r31
/* 80192E6C  48 16 60 69 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 80192E70  39 61 00 50 */	addi r11, r1, 0x50
/* 80192E74  48 1C F3 B5 */	bl _restgpr_29
/* 80192E78  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80192E7C  7C 08 03 A6 */	mtlr r0
/* 80192E80  38 21 00 50 */	addi r1, r1, 0x50
/* 80192E84  4E 80 00 20 */	blr 
