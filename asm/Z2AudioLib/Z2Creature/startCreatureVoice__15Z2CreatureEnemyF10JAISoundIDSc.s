lbl_802C168C:
/* 802C168C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C1690  7C 08 02 A6 */	mflr r0
/* 802C1694  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C1698  39 61 00 40 */	addi r11, r1, 0x40
/* 802C169C  48 0A 0B 41 */	bl _savegpr_29
/* 802C16A0  7C 7E 1B 78 */	mr r30, r3
/* 802C16A4  7C 9F 23 78 */	mr r31, r4
/* 802C16A8  7C A6 2B 78 */	mr r6, r5
/* 802C16AC  80 8D 86 04 */	lwz r4, __OSReport_disable-0x14(r13)
/* 802C16B0  80 64 00 00 */	lwz r3, 0(r4)
/* 802C16B4  28 03 00 00 */	cmplwi r3, 0
/* 802C16B8  41 82 00 10 */	beq lbl_802C16C8
/* 802C16BC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802C16C0  90 61 00 08 */	stw r3, 8(r1)
/* 802C16C4  48 00 00 08 */	b lbl_802C16CC
lbl_802C16C8:
/* 802C16C8  38 60 FF FF */	li r3, -1
lbl_802C16CC:
/* 802C16CC  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802C16D0  28 00 00 62 */	cmplwi r0, 0x62
/* 802C16D4  40 82 01 6C */	bne lbl_802C1840
/* 802C16D8  88 04 00 BC */	lbz r0, 0xbc(r4)
/* 802C16DC  2C 00 00 06 */	cmpwi r0, 6
/* 802C16E0  40 80 00 1C */	bge lbl_802C16FC
/* 802C16E4  2C 00 00 02 */	cmpwi r0, 2
/* 802C16E8  40 80 00 08 */	bge lbl_802C16F0
/* 802C16EC  48 00 01 54 */	b lbl_802C1840
lbl_802C16F0:
/* 802C16F0  2C 00 00 04 */	cmpwi r0, 4
/* 802C16F4  40 80 00 70 */	bge lbl_802C1764
/* 802C16F8  48 00 00 24 */	b lbl_802C171C
lbl_802C16FC:
/* 802C16FC  2C 00 00 0A */	cmpwi r0, 0xa
/* 802C1700  40 80 00 10 */	bge lbl_802C1710
/* 802C1704  2C 00 00 08 */	cmpwi r0, 8
/* 802C1708  40 80 00 EC */	bge lbl_802C17F4
/* 802C170C  48 00 00 A0 */	b lbl_802C17AC
lbl_802C1710:
/* 802C1710  2C 00 00 0C */	cmpwi r0, 0xc
/* 802C1714  40 80 01 2C */	bge lbl_802C1840
/* 802C1718  48 00 01 04 */	b lbl_802C181C
lbl_802C171C:
/* 802C171C  80 9F 00 00 */	lwz r4, 0(r31)
/* 802C1720  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007040C@ha */
/* 802C1724  38 03 04 0C */	addi r0, r3, 0x040C /* 0x0007040C@l */
/* 802C1728  7C 04 00 00 */	cmpw r4, r0
/* 802C172C  41 82 00 28 */	beq lbl_802C1754
/* 802C1730  40 80 01 10 */	bge lbl_802C1840
/* 802C1734  38 03 04 05 */	addi r0, r3, 0x405
/* 802C1738  7C 04 00 00 */	cmpw r4, r0
/* 802C173C  41 82 00 08 */	beq lbl_802C1744
/* 802C1740  48 00 01 00 */	b lbl_802C1840
lbl_802C1744:
/* 802C1744  38 03 04 06 */	addi r0, r3, 0x406
/* 802C1748  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802C174C  90 1F 00 00 */	stw r0, 0(r31)
/* 802C1750  48 00 00 F0 */	b lbl_802C1840
lbl_802C1754:
/* 802C1754  38 03 04 0D */	addi r0, r3, 0x40d
/* 802C1758  90 01 00 28 */	stw r0, 0x28(r1)
/* 802C175C  90 1F 00 00 */	stw r0, 0(r31)
/* 802C1760  48 00 00 E0 */	b lbl_802C1840
lbl_802C1764:
/* 802C1764  80 9F 00 00 */	lwz r4, 0(r31)
/* 802C1768  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007040C@ha */
/* 802C176C  38 03 04 0C */	addi r0, r3, 0x040C /* 0x0007040C@l */
/* 802C1770  7C 04 00 00 */	cmpw r4, r0
/* 802C1774  41 82 00 28 */	beq lbl_802C179C
/* 802C1778  40 80 00 C8 */	bge lbl_802C1840
/* 802C177C  38 03 04 05 */	addi r0, r3, 0x405
/* 802C1780  7C 04 00 00 */	cmpw r4, r0
/* 802C1784  41 82 00 08 */	beq lbl_802C178C
/* 802C1788  48 00 00 B8 */	b lbl_802C1840
lbl_802C178C:
/* 802C178C  38 03 04 07 */	addi r0, r3, 0x407
/* 802C1790  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C1794  90 1F 00 00 */	stw r0, 0(r31)
/* 802C1798  48 00 00 A8 */	b lbl_802C1840
lbl_802C179C:
/* 802C179C  38 03 04 0E */	addi r0, r3, 0x40e
/* 802C17A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 802C17A4  90 1F 00 00 */	stw r0, 0(r31)
/* 802C17A8  48 00 00 98 */	b lbl_802C1840
lbl_802C17AC:
/* 802C17AC  80 9F 00 00 */	lwz r4, 0(r31)
/* 802C17B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007040C@ha */
/* 802C17B4  38 03 04 0C */	addi r0, r3, 0x040C /* 0x0007040C@l */
/* 802C17B8  7C 04 00 00 */	cmpw r4, r0
/* 802C17BC  41 82 00 28 */	beq lbl_802C17E4
/* 802C17C0  40 80 00 80 */	bge lbl_802C1840
/* 802C17C4  38 03 04 05 */	addi r0, r3, 0x405
/* 802C17C8  7C 04 00 00 */	cmpw r4, r0
/* 802C17CC  41 82 00 08 */	beq lbl_802C17D4
/* 802C17D0  48 00 00 70 */	b lbl_802C1840
lbl_802C17D4:
/* 802C17D4  38 03 04 08 */	addi r0, r3, 0x408
/* 802C17D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C17DC  90 1F 00 00 */	stw r0, 0(r31)
/* 802C17E0  48 00 00 60 */	b lbl_802C1840
lbl_802C17E4:
/* 802C17E4  38 03 04 0F */	addi r0, r3, 0x40f
/* 802C17E8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C17EC  90 1F 00 00 */	stw r0, 0(r31)
/* 802C17F0  48 00 00 50 */	b lbl_802C1840
lbl_802C17F4:
/* 802C17F4  80 9F 00 00 */	lwz r4, 0(r31)
/* 802C17F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007040C@ha */
/* 802C17FC  38 03 04 0C */	addi r0, r3, 0x040C /* 0x0007040C@l */
/* 802C1800  7C 04 00 00 */	cmpw r4, r0
/* 802C1804  41 82 00 08 */	beq lbl_802C180C
/* 802C1808  48 00 00 38 */	b lbl_802C1840
lbl_802C180C:
/* 802C180C  38 03 04 10 */	addi r0, r3, 0x410
/* 802C1810  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C1814  90 1F 00 00 */	stw r0, 0(r31)
/* 802C1818  48 00 00 28 */	b lbl_802C1840
lbl_802C181C:
/* 802C181C  80 9F 00 00 */	lwz r4, 0(r31)
/* 802C1820  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007040C@ha */
/* 802C1824  38 03 04 0C */	addi r0, r3, 0x040C /* 0x0007040C@l */
/* 802C1828  7C 04 00 00 */	cmpw r4, r0
/* 802C182C  41 82 00 08 */	beq lbl_802C1834
/* 802C1830  48 00 00 10 */	b lbl_802C1840
lbl_802C1834:
/* 802C1834  38 03 04 11 */	addi r0, r3, 0x411
/* 802C1838  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C183C  90 1F 00 00 */	stw r0, 0(r31)
lbl_802C1840:
/* 802C1840  38 A0 00 00 */	li r5, 0
/* 802C1844  88 1E 00 A0 */	lbz r0, 0xa0(r30)
/* 802C1848  28 00 00 07 */	cmplwi r0, 7
/* 802C184C  40 82 00 08 */	bne lbl_802C1854
/* 802C1850  38 A0 00 01 */	li r5, 1
lbl_802C1854:
/* 802C1854  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C1858  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C185C  38 7E 00 50 */	addi r3, r30, 0x50
/* 802C1860  38 81 00 0C */	addi r4, r1, 0xc
/* 802C1864  81 9E 00 60 */	lwz r12, 0x60(r30)
/* 802C1868  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C186C  7D 89 03 A6 */	mtctr r12
/* 802C1870  4E 80 04 21 */	bctrl 
/* 802C1874  7C 7D 1B 78 */	mr r29, r3
/* 802C1878  88 9E 00 A0 */	lbz r4, 0xa0(r30)
/* 802C187C  38 04 FF E8 */	addi r0, r4, -24
/* 802C1880  28 00 00 1E */	cmplwi r0, 0x1e
/* 802C1884  41 81 00 8C */	bgt lbl_802C1910
/* 802C1888  3C 80 80 3D */	lis r4, lit_4340@ha /* 0x803CB6A8@ha */
/* 802C188C  38 84 B6 A8 */	addi r4, r4, lit_4340@l /* 0x803CB6A8@l */
/* 802C1890  54 00 10 3A */	slwi r0, r0, 2
/* 802C1894  7C 04 00 2E */	lwzx r0, r4, r0
/* 802C1898  7C 09 03 A6 */	mtctr r0
/* 802C189C  4E 80 04 20 */	bctr 
/* 802C18A0  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C18A4  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 802C18A8  28 00 00 A2 */	cmplwi r0, 0xa2
/* 802C18AC  40 82 00 64 */	bne lbl_802C1910
/* 802C18B0  38 00 00 01 */	li r0, 1
/* 802C18B4  98 1E 00 A3 */	stb r0, 0xa3(r30)
/* 802C18B8  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802C18BC  88 8D 82 E9 */	lbz r4, struct_80450868+0x1(r13)
/* 802C18C0  4B FF 32 3D */	bl setBattleLastHit__8Z2SeqMgrFUc
/* 802C18C4  48 00 00 4C */	b lbl_802C1910
/* 802C18C8  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C18CC  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 802C18D0  28 00 00 AE */	cmplwi r0, 0xae
/* 802C18D4  40 82 00 3C */	bne lbl_802C1910
/* 802C18D8  38 00 00 01 */	li r0, 1
/* 802C18DC  98 1E 00 A3 */	stb r0, 0xa3(r30)
/* 802C18E0  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802C18E4  88 8D 82 E9 */	lbz r4, struct_80450868+0x1(r13)
/* 802C18E8  4B FF 32 15 */	bl setBattleLastHit__8Z2SeqMgrFUc
/* 802C18EC  48 00 00 24 */	b lbl_802C1910
/* 802C18F0  A0 9E 00 6C */	lhz r4, 0x6c(r30)
/* 802C18F4  48 00 15 61 */	bl Z2_E_ms_modVol__FP17Z2SoundHandlePoolUl
/* 802C18F8  48 00 00 18 */	b lbl_802C1910
/* 802C18FC  A0 9E 00 6C */	lhz r4, 0x6c(r30)
/* 802C1900  48 00 14 E1 */	bl Z2_E_sw_modPitch__FP17Z2SoundHandlePoolUl
/* 802C1904  48 00 00 0C */	b lbl_802C1910
/* 802C1908  A0 9E 00 6C */	lhz r4, 0x6c(r30)
/* 802C190C  48 00 15 91 */	bl Z2_E_mm_modPitch__FP17Z2SoundHandlePoolUl
lbl_802C1910:
/* 802C1910  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C1914  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 802C1918  28 00 04 39 */	cmplwi r0, 0x439
/* 802C191C  40 82 00 10 */	bne lbl_802C192C
/* 802C1920  7F A3 EB 78 */	mr r3, r29
/* 802C1924  A0 9E 00 6C */	lhz r4, 0x6c(r30)
/* 802C1928  48 00 15 BD */	bl Z2_B_zan_modPitch__FP17Z2SoundHandlePoolUl
lbl_802C192C:
/* 802C192C  7F A3 EB 78 */	mr r3, r29
/* 802C1930  39 61 00 40 */	addi r11, r1, 0x40
/* 802C1934  48 0A 08 F5 */	bl _restgpr_29
/* 802C1938  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C193C  7C 08 03 A6 */	mtlr r0
/* 802C1940  38 21 00 40 */	addi r1, r1, 0x40
/* 802C1944  4E 80 00 20 */	blr 
