lbl_801F1720:
/* 801F1720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1724  7C 08 02 A6 */	mflr r0
/* 801F1728  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F172C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1730  7C 7F 1B 78 */	mr r31, r3
/* 801F1734  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 801F1738  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 801F173C  38 80 00 00 */	li r4, 0
/* 801F1740  4B E2 56 35 */	bl getStatus__15mDoMemCd_Ctrl_cFUl
/* 801F1744  28 03 00 0E */	cmplwi r3, 0xe
/* 801F1748  41 82 01 C0 */	beq lbl_801F1908
/* 801F174C  28 03 00 0C */	cmplwi r3, 0xc
/* 801F1750  41 81 01 B8 */	bgt lbl_801F1908
/* 801F1754  3C 80 80 3C */	lis r4, lit_4802@ha /* 0x803BE724@ha */
/* 801F1758  38 84 E7 24 */	addi r4, r4, lit_4802@l /* 0x803BE724@l */
/* 801F175C  54 60 10 3A */	slwi r0, r3, 2
/* 801F1760  7C 04 00 2E */	lwzx r0, r4, r0
/* 801F1764  7C 09 03 A6 */	mtctr r0
/* 801F1768  4E 80 04 20 */	bctr 
/* 801F176C  38 00 00 00 */	li r0, 0
/* 801F1770  98 1F 01 C0 */	stb r0, 0x1c0(r31)
/* 801F1774  7F E3 FB 78 */	mr r3, r31
/* 801F1778  38 80 03 AB */	li r4, 0x3ab
/* 801F177C  48 00 32 95 */	bl errDispInitSet__12dMenu_save_cFi
/* 801F1780  38 00 00 00 */	li r0, 0
/* 801F1784  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 801F1788  38 00 00 09 */	li r0, 9
/* 801F178C  98 1F 01 B4 */	stb r0, 0x1b4(r31)
/* 801F1790  38 00 00 3D */	li r0, 0x3d
/* 801F1794  98 1F 01 B5 */	stb r0, 0x1b5(r31)
/* 801F1798  48 00 01 70 */	b lbl_801F1908
/* 801F179C  38 00 00 00 */	li r0, 0
/* 801F17A0  98 1F 01 C0 */	stb r0, 0x1c0(r31)
/* 801F17A4  7F E3 FB 78 */	mr r3, r31
/* 801F17A8  38 80 03 AC */	li r4, 0x3ac
/* 801F17AC  48 00 32 65 */	bl errDispInitSet__12dMenu_save_cFi
/* 801F17B0  38 00 00 00 */	li r0, 0
/* 801F17B4  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 801F17B8  38 00 00 09 */	li r0, 9
/* 801F17BC  98 1F 01 B4 */	stb r0, 0x1b4(r31)
/* 801F17C0  38 00 00 3D */	li r0, 0x3d
/* 801F17C4  98 1F 01 B5 */	stb r0, 0x1b5(r31)
/* 801F17C8  48 00 01 40 */	b lbl_801F1908
/* 801F17CC  38 00 00 00 */	li r0, 0
/* 801F17D0  98 1F 01 C0 */	stb r0, 0x1c0(r31)
/* 801F17D4  7F E3 FB 78 */	mr r3, r31
/* 801F17D8  38 80 03 AD */	li r4, 0x3ad
/* 801F17DC  48 00 32 35 */	bl errDispInitSet__12dMenu_save_cFi
/* 801F17E0  38 00 00 00 */	li r0, 0
/* 801F17E4  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 801F17E8  38 00 00 09 */	li r0, 9
/* 801F17EC  98 1F 01 B4 */	stb r0, 0x1b4(r31)
/* 801F17F0  38 00 00 3D */	li r0, 0x3d
/* 801F17F4  98 1F 01 B5 */	stb r0, 0x1b5(r31)
/* 801F17F8  48 00 01 10 */	b lbl_801F1908
/* 801F17FC  38 00 00 00 */	li r0, 0
/* 801F1800  98 1F 01 C0 */	stb r0, 0x1c0(r31)
/* 801F1804  7F E3 FB 78 */	mr r3, r31
/* 801F1808  38 80 03 AE */	li r4, 0x3ae
/* 801F180C  48 00 32 05 */	bl errDispInitSet__12dMenu_save_cFi
/* 801F1810  38 00 00 00 */	li r0, 0
/* 801F1814  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 801F1818  38 00 00 09 */	li r0, 9
/* 801F181C  98 1F 01 B4 */	stb r0, 0x1b4(r31)
/* 801F1820  38 00 00 3D */	li r0, 0x3d
/* 801F1824  98 1F 01 B5 */	stb r0, 0x1b5(r31)
/* 801F1828  48 00 00 E0 */	b lbl_801F1908
/* 801F182C  38 00 00 00 */	li r0, 0
/* 801F1830  98 1F 01 C0 */	stb r0, 0x1c0(r31)
/* 801F1834  7F E3 FB 78 */	mr r3, r31
/* 801F1838  38 80 03 B0 */	li r4, 0x3b0
/* 801F183C  48 00 31 D5 */	bl errDispInitSet__12dMenu_save_cFi
/* 801F1840  38 00 00 01 */	li r0, 1
/* 801F1844  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 801F1848  38 00 00 10 */	li r0, 0x10
/* 801F184C  98 1F 01 B4 */	stb r0, 0x1b4(r31)
/* 801F1850  48 00 00 B8 */	b lbl_801F1908
/* 801F1854  38 00 00 00 */	li r0, 0
/* 801F1858  98 1F 01 C0 */	stb r0, 0x1c0(r31)
/* 801F185C  7F E3 FB 78 */	mr r3, r31
/* 801F1860  38 80 03 B4 */	li r4, 0x3b4
/* 801F1864  48 00 31 AD */	bl errDispInitSet__12dMenu_save_cFi
/* 801F1868  38 00 00 00 */	li r0, 0
/* 801F186C  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 801F1870  3C 60 80 3C */	lis r3, lit_4794@ha /* 0x803BE70C@ha */
/* 801F1874  38 83 E7 0C */	addi r4, r3, lit_4794@l /* 0x803BE70C@l */
/* 801F1878  80 64 00 00 */	lwz r3, 0(r4)
/* 801F187C  80 04 00 04 */	lwz r0, 4(r4)
/* 801F1880  90 7F 01 C4 */	stw r3, 0x1c4(r31)
/* 801F1884  90 1F 01 C8 */	stw r0, 0x1c8(r31)
/* 801F1888  80 04 00 08 */	lwz r0, 8(r4)
/* 801F188C  90 1F 01 CC */	stw r0, 0x1cc(r31)
/* 801F1890  38 00 00 0A */	li r0, 0xa
/* 801F1894  98 1F 01 B5 */	stb r0, 0x1b5(r31)
/* 801F1898  38 00 00 09 */	li r0, 9
/* 801F189C  98 1F 01 B4 */	stb r0, 0x1b4(r31)
/* 801F18A0  48 00 00 68 */	b lbl_801F1908
/* 801F18A4  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 801F18A8  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 801F18AC  4B E2 51 09 */	bl load__15mDoMemCd_Ctrl_cFv
/* 801F18B0  38 00 00 1E */	li r0, 0x1e
/* 801F18B4  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F18B8  48 00 00 50 */	b lbl_801F1908
/* 801F18BC  38 00 00 00 */	li r0, 0
/* 801F18C0  98 1F 01 C0 */	stb r0, 0x1c0(r31)
/* 801F18C4  7F E3 FB 78 */	mr r3, r31
/* 801F18C8  38 80 03 C4 */	li r4, 0x3c4
/* 801F18CC  48 00 31 45 */	bl errDispInitSet__12dMenu_save_cFi
/* 801F18D0  38 00 00 00 */	li r0, 0
/* 801F18D4  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 801F18D8  3C 60 80 3C */	lis r3, lit_4797@ha /* 0x803BE718@ha */
/* 801F18DC  38 83 E7 18 */	addi r4, r3, lit_4797@l /* 0x803BE718@l */
/* 801F18E0  80 64 00 00 */	lwz r3, 0(r4)
/* 801F18E4  80 04 00 04 */	lwz r0, 4(r4)
/* 801F18E8  90 7F 01 C4 */	stw r3, 0x1c4(r31)
/* 801F18EC  90 1F 01 C8 */	stw r0, 0x1c8(r31)
/* 801F18F0  80 04 00 08 */	lwz r0, 8(r4)
/* 801F18F4  90 1F 01 CC */	stw r0, 0x1cc(r31)
/* 801F18F8  38 00 00 17 */	li r0, 0x17
/* 801F18FC  98 1F 01 B5 */	stb r0, 0x1b5(r31)
/* 801F1900  38 00 00 09 */	li r0, 9
/* 801F1904  98 1F 01 B4 */	stb r0, 0x1b4(r31)
lbl_801F1908:
/* 801F1908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F190C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1910  7C 08 03 A6 */	mtlr r0
/* 801F1914  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1918  4E 80 00 20 */	blr 
