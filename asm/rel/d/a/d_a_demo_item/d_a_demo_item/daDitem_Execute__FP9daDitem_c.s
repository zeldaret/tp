lbl_804E16BC:
/* 804E16BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E16C0  7C 08 02 A6 */	mflr r0
/* 804E16C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E16C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E16CC  93 C1 00 08 */	stw r30, 8(r1)
/* 804E16D0  7C 7E 1B 78 */	mr r30, r3
/* 804E16D4  3C 80 80 4E */	lis r4, l_light_color@ha /* 0x804E19D4@ha */
/* 804E16D8  3B E4 19 D4 */	addi r31, r4, l_light_color@l /* 0x804E19D4@l */
/* 804E16DC  80 83 09 24 */	lwz r4, 0x924(r3)
/* 804E16E0  38 04 00 01 */	addi r0, r4, 1
/* 804E16E4  90 03 09 24 */	stw r0, 0x924(r3)
/* 804E16E8  4B FF E5 B1 */	bl action__9daDitem_cFv
/* 804E16EC  7F C3 F3 78 */	mr r3, r30
/* 804E16F0  4B FF F6 C5 */	bl set_pos__9daDitem_cFv
/* 804E16F4  7F C3 F3 78 */	mr r3, r30
/* 804E16F8  4B FF F9 65 */	bl anim_control__9daDitem_cFv
/* 804E16FC  7F C3 F3 78 */	mr r3, r30
/* 804E1700  4B B5 63 CD */	bl chkDraw__12daItemBase_cFv
/* 804E1704  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E1708  41 82 00 38 */	beq lbl_804E1740
/* 804E170C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E1710  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804E1714  C0 5E 09 38 */	lfs f2, 0x938(r30)
/* 804E1718  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 804E171C  41 82 00 08 */	beq lbl_804E1724
/* 804E1720  FC 20 10 90 */	fmr f1, f2
lbl_804E1724:
/* 804E1724  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 804E1728  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 804E172C  4B D8 F0 15 */	bl cLib_chaseF__FPfff
/* 804E1730  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 804E1734  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 804E1738  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 804E173C  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
lbl_804E1740:
/* 804E1740  7F C3 F3 78 */	mr r3, r30
/* 804E1744  4B FF F9 8D */	bl settingEffectLight__9daDitem_cFv
/* 804E1748  7F C3 F3 78 */	mr r3, r30
/* 804E174C  4B FF F9 D1 */	bl set_mtx__9daDitem_cFv
/* 804E1750  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804E1754  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 804E1758  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804E175C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 804E1760  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804E1764  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 804E1768  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 804E176C  80 63 00 04 */	lwz r3, 4(r3)
/* 804E1770  80 63 00 28 */	lwz r3, 0x28(r3)
/* 804E1774  80 63 00 00 */	lwz r3, 0(r3)
/* 804E1778  C0 5E 05 3C */	lfs f2, 0x53c(r30)
/* 804E177C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804E1780  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 804E1784  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E1788  EC 02 00 2A */	fadds f0, f2, f0
/* 804E178C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 804E1790  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 804E1794  28 00 00 06 */	cmplwi r0, 6
/* 804E1798  41 82 00 0C */	beq lbl_804E17A4
/* 804E179C  28 00 00 07 */	cmplwi r0, 7
/* 804E17A0  40 82 00 30 */	bne lbl_804E17D0
lbl_804E17A4:
/* 804E17A4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804E17A8  D0 1E 09 9C */	stfs f0, 0x99c(r30)
/* 804E17AC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804E17B0  D0 1E 09 A0 */	stfs f0, 0x9a0(r30)
/* 804E17B4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804E17B8  D0 1E 09 A4 */	stfs f0, 0x9a4(r30)
/* 804E17BC  C0 3E 09 A0 */	lfs f1, 0x9a0(r30)
/* 804E17C0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804E17C4  EC 01 00 2A */	fadds f0, f1, f0
/* 804E17C8  D0 1E 09 A0 */	stfs f0, 0x9a0(r30)
/* 804E17CC  48 00 00 68 */	b lbl_804E1834
lbl_804E17D0:
/* 804E17D0  28 00 00 36 */	cmplwi r0, 0x36
/* 804E17D4  41 82 00 0C */	beq lbl_804E17E0
/* 804E17D8  28 00 00 77 */	cmplwi r0, 0x77
/* 804E17DC  40 82 00 30 */	bne lbl_804E180C
lbl_804E17E0:
/* 804E17E0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804E17E4  D0 1E 09 9C */	stfs f0, 0x99c(r30)
/* 804E17E8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804E17EC  D0 1E 09 A0 */	stfs f0, 0x9a0(r30)
/* 804E17F0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804E17F4  D0 1E 09 A4 */	stfs f0, 0x9a4(r30)
/* 804E17F8  C0 3E 09 A0 */	lfs f1, 0x9a0(r30)
/* 804E17FC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804E1800  EC 01 00 2A */	fadds f0, f1, f0
/* 804E1804  D0 1E 09 A0 */	stfs f0, 0x9a0(r30)
/* 804E1808  48 00 00 2C */	b lbl_804E1834
lbl_804E180C:
/* 804E180C  28 00 00 73 */	cmplwi r0, 0x73
/* 804E1810  41 82 00 0C */	beq lbl_804E181C
/* 804E1814  28 00 00 75 */	cmplwi r0, 0x75
/* 804E1818  40 82 00 1C */	bne lbl_804E1834
lbl_804E181C:
/* 804E181C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804E1820  D0 1E 09 9C */	stfs f0, 0x99c(r30)
/* 804E1824  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804E1828  D0 1E 09 A0 */	stfs f0, 0x9a0(r30)
/* 804E182C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804E1830  D0 1E 09 A4 */	stfs f0, 0x9a4(r30)
lbl_804E1834:
/* 804E1834  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804E1838  7C 03 07 74 */	extsb r3, r0
/* 804E183C  4B B4 B8 31 */	bl dComIfGp_getReverb__Fi
/* 804E1840  7C 65 1B 78 */	mr r5, r3
/* 804E1844  38 7E 09 A8 */	addi r3, r30, 0x9a8
/* 804E1848  38 80 00 00 */	li r4, 0
/* 804E184C  81 9E 09 B8 */	lwz r12, 0x9b8(r30)
/* 804E1850  81 8C 00 08 */	lwz r12, 8(r12)
/* 804E1854  7D 89 03 A6 */	mtctr r12
/* 804E1858  4E 80 04 21 */	bctrl 
/* 804E185C  38 60 00 01 */	li r3, 1
/* 804E1860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E1864  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E1868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E186C  7C 08 03 A6 */	mtlr r0
/* 804E1870  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1874  4E 80 00 20 */	blr 
