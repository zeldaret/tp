lbl_80CD1688:
/* 80CD1688  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80CD168C  7C 08 02 A6 */	mflr r0
/* 80CD1690  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80CD1694  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80CD1698  4B 69 0B 29 */	bl _savegpr_22
/* 80CD169C  7C 7F 1B 78 */	mr r31, r3
/* 80CD16A0  7C 99 23 78 */	mr r25, r4
/* 80CD16A4  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha /* 0x80CD5CFC@ha */
/* 80CD16A8  3B C3 5C FC */	addi r30, r3, m__21daObj_Sekizoa_Param_c@l /* 0x80CD5CFC@l */
/* 80CD16AC  3B 80 00 00 */	li r28, 0
/* 80CD16B0  3B 60 FF FF */	li r27, -1
/* 80CD16B4  3A E0 00 00 */	li r23, 0
/* 80CD16B8  3B 40 00 00 */	li r26, 0
/* 80CD16BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD16C0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD16C4  3B B8 4F F8 */	addi r29, r24, 0x4ff8
/* 80CD16C8  7F A3 EB 78 */	mr r3, r29
/* 80CD16CC  3C A0 80 CD */	lis r5, d_a_obj_sekizoa__stringBase0@ha /* 0x80CD5E64@ha */
/* 80CD16D0  38 A5 5E 64 */	addi r5, r5, d_a_obj_sekizoa__stringBase0@l /* 0x80CD5E64@l */
/* 80CD16D4  38 A5 00 5F */	addi r5, r5, 0x5f
/* 80CD16D8  38 C0 00 03 */	li r6, 3
/* 80CD16DC  4B 37 6A 11 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD16E0  28 03 00 00 */	cmplwi r3, 0
/* 80CD16E4  41 82 00 08 */	beq lbl_80CD16EC
/* 80CD16E8  83 63 00 00 */	lwz r27, 0(r3)
lbl_80CD16EC:
/* 80CD16EC  7F A3 EB 78 */	mr r3, r29
/* 80CD16F0  7F 24 CB 78 */	mr r4, r25
/* 80CD16F4  3C A0 80 CD */	lis r5, d_a_obj_sekizoa__stringBase0@ha /* 0x80CD5E64@ha */
/* 80CD16F8  38 A5 5E 64 */	addi r5, r5, d_a_obj_sekizoa__stringBase0@l /* 0x80CD5E64@l */
/* 80CD16FC  38 A5 00 63 */	addi r5, r5, 0x63
/* 80CD1700  38 C0 00 03 */	li r6, 3
/* 80CD1704  4B 37 69 E9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD1708  28 03 00 00 */	cmplwi r3, 0
/* 80CD170C  41 82 00 08 */	beq lbl_80CD1714
/* 80CD1710  82 E3 00 00 */	lwz r23, 0(r3)
lbl_80CD1714:
/* 80CD1714  7F A3 EB 78 */	mr r3, r29
/* 80CD1718  7F 24 CB 78 */	mr r4, r25
/* 80CD171C  3C A0 80 CD */	lis r5, d_a_obj_sekizoa__stringBase0@ha /* 0x80CD5E64@ha */
/* 80CD1720  38 A5 5E 64 */	addi r5, r5, d_a_obj_sekizoa__stringBase0@l /* 0x80CD5E64@l */
/* 80CD1724  38 A5 00 69 */	addi r5, r5, 0x69
/* 80CD1728  38 C0 00 03 */	li r6, 3
/* 80CD172C  4B 37 69 C1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD1730  28 03 00 00 */	cmplwi r3, 0
/* 80CD1734  41 82 00 08 */	beq lbl_80CD173C
/* 80CD1738  83 43 00 00 */	lwz r26, 0(r3)
lbl_80CD173C:
/* 80CD173C  7F A3 EB 78 */	mr r3, r29
/* 80CD1740  7F 24 CB 78 */	mr r4, r25
/* 80CD1744  4B 37 66 09 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80CD1748  2C 03 00 00 */	cmpwi r3, 0
/* 80CD174C  41 82 09 70 */	beq lbl_80CD20BC
/* 80CD1750  2C 1B 00 09 */	cmpwi r27, 9
/* 80CD1754  41 82 08 88 */	beq lbl_80CD1FDC
/* 80CD1758  40 80 00 4C */	bge lbl_80CD17A4
/* 80CD175C  2C 1B 00 04 */	cmpwi r27, 4
/* 80CD1760  41 82 04 3C */	beq lbl_80CD1B9C
/* 80CD1764  40 80 00 28 */	bge lbl_80CD178C
/* 80CD1768  2C 1B 00 01 */	cmpwi r27, 1
/* 80CD176C  41 82 03 80 */	beq lbl_80CD1AEC
/* 80CD1770  40 80 00 10 */	bge lbl_80CD1780
/* 80CD1774  2C 1B 00 00 */	cmpwi r27, 0
/* 80CD1778  40 80 00 68 */	bge lbl_80CD17E0
/* 80CD177C  48 00 09 40 */	b lbl_80CD20BC
lbl_80CD1780:
/* 80CD1780  2C 1B 00 03 */	cmpwi r27, 3
/* 80CD1784  40 80 04 00 */	bge lbl_80CD1B84
/* 80CD1788  48 00 03 F4 */	b lbl_80CD1B7C
lbl_80CD178C:
/* 80CD178C  2C 1B 00 07 */	cmpwi r27, 7
/* 80CD1790  41 82 05 B4 */	beq lbl_80CD1D44
/* 80CD1794  40 80 06 40 */	bge lbl_80CD1DD4
/* 80CD1798  2C 1B 00 06 */	cmpwi r27, 6
/* 80CD179C  40 80 04 94 */	bge lbl_80CD1C30
/* 80CD17A0  48 00 04 80 */	b lbl_80CD1C20
lbl_80CD17A4:
/* 80CD17A4  2C 1B 00 14 */	cmpwi r27, 0x14
/* 80CD17A8  41 82 09 14 */	beq lbl_80CD20BC
/* 80CD17AC  40 80 00 28 */	bge lbl_80CD17D4
/* 80CD17B0  2C 1B 00 0C */	cmpwi r27, 0xc
/* 80CD17B4  41 82 08 8C */	beq lbl_80CD2040
/* 80CD17B8  40 80 00 10 */	bge lbl_80CD17C8
/* 80CD17BC  2C 1B 00 0B */	cmpwi r27, 0xb
/* 80CD17C0  40 80 08 64 */	bge lbl_80CD2024
/* 80CD17C4  48 00 08 58 */	b lbl_80CD201C
lbl_80CD17C8:
/* 80CD17C8  2C 1B 00 0E */	cmpwi r27, 0xe
/* 80CD17CC  40 80 08 F0 */	bge lbl_80CD20BC
/* 80CD17D0  48 00 05 74 */	b lbl_80CD1D44
lbl_80CD17D4:
/* 80CD17D4  2C 1B 00 63 */	cmpwi r27, 0x63
/* 80CD17D8  41 82 08 E4 */	beq lbl_80CD20BC
/* 80CD17DC  48 00 08 E0 */	b lbl_80CD20BC
lbl_80CD17E0:
/* 80CD17E0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80CD17E4  2C 00 00 00 */	cmpwi r0, 0
/* 80CD17E8  41 82 00 24 */	beq lbl_80CD180C
/* 80CD17EC  82 FF 0B 5C */	lwz r23, 0xb5c(r31)
/* 80CD17F0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CD17F4  4B 47 40 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD17F8  92 FF 0B 5C */	stw r23, 0xb5c(r31)
/* 80CD17FC  38 00 00 00 */	li r0, 0
/* 80CD1800  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80CD1804  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD1808  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80CD180C:
/* 80CD180C  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD1810  2C 00 00 01 */	cmpwi r0, 1
/* 80CD1814  41 82 00 48 */	beq lbl_80CD185C
/* 80CD1818  40 80 00 70 */	bge lbl_80CD1888
/* 80CD181C  2C 00 00 00 */	cmpwi r0, 0
/* 80CD1820  40 80 00 0C */	bge lbl_80CD182C
/* 80CD1824  48 00 00 64 */	b lbl_80CD1888
/* 80CD1828  48 00 00 60 */	b lbl_80CD1888
lbl_80CD182C:
/* 80CD182C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD1830  2C 00 00 02 */	cmpwi r0, 2
/* 80CD1834  41 82 00 54 */	beq lbl_80CD1888
/* 80CD1838  82 FF 0B 80 */	lwz r23, 0xb80(r31)
/* 80CD183C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD1840  4B 47 40 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD1844  92 FF 0B 80 */	stw r23, 0xb80(r31)
/* 80CD1848  38 00 00 02 */	li r0, 2
/* 80CD184C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD1850  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD1854  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80CD1858  48 00 00 30 */	b lbl_80CD1888
lbl_80CD185C:
/* 80CD185C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD1860  2C 00 00 0D */	cmpwi r0, 0xd
/* 80CD1864  41 82 00 24 */	beq lbl_80CD1888
/* 80CD1868  82 FF 0B 80 */	lwz r23, 0xb80(r31)
/* 80CD186C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD1870  4B 47 40 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD1874  92 FF 0B 80 */	stw r23, 0xb80(r31)
/* 80CD1878  38 00 00 0D */	li r0, 0xd
/* 80CD187C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD1880  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD1884  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80CD1888:
/* 80CD1888  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD188C  28 00 00 00 */	cmplwi r0, 0
/* 80CD1890  40 82 01 2C */	bne lbl_80CD19BC
/* 80CD1894  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 80CD1898  4B 47 3E 71 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CD189C  7C 64 1B 78 */	mr r4, r3
/* 80CD18A0  38 00 00 00 */	li r0, 0
/* 80CD18A4  98 03 0B 29 */	stb r0, 0xb29(r3)
/* 80CD18A8  98 03 0B 2A */	stb r0, 0xb2a(r3)
/* 80CD18AC  38 00 00 01 */	li r0, 1
/* 80CD18B0  98 03 0B 2B */	stb r0, 0xb2b(r3)
/* 80CD18B4  3A D8 4E C8 */	addi r22, r24, 0x4ec8
/* 80CD18B8  7E C3 B3 78 */	mr r3, r22
/* 80CD18BC  4B 37 1D A1 */	bl setPt2__14dEvt_control_cFPv
/* 80CD18C0  38 61 00 60 */	addi r3, r1, 0x60
/* 80CD18C4  3C 80 80 CD */	lis r4, l_evtList@ha /* 0x80CD5F40@ha */
/* 80CD18C8  38 84 5F 40 */	addi r4, r4, l_evtList@l /* 0x80CD5F40@l */
/* 80CD18CC  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80CD18D0  4B 69 72 5D */	bl strcpy
/* 80CD18D4  38 61 00 60 */	addi r3, r1, 0x60
/* 80CD18D8  3C 80 80 CD */	lis r4, d_a_obj_sekizoa__stringBase0@ha /* 0x80CD5E64@ha */
/* 80CD18DC  38 84 5E 64 */	addi r4, r4, d_a_obj_sekizoa__stringBase0@l /* 0x80CD5E64@l */
/* 80CD18E0  38 84 00 6F */	addi r4, r4, 0x6f
/* 80CD18E4  4B 69 71 D9 */	bl strcat
/* 80CD18E8  7E C3 B3 78 */	mr r3, r22
/* 80CD18EC  7F E4 FB 78 */	mr r4, r31
/* 80CD18F0  38 A1 00 60 */	addi r5, r1, 0x60
/* 80CD18F4  4B 37 10 65 */	bl setSkipZev__14dEvt_control_cFPvPc
/* 80CD18F8  7E C3 B3 78 */	mr r3, r22
/* 80CD18FC  4B 37 10 AD */	bl onSkipFade__14dEvt_control_cFv
/* 80CD1900  38 60 00 01 */	li r3, 1
/* 80CD1904  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CD1908  7C 04 07 74 */	extsb r4, r0
/* 80CD190C  38 A1 00 54 */	addi r5, r1, 0x54
/* 80CD1910  38 C1 00 28 */	addi r6, r1, 0x28
/* 80CD1914  4B 47 AB ED */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80CD1918  2C 03 00 00 */	cmpwi r3, 0
/* 80CD191C  41 82 00 38 */	beq lbl_80CD1954
/* 80CD1920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD1924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD1928  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD192C  38 81 00 54 */	addi r4, r1, 0x54
/* 80CD1930  A8 A1 00 2A */	lha r5, 0x2a(r1)
/* 80CD1934  38 C0 00 00 */	li r6, 0
/* 80CD1938  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CD193C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CD1940  7D 89 03 A6 */	mtctr r12
/* 80CD1944  4E 80 04 21 */	bctrl 
/* 80CD1948  7F A3 EB 78 */	mr r3, r29
/* 80CD194C  38 81 00 54 */	addi r4, r1, 0x54
/* 80CD1950  4B 37 6A 75 */	bl setGoal__16dEvent_manager_cFP4cXyz
lbl_80CD1954:
/* 80CD1954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD1958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD195C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD1960  38 00 00 27 */	li r0, 0x27
/* 80CD1964  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80CD1968  38 60 00 31 */	li r3, 0x31
/* 80CD196C  4B 47 B1 81 */	bl daNpcT_onTmpBit__FUl
/* 80CD1970  38 00 00 00 */	li r0, 0
/* 80CD1974  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD1978  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD197C  98 03 5E B8 */	stb r0, 0x5eb8(r3)
/* 80CD1980  38 00 00 97 */	li r0, 0x97
/* 80CD1984  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CD1988  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CD198C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CD1990  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD1994  38 81 00 0C */	addi r4, r1, 0xc
/* 80CD1998  38 A0 00 00 */	li r5, 0
/* 80CD199C  38 C0 00 00 */	li r6, 0
/* 80CD19A0  38 E0 00 00 */	li r7, 0
/* 80CD19A4  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80CD19A8  FC 40 08 90 */	fmr f2, f1
/* 80CD19AC  C0 7E 01 18 */	lfs f3, 0x118(r30)
/* 80CD19B0  FC 80 18 90 */	fmr f4, f3
/* 80CD19B4  39 00 00 00 */	li r8, 0
/* 80CD19B8  4B 5D 9F CD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CD19BC:
/* 80CD19BC  38 00 00 00 */	li r0, 0
/* 80CD19C0  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80CD19C4  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 80CD19C8  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80CD19CC  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD19D0  2C 00 00 01 */	cmpwi r0, 1
/* 80CD19D4  41 82 00 98 */	beq lbl_80CD1A6C
/* 80CD19D8  40 80 06 E4 */	bge lbl_80CD20BC
/* 80CD19DC  2C 00 00 00 */	cmpwi r0, 0
/* 80CD19E0  40 80 00 0C */	bge lbl_80CD19EC
/* 80CD19E4  48 00 06 D8 */	b lbl_80CD20BC
/* 80CD19E8  48 00 06 D4 */	b lbl_80CD20BC
lbl_80CD19EC:
/* 80CD19EC  38 60 02 5E */	li r3, 0x25e
/* 80CD19F0  4B 47 B0 BD */	bl daNpcT_chkEvtBit__FUl
/* 80CD19F4  2C 03 00 00 */	cmpwi r3, 0
/* 80CD19F8  41 82 00 24 */	beq lbl_80CD1A1C
/* 80CD19FC  3C 60 80 CD */	lis r3, l_srcPosL@ha /* 0x80CD6944@ha */
/* 80CD1A00  C4 03 69 44 */	lfsu f0, l_srcPosL@l(r3)  /* 0x80CD6944@l */
/* 80CD1A04  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CD1A08  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD1A0C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CD1A10  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD1A14  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CD1A18  48 00 00 20 */	b lbl_80CD1A38
lbl_80CD1A1C:
/* 80CD1A1C  3C 60 80 CD */	lis r3, l_srcPosR@ha /* 0x80CD692C@ha */
/* 80CD1A20  C4 03 69 2C */	lfsu f0, l_srcPosR@l(r3)  /* 0x80CD692C@l */
/* 80CD1A24  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CD1A28  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD1A2C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CD1A30  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD1A34  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_80CD1A38:
/* 80CD1A38  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CD1A3C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CD1A40  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CD1A44  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CD1A48  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80CD1A4C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CD1A50  7F E3 FB 78 */	mr r3, r31
/* 80CD1A54  38 81 00 48 */	addi r4, r1, 0x48
/* 80CD1A58  4B 47 8E B1 */	bl setPos__8daNpcT_cF4cXyz
/* 80CD1A5C  7F E3 FB 78 */	mr r3, r31
/* 80CD1A60  A8 81 00 2A */	lha r4, 0x2a(r1)
/* 80CD1A64  4B 47 8F B5 */	bl setAngle__8daNpcT_cFs
/* 80CD1A68  48 00 06 54 */	b lbl_80CD20BC
lbl_80CD1A6C:
/* 80CD1A6C  38 60 02 5E */	li r3, 0x25e
/* 80CD1A70  4B 47 B0 3D */	bl daNpcT_chkEvtBit__FUl
/* 80CD1A74  2C 03 00 00 */	cmpwi r3, 0
/* 80CD1A78  41 82 00 24 */	beq lbl_80CD1A9C
/* 80CD1A7C  3C 60 80 CD */	lis r3, l_srcPosR@ha /* 0x80CD692C@ha */
/* 80CD1A80  C4 03 69 2C */	lfsu f0, l_srcPosR@l(r3)  /* 0x80CD692C@l */
/* 80CD1A84  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CD1A88  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD1A8C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CD1A90  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD1A94  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CD1A98  48 00 00 20 */	b lbl_80CD1AB8
lbl_80CD1A9C:
/* 80CD1A9C  3C 60 80 CD */	lis r3, l_srcPosL@ha /* 0x80CD6944@ha */
/* 80CD1AA0  C4 03 69 44 */	lfsu f0, l_srcPosL@l(r3)  /* 0x80CD6944@l */
/* 80CD1AA4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CD1AA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD1AAC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CD1AB0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD1AB4  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_80CD1AB8:
/* 80CD1AB8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CD1ABC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CD1AC0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CD1AC4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CD1AC8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80CD1ACC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CD1AD0  7F E3 FB 78 */	mr r3, r31
/* 80CD1AD4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80CD1AD8  4B 47 8E 31 */	bl setPos__8daNpcT_cF4cXyz
/* 80CD1ADC  7F E3 FB 78 */	mr r3, r31
/* 80CD1AE0  A8 81 00 2A */	lha r4, 0x2a(r1)
/* 80CD1AE4  4B 47 8F 35 */	bl setAngle__8daNpcT_cFs
/* 80CD1AE8  48 00 05 D4 */	b lbl_80CD20BC
lbl_80CD1AEC:
/* 80CD1AEC  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD1AF0  28 00 00 00 */	cmplwi r0, 0
/* 80CD1AF4  40 82 00 7C */	bne lbl_80CD1B70
/* 80CD1AF8  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 80CD1AFC  4B 47 3C 0D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CD1B00  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80CD1B04  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80CD1B08  EC 01 00 2A */	fadds f0, f1, f0
/* 80CD1B0C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80CD1B10  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CD1B14  D0 03 04 BC */	stfs f0, 0x4bc(r3)
/* 80CD1B18  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CD1B1C  D0 03 04 C0 */	stfs f0, 0x4c0(r3)
/* 80CD1B20  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CD1B24  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
/* 80CD1B28  38 00 00 01 */	li r0, 1
/* 80CD1B2C  98 03 0E 25 */	stb r0, 0xe25(r3)
/* 80CD1B30  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 80CD1B34  4B 47 3B D5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CD1B38  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80CD1B3C  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80CD1B40  EC 01 00 2A */	fadds f0, f1, f0
/* 80CD1B44  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80CD1B48  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CD1B4C  D0 03 04 BC */	stfs f0, 0x4bc(r3)
/* 80CD1B50  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CD1B54  D0 03 04 C0 */	stfs f0, 0x4c0(r3)
/* 80CD1B58  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CD1B5C  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
/* 80CD1B60  38 00 00 01 */	li r0, 1
/* 80CD1B64  98 03 0E 25 */	stb r0, 0xe25(r3)
/* 80CD1B68  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD1B6C  D0 1F 11 64 */	stfs f0, 0x1164(r31)
lbl_80CD1B70:
/* 80CD1B70  38 00 00 00 */	li r0, 0
/* 80CD1B74  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80CD1B78  48 00 05 44 */	b lbl_80CD20BC
lbl_80CD1B7C:
/* 80CD1B7C  92 FF 0D C4 */	stw r23, 0xdc4(r31)
/* 80CD1B80  48 00 05 3C */	b lbl_80CD20BC
lbl_80CD1B84:
/* 80CD1B84  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD1B88  28 00 00 00 */	cmplwi r0, 0
/* 80CD1B8C  40 82 05 30 */	bne lbl_80CD20BC
/* 80CD1B90  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD1B94  D0 1F 11 64 */	stfs f0, 0x1164(r31)
/* 80CD1B98  48 00 05 24 */	b lbl_80CD20BC
lbl_80CD1B9C:
/* 80CD1B9C  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD1BA0  2C 00 00 01 */	cmpwi r0, 1
/* 80CD1BA4  41 82 00 48 */	beq lbl_80CD1BEC
/* 80CD1BA8  40 80 00 70 */	bge lbl_80CD1C18
/* 80CD1BAC  2C 00 00 00 */	cmpwi r0, 0
/* 80CD1BB0  40 80 00 0C */	bge lbl_80CD1BBC
/* 80CD1BB4  48 00 00 64 */	b lbl_80CD1C18
/* 80CD1BB8  48 00 00 60 */	b lbl_80CD1C18
lbl_80CD1BBC:
/* 80CD1BBC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD1BC0  2C 00 00 01 */	cmpwi r0, 1
/* 80CD1BC4  41 82 00 54 */	beq lbl_80CD1C18
/* 80CD1BC8  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 80CD1BCC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD1BD0  4B 47 3C C9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD1BD4  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 80CD1BD8  38 00 00 01 */	li r0, 1
/* 80CD1BDC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD1BE0  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80CD1BE4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80CD1BE8  48 00 00 30 */	b lbl_80CD1C18
lbl_80CD1BEC:
/* 80CD1BEC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD1BF0  2C 00 00 0C */	cmpwi r0, 0xc
/* 80CD1BF4  41 82 00 24 */	beq lbl_80CD1C18
/* 80CD1BF8  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 80CD1BFC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD1C00  4B 47 3C 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD1C04  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 80CD1C08  38 00 00 0C */	li r0, 0xc
/* 80CD1C0C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD1C10  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80CD1C14  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80CD1C18:
/* 80CD1C18  92 FF 0D C4 */	stw r23, 0xdc4(r31)
/* 80CD1C1C  48 00 04 A0 */	b lbl_80CD20BC
lbl_80CD1C20:
/* 80CD1C20  38 00 00 01 */	li r0, 1
/* 80CD1C24  98 1F 11 74 */	stb r0, 0x1174(r31)
/* 80CD1C28  92 FF 0D C4 */	stw r23, 0xdc4(r31)
/* 80CD1C2C  48 00 04 90 */	b lbl_80CD20BC
lbl_80CD1C30:
/* 80CD1C30  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD1C34  2C 00 00 01 */	cmpwi r0, 1
/* 80CD1C38  41 82 00 48 */	beq lbl_80CD1C80
/* 80CD1C3C  40 80 00 70 */	bge lbl_80CD1CAC
/* 80CD1C40  2C 00 00 00 */	cmpwi r0, 0
/* 80CD1C44  40 80 00 0C */	bge lbl_80CD1C50
/* 80CD1C48  48 00 00 64 */	b lbl_80CD1CAC
/* 80CD1C4C  48 00 00 60 */	b lbl_80CD1CAC
lbl_80CD1C50:
/* 80CD1C50  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD1C54  2C 00 00 08 */	cmpwi r0, 8
/* 80CD1C58  41 82 00 54 */	beq lbl_80CD1CAC
/* 80CD1C5C  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 80CD1C60  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD1C64  4B 47 3C 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD1C68  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 80CD1C6C  38 00 00 08 */	li r0, 8
/* 80CD1C70  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD1C74  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD1C78  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80CD1C7C  48 00 00 30 */	b lbl_80CD1CAC
lbl_80CD1C80:
/* 80CD1C80  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD1C84  2C 00 00 13 */	cmpwi r0, 0x13
/* 80CD1C88  41 82 00 24 */	beq lbl_80CD1CAC
/* 80CD1C8C  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 80CD1C90  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD1C94  4B 47 3C 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD1C98  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 80CD1C9C  38 00 00 13 */	li r0, 0x13
/* 80CD1CA0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD1CA4  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD1CA8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80CD1CAC:
/* 80CD1CAC  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80CD1CB0  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80CD1CB4  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80CD1CB8  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80CD1CBC  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80CD1CC0  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80CD1CC4  C0 5F 04 A8 */	lfs f2, 0x4a8(r31)
/* 80CD1CC8  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80CD1CCC  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80CD1CD0  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80CD1CD4  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80CD1CD8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CD1CDC  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80CD1CE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80CD1CE4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CD1CE8  D0 5F 04 D0 */	stfs f2, 0x4d0(r31)
/* 80CD1CEC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CD1CF0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CD1CF4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80CD1CF8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80CD1CFC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CD1D00  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80CD1D04  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CD1D08  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80CD1D0C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CD1D10  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80CD1D14  7F E3 FB 78 */	mr r3, r31
/* 80CD1D18  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80CD1D1C  4B 47 8C FD */	bl setAngle__8daNpcT_cFs
/* 80CD1D20  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD1D24  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CD1D28  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CD1D2C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CD1D30  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80CD1D34  92 FF 0D C4 */	stw r23, 0xdc4(r31)
/* 80CD1D38  38 00 00 00 */	li r0, 0
/* 80CD1D3C  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80CD1D40  48 00 03 7C */	b lbl_80CD20BC
lbl_80CD1D44:
/* 80CD1D44  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD1D48  28 00 00 00 */	cmplwi r0, 0
/* 80CD1D4C  40 82 03 70 */	bne lbl_80CD20BC
/* 80CD1D50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD1D54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD1D58  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD1D5C  38 00 00 00 */	li r0, 0
/* 80CD1D60  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80CD1D64  2C 1B 00 0D */	cmpwi r27, 0xd
/* 80CD1D68  40 82 03 54 */	bne lbl_80CD20BC
/* 80CD1D6C  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 80CD1D70  4B 47 39 99 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CD1D74  7C 64 1B 78 */	mr r4, r3
/* 80CD1D78  38 00 00 00 */	li r0, 0
/* 80CD1D7C  98 03 0B 29 */	stb r0, 0xb29(r3)
/* 80CD1D80  98 03 0B 2A */	stb r0, 0xb2a(r3)
/* 80CD1D84  38 00 00 01 */	li r0, 1
/* 80CD1D88  98 03 0B 2B */	stb r0, 0xb2b(r3)
/* 80CD1D8C  38 78 4E C8 */	addi r3, r24, 0x4ec8
/* 80CD1D90  4B 37 18 CD */	bl setPt2__14dEvt_control_cFPv
/* 80CD1D94  38 00 00 98 */	li r0, 0x98
/* 80CD1D98  90 01 00 08 */	stw r0, 8(r1)
/* 80CD1D9C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CD1DA0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CD1DA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD1DA8  38 81 00 08 */	addi r4, r1, 8
/* 80CD1DAC  38 A0 00 00 */	li r5, 0
/* 80CD1DB0  38 C0 00 00 */	li r6, 0
/* 80CD1DB4  38 E0 00 00 */	li r7, 0
/* 80CD1DB8  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80CD1DBC  FC 40 08 90 */	fmr f2, f1
/* 80CD1DC0  C0 7E 01 18 */	lfs f3, 0x118(r30)
/* 80CD1DC4  FC 80 18 90 */	fmr f4, f3
/* 80CD1DC8  39 00 00 00 */	li r8, 0
/* 80CD1DCC  4B 5D 9B B9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CD1DD0  48 00 02 EC */	b lbl_80CD20BC
lbl_80CD1DD4:
/* 80CD1DD4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80CD1DD8  2C 00 00 00 */	cmpwi r0, 0
/* 80CD1DDC  41 82 00 24 */	beq lbl_80CD1E00
/* 80CD1DE0  82 FF 0B 5C */	lwz r23, 0xb5c(r31)
/* 80CD1DE4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CD1DE8  4B 47 3A B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD1DEC  92 FF 0B 5C */	stw r23, 0xb5c(r31)
/* 80CD1DF0  38 00 00 00 */	li r0, 0
/* 80CD1DF4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80CD1DF8  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD1DFC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80CD1E00:
/* 80CD1E00  7F E3 FB 78 */	mr r3, r31
/* 80CD1E04  4B FF EF E5 */	bl getWaitMotionNo__15daObj_Sekizoa_cFv
/* 80CD1E08  7C 77 1B 79 */	or. r23, r3, r3
/* 80CD1E0C  41 80 00 2C */	blt lbl_80CD1E38
/* 80CD1E10  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD1E14  7C 17 00 00 */	cmpw r23, r0
/* 80CD1E18  41 82 00 20 */	beq lbl_80CD1E38
/* 80CD1E1C  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 80CD1E20  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD1E24  4B 47 3A 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD1E28  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 80CD1E2C  92 FF 0B 7C */	stw r23, 0xb7c(r31)
/* 80CD1E30  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD1E34  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80CD1E38:
/* 80CD1E38  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80CD1E3C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CD1E40  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80CD1E44  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CD1E48  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80CD1E4C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CD1E50  7F E3 FB 78 */	mr r3, r31
/* 80CD1E54  38 81 00 30 */	addi r4, r1, 0x30
/* 80CD1E58  4B 47 8A B1 */	bl setPos__8daNpcT_cF4cXyz
/* 80CD1E5C  7F E3 FB 78 */	mr r3, r31
/* 80CD1E60  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80CD1E64  4B 47 8B B5 */	bl setAngle__8daNpcT_cFs
/* 80CD1E68  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD1E6C  28 00 00 00 */	cmplwi r0, 0
/* 80CD1E70  40 82 01 58 */	bne lbl_80CD1FC8
/* 80CD1E74  38 60 00 01 */	li r3, 1
/* 80CD1E78  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CD1E7C  7C 04 07 74 */	extsb r4, r0
/* 80CD1E80  38 A1 00 54 */	addi r5, r1, 0x54
/* 80CD1E84  38 C1 00 28 */	addi r6, r1, 0x28
/* 80CD1E88  4B 47 A6 79 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80CD1E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD1E90  41 82 00 38 */	beq lbl_80CD1EC8
/* 80CD1E94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD1E98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD1E9C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD1EA0  38 81 00 54 */	addi r4, r1, 0x54
/* 80CD1EA4  A8 A1 00 2A */	lha r5, 0x2a(r1)
/* 80CD1EA8  38 C0 00 00 */	li r6, 0
/* 80CD1EAC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CD1EB0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CD1EB4  7D 89 03 A6 */	mtctr r12
/* 80CD1EB8  4E 80 04 21 */	bctrl 
/* 80CD1EBC  7F A3 EB 78 */	mr r3, r29
/* 80CD1EC0  38 81 00 54 */	addi r4, r1, 0x54
/* 80CD1EC4  4B 37 65 01 */	bl setGoal__16dEvent_manager_cFP4cXyz
lbl_80CD1EC8:
/* 80CD1EC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD1ECC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD1ED0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CD1ED4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CD1ED8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CD1EDC  7C 05 07 74 */	extsb r5, r0
/* 80CD1EE0  4B 36 33 21 */	bl onSwitch__10dSv_info_cFii
/* 80CD1EE4  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 80CD1EE8  4B 47 38 21 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CD1EEC  38 00 00 00 */	li r0, 0
/* 80CD1EF0  98 03 0B 29 */	stb r0, 0xb29(r3)
/* 80CD1EF4  98 03 0B 2A */	stb r0, 0xb2a(r3)
/* 80CD1EF8  38 00 00 01 */	li r0, 1
/* 80CD1EFC  98 03 0B 2B */	stb r0, 0xb2b(r3)
/* 80CD1F00  38 60 00 0A */	li r3, 0xa
/* 80CD1F04  38 80 00 0A */	li r4, 0xa
/* 80CD1F08  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80CD1F0C  4B 4D 69 01 */	bl dKy_custom_colset__FUcUcf
/* 80CD1F10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD1F14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD1F18  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD1F1C  38 00 00 27 */	li r0, 0x27
/* 80CD1F20  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80CD1F24  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CD1F28  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CD1F2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD1F30  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80CD1F34  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002E@ha */
/* 80CD1F38  38 84 00 2E */	addi r4, r4, 0x002E /* 0x0100002E@l */
/* 80CD1F3C  4B 5D D5 61 */	bl subBgmStart__8Z2SeqMgrFUl
/* 80CD1F40  38 60 00 31 */	li r3, 0x31
/* 80CD1F44  4B 47 AB A9 */	bl daNpcT_onTmpBit__FUl
/* 80CD1F48  38 00 00 00 */	li r0, 0
/* 80CD1F4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD1F50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD1F54  98 03 5E B8 */	stb r0, 0x5eb8(r3)
/* 80CD1F58  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 80CD1F5C  4B 47 37 AD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CD1F60  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80CD1F64  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80CD1F68  EC 01 00 2A */	fadds f0, f1, f0
/* 80CD1F6C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80CD1F70  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CD1F74  D0 03 04 BC */	stfs f0, 0x4bc(r3)
/* 80CD1F78  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CD1F7C  D0 03 04 C0 */	stfs f0, 0x4c0(r3)
/* 80CD1F80  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CD1F84  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
/* 80CD1F88  38 00 00 01 */	li r0, 1
/* 80CD1F8C  98 03 0E 25 */	stb r0, 0xe25(r3)
/* 80CD1F90  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 80CD1F94  4B 47 37 75 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CD1F98  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80CD1F9C  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80CD1FA0  EC 01 00 2A */	fadds f0, f1, f0
/* 80CD1FA4  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80CD1FA8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CD1FAC  D0 03 04 BC */	stfs f0, 0x4bc(r3)
/* 80CD1FB0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CD1FB4  D0 03 04 C0 */	stfs f0, 0x4c0(r3)
/* 80CD1FB8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CD1FBC  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
/* 80CD1FC0  38 00 00 01 */	li r0, 1
/* 80CD1FC4  98 03 0E 25 */	stb r0, 0xe25(r3)
lbl_80CD1FC8:
/* 80CD1FC8  38 00 00 00 */	li r0, 0
/* 80CD1FCC  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80CD1FD0  38 00 00 01 */	li r0, 1
/* 80CD1FD4  98 1F 11 76 */	stb r0, 0x1176(r31)
/* 80CD1FD8  48 00 00 E4 */	b lbl_80CD20BC
lbl_80CD1FDC:
/* 80CD1FDC  7F E3 FB 78 */	mr r3, r31
/* 80CD1FE0  4B FF EE 51 */	bl getGameMotionNo__15daObj_Sekizoa_cFv
/* 80CD1FE4  7C 78 1B 79 */	or. r24, r3, r3
/* 80CD1FE8  41 80 00 2C */	blt lbl_80CD2014
/* 80CD1FEC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD1FF0  7C 18 00 00 */	cmpw r24, r0
/* 80CD1FF4  41 82 00 20 */	beq lbl_80CD2014
/* 80CD1FF8  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80CD1FFC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD2000  4B 47 38 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD2004  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80CD2008  93 1F 0B 7C */	stw r24, 0xb7c(r31)
/* 80CD200C  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80CD2010  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80CD2014:
/* 80CD2014  92 FF 0D C4 */	stw r23, 0xdc4(r31)
/* 80CD2018  48 00 00 A4 */	b lbl_80CD20BC
lbl_80CD201C:
/* 80CD201C  92 FF 0D C4 */	stw r23, 0xdc4(r31)
/* 80CD2020  48 00 00 9C */	b lbl_80CD20BC
lbl_80CD2024:
/* 80CD2024  38 7F 09 74 */	addi r3, r31, 0x974
/* 80CD2028  38 80 00 00 */	li r4, 0
/* 80CD202C  38 A0 00 71 */	li r5, 0x71
/* 80CD2030  38 C0 00 00 */	li r6, 0
/* 80CD2034  38 E0 00 00 */	li r7, 0
/* 80CD2038  4B 57 7F 59 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80CD203C  48 00 00 80 */	b lbl_80CD20BC
lbl_80CD2040:
/* 80CD2040  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD2044  28 00 00 00 */	cmplwi r0, 0
/* 80CD2048  40 82 00 6C */	bne lbl_80CD20B4
/* 80CD204C  38 60 00 01 */	li r3, 1
/* 80CD2050  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CD2054  7C 04 07 74 */	extsb r4, r0
/* 80CD2058  38 A1 00 54 */	addi r5, r1, 0x54
/* 80CD205C  38 C1 00 28 */	addi r6, r1, 0x28
/* 80CD2060  4B 47 A4 A1 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80CD2064  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2068  41 82 00 38 */	beq lbl_80CD20A0
/* 80CD206C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD2070  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD2074  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD2078  38 81 00 54 */	addi r4, r1, 0x54
/* 80CD207C  A8 A1 00 2A */	lha r5, 0x2a(r1)
/* 80CD2080  38 C0 00 00 */	li r6, 0
/* 80CD2084  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CD2088  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CD208C  7D 89 03 A6 */	mtctr r12
/* 80CD2090  4E 80 04 21 */	bctrl 
/* 80CD2094  7F A3 EB 78 */	mr r3, r29
/* 80CD2098  38 81 00 54 */	addi r4, r1, 0x54
/* 80CD209C  4B 37 63 29 */	bl setGoal__16dEvent_manager_cFP4cXyz
lbl_80CD20A0:
/* 80CD20A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD20A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD20A8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD20AC  38 00 00 27 */	li r0, 0x27
/* 80CD20B0  98 03 05 6A */	stb r0, 0x56a(r3)
lbl_80CD20B4:
/* 80CD20B4  38 00 00 01 */	li r0, 1
/* 80CD20B8  98 1F 0E 25 */	stb r0, 0xe25(r31)
lbl_80CD20BC:
/* 80CD20BC  80 7E 01 44 */	lwz r3, 0x144(r30)
/* 80CD20C0  80 1E 01 48 */	lwz r0, 0x148(r30)
/* 80CD20C4  90 61 00 20 */	stw r3, 0x20(r1)
/* 80CD20C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD20CC  2C 1B 00 09 */	cmpwi r27, 9
/* 80CD20D0  41 82 04 F0 */	beq lbl_80CD25C0
/* 80CD20D4  40 80 00 40 */	bge lbl_80CD2114
/* 80CD20D8  2C 1B 00 03 */	cmpwi r27, 3
/* 80CD20DC  41 82 01 78 */	beq lbl_80CD2254
/* 80CD20E0  40 80 00 1C */	bge lbl_80CD20FC
/* 80CD20E4  2C 1B 00 01 */	cmpwi r27, 1
/* 80CD20E8  41 82 00 70 */	beq lbl_80CD2158
/* 80CD20EC  40 80 00 E4 */	bge lbl_80CD21D0
/* 80CD20F0  2C 1B 00 00 */	cmpwi r27, 0
/* 80CD20F4  40 80 00 5C */	bge lbl_80CD2150
/* 80CD20F8  48 00 05 F4 */	b lbl_80CD26EC
lbl_80CD20FC:
/* 80CD20FC  2C 1B 00 06 */	cmpwi r27, 6
/* 80CD2100  41 82 04 10 */	beq lbl_80CD2510
/* 80CD2104  40 80 04 B4 */	bge lbl_80CD25B8
/* 80CD2108  2C 1B 00 05 */	cmpwi r27, 5
/* 80CD210C  40 80 03 38 */	bge lbl_80CD2444
/* 80CD2110  48 00 01 88 */	b lbl_80CD2298
lbl_80CD2114:
/* 80CD2114  2C 1B 00 14 */	cmpwi r27, 0x14
/* 80CD2118  41 82 05 1C */	beq lbl_80CD2634
/* 80CD211C  40 80 00 28 */	bge lbl_80CD2144
/* 80CD2120  2C 1B 00 0C */	cmpwi r27, 0xc
/* 80CD2124  41 82 05 BC */	beq lbl_80CD26E0
/* 80CD2128  40 80 00 10 */	bge lbl_80CD2138
/* 80CD212C  2C 1B 00 0B */	cmpwi r27, 0xb
/* 80CD2130  40 80 05 04 */	bge lbl_80CD2634
/* 80CD2134  48 00 04 E8 */	b lbl_80CD261C
lbl_80CD2138:
/* 80CD2138  2C 1B 00 0E */	cmpwi r27, 0xe
/* 80CD213C  40 80 05 B0 */	bge lbl_80CD26EC
/* 80CD2140  48 00 04 78 */	b lbl_80CD25B8
lbl_80CD2144:
/* 80CD2144  2C 1B 00 63 */	cmpwi r27, 0x63
/* 80CD2148  41 82 05 A4 */	beq lbl_80CD26EC
/* 80CD214C  48 00 05 A0 */	b lbl_80CD26EC
lbl_80CD2150:
/* 80CD2150  3B 80 00 01 */	li r28, 1
/* 80CD2154  48 00 05 98 */	b lbl_80CD26EC
lbl_80CD2158:
/* 80CD2158  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD215C  28 00 00 00 */	cmplwi r0, 0
/* 80CD2160  40 82 00 68 */	bne lbl_80CD21C8
/* 80CD2164  38 60 00 00 */	li r3, 0
/* 80CD2168  38 80 00 09 */	li r4, 9
/* 80CD216C  C0 3F 11 64 */	lfs f1, 0x1164(r31)
/* 80CD2170  4B 4D 66 9D */	bl dKy_custom_colset__FUcUcf
/* 80CD2174  C0 1F 11 64 */	lfs f0, 0x1164(r31)
/* 80CD2178  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80CD217C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CD2180  40 80 00 40 */	bge lbl_80CD21C0
/* 80CD2184  38 7F 11 64 */	addi r3, r31, 0x1164
/* 80CD2188  C0 5E 01 54 */	lfs f2, 0x154(r30)
/* 80CD218C  4B 59 E5 B5 */	bl cLib_chaseF__FPfff
/* 80CD2190  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80CD2194  C0 1F 11 64 */	lfs f0, 0x1164(r31)
/* 80CD2198  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CD219C  40 82 05 50 */	bne lbl_80CD26EC
/* 80CD21A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CD21A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CD21A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD21AC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80CD21B0  38 80 00 1E */	li r4, 0x1e
/* 80CD21B4  38 A0 00 00 */	li r5, 0
/* 80CD21B8  4B 5D D2 51 */	bl bgmStop__8Z2SeqMgrFUll
/* 80CD21BC  48 00 05 30 */	b lbl_80CD26EC
lbl_80CD21C0:
/* 80CD21C0  3B 80 00 01 */	li r28, 1
/* 80CD21C4  48 00 05 28 */	b lbl_80CD26EC
lbl_80CD21C8:
/* 80CD21C8  3B 80 00 01 */	li r28, 1
/* 80CD21CC  48 00 05 20 */	b lbl_80CD26EC
lbl_80CD21D0:
/* 80CD21D0  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD21D4  28 00 00 00 */	cmplwi r0, 0
/* 80CD21D8  40 82 05 14 */	bne lbl_80CD26EC
/* 80CD21DC  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 80CD21E0  4B 47 35 29 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CD21E4  7C 77 1B 78 */	mr r23, r3
/* 80CD21E8  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80CD21EC  2C 00 00 00 */	cmpwi r0, 0
/* 80CD21F0  40 82 00 18 */	bne lbl_80CD2208
/* 80CD21F4  7F A3 EB 78 */	mr r3, r29
/* 80CD21F8  7F 24 CB 78 */	mr r4, r25
/* 80CD21FC  4B 37 5B 51 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80CD2200  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2204  41 82 00 3C */	beq lbl_80CD2240
lbl_80CD2208:
/* 80CD2208  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80CD220C  48 00 36 79 */	bl func_80CD5884
/* 80CD2210  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2214  40 82 04 D8 */	bne lbl_80CD26EC
/* 80CD2218  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD221C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD2220  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CD2224  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CD2228  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CD222C  7C 05 07 74 */	extsb r5, r0
/* 80CD2230  4B 36 2F D1 */	bl onSwitch__10dSv_info_cFii
/* 80CD2234  38 00 00 01 */	li r0, 1
/* 80CD2238  98 17 0B 29 */	stb r0, 0xb29(r23)
/* 80CD223C  48 00 04 B0 */	b lbl_80CD26EC
lbl_80CD2240:
/* 80CD2240  88 17 0B 2A */	lbz r0, 0xb2a(r23)
/* 80CD2244  28 00 00 01 */	cmplwi r0, 1
/* 80CD2248  40 82 04 A4 */	bne lbl_80CD26EC
/* 80CD224C  3B 80 00 01 */	li r28, 1
/* 80CD2250  48 00 04 9C */	b lbl_80CD26EC
lbl_80CD2254:
/* 80CD2254  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD2258  28 00 00 00 */	cmplwi r0, 0
/* 80CD225C  40 82 04 90 */	bne lbl_80CD26EC
/* 80CD2260  38 60 00 09 */	li r3, 9
/* 80CD2264  38 80 00 0A */	li r4, 0xa
/* 80CD2268  C0 3F 11 64 */	lfs f1, 0x1164(r31)
/* 80CD226C  4B 4D 65 A1 */	bl dKy_custom_colset__FUcUcf
/* 80CD2270  C0 1F 11 64 */	lfs f0, 0x1164(r31)
/* 80CD2274  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80CD2278  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CD227C  40 80 00 14 */	bge lbl_80CD2290
/* 80CD2280  38 7F 11 64 */	addi r3, r31, 0x1164
/* 80CD2284  C0 5E 01 54 */	lfs f2, 0x154(r30)
/* 80CD2288  4B 59 E4 B9 */	bl cLib_chaseF__FPfff
/* 80CD228C  48 00 04 60 */	b lbl_80CD26EC
lbl_80CD2290:
/* 80CD2290  3B 80 00 01 */	li r28, 1
/* 80CD2294  48 00 04 58 */	b lbl_80CD26EC
lbl_80CD2298:
/* 80CD2298  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80CD229C  2C 00 00 00 */	cmpwi r0, 0
/* 80CD22A0  40 82 00 18 */	bne lbl_80CD22B8
/* 80CD22A4  7F A3 EB 78 */	mr r3, r29
/* 80CD22A8  7F 24 CB 78 */	mr r4, r25
/* 80CD22AC  4B 37 5A A1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80CD22B0  2C 03 00 00 */	cmpwi r3, 0
/* 80CD22B4  41 82 01 4C */	beq lbl_80CD2400
lbl_80CD22B8:
/* 80CD22B8  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80CD22BC  48 00 35 C9 */	bl func_80CD5884
/* 80CD22C0  2C 03 00 00 */	cmpwi r3, 0
/* 80CD22C4  40 82 04 28 */	bne lbl_80CD26EC
/* 80CD22C8  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD22CC  2C 00 00 01 */	cmpwi r0, 1
/* 80CD22D0  41 82 00 A4 */	beq lbl_80CD2374
/* 80CD22D4  40 80 04 18 */	bge lbl_80CD26EC
/* 80CD22D8  2C 00 00 00 */	cmpwi r0, 0
/* 80CD22DC  40 80 00 0C */	bge lbl_80CD22E8
/* 80CD22E0  48 00 04 0C */	b lbl_80CD26EC
/* 80CD22E4  48 00 04 08 */	b lbl_80CD26EC
lbl_80CD22E8:
/* 80CD22E8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD22EC  2C 00 00 03 */	cmpwi r0, 3
/* 80CD22F0  41 82 00 24 */	beq lbl_80CD2314
/* 80CD22F4  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80CD22F8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD22FC  4B 47 35 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD2300  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80CD2304  38 00 00 03 */	li r0, 3
/* 80CD2308  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD230C  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80CD2310  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80CD2314:
/* 80CD2314  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600CF@ha */
/* 80CD2318  38 03 00 CF */	addi r0, r3, 0x00CF /* 0x000600CF@l */
/* 80CD231C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CD2320  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CD2324  38 81 00 1C */	addi r4, r1, 0x1c
/* 80CD2328  38 A0 00 00 */	li r5, 0
/* 80CD232C  38 C0 FF FF */	li r6, -1
/* 80CD2330  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80CD2334  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD2338  7D 89 03 A6 */	mtctr r12
/* 80CD233C  4E 80 04 21 */	bctrl 
/* 80CD2340  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501DA@ha */
/* 80CD2344  38 03 01 DA */	addi r0, r3, 0x01DA /* 0x000501DA@l */
/* 80CD2348  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CD234C  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CD2350  38 81 00 18 */	addi r4, r1, 0x18
/* 80CD2354  38 A0 FF FF */	li r5, -1
/* 80CD2358  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80CD235C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CD2360  7D 89 03 A6 */	mtctr r12
/* 80CD2364  4E 80 04 21 */	bctrl 
/* 80CD2368  38 00 00 01 */	li r0, 1
/* 80CD236C  98 1F 11 76 */	stb r0, 0x1176(r31)
/* 80CD2370  48 00 03 7C */	b lbl_80CD26EC
lbl_80CD2374:
/* 80CD2374  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD2378  2C 00 00 0E */	cmpwi r0, 0xe
/* 80CD237C  41 82 00 24 */	beq lbl_80CD23A0
/* 80CD2380  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80CD2384  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD2388  4B 47 35 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD238C  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80CD2390  38 00 00 0E */	li r0, 0xe
/* 80CD2394  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD2398  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80CD239C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80CD23A0:
/* 80CD23A0  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600CF@ha */
/* 80CD23A4  38 03 00 CF */	addi r0, r3, 0x00CF /* 0x000600CF@l */
/* 80CD23A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD23AC  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CD23B0  38 81 00 14 */	addi r4, r1, 0x14
/* 80CD23B4  38 A0 00 00 */	li r5, 0
/* 80CD23B8  38 C0 FF FF */	li r6, -1
/* 80CD23BC  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80CD23C0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD23C4  7D 89 03 A6 */	mtctr r12
/* 80CD23C8  4E 80 04 21 */	bctrl 
/* 80CD23CC  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501DB@ha */
/* 80CD23D0  38 03 01 DB */	addi r0, r3, 0x01DB /* 0x000501DB@l */
/* 80CD23D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CD23D8  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CD23DC  38 81 00 10 */	addi r4, r1, 0x10
/* 80CD23E0  38 A0 FF FF */	li r5, -1
/* 80CD23E4  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80CD23E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CD23EC  7D 89 03 A6 */	mtctr r12
/* 80CD23F0  4E 80 04 21 */	bctrl 
/* 80CD23F4  38 00 00 01 */	li r0, 1
/* 80CD23F8  98 1F 11 76 */	stb r0, 0x1176(r31)
/* 80CD23FC  48 00 02 F0 */	b lbl_80CD26EC
lbl_80CD2400:
/* 80CD2400  88 7F 10 C8 */	lbz r3, 0x10c8(r31)
/* 80CD2404  28 03 00 00 */	cmplwi r3, 0
/* 80CD2408  40 82 00 10 */	bne lbl_80CD2418
/* 80CD240C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD2410  2C 00 00 03 */	cmpwi r0, 3
/* 80CD2414  41 82 00 18 */	beq lbl_80CD242C
lbl_80CD2418:
/* 80CD2418  28 03 00 01 */	cmplwi r3, 1
/* 80CD241C  40 82 02 D0 */	bne lbl_80CD26EC
/* 80CD2420  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD2424  2C 00 00 0E */	cmpwi r0, 0xe
/* 80CD2428  40 82 02 C4 */	bne lbl_80CD26EC
lbl_80CD242C:
/* 80CD242C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD2430  4B 47 35 F5 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80CD2434  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2438  41 82 02 B4 */	beq lbl_80CD26EC
/* 80CD243C  3B 80 00 01 */	li r28, 1
/* 80CD2440  48 00 02 AC */	b lbl_80CD26EC
lbl_80CD2444:
/* 80CD2444  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80CD2448  2C 00 00 00 */	cmpwi r0, 0
/* 80CD244C  41 82 00 A8 */	beq lbl_80CD24F4
/* 80CD2450  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80CD2454  48 00 34 31 */	bl func_80CD5884
/* 80CD2458  2C 03 00 00 */	cmpwi r3, 0
/* 80CD245C  41 82 00 10 */	beq lbl_80CD246C
/* 80CD2460  7F E3 FB 78 */	mr r3, r31
/* 80CD2464  4B FF EA B1 */	bl jump__15daObj_Sekizoa_cFv
/* 80CD2468  48 00 00 8C */	b lbl_80CD24F4
lbl_80CD246C:
/* 80CD246C  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80CD2470  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80CD2474  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80CD2478  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80CD247C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80CD2480  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80CD2484  C0 5F 04 A8 */	lfs f2, 0x4a8(r31)
/* 80CD2488  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80CD248C  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80CD2490  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80CD2494  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80CD2498  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CD249C  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80CD24A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80CD24A4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CD24A8  D0 5F 04 D0 */	stfs f2, 0x4d0(r31)
/* 80CD24AC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CD24B0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CD24B4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80CD24B8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80CD24BC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CD24C0  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80CD24C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CD24C8  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80CD24CC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CD24D0  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80CD24D4  7F E3 FB 78 */	mr r3, r31
/* 80CD24D8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80CD24DC  4B 47 85 3D */	bl setAngle__8daNpcT_cFs
/* 80CD24E0  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD24E4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CD24E8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CD24EC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CD24F0  D0 1F 05 00 */	stfs f0, 0x500(r31)
lbl_80CD24F4:
/* 80CD24F4  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80CD24F8  2C 00 00 00 */	cmpwi r0, 0
/* 80CD24FC  40 82 01 F0 */	bne lbl_80CD26EC
/* 80CD2500  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD2504  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CD2508  3B 80 00 01 */	li r28, 1
/* 80CD250C  48 00 01 E0 */	b lbl_80CD26EC
lbl_80CD2510:
/* 80CD2510  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80CD2514  2C 00 00 00 */	cmpwi r0, 0
/* 80CD2518  41 82 00 18 */	beq lbl_80CD2530
/* 80CD251C  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80CD2520  48 00 33 65 */	bl func_80CD5884
/* 80CD2524  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD2528  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CD252C  48 00 01 C0 */	b lbl_80CD26EC
lbl_80CD2530:
/* 80CD2530  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 80CD2534  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80CD2538  41 82 01 B4 */	beq lbl_80CD26EC
/* 80CD253C  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80CD2540  41 82 00 10 */	beq lbl_80CD2550
/* 80CD2544  7F E3 FB 78 */	mr r3, r31
/* 80CD2548  4B FF EF 91 */	bl landing__15daObj_Sekizoa_cFv
/* 80CD254C  48 00 01 A0 */	b lbl_80CD26EC
lbl_80CD2550:
/* 80CD2550  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD2554  2C 00 00 09 */	cmpwi r0, 9
/* 80CD2558  41 82 00 0C */	beq lbl_80CD2564
/* 80CD255C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80CD2560  40 82 00 50 */	bne lbl_80CD25B0
lbl_80CD2564:
/* 80CD2564  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD2568  4B 47 34 BD */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80CD256C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2570  41 82 01 7C */	beq lbl_80CD26EC
/* 80CD2574  7F E3 FB 78 */	mr r3, r31
/* 80CD2578  4B FF E8 71 */	bl getWaitMotionNo__15daObj_Sekizoa_cFv
/* 80CD257C  7C 77 1B 79 */	or. r23, r3, r3
/* 80CD2580  41 80 01 6C */	blt lbl_80CD26EC
/* 80CD2584  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD2588  7C 17 00 00 */	cmpw r23, r0
/* 80CD258C  41 82 01 60 */	beq lbl_80CD26EC
/* 80CD2590  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80CD2594  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD2598  4B 47 33 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD259C  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80CD25A0  92 FF 0B 7C */	stw r23, 0xb7c(r31)
/* 80CD25A4  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80CD25A8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80CD25AC  48 00 01 40 */	b lbl_80CD26EC
lbl_80CD25B0:
/* 80CD25B0  3B 80 00 01 */	li r28, 1
/* 80CD25B4  48 00 01 38 */	b lbl_80CD26EC
lbl_80CD25B8:
/* 80CD25B8  3B 80 00 01 */	li r28, 1
/* 80CD25BC  48 00 01 30 */	b lbl_80CD26EC
lbl_80CD25C0:
/* 80CD25C0  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80CD25C4  2C 00 00 00 */	cmpwi r0, 0
/* 80CD25C8  40 82 00 18 */	bne lbl_80CD25E0
/* 80CD25CC  7F A3 EB 78 */	mr r3, r29
/* 80CD25D0  7F 24 CB 78 */	mr r4, r25
/* 80CD25D4  4B 37 57 79 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80CD25D8  2C 03 00 00 */	cmpwi r3, 0
/* 80CD25DC  41 82 00 30 */	beq lbl_80CD260C
lbl_80CD25E0:
/* 80CD25E0  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80CD25E4  48 00 32 A1 */	bl func_80CD5884
/* 80CD25E8  2C 03 00 00 */	cmpwi r3, 0
/* 80CD25EC  40 82 00 20 */	bne lbl_80CD260C
/* 80CD25F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CD25F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CD25F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD25FC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80CD2600  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002E@ha */
/* 80CD2604  38 84 00 2E */	addi r4, r4, 0x002E /* 0x0100002E@l */
/* 80CD2608  4B 5D CE 95 */	bl subBgmStart__8Z2SeqMgrFUl
lbl_80CD260C:
/* 80CD260C  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80CD2610  7C 00 00 34 */	cntlzw r0, r0
/* 80CD2614  54 1C DE 3E */	rlwinm r28, r0, 0x1b, 0x18, 0x1f
/* 80CD2618  48 00 00 D4 */	b lbl_80CD26EC
lbl_80CD261C:
/* 80CD261C  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80CD2620  48 00 32 65 */	bl func_80CD5884
/* 80CD2624  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2628  40 82 00 C4 */	bne lbl_80CD26EC
/* 80CD262C  3B 80 00 01 */	li r28, 1
/* 80CD2630  48 00 00 BC */	b lbl_80CD26EC
lbl_80CD2634:
/* 80CD2634  93 41 00 20 */	stw r26, 0x20(r1)
/* 80CD2638  38 00 00 00 */	li r0, 0
/* 80CD263C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80CD2640  38 7F 09 74 */	addi r3, r31, 0x974
/* 80CD2644  38 80 00 00 */	li r4, 0
/* 80CD2648  38 A0 00 00 */	li r5, 0
/* 80CD264C  38 C0 00 00 */	li r6, 0
/* 80CD2650  4B 57 7C 89 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80CD2654  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2658  41 82 00 18 */	beq lbl_80CD2670
/* 80CD265C  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80CD2660  28 00 00 01 */	cmplwi r0, 1
/* 80CD2664  40 82 00 88 */	bne lbl_80CD26EC
/* 80CD2668  3B 80 00 01 */	li r28, 1
/* 80CD266C  48 00 00 80 */	b lbl_80CD26EC
lbl_80CD2670:
/* 80CD2670  38 7F 09 74 */	addi r3, r31, 0x974
/* 80CD2674  4B 57 7E D5 */	bl getMsg__10dMsgFlow_cFv
/* 80CD2678  28 03 00 00 */	cmplwi r3, 0
/* 80CD267C  41 82 00 70 */	beq lbl_80CD26EC
/* 80CD2680  38 7F 09 74 */	addi r3, r31, 0x974
/* 80CD2684  4B 57 7E C5 */	bl getMsg__10dMsgFlow_cFv
/* 80CD2688  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CD268C  2C 00 00 06 */	cmpwi r0, 6
/* 80CD2690  41 82 00 14 */	beq lbl_80CD26A4
/* 80CD2694  40 80 00 58 */	bge lbl_80CD26EC
/* 80CD2698  2C 00 00 02 */	cmpwi r0, 2
/* 80CD269C  41 82 00 08 */	beq lbl_80CD26A4
/* 80CD26A0  48 00 00 4C */	b lbl_80CD26EC
lbl_80CD26A4:
/* 80CD26A4  3B 20 00 00 */	li r25, 0
/* 80CD26A8  3A E0 00 00 */	li r23, 0
/* 80CD26AC  3B 01 00 20 */	addi r24, r1, 0x20
/* 80CD26B0  48 00 00 20 */	b lbl_80CD26D0
lbl_80CD26B4:
/* 80CD26B4  38 7F 09 74 */	addi r3, r31, 0x974
/* 80CD26B8  4B 57 7E 81 */	bl getMsgNo__10dMsgFlow_cFv
/* 80CD26BC  7C 16 18 40 */	cmplw r22, r3
/* 80CD26C0  40 82 00 08 */	bne lbl_80CD26C8
/* 80CD26C4  3B 80 00 01 */	li r28, 1
lbl_80CD26C8:
/* 80CD26C8  3B 39 00 01 */	addi r25, r25, 1
/* 80CD26CC  3A F7 00 04 */	addi r23, r23, 4
lbl_80CD26D0:
/* 80CD26D0  7E D8 B8 2E */	lwzx r22, r24, r23
/* 80CD26D4  7C 19 B0 00 */	cmpw r25, r22
/* 80CD26D8  41 80 FF DC */	blt lbl_80CD26B4
/* 80CD26DC  48 00 00 10 */	b lbl_80CD26EC
lbl_80CD26E0:
/* 80CD26E0  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD26E4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CD26E8  3B 80 00 01 */	li r28, 1
lbl_80CD26EC:
/* 80CD26EC  7F 83 E3 78 */	mr r3, r28
/* 80CD26F0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80CD26F4  4B 68 FB 19 */	bl _restgpr_22
/* 80CD26F8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80CD26FC  7C 08 03 A6 */	mtlr r0
/* 80CD2700  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80CD2704  4E 80 00 20 */	blr 
