lbl_807436A4:
/* 807436A4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807436A8  7C 08 02 A6 */	mflr r0
/* 807436AC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807436B0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807436B4  4B C1 EB 20 */	b _savegpr_27
/* 807436B8  7C 7E 1B 78 */	mr r30, r3
/* 807436BC  3C 80 80 75 */	lis r4, lit_3910@ha
/* 807436C0  3B E4 BF 3C */	addi r31, r4, lit_3910@l
/* 807436C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807436C8  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 807436CC  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 807436D0  7C 00 07 74 */	extsb r0, r0
/* 807436D4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807436D8  7C 85 02 14 */	add r4, r5, r0
/* 807436DC  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 807436E0  3C 80 80 75 */	lis r4, data_8074C3E4@ha
/* 807436E4  38 84 C3 E4 */	addi r4, r4, data_8074C3E4@l
/* 807436E8  80 84 00 00 */	lwz r4, 0(r4)
/* 807436EC  C0 24 00 04 */	lfs f1, 4(r4)
/* 807436F0  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807436F4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807436F8  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 807436FC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80743700  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80743704  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80743708  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8074370C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80743710  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80743714  83 85 5D AC */	lwz r28, 0x5dac(r5)
/* 80743718  3B 60 00 00 */	li r27, 0
/* 8074371C  88 03 06 11 */	lbz r0, 0x611(r3)
/* 80743720  2C 00 00 02 */	cmpwi r0, 2
/* 80743724  41 82 02 C4 */	beq lbl_807439E8
/* 80743728  40 80 00 14 */	bge lbl_8074373C
/* 8074372C  2C 00 00 00 */	cmpwi r0, 0
/* 80743730  41 82 00 1C */	beq lbl_8074374C
/* 80743734  40 80 01 3C */	bge lbl_80743870
/* 80743738  48 00 05 C0 */	b lbl_80743CF8
lbl_8074373C:
/* 8074373C  2C 00 00 04 */	cmpwi r0, 4
/* 80743740  41 82 05 8C */	beq lbl_80743CCC
/* 80743744  40 80 05 B4 */	bge lbl_80743CF8
/* 80743748  48 00 03 44 */	b lbl_80743A8C
lbl_8074374C:
/* 8074374C  88 1E 06 19 */	lbz r0, 0x619(r30)
/* 80743750  28 00 00 00 */	cmplwi r0, 0
/* 80743754  41 82 00 0C */	beq lbl_80743760
/* 80743758  3B 60 00 01 */	li r27, 1
/* 8074375C  48 00 00 28 */	b lbl_80743784
lbl_80743760:
/* 80743760  88 1E 06 D8 */	lbz r0, 0x6d8(r30)
/* 80743764  28 00 00 00 */	cmplwi r0, 0
/* 80743768  41 82 00 1C */	beq lbl_80743784
/* 8074376C  7F 84 E3 78 */	mr r4, r28
/* 80743770  4B 8D 71 F4 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80743774  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80743778  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074377C  40 80 00 08 */	bge lbl_80743784
/* 80743780  3B 60 00 01 */	li r27, 1
lbl_80743784:
/* 80743784  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80743788  41 82 05 70 */	beq lbl_80743CF8
/* 8074378C  7F C3 F3 78 */	mr r3, r30
/* 80743790  4B FF F9 35 */	bl CameraSet__8daE_PM_cFv
/* 80743794  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80743798  41 82 05 60 */	beq lbl_80743CF8
/* 8074379C  38 60 00 00 */	li r3, 0
/* 807437A0  4B 8E 91 DC */	b getLayerNo__14dComIfG_play_cFi
/* 807437A4  2C 03 00 02 */	cmpwi r3, 2
/* 807437A8  40 82 00 20 */	bne lbl_807437C8
/* 807437AC  C0 3E 08 9C */	lfs f1, 0x89c(r30)
/* 807437B0  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 807437B4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807437B8  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 807437BC  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 807437C0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807437C4  48 00 00 3C */	b lbl_80743800
lbl_807437C8:
/* 807437C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807437CC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807437D0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807437D4  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807437D8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807437DC  38 61 00 6C */	addi r3, r1, 0x6c
/* 807437E0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807437E4  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 807437E8  38 C1 00 60 */	addi r6, r1, 0x60
/* 807437EC  4B B2 D5 D4 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807437F0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807437F4  C0 1E 08 9C */	lfs f0, 0x89c(r30)
/* 807437F8  EC 01 00 2A */	fadds f0, f1, f0
/* 807437FC  D0 01 00 70 */	stfs f0, 0x70(r1)
lbl_80743800:
/* 80743800  88 7E 06 11 */	lbz r3, 0x611(r30)
/* 80743804  38 03 00 01 */	addi r0, r3, 1
/* 80743808  98 1E 06 11 */	stb r0, 0x611(r30)
/* 8074380C  38 00 00 01 */	li r0, 1
/* 80743810  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 80743814  38 00 00 03 */	li r0, 3
/* 80743818  B0 1C 06 04 */	sth r0, 0x604(r28)
/* 8074381C  38 60 00 00 */	li r3, 0
/* 80743820  90 7C 06 0C */	stw r3, 0x60c(r28)
/* 80743824  38 00 00 04 */	li r0, 4
/* 80743828  90 1C 06 14 */	stw r0, 0x614(r28)
/* 8074382C  90 7C 06 0C */	stw r3, 0x60c(r28)
/* 80743830  90 7C 06 10 */	stw r3, 0x610(r28)
/* 80743834  B0 7C 06 0A */	sth r3, 0x60a(r28)
/* 80743838  7F 83 E3 78 */	mr r3, r28
/* 8074383C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80743840  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80743844  3C A5 00 01 */	addis r5, r5, 1
/* 80743848  38 05 80 00 */	addi r0, r5, -32768
/* 8074384C  7C 05 07 34 */	extsh r5, r0
/* 80743850  38 C0 00 00 */	li r6, 0
/* 80743854  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80743858  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8074385C  7D 89 03 A6 */	mtctr r12
/* 80743860  4E 80 04 21 */	bctrl 
/* 80743864  38 00 00 01 */	li r0, 1
/* 80743868  98 1E 06 FF */	stb r0, 0x6ff(r30)
/* 8074386C  48 00 04 8C */	b lbl_80743CF8
lbl_80743870:
/* 80743870  38 60 01 8D */	li r3, 0x18d
/* 80743874  38 81 00 2C */	addi r4, r1, 0x2c
/* 80743878  4B 8D 61 B4 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 8074387C  2C 03 00 00 */	cmpwi r3, 0
/* 80743880  41 82 00 18 */	beq lbl_80743898
/* 80743884  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80743888  28 03 00 00 */	cmplwi r3, 0
/* 8074388C  41 82 00 0C */	beq lbl_80743898
/* 80743890  38 00 00 01 */	li r0, 1
/* 80743894  98 03 05 C5 */	stb r0, 0x5c5(r3)
lbl_80743898:
/* 80743898  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 8074389C  2C 00 00 00 */	cmpwi r0, 0
/* 807438A0  40 82 04 58 */	bne lbl_80743CF8
/* 807438A4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807438A8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 807438AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807438B0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807438B4  88 7E 06 11 */	lbz r3, 0x611(r30)
/* 807438B8  38 03 00 01 */	addi r0, r3, 1
/* 807438BC  98 1E 06 11 */	stb r0, 0x611(r30)
/* 807438C0  38 00 00 6E */	li r0, 0x6e
/* 807438C4  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 807438C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807438CC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807438D0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807438D4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807438D8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 807438DC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807438E0  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 807438E4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807438E8  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 807438EC  38 C1 00 78 */	addi r6, r1, 0x78
/* 807438F0  4B B2 D4 D0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807438F4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807438F8  C0 1E 08 9C */	lfs f0, 0x89c(r30)
/* 807438FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80743900  D0 1E 06 B4 */	stfs f0, 0x6b4(r30)
/* 80743904  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 80743908  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 8074390C  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 80743910  D0 1E 06 9C */	stfs f0, 0x69c(r30)
/* 80743914  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 80743918  D0 1E 06 A0 */	stfs f0, 0x6a0(r30)
/* 8074391C  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 80743920  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 80743924  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 80743928  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 8074392C  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 80743930  D0 1E 06 D0 */	stfs f0, 0x6d0(r30)
/* 80743934  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80743938  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8074393C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80743940  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80743944  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80743948  38 7E 06 A4 */	addi r3, r30, 0x6a4
/* 8074394C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80743950  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80743954  38 C1 00 78 */	addi r6, r1, 0x78
/* 80743958  4B B2 D4 68 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8074395C  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80743960  C0 1E 08 9C */	lfs f0, 0x89c(r30)
/* 80743964  EC 01 00 2A */	fadds f0, f1, f0
/* 80743968  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 8074396C  C0 1E 06 A4 */	lfs f0, 0x6a4(r30)
/* 80743970  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 80743974  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 80743978  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 8074397C  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 80743980  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 80743984  C0 1E 06 A4 */	lfs f0, 0x6a4(r30)
/* 80743988  D0 1E 06 BC */	stfs f0, 0x6bc(r30)
/* 8074398C  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 80743990  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
/* 80743994  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 80743998  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 8074399C  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 807439A0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807439A4  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807439A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807439AC  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807439B0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807439B4  C0 1E 06 98 */	lfs f0, 0x698(r30)
/* 807439B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807439BC  C0 1E 06 9C */	lfs f0, 0x69c(r30)
/* 807439C0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807439C4  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 807439C8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807439CC  38 7D 02 48 */	addi r3, r29, 0x248
/* 807439D0  38 81 00 48 */	addi r4, r1, 0x48
/* 807439D4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 807439D8  C0 3E 06 D4 */	lfs f1, 0x6d4(r30)
/* 807439DC  38 C0 00 00 */	li r6, 0
/* 807439E0  4B A3 D1 00 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 807439E4  48 00 03 14 */	b lbl_80743CF8
lbl_807439E8:
/* 807439E8  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 807439EC  2C 00 00 00 */	cmpwi r0, 0
/* 807439F0  40 82 00 60 */	bne lbl_80743A50
/* 807439F4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807439F8  B0 1E 06 02 */	sth r0, 0x602(r30)
/* 807439FC  88 9E 06 11 */	lbz r4, 0x611(r30)
/* 80743A00  38 04 00 01 */	addi r0, r4, 1
/* 80743A04  98 1E 06 11 */	stb r0, 0x611(r30)
/* 80743A08  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80743A0C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80743A10  38 80 00 06 */	li r4, 6
/* 80743A14  38 A0 00 02 */	li r5, 2
/* 80743A18  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80743A1C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80743A20  4B FF EC 55 */	bl SetAnm__8daE_PM_cFiiff
/* 80743A24  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80743A28  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80743A2C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80743A30  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80743A34  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80743A38  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80743A3C  7F C3 F3 78 */	mr r3, r30
/* 80743A40  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000880D@ha */
/* 80743A44  38 84 88 0D */	addi r4, r4, 0x880D /* 0x0000880D@l */
/* 80743A48  38 A1 00 30 */	addi r5, r1, 0x30
/* 80743A4C  4B FF EB B5 */	bl Particle_Set__8daE_PM_cFUs4cXyz
lbl_80743A50:
/* 80743A50  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 80743A54  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80743A58  40 80 00 28 */	bge lbl_80743A80
/* 80743A5C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80743A60  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80743A64  EC 01 00 28 */	fsubs f0, f1, f0
/* 80743A68  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 80743A6C  7F C3 F3 78 */	mr r3, r30
/* 80743A70  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80743A74  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80743A78  4B FF F9 71 */	bl SetMoveCam2__8daE_PM_cFff
/* 80743A7C  48 00 02 7C */	b lbl_80743CF8
lbl_80743A80:
/* 80743A80  7F C3 F3 78 */	mr r3, r30
/* 80743A84  4B FF F7 8D */	bl SetStopingCam__8daE_PM_cFv
/* 80743A88  48 00 02 70 */	b lbl_80743CF8
lbl_80743A8C:
/* 80743A8C  80 65 5D 3C */	lwz r3, 0x5d3c(r5)
/* 80743A90  38 00 00 FF */	li r0, 0xff
/* 80743A94  90 01 00 08 */	stw r0, 8(r1)
/* 80743A98  38 80 00 00 */	li r4, 0
/* 80743A9C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80743AA0  38 00 FF FF */	li r0, -1
/* 80743AA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80743AA8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80743AAC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80743AB0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80743AB4  80 9E 06 28 */	lwz r4, 0x628(r30)
/* 80743AB8  38 A0 00 00 */	li r5, 0
/* 80743ABC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000880C@ha */
/* 80743AC0  38 C6 88 0C */	addi r6, r6, 0x880C /* 0x0000880C@l */
/* 80743AC4  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80743AC8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80743ACC  39 3E 04 DC */	addi r9, r30, 0x4dc
/* 80743AD0  39 5E 04 EC */	addi r10, r30, 0x4ec
/* 80743AD4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80743AD8  4B 90 99 F4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80743ADC  90 7E 06 28 */	stw r3, 0x628(r30)
/* 80743AE0  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 80743AE4  2C 00 00 07 */	cmpwi r0, 7
/* 80743AE8  40 82 00 74 */	bne lbl_80743B5C
/* 80743AEC  80 7E 07 04 */	lwz r3, 0x704(r30)
/* 80743AF0  38 80 00 01 */	li r4, 1
/* 80743AF4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80743AF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80743AFC  40 82 00 18 */	bne lbl_80743B14
/* 80743B00  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80743B04  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80743B08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80743B0C  41 82 00 08 */	beq lbl_80743B14
/* 80743B10  38 80 00 00 */	li r4, 0
lbl_80743B14:
/* 80743B14  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80743B18  41 82 00 44 */	beq lbl_80743B5C
/* 80743B1C  7F C3 F3 78 */	mr r3, r30
/* 80743B20  38 80 00 16 */	li r4, 0x16
/* 80743B24  38 A0 00 00 */	li r5, 0
/* 80743B28  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80743B2C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80743B30  4B FF EB 45 */	bl SetAnm__8daE_PM_cFiiff
/* 80743B34  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070055@ha */
/* 80743B38  38 03 00 55 */	addi r0, r3, 0x0055 /* 0x00070055@l */
/* 80743B3C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80743B40  38 7E 07 20 */	addi r3, r30, 0x720
/* 80743B44  38 81 00 28 */	addi r4, r1, 0x28
/* 80743B48  38 A0 FF FF */	li r5, -1
/* 80743B4C  81 9E 07 20 */	lwz r12, 0x720(r30)
/* 80743B50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80743B54  7D 89 03 A6 */	mtctr r12
/* 80743B58  4E 80 04 21 */	bctrl 
lbl_80743B5C:
/* 80743B5C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 80743B60  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80743B64  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80743B68  4C 41 13 82 */	cror 2, 1, 2
/* 80743B6C  40 82 00 08 */	bne lbl_80743B74
/* 80743B70  D0 3E 06 A8 */	stfs f1, 0x6a8(r30)
lbl_80743B74:
/* 80743B74  80 1E 08 30 */	lwz r0, 0x830(r30)
/* 80743B78  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80743B7C  41 82 00 94 */	beq lbl_80743C10
/* 80743B80  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 80743B84  2C 00 00 00 */	cmpwi r0, 0
/* 80743B88  40 82 00 88 */	bne lbl_80743C10
/* 80743B8C  7F C3 F3 78 */	mr r3, r30
/* 80743B90  38 80 00 07 */	li r4, 7
/* 80743B94  38 A0 00 00 */	li r5, 0
/* 80743B98  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80743B9C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80743BA0  4B FF EA D5 */	bl SetAnm__8daE_PM_cFiiff
/* 80743BA4  38 00 20 00 */	li r0, 0x2000
/* 80743BA8  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80743BAC  38 00 00 28 */	li r0, 0x28
/* 80743BB0  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 80743BB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700DD@ha */
/* 80743BB8  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000700DD@l */
/* 80743BBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80743BC0  38 7E 07 20 */	addi r3, r30, 0x720
/* 80743BC4  38 81 00 24 */	addi r4, r1, 0x24
/* 80743BC8  38 A0 00 00 */	li r5, 0
/* 80743BCC  38 C0 FF FF */	li r6, -1
/* 80743BD0  81 9E 07 20 */	lwz r12, 0x720(r30)
/* 80743BD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80743BD8  7D 89 03 A6 */	mtctr r12
/* 80743BDC  4E 80 04 21 */	bctrl 
/* 80743BE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700DE@ha */
/* 80743BE4  38 03 00 DE */	addi r0, r3, 0x00DE /* 0x000700DE@l */
/* 80743BE8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80743BEC  38 7E 07 20 */	addi r3, r30, 0x720
/* 80743BF0  38 81 00 20 */	addi r4, r1, 0x20
/* 80743BF4  38 A0 00 00 */	li r5, 0
/* 80743BF8  38 C0 FF FF */	li r6, -1
/* 80743BFC  81 9E 07 20 */	lwz r12, 0x720(r30)
/* 80743C00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80743C04  7D 89 03 A6 */	mtctr r12
/* 80743C08  4E 80 04 21 */	bctrl 
/* 80743C0C  48 00 00 7C */	b lbl_80743C88
lbl_80743C10:
/* 80743C10  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 80743C14  2C 00 00 01 */	cmpwi r0, 1
/* 80743C18  40 82 00 70 */	bne lbl_80743C88
/* 80743C1C  38 00 00 00 */	li r0, 0
/* 80743C20  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80743C24  88 7E 06 11 */	lbz r3, 0x611(r30)
/* 80743C28  38 03 00 01 */	addi r0, r3, 1
/* 80743C2C  98 1E 06 11 */	stb r0, 0x611(r30)
/* 80743C30  38 00 00 1E */	li r0, 0x1e
/* 80743C34  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 80743C38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80743C3C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80743C40  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80743C44  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80743C48  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80743C4C  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 80743C50  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80743C54  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 80743C58  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80743C5C  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 80743C60  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80743C64  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 80743C68  38 81 00 54 */	addi r4, r1, 0x54
/* 80743C6C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80743C70  38 C1 00 78 */	addi r6, r1, 0x78
/* 80743C74  4B B2 D1 4C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80743C78  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80743C7C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80743C80  EC 01 00 2A */	fadds f0, f1, f0
/* 80743C84  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
lbl_80743C88:
/* 80743C88  C0 5E 06 A8 */	lfs f2, 0x6a8(r30)
/* 80743C8C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80743C90  C0 1E 08 9C */	lfs f0, 0x89c(r30)
/* 80743C94  EC 01 00 2A */	fadds f0, f1, f0
/* 80743C98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80743C9C  4C 40 13 82 */	cror 2, 0, 2
/* 80743CA0  40 82 00 08 */	bne lbl_80743CA8
/* 80743CA4  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
lbl_80743CA8:
/* 80743CA8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80743CAC  C0 1E 08 9C */	lfs f0, 0x89c(r30)
/* 80743CB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80743CB4  D0 1E 06 B4 */	stfs f0, 0x6b4(r30)
/* 80743CB8  7F C3 F3 78 */	mr r3, r30
/* 80743CBC  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 80743CC0  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80743CC4  4B FF F7 25 */	bl SetMoveCam2__8daE_PM_cFff
/* 80743CC8  48 00 00 30 */	b lbl_80743CF8
lbl_80743CCC:
/* 80743CCC  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 80743CD0  2C 00 00 00 */	cmpwi r0, 0
/* 80743CD4  40 82 00 14 */	bne lbl_80743CE8
/* 80743CD8  38 00 00 03 */	li r0, 3
/* 80743CDC  98 1E 06 10 */	stb r0, 0x610(r30)
/* 80743CE0  38 00 00 00 */	li r0, 0
/* 80743CE4  98 1E 06 11 */	stb r0, 0x611(r30)
lbl_80743CE8:
/* 80743CE8  7F C3 F3 78 */	mr r3, r30
/* 80743CEC  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80743CF0  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80743CF4  4B FF F6 F5 */	bl SetMoveCam2__8daE_PM_cFff
lbl_80743CF8:
/* 80743CF8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80743CFC  4B C1 E5 24 */	b _restgpr_27
/* 80743D00  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80743D04  7C 08 03 A6 */	mtlr r0
/* 80743D08  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80743D0C  4E 80 00 20 */	blr 
