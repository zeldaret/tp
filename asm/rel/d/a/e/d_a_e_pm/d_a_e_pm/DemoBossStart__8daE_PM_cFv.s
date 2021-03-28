lbl_80746624:
/* 80746624  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80746628  7C 08 02 A6 */	mflr r0
/* 8074662C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80746630  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80746634  4B C1 BB A8 */	b _savegpr_29
/* 80746638  7C 7D 1B 78 */	mr r29, r3
/* 8074663C  3C 60 80 75 */	lis r3, lit_3910@ha
/* 80746640  3B E3 BF 3C */	addi r31, r3, lit_3910@l
/* 80746644  3B C0 00 00 */	li r30, 0
/* 80746648  88 1D 06 12 */	lbz r0, 0x612(r29)
/* 8074664C  28 00 00 02 */	cmplwi r0, 2
/* 80746650  40 81 00 1C */	ble lbl_8074666C
/* 80746654  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80746658  3C 80 80 75 */	lis r4, data_8074C3E4@ha
/* 8074665C  38 84 C3 E4 */	addi r4, r4, data_8074C3E4@l
/* 80746660  80 84 00 00 */	lwz r4, 0(r4)
/* 80746664  4B B2 A5 A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80746668  B0 7D 06 02 */	sth r3, 0x602(r29)
lbl_8074666C:
/* 8074666C  88 1D 06 12 */	lbz r0, 0x612(r29)
/* 80746670  28 00 00 07 */	cmplwi r0, 7
/* 80746674  41 81 0B 08 */	bgt lbl_8074717C
/* 80746678  3C 60 80 75 */	lis r3, lit_5995@ha
/* 8074667C  38 63 C1 C8 */	addi r3, r3, lit_5995@l
/* 80746680  54 00 10 3A */	slwi r0, r0, 2
/* 80746684  7C 03 00 2E */	lwzx r0, r3, r0
/* 80746688  7C 09 03 A6 */	mtctr r0
/* 8074668C  4E 80 04 20 */	bctr 
lbl_80746690:
/* 80746690  A8 1D 06 20 */	lha r0, 0x620(r29)
/* 80746694  2C 00 00 64 */	cmpwi r0, 0x64
/* 80746698  40 82 00 30 */	bne lbl_807466C8
/* 8074669C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807466A0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 807466A4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 807466A8  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 807466AC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807466B0  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 807466B4  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 807466B8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807466BC  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 807466C0  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 807466C4  4B B2 A6 FC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_807466C8:
/* 807466C8  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 807466CC  2C 00 00 16 */	cmpwi r0, 0x16
/* 807466D0  40 82 00 5C */	bne lbl_8074672C
/* 807466D4  A8 1D 06 20 */	lha r0, 0x620(r29)
/* 807466D8  2C 00 00 00 */	cmpwi r0, 0
/* 807466DC  40 82 00 50 */	bne lbl_8074672C
/* 807466E0  7F A3 EB 78 */	mr r3, r29
/* 807466E4  38 80 00 14 */	li r4, 0x14
/* 807466E8  38 A0 00 00 */	li r5, 0
/* 807466EC  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 807466F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807466F4  4B FF BF 81 */	bl SetAnm__8daE_PM_cFiiff
/* 807466F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704B4@ha */
/* 807466FC  38 03 04 B4 */	addi r0, r3, 0x04B4 /* 0x000704B4@l */
/* 80746700  90 01 00 34 */	stw r0, 0x34(r1)
/* 80746704  38 7D 07 20 */	addi r3, r29, 0x720
/* 80746708  38 81 00 34 */	addi r4, r1, 0x34
/* 8074670C  38 A0 FF FF */	li r5, -1
/* 80746710  81 9D 07 20 */	lwz r12, 0x720(r29)
/* 80746714  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80746718  7D 89 03 A6 */	mtctr r12
/* 8074671C  4E 80 04 21 */	bctrl 
/* 80746720  88 7D 06 12 */	lbz r3, 0x612(r29)
/* 80746724  38 03 00 01 */	addi r0, r3, 1
/* 80746728  98 1D 06 12 */	stb r0, 0x612(r29)
lbl_8074672C:
/* 8074672C  7F A3 EB 78 */	mr r3, r29
/* 80746730  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80746734  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80746738  4B FF CD ED */	bl SetMoveCam__8daE_PM_cFff
/* 8074673C  48 00 0A 40 */	b lbl_8074717C
lbl_80746740:
/* 80746740  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 80746744  38 80 00 01 */	li r4, 1
/* 80746748  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8074674C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80746750  40 82 00 18 */	bne lbl_80746768
/* 80746754  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80746758  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074675C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80746760  41 82 00 08 */	beq lbl_80746768
/* 80746764  38 80 00 00 */	li r4, 0
lbl_80746768:
/* 80746768  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8074676C  41 82 00 6C */	beq lbl_807467D8
/* 80746770  7F A3 EB 78 */	mr r3, r29
/* 80746774  38 80 00 11 */	li r4, 0x11
/* 80746778  38 A0 00 00 */	li r5, 0
/* 8074677C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80746780  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80746784  4B FF BE F1 */	bl SetAnm__8daE_PM_cFiiff
/* 80746788  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070059@ha */
/* 8074678C  38 03 00 59 */	addi r0, r3, 0x0059 /* 0x00070059@l */
/* 80746790  90 01 00 30 */	stw r0, 0x30(r1)
/* 80746794  38 7D 07 20 */	addi r3, r29, 0x720
/* 80746798  38 81 00 30 */	addi r4, r1, 0x30
/* 8074679C  38 A0 FF FF */	li r5, -1
/* 807467A0  81 9D 07 20 */	lwz r12, 0x720(r29)
/* 807467A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807467A8  7D 89 03 A6 */	mtctr r12
/* 807467AC  4E 80 04 21 */	bctrl 
/* 807467B0  C0 3D 06 A8 */	lfs f1, 0x6a8(r29)
/* 807467B4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807467B8  EC 01 00 2A */	fadds f0, f1, f0
/* 807467BC  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 807467C0  88 7D 06 12 */	lbz r3, 0x612(r29)
/* 807467C4  38 03 00 01 */	addi r0, r3, 1
/* 807467C8  98 1D 06 12 */	stb r0, 0x612(r29)
/* 807467CC  38 00 00 01 */	li r0, 1
/* 807467D0  98 1D 06 FE */	stb r0, 0x6fe(r29)
/* 807467D4  48 00 02 10 */	b lbl_807469E4
lbl_807467D8:
/* 807467D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807467DC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 807467E0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 807467E4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 807467E8  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 807467EC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 807467F0  38 61 00 98 */	addi r3, r1, 0x98
/* 807467F4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807467F8  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 807467FC  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 80746800  4B B2 A5 C0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80746804  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 80746808  38 81 00 98 */	addi r4, r1, 0x98
/* 8074680C  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 80746810  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80746814  4B B2 99 64 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80746818  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 8074681C  38 63 00 0C */	addi r3, r3, 0xc
/* 80746820  C0 3F 01 7C */	lfs f1, 0x17c(r31)
/* 80746824  4B BE 1C 08 */	b checkPass__12J3DFrameCtrlFf
/* 80746828  2C 03 00 00 */	cmpwi r3, 0
/* 8074682C  40 82 00 1C */	bne lbl_80746848
/* 80746830  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 80746834  38 63 00 0C */	addi r3, r3, 0xc
/* 80746838  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 8074683C  4B BE 1B F0 */	b checkPass__12J3DFrameCtrlFf
/* 80746840  2C 03 00 00 */	cmpwi r3, 0
/* 80746844  41 82 00 50 */	beq lbl_80746894
lbl_80746848:
/* 80746848  3B C0 00 01 */	li r30, 1
/* 8074684C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80746850  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80746854  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 80746858  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8074685C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80746860  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 80746864  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80746868  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8074686C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80746870  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80746874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80746878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8074687C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80746880  38 80 00 02 */	li r4, 2
/* 80746884  38 A0 00 1F */	li r5, 0x1f
/* 80746888  38 C1 00 74 */	addi r6, r1, 0x74
/* 8074688C  4B 92 91 98 */	b StartShock__12dVibration_cFii4cXyz
/* 80746890  48 00 01 20 */	b lbl_807469B0
lbl_80746894:
/* 80746894  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 80746898  38 63 00 0C */	addi r3, r3, 0xc
/* 8074689C  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 807468A0  4B BE 1B 8C */	b checkPass__12J3DFrameCtrlFf
/* 807468A4  2C 03 00 00 */	cmpwi r3, 0
/* 807468A8  40 82 00 1C */	bne lbl_807468C4
/* 807468AC  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 807468B0  38 63 00 0C */	addi r3, r3, 0xc
/* 807468B4  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 807468B8  4B BE 1B 74 */	b checkPass__12J3DFrameCtrlFf
/* 807468BC  2C 03 00 00 */	cmpwi r3, 0
/* 807468C0  41 82 00 4C */	beq lbl_8074690C
lbl_807468C4:
/* 807468C4  3B C0 00 01 */	li r30, 1
/* 807468C8  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 807468CC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 807468D0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 807468D4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807468D8  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 807468DC  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 807468E0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807468E4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807468E8  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 807468EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807468F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807468F4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807468F8  38 80 00 02 */	li r4, 2
/* 807468FC  38 A0 00 1F */	li r5, 0x1f
/* 80746900  38 C1 00 68 */	addi r6, r1, 0x68
/* 80746904  4B 92 91 20 */	b StartShock__12dVibration_cFii4cXyz
/* 80746908  48 00 00 A8 */	b lbl_807469B0
lbl_8074690C:
/* 8074690C  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 80746910  38 63 00 0C */	addi r3, r3, 0xc
/* 80746914  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 80746918  4B BE 1B 14 */	b checkPass__12J3DFrameCtrlFf
/* 8074691C  2C 03 00 00 */	cmpwi r3, 0
/* 80746920  40 82 00 4C */	bne lbl_8074696C
/* 80746924  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 80746928  38 63 00 0C */	addi r3, r3, 0xc
/* 8074692C  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 80746930  4B BE 1A FC */	b checkPass__12J3DFrameCtrlFf
/* 80746934  2C 03 00 00 */	cmpwi r3, 0
/* 80746938  40 82 00 34 */	bne lbl_8074696C
/* 8074693C  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 80746940  38 63 00 0C */	addi r3, r3, 0xc
/* 80746944  C0 3F 01 94 */	lfs f1, 0x194(r31)
/* 80746948  4B BE 1A E4 */	b checkPass__12J3DFrameCtrlFf
/* 8074694C  2C 03 00 00 */	cmpwi r3, 0
/* 80746950  40 82 00 1C */	bne lbl_8074696C
/* 80746954  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 80746958  38 63 00 0C */	addi r3, r3, 0xc
/* 8074695C  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 80746960  4B BE 1A CC */	b checkPass__12J3DFrameCtrlFf
/* 80746964  2C 03 00 00 */	cmpwi r3, 0
/* 80746968  41 82 00 48 */	beq lbl_807469B0
lbl_8074696C:
/* 8074696C  3B C0 00 01 */	li r30, 1
/* 80746970  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80746974  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80746978  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 8074697C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80746980  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 80746984  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80746988  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8074698C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80746990  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80746994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80746998  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8074699C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807469A0  38 80 00 04 */	li r4, 4
/* 807469A4  38 A0 00 1F */	li r5, 0x1f
/* 807469A8  38 C1 00 5C */	addi r6, r1, 0x5c
/* 807469AC  4B 92 90 78 */	b StartShock__12dVibration_cFii4cXyz
lbl_807469B0:
/* 807469B0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 807469B4  41 82 00 30 */	beq lbl_807469E4
/* 807469B8  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 807469BC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807469C0  C0 1D 06 B4 */	lfs f0, 0x6b4(r29)
/* 807469C4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 807469C8  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 807469CC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807469D0  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 807469D4  38 81 00 8C */	addi r4, r1, 0x8c
/* 807469D8  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 807469DC  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 807469E0  4B B2 A3 E0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_807469E4:
/* 807469E4  7F A3 EB 78 */	mr r3, r29
/* 807469E8  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 807469EC  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 807469F0  4B FF CB 35 */	bl SetMoveCam__8daE_PM_cFff
/* 807469F4  48 00 07 88 */	b lbl_8074717C
lbl_807469F8:
/* 807469F8  80 9D 07 04 */	lwz r4, 0x704(r29)
/* 807469FC  38 60 00 01 */	li r3, 1
/* 80746A00  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80746A04  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80746A08  40 82 00 18 */	bne lbl_80746A20
/* 80746A0C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80746A10  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80746A14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80746A18  41 82 00 08 */	beq lbl_80746A20
/* 80746A1C  38 60 00 00 */	li r3, 0
lbl_80746A20:
/* 80746A20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80746A24  41 82 01 14 */	beq lbl_80746B38
/* 80746A28  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80746A2C  2C 00 00 11 */	cmpwi r0, 0x11
/* 80746A30  40 82 01 08 */	bne lbl_80746B38
/* 80746A34  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 80746A38  38 80 00 01 */	li r4, 1
/* 80746A3C  4B 90 AD 74 */	b dPath_GetPnt__FPC5dPathi
/* 80746A40  C0 03 00 04 */	lfs f0, 4(r3)
/* 80746A44  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 80746A48  C0 03 00 08 */	lfs f0, 8(r3)
/* 80746A4C  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 80746A50  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80746A54  D0 1D 05 EC */	stfs f0, 0x5ec(r29)
/* 80746A58  C0 5D 05 EC */	lfs f2, 0x5ec(r29)
/* 80746A5C  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 80746A60  C0 1D 05 E8 */	lfs f0, 0x5e8(r29)
/* 80746A64  EC 21 00 2A */	fadds f1, f1, f0
/* 80746A68  C0 1D 05 E4 */	lfs f0, 0x5e4(r29)
/* 80746A6C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80746A70  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
/* 80746A74  D0 5D 04 D8 */	stfs f2, 0x4d8(r29)
/* 80746A78  7F A3 EB 78 */	mr r3, r29
/* 80746A7C  38 80 00 06 */	li r4, 6
/* 80746A80  38 A0 00 02 */	li r5, 2
/* 80746A84  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80746A88  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80746A8C  4B FF BB E9 */	bl SetAnm__8daE_PM_cFiiff
/* 80746A90  38 00 00 0F */	li r0, 0xf
/* 80746A94  B0 1D 06 22 */	sth r0, 0x622(r29)
/* 80746A98  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 80746A9C  80 63 00 04 */	lwz r3, 4(r3)
/* 80746AA0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80746AA4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80746AA8  38 63 03 90 */	addi r3, r3, 0x390
/* 80746AAC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80746AB0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80746AB4  80 84 00 00 */	lwz r4, 0(r4)
/* 80746AB8  4B BF F9 F8 */	b PSMTXCopy
/* 80746ABC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80746AC0  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80746AC4  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80746AC8  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80746ACC  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 80746AD0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80746AD4  7C 64 1B 78 */	mr r4, r3
/* 80746AD8  4B B2 A4 14 */	b MtxPosition__FP4cXyzP4cXyz
/* 80746ADC  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80746AE0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80746AE4  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80746AE8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80746AEC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80746AF0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80746AF4  7F A3 EB 78 */	mr r3, r29
/* 80746AF8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000880D@ha */
/* 80746AFC  38 84 88 0D */	addi r4, r4, 0x880D /* 0x0000880D@l */
/* 80746B00  38 A1 00 50 */	addi r5, r1, 0x50
/* 80746B04  4B FF BA FD */	bl Particle_Set__8daE_PM_cFUs4cXyz
/* 80746B08  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070058@ha */
/* 80746B0C  38 03 00 58 */	addi r0, r3, 0x0058 /* 0x00070058@l */
/* 80746B10  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80746B14  38 7D 07 20 */	addi r3, r29, 0x720
/* 80746B18  38 81 00 2C */	addi r4, r1, 0x2c
/* 80746B1C  38 A0 00 00 */	li r5, 0
/* 80746B20  38 C0 FF FF */	li r6, -1
/* 80746B24  81 9D 07 20 */	lwz r12, 0x720(r29)
/* 80746B28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80746B2C  7D 89 03 A6 */	mtctr r12
/* 80746B30  4E 80 04 21 */	bctrl 
/* 80746B34  48 00 02 2C */	b lbl_80746D60
lbl_80746B38:
/* 80746B38  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80746B3C  2C 00 00 11 */	cmpwi r0, 0x11
/* 80746B40  40 82 00 A4 */	bne lbl_80746BE4
/* 80746B44  80 64 00 04 */	lwz r3, 4(r4)
/* 80746B48  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80746B4C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80746B50  38 63 03 90 */	addi r3, r3, 0x390
/* 80746B54  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80746B58  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80746B5C  80 84 00 00 */	lwz r4, 0(r4)
/* 80746B60  4B BF F9 50 */	b PSMTXCopy
/* 80746B64  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80746B68  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80746B6C  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80746B70  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80746B74  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 80746B78  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80746B7C  7C 64 1B 78 */	mr r4, r3
/* 80746B80  4B B2 A3 6C */	b MtxPosition__FP4cXyzP4cXyz
/* 80746B84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80746B88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80746B8C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80746B90  38 00 00 FF */	li r0, 0xff
/* 80746B94  90 01 00 08 */	stw r0, 8(r1)
/* 80746B98  38 80 00 00 */	li r4, 0
/* 80746B9C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80746BA0  38 00 FF FF */	li r0, -1
/* 80746BA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80746BA8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80746BAC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80746BB0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80746BB4  80 9D 06 28 */	lwz r4, 0x628(r29)
/* 80746BB8  38 A0 00 00 */	li r5, 0
/* 80746BBC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000880C@ha */
/* 80746BC0  38 C6 88 0C */	addi r6, r6, 0x880C /* 0x0000880C@l */
/* 80746BC4  38 E1 00 A4 */	addi r7, r1, 0xa4
/* 80746BC8  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80746BCC  39 3D 04 DC */	addi r9, r29, 0x4dc
/* 80746BD0  39 5D 04 EC */	addi r10, r29, 0x4ec
/* 80746BD4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80746BD8  4B 90 68 F4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80746BDC  90 7D 06 28 */	stw r3, 0x628(r29)
/* 80746BE0  48 00 01 80 */	b lbl_80746D60
lbl_80746BE4:
/* 80746BE4  2C 00 00 06 */	cmpwi r0, 6
/* 80746BE8  40 82 01 78 */	bne lbl_80746D60
/* 80746BEC  A8 1D 06 22 */	lha r0, 0x622(r29)
/* 80746BF0  2C 00 00 00 */	cmpwi r0, 0
/* 80746BF4  40 82 01 6C */	bne lbl_80746D60
/* 80746BF8  88 7D 06 12 */	lbz r3, 0x612(r29)
/* 80746BFC  38 03 00 01 */	addi r0, r3, 1
/* 80746C00  98 1D 06 12 */	stb r0, 0x612(r29)
/* 80746C04  C0 5D 05 EC */	lfs f2, 0x5ec(r29)
/* 80746C08  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80746C0C  C0 1D 05 E8 */	lfs f0, 0x5e8(r29)
/* 80746C10  EC 21 00 2A */	fadds f1, f1, f0
/* 80746C14  C0 1D 05 E4 */	lfs f0, 0x5e4(r29)
/* 80746C18  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80746C1C  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
/* 80746C20  D0 5D 04 D8 */	stfs f2, 0x4d8(r29)
/* 80746C24  C0 5D 05 EC */	lfs f2, 0x5ec(r29)
/* 80746C28  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80746C2C  C0 1D 05 E8 */	lfs f0, 0x5e8(r29)
/* 80746C30  EC 21 00 2A */	fadds f1, f1, f0
/* 80746C34  C0 1D 05 E4 */	lfs f0, 0x5e4(r29)
/* 80746C38  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80746C3C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80746C40  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80746C44  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 80746C48  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80746C4C  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 80746C50  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80746C54  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 80746C58  C0 3D 06 A8 */	lfs f1, 0x6a8(r29)
/* 80746C5C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80746C60  EC 01 00 2A */	fadds f0, f1, f0
/* 80746C64  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 80746C68  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80746C6C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80746C70  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80746C74  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
/* 80746C78  38 00 00 1E */	li r0, 0x1e
/* 80746C7C  B0 1D 06 22 */	sth r0, 0x622(r29)
/* 80746C80  C0 1D 06 A4 */	lfs f0, 0x6a4(r29)
/* 80746C84  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 80746C88  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 80746C8C  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80746C90  C0 1D 06 AC */	lfs f0, 0x6ac(r29)
/* 80746C94  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 80746C98  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80746C9C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80746CA0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80746CA4  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80746CA8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80746CAC  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 80746CB0  38 81 00 80 */	addi r4, r1, 0x80
/* 80746CB4  3C A0 80 75 */	lis r5, data_8074C3E8@ha
/* 80746CB8  38 A5 C3 E8 */	addi r5, r5, data_8074C3E8@l
/* 80746CBC  A8 A5 00 00 */	lha r5, 0(r5)
/* 80746CC0  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 80746CC4  4B B2 A0 FC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80746CC8  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 80746CCC  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 80746CD0  C0 1D 06 B4 */	lfs f0, 0x6b4(r29)
/* 80746CD4  D0 1D 06 9C */	stfs f0, 0x69c(r29)
/* 80746CD8  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 80746CDC  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 80746CE0  7F A3 EB 78 */	mr r3, r29
/* 80746CE4  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80746CE8  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80746CEC  4B FF C8 39 */	bl SetMoveCam__8daE_PM_cFff
/* 80746CF0  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 80746CF4  80 63 00 04 */	lwz r3, 4(r3)
/* 80746CF8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80746CFC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80746D00  38 63 03 90 */	addi r3, r3, 0x390
/* 80746D04  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80746D08  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80746D0C  80 84 00 00 */	lwz r4, 0(r4)
/* 80746D10  4B BF F7 A0 */	b PSMTXCopy
/* 80746D14  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80746D18  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80746D1C  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80746D20  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80746D24  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 80746D28  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80746D2C  7C 64 1B 78 */	mr r4, r3
/* 80746D30  4B B2 A1 BC */	b MtxPosition__FP4cXyzP4cXyz
/* 80746D34  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80746D38  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80746D3C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80746D40  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80746D44  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80746D48  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80746D4C  7F A3 EB 78 */	mr r3, r29
/* 80746D50  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000880D@ha */
/* 80746D54  38 84 88 0D */	addi r4, r4, 0x880D /* 0x0000880D@l */
/* 80746D58  38 A1 00 44 */	addi r5, r1, 0x44
/* 80746D5C  4B FF B8 A5 */	bl Particle_Set__8daE_PM_cFUs4cXyz
lbl_80746D60:
/* 80746D60  7F A3 EB 78 */	mr r3, r29
/* 80746D64  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80746D68  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80746D6C  4B FF C7 B9 */	bl SetMoveCam__8daE_PM_cFff
/* 80746D70  48 00 04 0C */	b lbl_8074717C
lbl_80746D74:
/* 80746D74  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80746D78  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80746D7C  EC 01 00 2A */	fadds f0, f1, f0
/* 80746D80  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 80746D84  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80746D88  2C 00 00 06 */	cmpwi r0, 6
/* 80746D8C  40 82 00 60 */	bne lbl_80746DEC
/* 80746D90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80746D94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80746D98  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80746D9C  38 00 00 FF */	li r0, 0xff
/* 80746DA0  90 01 00 08 */	stw r0, 8(r1)
/* 80746DA4  38 80 00 00 */	li r4, 0
/* 80746DA8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80746DAC  38 00 FF FF */	li r0, -1
/* 80746DB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80746DB4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80746DB8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80746DBC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80746DC0  80 9D 06 28 */	lwz r4, 0x628(r29)
/* 80746DC4  38 A0 00 00 */	li r5, 0
/* 80746DC8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000880C@ha */
/* 80746DCC  38 C6 88 0C */	addi r6, r6, 0x880C /* 0x0000880C@l */
/* 80746DD0  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80746DD4  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80746DD8  39 3D 04 DC */	addi r9, r29, 0x4dc
/* 80746DDC  39 5D 04 EC */	addi r10, r29, 0x4ec
/* 80746DE0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80746DE4  4B 90 66 E8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80746DE8  90 7D 06 28 */	stw r3, 0x628(r29)
lbl_80746DEC:
/* 80746DEC  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80746DF0  2C 00 00 16 */	cmpwi r0, 0x16
/* 80746DF4  40 82 00 18 */	bne lbl_80746E0C
/* 80746DF8  38 00 00 1E */	li r0, 0x1e
/* 80746DFC  B0 1D 06 20 */	sth r0, 0x620(r29)
/* 80746E00  88 7D 06 12 */	lbz r3, 0x612(r29)
/* 80746E04  38 03 00 01 */	addi r0, r3, 1
/* 80746E08  98 1D 06 12 */	stb r0, 0x612(r29)
lbl_80746E0C:
/* 80746E0C  80 1D 08 30 */	lwz r0, 0x830(r29)
/* 80746E10  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80746E14  41 82 00 C8 */	beq lbl_80746EDC
/* 80746E18  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80746E1C  2C 00 00 06 */	cmpwi r0, 6
/* 80746E20  40 82 00 BC */	bne lbl_80746EDC
/* 80746E24  7F A3 EB 78 */	mr r3, r29
/* 80746E28  38 80 00 07 */	li r4, 7
/* 80746E2C  38 A0 00 00 */	li r5, 0
/* 80746E30  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80746E34  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80746E38  4B FF B8 3D */	bl SetAnm__8daE_PM_cFiiff
/* 80746E3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700DD@ha */
/* 80746E40  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000700DD@l */
/* 80746E44  90 01 00 28 */	stw r0, 0x28(r1)
/* 80746E48  38 7D 07 20 */	addi r3, r29, 0x720
/* 80746E4C  38 81 00 28 */	addi r4, r1, 0x28
/* 80746E50  38 A0 00 00 */	li r5, 0
/* 80746E54  38 C0 FF FF */	li r6, -1
/* 80746E58  81 9D 07 20 */	lwz r12, 0x720(r29)
/* 80746E5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80746E60  7D 89 03 A6 */	mtctr r12
/* 80746E64  4E 80 04 21 */	bctrl 
/* 80746E68  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700DE@ha */
/* 80746E6C  38 03 00 DE */	addi r0, r3, 0x00DE /* 0x000700DE@l */
/* 80746E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80746E74  38 7D 07 20 */	addi r3, r29, 0x720
/* 80746E78  38 81 00 24 */	addi r4, r1, 0x24
/* 80746E7C  38 A0 00 00 */	li r5, 0
/* 80746E80  38 C0 FF FF */	li r6, -1
/* 80746E84  81 9D 07 20 */	lwz r12, 0x720(r29)
/* 80746E88  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80746E8C  7D 89 03 A6 */	mtctr r12
/* 80746E90  4E 80 04 21 */	bctrl 
/* 80746E94  C0 5D 05 EC */	lfs f2, 0x5ec(r29)
/* 80746E98  C0 3D 05 E8 */	lfs f1, 0x5e8(r29)
/* 80746E9C  C0 1D 05 E4 */	lfs f0, 0x5e4(r29)
/* 80746EA0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80746EA4  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 80746EA8  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80746EAC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80746EB0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80746EB4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80746EB8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80746EBC  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80746EC0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80746EC4  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 80746EC8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80746ECC  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80746ED0  38 C1 00 98 */	addi r6, r1, 0x98
/* 80746ED4  4B B2 9E EC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80746ED8  48 00 00 58 */	b lbl_80746F30
lbl_80746EDC:
/* 80746EDC  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 80746EE0  38 80 00 01 */	li r4, 1
/* 80746EE4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80746EE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80746EEC  40 82 00 18 */	bne lbl_80746F04
/* 80746EF0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80746EF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80746EF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80746EFC  41 82 00 08 */	beq lbl_80746F04
/* 80746F00  38 80 00 00 */	li r4, 0
lbl_80746F04:
/* 80746F04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80746F08  41 82 00 28 */	beq lbl_80746F30
/* 80746F0C  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80746F10  2C 00 00 07 */	cmpwi r0, 7
/* 80746F14  40 82 00 1C */	bne lbl_80746F30
/* 80746F18  7F A3 EB 78 */	mr r3, r29
/* 80746F1C  38 80 00 16 */	li r4, 0x16
/* 80746F20  38 A0 00 02 */	li r5, 2
/* 80746F24  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80746F28  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80746F2C  4B FF B7 49 */	bl SetAnm__8daE_PM_cFiiff
lbl_80746F30:
/* 80746F30  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80746F34  A8 9D 06 02 */	lha r4, 0x602(r29)
/* 80746F38  38 A0 00 10 */	li r5, 0x10
/* 80746F3C  38 C0 10 00 */	li r6, 0x1000
/* 80746F40  4B B2 96 C8 */	b cLib_addCalcAngleS2__FPssss
/* 80746F44  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80746F48  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80746F4C  7F A3 EB 78 */	mr r3, r29
/* 80746F50  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 80746F54  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80746F58  4B FF C5 CD */	bl SetMoveCam__8daE_PM_cFff
/* 80746F5C  48 00 02 20 */	b lbl_8074717C
lbl_80746F60:
/* 80746F60  A8 1D 06 20 */	lha r0, 0x620(r29)
/* 80746F64  2C 00 00 00 */	cmpwi r0, 0
/* 80746F68  40 82 00 7C */	bne lbl_80746FE4
/* 80746F6C  7F A3 EB 78 */	mr r3, r29
/* 80746F70  38 80 00 0F */	li r4, 0xf
/* 80746F74  38 A0 00 00 */	li r5, 0
/* 80746F78  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80746F7C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80746F80  4B FF B6 F5 */	bl SetAnm__8daE_PM_cFiiff
/* 80746F84  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700E5@ha */
/* 80746F88  38 03 00 E5 */	addi r0, r3, 0x00E5 /* 0x000700E5@l */
/* 80746F8C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80746F90  38 7D 07 20 */	addi r3, r29, 0x720
/* 80746F94  38 81 00 20 */	addi r4, r1, 0x20
/* 80746F98  38 A0 FF FF */	li r5, -1
/* 80746F9C  81 9D 07 20 */	lwz r12, 0x720(r29)
/* 80746FA0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80746FA4  7D 89 03 A6 */	mtctr r12
/* 80746FA8  4E 80 04 21 */	bctrl 
/* 80746FAC  88 7D 06 12 */	lbz r3, 0x612(r29)
/* 80746FB0  38 03 00 01 */	addi r0, r3, 1
/* 80746FB4  98 1D 06 12 */	stb r0, 0x612(r29)
/* 80746FB8  38 A0 00 00 */	li r5, 0
/* 80746FBC  38 60 00 00 */	li r3, 0
/* 80746FC0  38 80 FF FF */	li r4, -1
/* 80746FC4  48 00 00 14 */	b lbl_80746FD8
lbl_80746FC8:
/* 80746FC8  38 03 05 AC */	addi r0, r3, 0x5ac
/* 80746FCC  7C 9D 01 2E */	stwx r4, r29, r0
/* 80746FD0  38 A5 00 01 */	addi r5, r5, 1
/* 80746FD4  38 63 00 04 */	addi r3, r3, 4
lbl_80746FD8:
/* 80746FD8  88 1D 06 00 */	lbz r0, 0x600(r29)
/* 80746FDC  7C 05 00 00 */	cmpw r5, r0
/* 80746FE0  41 80 FF E8 */	blt lbl_80746FC8
lbl_80746FE4:
/* 80746FE4  7F A3 EB 78 */	mr r3, r29
/* 80746FE8  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80746FEC  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80746FF0  4B FF C5 35 */	bl SetMoveCam__8daE_PM_cFff
/* 80746FF4  48 00 01 88 */	b lbl_8074717C
lbl_80746FF8:
/* 80746FF8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80746FFC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80747000  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80747004  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80747008  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8074700C  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80747010  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80747014  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80747018  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8074701C  7F A3 EB 78 */	mr r3, r29
/* 80747020  38 81 00 38 */	addi r4, r1, 0x38
/* 80747024  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80747028  48 00 25 25 */	bl GakkiLoopAction__8daE_PM_cF4cXyzf
/* 8074702C  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80747030  2C 00 00 0D */	cmpwi r0, 0xd
/* 80747034  40 82 00 1C */	bne lbl_80747050
/* 80747038  88 7D 06 11 */	lbz r3, 0x611(r29)
/* 8074703C  38 03 FF FF */	addi r0, r3, -1
/* 80747040  98 1D 06 11 */	stb r0, 0x611(r29)
/* 80747044  88 7D 06 12 */	lbz r3, 0x612(r29)
/* 80747048  38 03 00 01 */	addi r0, r3, 1
/* 8074704C  98 1D 06 12 */	stb r0, 0x612(r29)
lbl_80747050:
/* 80747050  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80747054  2C 00 00 0E */	cmpwi r0, 0xe
/* 80747058  40 82 00 48 */	bne lbl_807470A0
/* 8074705C  C0 5D 05 EC */	lfs f2, 0x5ec(r29)
/* 80747060  C0 3D 05 E8 */	lfs f1, 0x5e8(r29)
/* 80747064  C0 1D 05 E4 */	lfs f0, 0x5e4(r29)
/* 80747068  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8074706C  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 80747070  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80747074  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80747078  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8074707C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80747080  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80747084  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80747088  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8074708C  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 80747090  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80747094  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80747098  38 C1 00 98 */	addi r6, r1, 0x98
/* 8074709C  4B B2 9D 24 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_807470A0:
/* 807470A0  7F A3 EB 78 */	mr r3, r29
/* 807470A4  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 807470A8  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 807470AC  4B FF C4 79 */	bl SetMoveCam__8daE_PM_cFff
/* 807470B0  48 00 00 CC */	b lbl_8074717C
lbl_807470B4:
/* 807470B4  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 807470B8  38 80 00 01 */	li r4, 1
/* 807470BC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807470C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807470C4  40 82 00 18 */	bne lbl_807470DC
/* 807470C8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807470CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807470D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807470D4  41 82 00 08 */	beq lbl_807470DC
/* 807470D8  38 80 00 00 */	li r4, 0
lbl_807470DC:
/* 807470DC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807470E0  41 82 00 3C */	beq lbl_8074711C
/* 807470E4  7F A3 EB 78 */	mr r3, r29
/* 807470E8  38 80 00 16 */	li r4, 0x16
/* 807470EC  38 A0 00 02 */	li r5, 2
/* 807470F0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 807470F4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807470F8  4B FF B5 7D */	bl SetAnm__8daE_PM_cFiiff
/* 807470FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80747100  80 7D 07 08 */	lwz r3, 0x708(r29)
/* 80747104  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80747108  88 7D 06 12 */	lbz r3, 0x612(r29)
/* 8074710C  38 03 00 01 */	addi r0, r3, 1
/* 80747110  98 1D 06 12 */	stb r0, 0x612(r29)
/* 80747114  38 00 00 46 */	li r0, 0x46
/* 80747118  B0 1D 06 20 */	sth r0, 0x620(r29)
lbl_8074711C:
/* 8074711C  7F A3 EB 78 */	mr r3, r29
/* 80747120  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80747124  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80747128  4B FF C3 FD */	bl SetMoveCam__8daE_PM_cFff
/* 8074712C  48 00 00 50 */	b lbl_8074717C
lbl_80747130:
/* 80747130  A8 1D 06 20 */	lha r0, 0x620(r29)
/* 80747134  2C 00 00 00 */	cmpwi r0, 0
/* 80747138  40 82 00 34 */	bne lbl_8074716C
/* 8074713C  88 1D 05 DC */	lbz r0, 0x5dc(r29)
/* 80747140  28 00 00 00 */	cmplwi r0, 0
/* 80747144  40 82 00 14 */	bne lbl_80747158
/* 80747148  7F A3 EB 78 */	mr r3, r29
/* 8074714C  4B FF C4 B5 */	bl SetReleaseCam__8daE_PM_cFv
/* 80747150  38 00 00 01 */	li r0, 1
/* 80747154  98 1D 05 DC */	stb r0, 0x5dc(r29)
lbl_80747158:
/* 80747158  38 00 00 01 */	li r0, 1
/* 8074715C  98 1D 06 10 */	stb r0, 0x610(r29)
/* 80747160  38 00 00 00 */	li r0, 0
/* 80747164  98 1D 06 11 */	stb r0, 0x611(r29)
/* 80747168  98 1D 06 12 */	stb r0, 0x612(r29)
lbl_8074716C:
/* 8074716C  7F A3 EB 78 */	mr r3, r29
/* 80747170  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80747174  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80747178  4B FF C3 AD */	bl SetMoveCam__8daE_PM_cFff
lbl_8074717C:
/* 8074717C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80747180  4B C1 B0 A8 */	b _restgpr_29
/* 80747184  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80747188  7C 08 03 A6 */	mtlr r0
/* 8074718C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80747190  4E 80 00 20 */	blr 
