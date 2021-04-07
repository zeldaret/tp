lbl_800D17EC:
/* 800D17EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D17F0  7C 08 02 A6 */	mflr r0
/* 800D17F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D17F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D17FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D1800  7C 7E 1B 78 */	mr r30, r3
/* 800D1804  7C 9F 23 78 */	mr r31, r4
/* 800D1808  7F E3 FB 78 */	mr r3, r31
/* 800D180C  4B FB 2A B5 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 800D1810  28 03 00 00 */	cmplwi r3, 0
/* 800D1814  41 82 00 F0 */	beq lbl_800D1904
/* 800D1818  38 7F 00 58 */	addi r3, r31, 0x58
/* 800D181C  4B FB 1E 6D */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800D1820  4B FF FF 69 */	bl notSwordHitVibActor__9daAlink_cFP10fopAc_ac_c
/* 800D1824  2C 03 00 00 */	cmpwi r3, 0
/* 800D1828  41 82 00 0C */	beq lbl_800D1834
/* 800D182C  38 60 00 01 */	li r3, 1
/* 800D1830  48 00 00 D8 */	b lbl_800D1908
lbl_800D1834:
/* 800D1834  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800D1838  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D183C  41 82 00 0C */	beq lbl_800D1848
/* 800D1840  38 80 00 03 */	li r4, 3
/* 800D1844  48 00 00 8C */	b lbl_800D18D0
lbl_800D1848:
/* 800D1848  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 800D184C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D1850  41 82 00 30 */	beq lbl_800D1880
/* 800D1854  88 1E 2F D0 */	lbz r0, 0x2fd0(r30)
/* 800D1858  28 00 00 01 */	cmplwi r0, 1
/* 800D185C  40 82 00 0C */	bne lbl_800D1868
/* 800D1860  38 80 00 05 */	li r4, 5
/* 800D1864  48 00 00 6C */	b lbl_800D18D0
lbl_800D1868:
/* 800D1868  28 00 00 02 */	cmplwi r0, 2
/* 800D186C  40 82 00 0C */	bne lbl_800D1878
/* 800D1870  38 80 00 02 */	li r4, 2
/* 800D1874  48 00 00 5C */	b lbl_800D18D0
lbl_800D1878:
/* 800D1878  38 80 00 03 */	li r4, 3
/* 800D187C  48 00 00 54 */	b lbl_800D18D0
lbl_800D1880:
/* 800D1880  88 1E 2F D0 */	lbz r0, 0x2fd0(r30)
/* 800D1884  28 00 00 02 */	cmplwi r0, 2
/* 800D1888  41 82 00 28 */	beq lbl_800D18B0
/* 800D188C  38 7F 00 58 */	addi r3, r31, 0x58
/* 800D1890  4B FB 1D F9 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800D1894  28 03 00 00 */	cmplwi r3, 0
/* 800D1898  41 82 00 20 */	beq lbl_800D18B8
/* 800D189C  38 7F 00 58 */	addi r3, r31, 0x58
/* 800D18A0  4B FB 1D E9 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800D18A4  88 03 04 96 */	lbz r0, 0x496(r3)
/* 800D18A8  28 00 00 03 */	cmplwi r0, 3
/* 800D18AC  40 82 00 0C */	bne lbl_800D18B8
lbl_800D18B0:
/* 800D18B0  38 80 00 02 */	li r4, 2
/* 800D18B4  48 00 00 1C */	b lbl_800D18D0
lbl_800D18B8:
/* 800D18B8  88 1E 2F D0 */	lbz r0, 0x2fd0(r30)
/* 800D18BC  28 00 00 01 */	cmplwi r0, 1
/* 800D18C0  40 82 00 0C */	bne lbl_800D18CC
/* 800D18C4  38 80 00 04 */	li r4, 4
/* 800D18C8  48 00 00 08 */	b lbl_800D18D0
lbl_800D18CC:
/* 800D18CC  38 80 00 02 */	li r4, 2
lbl_800D18D0:
/* 800D18D0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D18D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 800D18D8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D18DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800D18E0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800D18E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D18E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D18EC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D18F0  38 A0 00 1F */	li r5, 0x1f
/* 800D18F4  38 C1 00 08 */	addi r6, r1, 8
/* 800D18F8  4B F9 E1 2D */	bl StartShock__12dVibration_cFii4cXyz
/* 800D18FC  38 60 00 01 */	li r3, 1
/* 800D1900  48 00 00 08 */	b lbl_800D1908
lbl_800D1904:
/* 800D1904  38 60 00 00 */	li r3, 0
lbl_800D1908:
/* 800D1908  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D190C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D1910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D1914  7C 08 03 A6 */	mtlr r0
/* 800D1918  38 21 00 20 */	addi r1, r1, 0x20
/* 800D191C  4E 80 00 20 */	blr 
