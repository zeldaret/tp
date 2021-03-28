lbl_80AF1734:
/* 80AF1734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF1738  7C 08 02 A6 */	mflr r0
/* 80AF173C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF1740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF1744  7C 7F 1B 78 */	mr r31, r3
/* 80AF1748  A0 03 0E 16 */	lhz r0, 0xe16(r3)
/* 80AF174C  2C 00 00 02 */	cmpwi r0, 2
/* 80AF1750  41 82 00 5C */	beq lbl_80AF17AC
/* 80AF1754  40 80 01 44 */	bge lbl_80AF1898
/* 80AF1758  2C 00 00 00 */	cmpwi r0, 0
/* 80AF175C  41 82 00 0C */	beq lbl_80AF1768
/* 80AF1760  48 00 01 38 */	b lbl_80AF1898
/* 80AF1764  48 00 01 34 */	b lbl_80AF1898
lbl_80AF1768:
/* 80AF1768  38 80 00 00 */	li r4, 0
/* 80AF176C  3C A0 80 AF */	lis r5, lit_5059@ha
/* 80AF1770  C0 25 28 48 */	lfs f1, lit_5059@l(r5)
/* 80AF1774  38 A0 00 00 */	li r5, 0
/* 80AF1778  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AF177C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF1780  7D 89 03 A6 */	mtctr r12
/* 80AF1784  4E 80 04 21 */	bctrl 
/* 80AF1788  7F E3 FB 78 */	mr r3, r31
/* 80AF178C  38 80 00 00 */	li r4, 0
/* 80AF1790  4B FF FC F9 */	bl setLookMode__16daNpc_SoldierA_cFi
/* 80AF1794  38 00 00 00 */	li r0, 0
/* 80AF1798  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80AF179C  38 00 00 01 */	li r0, 1
/* 80AF17A0  98 1F 09 EA */	stb r0, 0x9ea(r31)
/* 80AF17A4  38 00 00 02 */	li r0, 2
/* 80AF17A8  B0 1F 0E 16 */	sth r0, 0xe16(r31)
lbl_80AF17AC:
/* 80AF17AC  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80AF17B0  28 00 00 00 */	cmplwi r0, 0
/* 80AF17B4  40 82 00 E4 */	bne lbl_80AF1898
/* 80AF17B8  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80AF17BC  4B 65 EF 30 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80AF17C0  28 03 00 00 */	cmplwi r3, 0
/* 80AF17C4  41 82 00 14 */	beq lbl_80AF17D8
/* 80AF17C8  7F E3 FB 78 */	mr r3, r31
/* 80AF17CC  38 80 00 02 */	li r4, 2
/* 80AF17D0  4B FF FC B9 */	bl setLookMode__16daNpc_SoldierA_cFi
/* 80AF17D4  48 00 00 44 */	b lbl_80AF1818
lbl_80AF17D8:
/* 80AF17D8  7F E3 FB 78 */	mr r3, r31
/* 80AF17DC  38 80 00 00 */	li r4, 0
/* 80AF17E0  4B FF FC A9 */	bl setLookMode__16daNpc_SoldierA_cFi
/* 80AF17E4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AF17E8  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AF17EC  7C 04 00 00 */	cmpw r4, r0
/* 80AF17F0  41 82 00 28 */	beq lbl_80AF1818
/* 80AF17F4  7F E3 FB 78 */	mr r3, r31
/* 80AF17F8  38 A0 FF FF */	li r5, -1
/* 80AF17FC  38 C0 FF FF */	li r6, -1
/* 80AF1800  38 E0 00 0F */	li r7, 0xf
/* 80AF1804  4B 66 28 A0 */	b step__8daNpcF_cFsiii
/* 80AF1808  2C 03 00 00 */	cmpwi r3, 0
/* 80AF180C  41 82 00 0C */	beq lbl_80AF1818
/* 80AF1810  38 00 00 00 */	li r0, 0
/* 80AF1814  B0 1F 0E 16 */	sth r0, 0xe16(r31)
lbl_80AF1818:
/* 80AF1818  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80AF181C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AF1820  7C 03 00 00 */	cmpw r3, r0
/* 80AF1824  40 82 00 6C */	bne lbl_80AF1890
/* 80AF1828  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80AF182C  4B 65 EE C0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80AF1830  30 03 FF FF */	addic r0, r3, -1
/* 80AF1834  7C 00 19 10 */	subfe r0, r0, r3
/* 80AF1838  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80AF183C  7F E3 FB 78 */	mr r3, r31
/* 80AF1840  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha
/* 80AF1844  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l
/* 80AF1848  3C C0 80 AF */	lis r6, m__22daNpc_SoldierA_Param_c@ha
/* 80AF184C  38 C6 26 E8 */	addi r6, r6, m__22daNpc_SoldierA_Param_c@l
/* 80AF1850  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 80AF1854  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 80AF1858  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 80AF185C  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 80AF1860  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 80AF1864  38 E0 00 78 */	li r7, 0x78
/* 80AF1868  39 00 00 01 */	li r8, 1
/* 80AF186C  4B 66 2B 00 */	b getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 80AF1870  7C 64 1B 79 */	or. r4, r3, r3
/* 80AF1874  41 82 00 24 */	beq lbl_80AF1898
/* 80AF1878  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80AF187C  4B 65 EE 40 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AF1880  7F E3 FB 78 */	mr r3, r31
/* 80AF1884  38 80 00 04 */	li r4, 4
/* 80AF1888  4B FF FC 01 */	bl setLookMode__16daNpc_SoldierA_cFi
/* 80AF188C  48 00 00 0C */	b lbl_80AF1898
lbl_80AF1890:
/* 80AF1890  38 00 00 00 */	li r0, 0
/* 80AF1894  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_80AF1898:
/* 80AF1898  38 60 00 01 */	li r3, 1
/* 80AF189C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF18A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF18A4  7C 08 03 A6 */	mtlr r0
/* 80AF18A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF18AC  4E 80 00 20 */	blr 
