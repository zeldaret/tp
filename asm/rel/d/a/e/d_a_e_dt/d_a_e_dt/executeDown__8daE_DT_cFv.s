lbl_806B177C:
/* 806B177C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B1780  7C 08 02 A6 */	mflr r0
/* 806B1784  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B1788  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806B178C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806B1790  7C 7E 1B 78 */	mr r30, r3
/* 806B1794  3C 80 80 6B */	lis r4, lit_3792@ha
/* 806B1798  3B E4 5C D4 */	addi r31, r4, lit_3792@l
/* 806B179C  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 806B17A0  2C 00 00 03 */	cmpwi r0, 3
/* 806B17A4  41 82 01 8C */	beq lbl_806B1930
/* 806B17A8  40 80 00 1C */	bge lbl_806B17C4
/* 806B17AC  2C 00 00 01 */	cmpwi r0, 1
/* 806B17B0  41 82 00 74 */	beq lbl_806B1824
/* 806B17B4  40 80 00 C0 */	bge lbl_806B1874
/* 806B17B8  2C 00 00 00 */	cmpwi r0, 0
/* 806B17BC  40 80 00 18 */	bge lbl_806B17D4
/* 806B17C0  48 00 03 88 */	b lbl_806B1B48
lbl_806B17C4:
/* 806B17C4  2C 00 00 05 */	cmpwi r0, 5
/* 806B17C8  41 82 03 40 */	beq lbl_806B1B08
/* 806B17CC  40 80 03 7C */	bge lbl_806B1B48
/* 806B17D0  48 00 02 E4 */	b lbl_806B1AB4
lbl_806B17D4:
/* 806B17D4  88 1E 07 71 */	lbz r0, 0x771(r30)
/* 806B17D8  28 00 00 00 */	cmplwi r0, 0
/* 806B17DC  41 82 00 24 */	beq lbl_806B1800
/* 806B17E0  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806B17E4  38 63 62 AC */	addi r3, r3, l_HIO@l
/* 806B17E8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 806B17EC  FC 00 00 1E */	fctiwz f0, f0
/* 806B17F0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806B17F4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806B17F8  90 1E 07 58 */	stw r0, 0x758(r30)
/* 806B17FC  48 00 00 20 */	b lbl_806B181C
lbl_806B1800:
/* 806B1800  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806B1804  38 63 62 AC */	addi r3, r3, l_HIO@l
/* 806B1808  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B180C  FC 00 00 1E */	fctiwz f0, f0
/* 806B1810  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806B1814  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806B1818  90 1E 07 58 */	stw r0, 0x758(r30)
lbl_806B181C:
/* 806B181C  38 00 00 00 */	li r0, 0
/* 806B1820  98 1E 07 74 */	stb r0, 0x774(r30)
lbl_806B1824:
/* 806B1824  7F C3 F3 78 */	mr r3, r30
/* 806B1828  38 80 00 0B */	li r4, 0xb
/* 806B182C  38 A0 00 02 */	li r5, 2
/* 806B1830  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B1834  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B1838  4B FF CE 15 */	bl setBck__8daE_DT_cFiUcff
/* 806B183C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B1840  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806B1844  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806B1848  38 00 00 03 */	li r0, 3
/* 806B184C  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B1850  88 1E 07 73 */	lbz r0, 0x773(r30)
/* 806B1854  28 00 00 02 */	cmplwi r0, 2
/* 806B1858  41 80 02 F0 */	blt lbl_806B1B48
/* 806B185C  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 806B1860  60 00 00 01 */	ori r0, r0, 1
/* 806B1864  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 806B1868  7F C3 F3 78 */	mr r3, r30
/* 806B186C  4B FF D2 DD */	bl setStabPos__8daE_DT_cFv
/* 806B1870  48 00 02 D8 */	b lbl_806B1B48
lbl_806B1874:
/* 806B1874  38 80 00 01 */	li r4, 1
/* 806B1878  4B FF DB 59 */	bl setDamageShibukiEffect__8daE_DT_cFi
/* 806B187C  7F C3 F3 78 */	mr r3, r30
/* 806B1880  38 80 00 01 */	li r4, 1
/* 806B1884  4B FF DB DD */	bl setDamageYodareEffect__8daE_DT_cFi
/* 806B1888  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806B188C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806B1890  80 63 00 00 */	lwz r3, 0(r3)
/* 806B1894  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806B1898  38 80 00 01 */	li r4, 1
/* 806B189C  4B C0 05 58 */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 806B18A0  38 00 00 00 */	li r0, 0
/* 806B18A4  90 1E 07 58 */	stw r0, 0x758(r30)
/* 806B18A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023D@ha */
/* 806B18AC  38 03 02 3D */	addi r0, r3, 0x023D /* 0x0007023D@l */
/* 806B18B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B18B4  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B18B8  38 81 00 14 */	addi r4, r1, 0x14
/* 806B18BC  38 A0 FF FF */	li r5, -1
/* 806B18C0  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B18C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B18C8  7D 89 03 A6 */	mtctr r12
/* 806B18CC  4E 80 04 21 */	bctrl 
/* 806B18D0  7F C3 F3 78 */	mr r3, r30
/* 806B18D4  38 80 00 08 */	li r4, 8
/* 806B18D8  38 A0 00 00 */	li r5, 0
/* 806B18DC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B18E0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B18E4  4B FF CD 69 */	bl setBck__8daE_DT_cFiUcff
/* 806B18E8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B18EC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806B18F0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806B18F4  38 00 00 04 */	li r0, 4
/* 806B18F8  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B18FC  38 00 00 01 */	li r0, 1
/* 806B1900  98 1E 07 70 */	stb r0, 0x770(r30)
/* 806B1904  88 7E 07 73 */	lbz r3, 0x773(r30)
/* 806B1908  38 03 00 01 */	addi r0, r3, 1
/* 806B190C  98 1E 07 73 */	stb r0, 0x773(r30)
/* 806B1910  88 1E 07 73 */	lbz r0, 0x773(r30)
/* 806B1914  28 00 00 03 */	cmplwi r0, 3
/* 806B1918  41 80 02 30 */	blt lbl_806B1B48
/* 806B191C  7F C3 F3 78 */	mr r3, r30
/* 806B1920  38 80 00 09 */	li r4, 9
/* 806B1924  38 A0 00 02 */	li r5, 2
/* 806B1928  4B FF CE 25 */	bl setActionMode__8daE_DT_cFii
/* 806B192C  48 00 02 1C */	b lbl_806B1B48
lbl_806B1930:
/* 806B1930  38 80 00 0B */	li r4, 0xb
/* 806B1934  4B FF CD BD */	bl checkBck__8daE_DT_cFi
/* 806B1938  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B193C  41 82 00 44 */	beq lbl_806B1980
/* 806B1940  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B1944  38 63 00 0C */	addi r3, r3, 0xc
/* 806B1948  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 806B194C  4B C7 6A E0 */	b checkPass__12J3DFrameCtrlFf
/* 806B1950  2C 03 00 00 */	cmpwi r3, 0
/* 806B1954  41 82 00 2C */	beq lbl_806B1980
/* 806B1958  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070313@ha */
/* 806B195C  38 03 03 13 */	addi r0, r3, 0x0313 /* 0x00070313@l */
/* 806B1960  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B1964  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B1968  38 81 00 10 */	addi r4, r1, 0x10
/* 806B196C  38 A0 FF FF */	li r5, -1
/* 806B1970  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B1974  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B1978  7D 89 03 A6 */	mtctr r12
/* 806B197C  4E 80 04 21 */	bctrl 
lbl_806B1980:
/* 806B1980  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 806B1984  2C 00 00 00 */	cmpwi r0, 0
/* 806B1988  40 82 00 B0 */	bne lbl_806B1A38
/* 806B198C  A0 7E 05 8E */	lhz r3, 0x58e(r30)
/* 806B1990  38 00 FF E8 */	li r0, -24
/* 806B1994  7C 60 00 38 */	and r0, r3, r0
/* 806B1998  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 806B199C  88 1E 07 71 */	lbz r0, 0x771(r30)
/* 806B19A0  28 00 00 00 */	cmplwi r0, 0
/* 806B19A4  41 82 00 30 */	beq lbl_806B19D4
/* 806B19A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B19AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B19B0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806B19B4  80 03 05 78 */	lwz r0, 0x578(r3)
/* 806B19B8  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 806B19BC  90 03 05 78 */	stw r0, 0x578(r3)
/* 806B19C0  38 00 00 06 */	li r0, 6
/* 806B19C4  98 1E 07 72 */	stb r0, 0x772(r30)
/* 806B19C8  38 00 00 00 */	li r0, 0
/* 806B19CC  98 1E 07 71 */	stb r0, 0x771(r30)
/* 806B19D0  48 00 00 1C */	b lbl_806B19EC
lbl_806B19D4:
/* 806B19D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806B19D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806B19DC  80 63 00 00 */	lwz r3, 0(r3)
/* 806B19E0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806B19E4  38 80 00 01 */	li r4, 1
/* 806B19E8  4B C0 04 0C */	b changeSubBgmStatus__8Z2SeqMgrFl
lbl_806B19EC:
/* 806B19EC  7F C3 F3 78 */	mr r3, r30
/* 806B19F0  38 80 00 0A */	li r4, 0xa
/* 806B19F4  38 A0 00 00 */	li r5, 0
/* 806B19F8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B19FC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B1A00  4B FF CC 4D */	bl setBck__8daE_DT_cFiUcff
/* 806B1A04  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070314@ha */
/* 806B1A08  38 03 03 14 */	addi r0, r3, 0x0314 /* 0x00070314@l */
/* 806B1A0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B1A10  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B1A14  38 81 00 0C */	addi r4, r1, 0xc
/* 806B1A18  38 A0 FF FF */	li r5, -1
/* 806B1A1C  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B1A20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B1A24  7D 89 03 A6 */	mtctr r12
/* 806B1A28  4E 80 04 21 */	bctrl 
/* 806B1A2C  38 00 00 05 */	li r0, 5
/* 806B1A30  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B1A34  48 00 01 14 */	b lbl_806B1B48
lbl_806B1A38:
/* 806B1A38  88 1E 07 73 */	lbz r0, 0x773(r30)
/* 806B1A3C  28 00 00 02 */	cmplwi r0, 2
/* 806B1A40  41 80 00 0C */	blt lbl_806B1A4C
/* 806B1A44  7F C3 F3 78 */	mr r3, r30
/* 806B1A48  4B FF D1 01 */	bl setStabPos__8daE_DT_cFv
lbl_806B1A4C:
/* 806B1A4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B1A50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B1A54  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806B1A58  88 03 05 68 */	lbz r0, 0x568(r3)
/* 806B1A5C  28 00 00 27 */	cmplwi r0, 0x27
/* 806B1A60  40 82 00 18 */	bne lbl_806B1A78
/* 806B1A64  38 7E 09 9C */	addi r3, r30, 0x99c
/* 806B1A68  4B BB 1E F4 */	b ClrCcMove__9cCcD_SttsFv
/* 806B1A6C  38 00 00 1E */	li r0, 0x1e
/* 806B1A70  90 1E 07 58 */	stw r0, 0x758(r30)
/* 806B1A74  48 00 00 34 */	b lbl_806B1AA8
lbl_806B1A78:
/* 806B1A78  88 1E 07 71 */	lbz r0, 0x771(r30)
/* 806B1A7C  28 00 00 00 */	cmplwi r0, 0
/* 806B1A80  40 82 00 28 */	bne lbl_806B1AA8
/* 806B1A84  80 1E 0E D0 */	lwz r0, 0xed0(r30)
/* 806B1A88  60 00 00 01 */	ori r0, r0, 1
/* 806B1A8C  90 1E 0E D0 */	stw r0, 0xed0(r30)
/* 806B1A90  80 1E 0E E4 */	lwz r0, 0xee4(r30)
/* 806B1A94  60 00 00 01 */	ori r0, r0, 1
/* 806B1A98  90 1E 0E E4 */	stw r0, 0xee4(r30)
/* 806B1A9C  80 1E 10 1C */	lwz r0, 0x101c(r30)
/* 806B1AA0  60 00 00 01 */	ori r0, r0, 1
/* 806B1AA4  90 1E 10 1C */	stw r0, 0x101c(r30)
lbl_806B1AA8:
/* 806B1AA8  38 00 00 01 */	li r0, 1
/* 806B1AAC  98 1E 07 70 */	stb r0, 0x770(r30)
/* 806B1AB0  48 00 00 98 */	b lbl_806B1B48
lbl_806B1AB4:
/* 806B1AB4  38 80 00 01 */	li r4, 1
/* 806B1AB8  4B FF D9 A9 */	bl setDamageYodareEffect__8daE_DT_cFi
/* 806B1ABC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B1AC0  38 63 00 0C */	addi r3, r3, 0xc
/* 806B1AC4  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 806B1AC8  4B C7 69 64 */	b checkPass__12J3DFrameCtrlFf
/* 806B1ACC  2C 03 00 00 */	cmpwi r3, 0
/* 806B1AD0  41 82 00 38 */	beq lbl_806B1B08
/* 806B1AD4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060030@ha */
/* 806B1AD8  38 03 00 30 */	addi r0, r3, 0x0030 /* 0x00060030@l */
/* 806B1ADC  90 01 00 08 */	stw r0, 8(r1)
/* 806B1AE0  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B1AE4  38 81 00 08 */	addi r4, r1, 8
/* 806B1AE8  38 A0 00 00 */	li r5, 0
/* 806B1AEC  38 C0 FF FF */	li r6, -1
/* 806B1AF0  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B1AF4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B1AF8  7D 89 03 A6 */	mtctr r12
/* 806B1AFC  4E 80 04 21 */	bctrl 
/* 806B1B00  7F C3 F3 78 */	mr r3, r30
/* 806B1B04  4B FF D4 E5 */	bl setSmallWaterEffect__8daE_DT_cFv
lbl_806B1B08:
/* 806B1B08  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B1B0C  38 80 00 01 */	li r4, 1
/* 806B1B10  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B1B14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B1B18  40 82 00 18 */	bne lbl_806B1B30
/* 806B1B1C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B1B20  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B1B24  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B1B28  41 82 00 08 */	beq lbl_806B1B30
/* 806B1B2C  38 80 00 00 */	li r4, 0
lbl_806B1B30:
/* 806B1B30  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B1B34  41 82 00 14 */	beq lbl_806B1B48
/* 806B1B38  7F C3 F3 78 */	mr r3, r30
/* 806B1B3C  38 80 00 06 */	li r4, 6
/* 806B1B40  38 A0 00 00 */	li r5, 0
/* 806B1B44  4B FF CC 09 */	bl setActionMode__8daE_DT_cFii
lbl_806B1B48:
/* 806B1B48  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806B1B4C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806B1B50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B1B54  7C 08 03 A6 */	mtlr r0
/* 806B1B58  38 21 00 30 */	addi r1, r1, 0x30
/* 806B1B5C  4E 80 00 20 */	blr 
