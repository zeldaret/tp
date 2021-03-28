lbl_80CC17F0:
/* 80CC17F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CC17F4  7C 08 02 A6 */	mflr r0
/* 80CC17F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CC17FC  39 61 00 40 */	addi r11, r1, 0x40
/* 80CC1800  4B 6A 09 B4 */	b _savegpr_19
/* 80CC1804  7C 76 1B 78 */	mr r22, r3
/* 80CC1808  3C 60 80 CC */	lis r3, l_wtr_bmd@ha
/* 80CC180C  3B 43 27 00 */	addi r26, r3, l_wtr_bmd@l
/* 80CC1810  3C 60 80 CC */	lis r3, l_arcName@ha
/* 80CC1814  38 63 27 5C */	addi r3, r3, l_arcName@l
/* 80CC1818  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC181C  38 80 00 05 */	li r4, 5
/* 80CC1820  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CC1824  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CC1828  3F 25 00 02 */	addis r25, r5, 2
/* 80CC182C  3B 39 C2 F8 */	addi r25, r25, -15624
/* 80CC1830  7F 25 CB 78 */	mr r5, r25
/* 80CC1834  38 C0 00 80 */	li r6, 0x80
/* 80CC1838  4B 37 AA B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC183C  3C 80 00 08 */	lis r4, 8
/* 80CC1840  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CC1844  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CC1848  4B 35 34 0C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CC184C  90 76 05 A8 */	stw r3, 0x5a8(r22)
/* 80CC1850  80 16 05 A8 */	lwz r0, 0x5a8(r22)
/* 80CC1854  28 00 00 00 */	cmplwi r0, 0
/* 80CC1858  40 82 00 0C */	bne lbl_80CC1864
/* 80CC185C  38 60 00 00 */	li r3, 0
/* 80CC1860  48 00 01 68 */	b lbl_80CC19C8
lbl_80CC1864:
/* 80CC1864  3A E0 00 00 */	li r23, 0
/* 80CC1868  3A A0 00 00 */	li r21, 0
/* 80CC186C  3C 60 80 CC */	lis r3, l_arcName@ha
/* 80CC1870  3B 63 27 5C */	addi r27, r3, l_arcName@l
/* 80CC1874  3B 9A 00 00 */	addi r28, r26, 0
/* 80CC1878  3F C0 19 00 */	lis r30, 0x1900
/* 80CC187C  3B FA 00 08 */	addi r31, r26, 8
lbl_80CC1880:
/* 80CC1880  80 7B 00 00 */	lwz r3, 0(r27)
/* 80CC1884  7C 9C A8 2E */	lwzx r4, r28, r21
/* 80CC1888  7F 25 CB 78 */	mr r5, r25
/* 80CC188C  38 C0 00 80 */	li r6, 0x80
/* 80CC1890  4B 37 AA 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC1894  7C 7D 1B 78 */	mr r29, r3
/* 80CC1898  3C 80 00 08 */	lis r4, 8
/* 80CC189C  38 BE 02 84 */	addi r5, r30, 0x284
/* 80CC18A0  4B 35 33 B4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CC18A4  7F 16 AA 14 */	add r24, r22, r21
/* 80CC18A8  90 78 05 AC */	stw r3, 0x5ac(r24)
/* 80CC18AC  80 18 05 AC */	lwz r0, 0x5ac(r24)
/* 80CC18B0  28 00 00 00 */	cmplwi r0, 0
/* 80CC18B4  40 82 00 0C */	bne lbl_80CC18C0
/* 80CC18B8  38 60 00 00 */	li r3, 0
/* 80CC18BC  48 00 01 0C */	b lbl_80CC19C8
lbl_80CC18C0:
/* 80CC18C0  80 7B 00 00 */	lwz r3, 0(r27)
/* 80CC18C4  7C 9F A8 2E */	lwzx r4, r31, r21
/* 80CC18C8  7F 25 CB 78 */	mr r5, r25
/* 80CC18CC  38 C0 00 80 */	li r6, 0x80
/* 80CC18D0  4B 37 AA 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC18D4  7C 73 1B 78 */	mr r19, r3
/* 80CC18D8  38 60 00 18 */	li r3, 0x18
/* 80CC18DC  4B 60 D3 70 */	b __nw__FUl
/* 80CC18E0  7C 74 1B 79 */	or. r20, r3, r3
/* 80CC18E4  41 82 00 20 */	beq lbl_80CC1904
/* 80CC18E8  3C 80 80 CC */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80CC18EC  38 04 28 4C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80CC18F0  90 14 00 00 */	stw r0, 0(r20)
/* 80CC18F4  38 80 00 00 */	li r4, 0
/* 80CC18F8  4B 66 6B 04 */	b init__12J3DFrameCtrlFs
/* 80CC18FC  38 00 00 00 */	li r0, 0
/* 80CC1900  90 14 00 14 */	stw r0, 0x14(r20)
lbl_80CC1904:
/* 80CC1904  92 98 05 B4 */	stw r20, 0x5b4(r24)
/* 80CC1908  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 80CC190C  28 03 00 00 */	cmplwi r3, 0
/* 80CC1910  41 82 00 2C */	beq lbl_80CC193C
/* 80CC1914  38 9D 00 58 */	addi r4, r29, 0x58
/* 80CC1918  7E 65 9B 78 */	mr r5, r19
/* 80CC191C  38 C0 00 01 */	li r6, 1
/* 80CC1920  38 E0 00 02 */	li r7, 2
/* 80CC1924  C0 3A 00 20 */	lfs f1, 0x20(r26)
/* 80CC1928  39 00 00 00 */	li r8, 0
/* 80CC192C  39 20 FF FF */	li r9, -1
/* 80CC1930  4B 34 BD 0C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CC1934  2C 03 00 00 */	cmpwi r3, 0
/* 80CC1938  40 82 00 0C */	bne lbl_80CC1944
lbl_80CC193C:
/* 80CC193C  38 60 00 00 */	li r3, 0
/* 80CC1940  48 00 00 88 */	b lbl_80CC19C8
lbl_80CC1944:
/* 80CC1944  3A F7 00 01 */	addi r23, r23, 1
/* 80CC1948  2C 17 00 02 */	cmpwi r23, 2
/* 80CC194C  3A B5 00 04 */	addi r21, r21, 4
/* 80CC1950  41 80 FF 30 */	blt lbl_80CC1880
/* 80CC1954  38 60 00 C0 */	li r3, 0xc0
/* 80CC1958  4B 60 D2 F4 */	b __nw__FUl
/* 80CC195C  7C 60 1B 79 */	or. r0, r3, r3
/* 80CC1960  41 82 00 0C */	beq lbl_80CC196C
/* 80CC1964  4B 3B A0 0C */	b __ct__4dBgWFv
/* 80CC1968  7C 60 1B 78 */	mr r0, r3
lbl_80CC196C:
/* 80CC196C  90 16 05 C0 */	stw r0, 0x5c0(r22)
/* 80CC1970  80 16 05 C0 */	lwz r0, 0x5c0(r22)
/* 80CC1974  28 00 00 00 */	cmplwi r0, 0
/* 80CC1978  41 82 00 3C */	beq lbl_80CC19B4
/* 80CC197C  3C 60 80 CC */	lis r3, l_arcName@ha
/* 80CC1980  38 63 27 5C */	addi r3, r3, l_arcName@l
/* 80CC1984  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC1988  38 80 00 0F */	li r4, 0xf
/* 80CC198C  7F 25 CB 78 */	mr r5, r25
/* 80CC1990  38 C0 00 80 */	li r6, 0x80
/* 80CC1994  4B 37 A9 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC1998  7C 64 1B 78 */	mr r4, r3
/* 80CC199C  80 76 05 C0 */	lwz r3, 0x5c0(r22)
/* 80CC19A0  38 A0 00 01 */	li r5, 1
/* 80CC19A4  38 D6 05 6C */	addi r6, r22, 0x56c
/* 80CC19A8  4B 3B 85 90 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CC19AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC19B0  41 82 00 14 */	beq lbl_80CC19C4
lbl_80CC19B4:
/* 80CC19B4  38 00 00 00 */	li r0, 0
/* 80CC19B8  90 16 05 C0 */	stw r0, 0x5c0(r22)
/* 80CC19BC  38 60 00 00 */	li r3, 0
/* 80CC19C0  48 00 00 08 */	b lbl_80CC19C8
lbl_80CC19C4:
/* 80CC19C4  38 60 00 01 */	li r3, 1
lbl_80CC19C8:
/* 80CC19C8  39 61 00 40 */	addi r11, r1, 0x40
/* 80CC19CC  4B 6A 08 34 */	b _restgpr_19
/* 80CC19D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CC19D4  7C 08 03 A6 */	mtlr r0
/* 80CC19D8  38 21 00 40 */	addi r1, r1, 0x40
/* 80CC19DC  4E 80 00 20 */	blr 
