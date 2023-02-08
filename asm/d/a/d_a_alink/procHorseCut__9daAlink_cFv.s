lbl_800F1688:
/* 800F1688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F168C  7C 08 02 A6 */	mflr r0
/* 800F1690  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F1694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F1698  93 C1 00 08 */	stw r30, 8(r1)
/* 800F169C  7C 7F 1B 78 */	mr r31, r3
/* 800F16A0  3B DF 20 48 */	addi r30, r31, 0x2048
/* 800F16A4  38 80 00 01 */	li r4, 1
/* 800F16A8  4B FF D2 71 */	bl setSyncRide__9daAlink_cFi
/* 800F16AC  2C 03 00 00 */	cmpwi r3, 0
/* 800F16B0  40 82 00 0C */	bne lbl_800F16BC
/* 800F16B4  38 60 00 01 */	li r3, 1
/* 800F16B8  48 00 01 C4 */	b lbl_800F187C
lbl_800F16BC:
/* 800F16BC  7F E3 FB 78 */	mr r3, r31
/* 800F16C0  4B FE 0A 3D */	bl setComboReserb__9daAlink_cFv
/* 800F16C4  7F E3 FB 78 */	mr r3, r31
/* 800F16C8  4B FE 0F BD */	bl checkCutTurnCharge__9daAlink_cFv
/* 800F16CC  7F C3 F3 78 */	mr r3, r30
/* 800F16D0  48 06 CD FD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F16D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F16D8  41 82 00 4C */	beq lbl_800F1724
/* 800F16DC  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800F16E0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800F16E4  41 82 00 10 */	beq lbl_800F16F4
/* 800F16E8  7F E3 FB 78 */	mr r3, r31
/* 800F16EC  4B FE 0C D5 */	bl checkCutAction__9daAlink_cFv
/* 800F16F0  48 00 01 88 */	b lbl_800F1878
lbl_800F16F4:
/* 800F16F4  7F E3 FB 78 */	mr r3, r31
/* 800F16F8  38 80 00 02 */	li r4, 2
/* 800F16FC  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800F1700  4B FB C0 25 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F1704  7F E3 FB 78 */	mr r3, r31
/* 800F1708  4B FF F2 79 */	bl procHorseWaitInit__9daAlink_cFv
/* 800F170C  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 800F1710  C0 3F 34 80 */	lfs f1, 0x3480(r31)
/* 800F1714  38 80 00 00 */	li r4, 0
/* 800F1718  38 A0 00 23 */	li r5, 0x23
/* 800F171C  4B F1 E1 2D */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
/* 800F1720  48 00 01 58 */	b lbl_800F1878
lbl_800F1724:
/* 800F1724  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800F1728  C0 1F 34 84 */	lfs f0, 0x3484(r31)
/* 800F172C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F1730  40 81 00 B4 */	ble lbl_800F17E4
/* 800F1734  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800F1738  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800F173C  40 82 00 20 */	bne lbl_800F175C
/* 800F1740  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800F1744  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800F1748  40 82 00 14 */	bne lbl_800F175C
/* 800F174C  7F E3 FB 78 */	mr r3, r31
/* 800F1750  4B FC 0F 15 */	bl spActionButton__9daAlink_cFv
/* 800F1754  2C 03 00 00 */	cmpwi r3, 0
/* 800F1758  41 82 00 8C */	beq lbl_800F17E4
lbl_800F175C:
/* 800F175C  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800F1760  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800F1764  41 82 00 10 */	beq lbl_800F1774
/* 800F1768  7F E3 FB 78 */	mr r3, r31
/* 800F176C  48 00 01 29 */	bl procHorseCutChargeReadyInit__9daAlink_cFv
/* 800F1770  48 00 01 08 */	b lbl_800F1878
lbl_800F1774:
/* 800F1774  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800F1778  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800F177C  41 82 00 10 */	beq lbl_800F178C
/* 800F1780  7F E3 FB 78 */	mr r3, r31
/* 800F1784  4B FE 0C 3D */	bl checkCutAction__9daAlink_cFv
/* 800F1788  48 00 00 F0 */	b lbl_800F1878
lbl_800F178C:
/* 800F178C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F1790  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F1794  88 03 00 15 */	lbz r0, 0x15(r3)
/* 800F1798  28 00 00 FF */	cmplwi r0, 0xff
/* 800F179C  41 82 00 14 */	beq lbl_800F17B0
/* 800F17A0  7F E3 FB 78 */	mr r3, r31
/* 800F17A4  38 80 00 0B */	li r4, 0xb
/* 800F17A8  4B FC 1A 79 */	bl setRStatus__9daAlink_cFUc
/* 800F17AC  48 00 00 10 */	b lbl_800F17BC
lbl_800F17B0:
/* 800F17B0  7F E3 FB 78 */	mr r3, r31
/* 800F17B4  38 80 00 3E */	li r4, 0x3e
/* 800F17B8  4B FC 1A 69 */	bl setRStatus__9daAlink_cFUc
lbl_800F17BC:
/* 800F17BC  7F E3 FB 78 */	mr r3, r31
/* 800F17C0  38 80 00 02 */	li r4, 2
/* 800F17C4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F17C8  4B FB BF 5D */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F17CC  7F E3 FB 78 */	mr r3, r31
/* 800F17D0  38 80 00 55 */	li r4, 0x55
/* 800F17D4  4B FB B7 AD */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F17D8  7F E3 FB 78 */	mr r3, r31
/* 800F17DC  4B FF F1 A5 */	bl procHorseWaitInit__9daAlink_cFv
/* 800F17E0  48 00 00 98 */	b lbl_800F1878
lbl_800F17E4:
/* 800F17E4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800F17E8  C0 1F 34 84 */	lfs f0, 0x3484(r31)
/* 800F17EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F17F0  40 81 00 40 */	ble lbl_800F1830
/* 800F17F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F17F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F17FC  88 03 00 15 */	lbz r0, 0x15(r3)
/* 800F1800  28 00 00 FF */	cmplwi r0, 0xff
/* 800F1804  41 82 00 14 */	beq lbl_800F1818
/* 800F1808  7F E3 FB 78 */	mr r3, r31
/* 800F180C  38 80 00 0B */	li r4, 0xb
/* 800F1810  4B FC 1A 11 */	bl setRStatus__9daAlink_cFUc
/* 800F1814  48 00 00 10 */	b lbl_800F1824
lbl_800F1818:
/* 800F1818  7F E3 FB 78 */	mr r3, r31
/* 800F181C  38 80 00 3E */	li r4, 0x3e
/* 800F1820  4B FC 1A 01 */	bl setRStatus__9daAlink_cFUc
lbl_800F1824:
/* 800F1824  7F E3 FB 78 */	mr r3, r31
/* 800F1828  38 80 00 01 */	li r4, 1
/* 800F182C  4B FD FC 05 */	bl resetCombo__9daAlink_cFi
lbl_800F1830:
/* 800F1830  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800F1834  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 800F1838  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F183C  4C 41 13 82 */	cror 2, 1, 2
/* 800F1840  40 82 00 38 */	bne lbl_800F1878
/* 800F1844  C0 1F 34 7C */	lfs f0, 0x347c(r31)
/* 800F1848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F184C  40 80 00 2C */	bge lbl_800F1878
/* 800F1850  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800F1854  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800F1858  40 82 00 14 */	bne lbl_800F186C
/* 800F185C  7F E3 FB 78 */	mr r3, r31
/* 800F1860  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020002@ha */
/* 800F1864  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00020002@l */
/* 800F1868  4B FC D8 85 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800F186C:
/* 800F186C  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800F1870  60 00 00 02 */	ori r0, r0, 2
/* 800F1874  90 1F 05 80 */	stw r0, 0x580(r31)
lbl_800F1878:
/* 800F1878  38 60 00 01 */	li r3, 1
lbl_800F187C:
/* 800F187C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F1880  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F1884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F1888  7C 08 03 A6 */	mtlr r0
/* 800F188C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F1890  4E 80 00 20 */	blr 
