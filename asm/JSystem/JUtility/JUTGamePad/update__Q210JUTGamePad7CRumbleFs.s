lbl_802E1720:
/* 802E1720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E1724  7C 08 02 A6 */	mflr r0
/* 802E1728  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E172C  39 61 00 20 */	addi r11, r1, 0x20
/* 802E1730  48 08 0A AD */	bl _savegpr_29
/* 802E1734  7C 7E 1B 78 */	mr r30, r3
/* 802E1738  7C 9D 23 78 */	mr r29, r4
/* 802E173C  80 8D 8F 68 */	lwz r4, mEnabled__Q210JUTGamePad7CRumble(r13)
/* 802E1740  7F BF 07 34 */	extsh r31, r29
/* 802E1744  57 E0 10 3A */	slwi r0, r31, 2
/* 802E1748  3C 60 80 3D */	lis r3, sChannelMask__Q210JUTGamePad7CRumble@ha /* 0x803CC5F0@ha */
/* 802E174C  38 63 C5 F0 */	addi r3, r3, sChannelMask__Q210JUTGamePad7CRumble@l /* 0x803CC5F0@l */
/* 802E1750  7C 03 00 2E */	lwzx r0, r3, r0
/* 802E1754  7C 83 00 38 */	and r3, r4, r0
/* 802E1758  30 03 FF FF */	addic r0, r3, -1
/* 802E175C  7C 00 19 10 */	subfe r0, r0, r3
/* 802E1760  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802E1764  40 82 00 1C */	bne lbl_802E1780
/* 802E1768  38 00 00 00 */	li r0, 0
/* 802E176C  90 1E 00 00 */	stw r0, 0(r30)
/* 802E1770  90 1E 00 04 */	stw r0, 4(r30)
/* 802E1774  90 1E 00 08 */	stw r0, 8(r30)
/* 802E1778  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802E177C  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_802E1780:
/* 802E1780  80 1E 00 04 */	lwz r0, 4(r30)
/* 802E1784  28 00 00 00 */	cmplwi r0, 0
/* 802E1788  41 82 01 04 */	beq lbl_802E188C
/* 802E178C  80 BE 00 00 */	lwz r5, 0(r30)
/* 802E1790  7C 05 00 40 */	cmplw r5, r0
/* 802E1794  41 80 00 1C */	blt lbl_802E17B0
/* 802E1798  7F E3 FB 78 */	mr r3, r31
/* 802E179C  38 80 00 01 */	li r4, 1
/* 802E17A0  4B FF FE ED */	bl stopMotor__Q210JUTGamePad7CRumbleFib
/* 802E17A4  38 00 00 00 */	li r0, 0
/* 802E17A8  90 1E 00 04 */	stw r0, 4(r30)
/* 802E17AC  48 00 00 D4 */	b lbl_802E1880
lbl_802E17B0:
/* 802E17B0  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802E17B4  28 04 00 00 */	cmplwi r4, 0
/* 802E17B8  40 82 00 24 */	bne lbl_802E17DC
/* 802E17BC  7F A0 07 34 */	extsh r0, r29
/* 802E17C0  38 6D 8F 64 */	la r3, mStatus__Q210JUTGamePad7CRumble(r13) /* 804514E4-_SDA_BASE_ */
/* 802E17C4  7C 03 00 AE */	lbzx r0, r3, r0
/* 802E17C8  28 00 00 00 */	cmplwi r0, 0
/* 802E17CC  40 82 00 C0 */	bne lbl_802E188C
/* 802E17D0  7F E3 FB 78 */	mr r3, r31
/* 802E17D4  4B FF FE 61 */	bl startMotor__Q210JUTGamePad7CRumbleFi
/* 802E17D8  48 00 00 B4 */	b lbl_802E188C
lbl_802E17DC:
/* 802E17DC  80 7E 00 08 */	lwz r3, 8(r30)
/* 802E17E0  7C 05 23 96 */	divwu r0, r5, r4
/* 802E17E4  7C 00 21 D6 */	mullw r0, r0, r4
/* 802E17E8  7C 80 28 50 */	subf r4, r0, r5
/* 802E17EC  4B FF FF 0D */	bl getNumBit__FPUci
/* 802E17F0  7F A0 07 34 */	extsh r0, r29
/* 802E17F4  38 8D 8F 64 */	la r4, mStatus__Q210JUTGamePad7CRumble(r13) /* 804514E4-_SDA_BASE_ */
/* 802E17F8  7C 84 00 AE */	lbzx r4, r4, r0
/* 802E17FC  30 04 FF FF */	addic r0, r4, -1
/* 802E1800  7C 00 21 10 */	subfe r0, r0, r4
/* 802E1804  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 802E1808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E180C  41 82 00 18 */	beq lbl_802E1824
/* 802E1810  28 1D 00 00 */	cmplwi r29, 0
/* 802E1814  40 82 00 10 */	bne lbl_802E1824
/* 802E1818  7F E3 FB 78 */	mr r3, r31
/* 802E181C  4B FF FE 19 */	bl startMotor__Q210JUTGamePad7CRumbleFi
/* 802E1820  48 00 00 60 */	b lbl_802E1880
lbl_802E1824:
/* 802E1824  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E1828  40 82 00 58 */	bne lbl_802E1880
/* 802E182C  38 80 00 00 */	li r4, 0
/* 802E1830  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802E1834  28 03 00 00 */	cmplwi r3, 0
/* 802E1838  41 82 00 20 */	beq lbl_802E1858
/* 802E183C  80 BE 00 00 */	lwz r5, 0(r30)
/* 802E1840  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802E1844  7C 05 23 96 */	divwu r0, r5, r4
/* 802E1848  7C 00 21 D6 */	mullw r0, r0, r4
/* 802E184C  7C 80 28 50 */	subf r4, r0, r5
/* 802E1850  4B FF FE A9 */	bl getNumBit__FPUci
/* 802E1854  7C 64 1B 78 */	mr r4, r3
lbl_802E1858:
/* 802E1858  28 1D 00 00 */	cmplwi r29, 0
/* 802E185C  41 82 00 10 */	beq lbl_802E186C
/* 802E1860  7F E3 FB 78 */	mr r3, r31
/* 802E1864  4B FF FE 29 */	bl stopMotor__Q210JUTGamePad7CRumbleFib
/* 802E1868  48 00 00 18 */	b lbl_802E1880
lbl_802E186C:
/* 802E186C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802E1870  41 82 00 10 */	beq lbl_802E1880
/* 802E1874  7F E3 FB 78 */	mr r3, r31
/* 802E1878  38 80 00 01 */	li r4, 1
/* 802E187C  4B FF FE 11 */	bl stopMotor__Q210JUTGamePad7CRumbleFib
lbl_802E1880:
/* 802E1880  80 7E 00 00 */	lwz r3, 0(r30)
/* 802E1884  38 03 00 01 */	addi r0, r3, 1
/* 802E1888  90 1E 00 00 */	stw r0, 0(r30)
lbl_802E188C:
/* 802E188C  39 61 00 20 */	addi r11, r1, 0x20
/* 802E1890  48 08 09 99 */	bl _restgpr_29
/* 802E1894  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E1898  7C 08 03 A6 */	mtlr r0
/* 802E189C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E18A0  4E 80 00 20 */	blr 
