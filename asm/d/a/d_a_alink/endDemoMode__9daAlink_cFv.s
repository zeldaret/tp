lbl_80117CF8:
/* 80117CF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80117CFC  7C 08 02 A6 */	mflr r0
/* 80117D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80117D04  39 61 00 20 */	addi r11, r1, 0x20
/* 80117D08  48 24 A4 CD */	bl _savegpr_27
/* 80117D0C  7C 7C 1B 78 */	mr r28, r3
/* 80117D10  48 00 04 61 */	bl checkFlyAtnWait__9daAlink_cFv
/* 80117D14  7C 7E 1B 78 */	mr r30, r3
/* 80117D18  7F 83 E3 78 */	mr r3, r28
/* 80117D1C  4B FF FF 19 */	bl endHighModel__9daAlink_cFv
/* 80117D20  80 9C 05 70 */	lwz r4, 0x570(r28)
/* 80117D24  3C 60 FF FF */	lis r3, 0xFFFF /* 0xFFFEFBFF@ha */
/* 80117D28  38 03 FB FF */	addi r0, r3, 0xFBFF /* 0xFFFEFBFF@l */
/* 80117D2C  7C 80 00 38 */	and r0, r4, r0
/* 80117D30  90 1C 05 70 */	stw r0, 0x570(r28)
/* 80117D34  38 00 00 00 */	li r0, 0
/* 80117D38  90 1C 06 F4 */	stw r0, 0x6f4(r28)
/* 80117D3C  80 9C 06 F8 */	lwz r4, 0x6f8(r28)
/* 80117D40  28 04 00 00 */	cmplwi r4, 0
/* 80117D44  41 82 00 24 */	beq lbl_80117D68
/* 80117D48  80 7C 06 A0 */	lwz r3, 0x6a0(r28)
/* 80117D4C  28 03 00 00 */	cmplwi r3, 0
/* 80117D50  41 82 00 10 */	beq lbl_80117D60
/* 80117D54  80 63 00 04 */	lwz r3, 4(r3)
/* 80117D58  38 63 00 58 */	addi r3, r3, 0x58
/* 80117D5C  48 21 7B 25 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80117D60:
/* 80117D60  38 00 00 00 */	li r0, 0
/* 80117D64  90 1C 06 F8 */	stw r0, 0x6f8(r28)
lbl_80117D68:
/* 80117D68  80 1C 06 B0 */	lwz r0, 0x6b0(r28)
/* 80117D6C  28 00 00 00 */	cmplwi r0, 0
/* 80117D70  41 82 00 30 */	beq lbl_80117DA0
/* 80117D74  80 7C 06 58 */	lwz r3, 0x658(r28)
/* 80117D78  28 03 00 00 */	cmplwi r3, 0
/* 80117D7C  41 82 00 24 */	beq lbl_80117DA0
/* 80117D80  88 1C 2F BF */	lbz r0, 0x2fbf(r28)
/* 80117D84  28 00 00 00 */	cmplwi r0, 0
/* 80117D88  40 82 00 18 */	bne lbl_80117DA0
/* 80117D8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80117D90  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80117D94  80 63 00 00 */	lwz r3, 0(r3)
/* 80117D98  38 00 00 00 */	li r0, 0
/* 80117D9C  90 03 00 54 */	stw r0, 0x54(r3)
lbl_80117DA0:
/* 80117DA0  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80117DA4  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 80117DA8  90 1C 05 70 */	stw r0, 0x570(r28)
/* 80117DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80117DB0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80117DB4  80 1F 5F 18 */	lwz r0, 0x5f18(r31)
/* 80117DB8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80117DBC  90 1F 5F 18 */	stw r0, 0x5f18(r31)
/* 80117DC0  A0 1C 06 04 */	lhz r0, 0x604(r28)
/* 80117DC4  20 00 00 04 */	subfic r0, r0, 4
/* 80117DC8  7C 00 00 34 */	cntlzw r0, r0
/* 80117DCC  54 1D DE 3E */	rlwinm r29, r0, 0x1b, 0x18, 0x1f
/* 80117DD0  38 00 00 00 */	li r0, 0
/* 80117DD4  80 7C 06 14 */	lwz r3, 0x614(r28)
/* 80117DD8  28 03 00 0E */	cmplwi r3, 0xe
/* 80117DDC  41 82 00 0C */	beq lbl_80117DE8
/* 80117DE0  28 03 00 1A */	cmplwi r3, 0x1a
/* 80117DE4  40 82 00 08 */	bne lbl_80117DEC
lbl_80117DE8:
/* 80117DE8  38 00 00 01 */	li r0, 1
lbl_80117DEC:
/* 80117DEC  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 80117DF0  38 00 00 00 */	li r0, 0
/* 80117DF4  B0 1C 06 04 */	sth r0, 0x604(r28)
/* 80117DF8  90 1C 06 14 */	stw r0, 0x614(r28)
/* 80117DFC  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80117E00  90 1C 06 10 */	stw r0, 0x610(r28)
/* 80117E04  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 80117E08  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80117E0C  41 82 00 18 */	beq lbl_80117E24
/* 80117E10  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 80117E14  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 80117E18  90 1C 05 74 */	stw r0, 0x574(r28)
/* 80117E1C  7F 83 E3 78 */	mr r3, r28
/* 80117E20  4B F9 7E 9D */	bl resetFacePriAnime__9daAlink_cFv
lbl_80117E24:
/* 80117E24  38 60 00 00 */	li r3, 0
/* 80117E28  B0 7C 06 0A */	sth r3, 0x60a(r28)
/* 80117E2C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80117E30  D0 1C 06 18 */	stfs f0, 0x618(r28)
/* 80117E34  38 00 FF FF */	li r0, -1
/* 80117E38  90 1C 31 84 */	stw r0, 0x3184(r28)
/* 80117E3C  88 1C 2F AA */	lbz r0, 0x2faa(r28)
/* 80117E40  28 00 00 01 */	cmplwi r0, 1
/* 80117E44  41 82 00 0C */	beq lbl_80117E50
/* 80117E48  28 00 00 02 */	cmplwi r0, 2
/* 80117E4C  40 82 00 08 */	bne lbl_80117E54
lbl_80117E50:
/* 80117E50  38 60 00 01 */	li r3, 1
lbl_80117E54:
/* 80117E54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80117E58  41 82 00 28 */	beq lbl_80117E80
/* 80117E5C  88 1C 2F AB */	lbz r0, 0x2fab(r28)
/* 80117E60  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80117E64  98 1C 2F AB */	stb r0, 0x2fab(r28)
/* 80117E68  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 80117E6C  28 00 00 4D */	cmplwi r0, 0x4d
/* 80117E70  41 82 02 64 */	beq lbl_801180D4
/* 80117E74  7F 83 E3 78 */	mr r3, r28
/* 80117E78  4B FD 8B 09 */	bl procHorseWaitInit__9daAlink_cFv
/* 80117E7C  48 00 02 58 */	b lbl_801180D4
lbl_80117E80:
/* 80117E80  7F 83 E3 78 */	mr r3, r28
/* 80117E84  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80117E88  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 80117E8C  7D 89 03 A6 */	mtctr r12
/* 80117E90  4E 80 04 21 */	bctrl 
/* 80117E94  28 03 00 00 */	cmplwi r3, 0
/* 80117E98  40 82 02 3C */	bne lbl_801180D4
/* 80117E9C  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 80117EA0  28 00 00 A2 */	cmplwi r0, 0xa2
/* 80117EA4  41 82 02 30 */	beq lbl_801180D4
/* 80117EA8  2C 1E 00 00 */	cmpwi r30, 0
/* 80117EAC  41 82 00 48 */	beq lbl_80117EF4
/* 80117EB0  7F 83 E3 78 */	mr r3, r28
/* 80117EB4  38 80 00 01 */	li r4, 1
/* 80117EB8  4B FE AC 65 */	bl checkSwimAction__9daAlink_cFi
/* 80117EBC  2C 03 00 00 */	cmpwi r3, 0
/* 80117EC0  41 82 00 28 */	beq lbl_80117EE8
/* 80117EC4  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 80117EC8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80117ECC  41 82 00 10 */	beq lbl_80117EDC
/* 80117ED0  7F 83 E3 78 */	mr r3, r28
/* 80117ED4  48 02 08 49 */	bl procWolfSwimMoveInit__9daAlink_cFv
/* 80117ED8  48 00 01 FC */	b lbl_801180D4
lbl_80117EDC:
/* 80117EDC  7F 83 E3 78 */	mr r3, r28
/* 80117EE0  4B FE C7 91 */	bl procSwimMoveInit__9daAlink_cFv
/* 80117EE4  48 00 01 F0 */	b lbl_801180D4
lbl_80117EE8:
/* 80117EE8  7F 83 E3 78 */	mr r3, r28
/* 80117EEC  4B F9 DA 01 */	bl checkWaitAction__9daAlink_cFv
/* 80117EF0  48 00 01 E4 */	b lbl_801180D4
lbl_80117EF4:
/* 80117EF4  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 80117EF8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80117EFC  41 82 00 44 */	beq lbl_80117F40
/* 80117F00  7F 83 E3 78 */	mr r3, r28
/* 80117F04  4B FA 30 7D */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 80117F08  2C 03 00 00 */	cmpwi r3, 0
/* 80117F0C  41 82 00 0C */	beq lbl_80117F18
/* 80117F10  2C 1B 00 00 */	cmpwi r27, 0
/* 80117F14  40 82 00 2C */	bne lbl_80117F40
lbl_80117F18:
/* 80117F18  80 9C 31 A0 */	lwz r4, 0x31a0(r28)
/* 80117F1C  3C 60 04 07 */	lis r3, 0x0407 /* 0x04070C52@ha */
/* 80117F20  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x04070C52@l */
/* 80117F24  7C 80 00 39 */	and. r0, r4, r0
/* 80117F28  40 82 00 18 */	bne lbl_80117F40
/* 80117F2C  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 80117F30  28 00 00 33 */	cmplwi r0, 0x33
/* 80117F34  41 82 00 0C */	beq lbl_80117F40
/* 80117F38  28 00 01 08 */	cmplwi r0, 0x108
/* 80117F3C  40 82 00 10 */	bne lbl_80117F4C
lbl_80117F40:
/* 80117F40  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80117F44  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80117F48  41 82 00 F0 */	beq lbl_80118038
lbl_80117F4C:
/* 80117F4C  2C 1D 00 00 */	cmpwi r29, 0
/* 80117F50  41 82 00 78 */	beq lbl_80117FC8
/* 80117F54  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 80117F58  28 00 00 04 */	cmplwi r0, 4
/* 80117F5C  41 82 00 0C */	beq lbl_80117F68
/* 80117F60  28 00 00 F2 */	cmplwi r0, 0xf2
/* 80117F64  40 82 00 64 */	bne lbl_80117FC8
lbl_80117F68:
/* 80117F68  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80117F6C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80117F70  C0 03 00 08 */	lfs f0, 8(r3)
/* 80117F74  D0 1C 33 A8 */	stfs f0, 0x33a8(r28)
/* 80117F78  A8 63 00 0C */	lha r3, 0xc(r3)
/* 80117F7C  3C 63 00 01 */	addis r3, r3, 1
/* 80117F80  38 03 80 00 */	addi r0, r3, -32768
/* 80117F84  B0 1C 2F E0 */	sth r0, 0x2fe0(r28)
/* 80117F88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80117F8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80117F90  80 1C 31 7C */	lwz r0, 0x317c(r28)
/* 80117F94  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80117F98  7C 63 02 14 */	add r3, r3, r0
/* 80117F9C  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80117FA0  48 06 96 75 */	bl dCam_getControledAngleY__FP12camera_class
/* 80117FA4  A8 1C 2F E0 */	lha r0, 0x2fe0(r28)
/* 80117FA8  7C 00 1A 14 */	add r0, r0, r3
/* 80117FAC  B0 1C 2F E2 */	sth r0, 0x2fe2(r28)
/* 80117FB0  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80117FB4  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 80117FB8  7F 83 E3 78 */	mr r3, r28
/* 80117FBC  38 80 00 00 */	li r4, 0
/* 80117FC0  4B FA 20 DD */	bl commonCheckNextAction__9daAlink_cFi
/* 80117FC4  48 00 01 10 */	b lbl_801180D4
lbl_80117FC8:
/* 80117FC8  A0 7C 2F E8 */	lhz r3, 0x2fe8(r28)
/* 80117FCC  28 03 00 BB */	cmplwi r3, 0xbb
/* 80117FD0  41 82 00 0C */	beq lbl_80117FDC
/* 80117FD4  28 03 00 BC */	cmplwi r3, 0xbc
/* 80117FD8  40 82 00 10 */	bne lbl_80117FE8
lbl_80117FDC:
/* 80117FDC  7F 83 E3 78 */	mr r3, r28
/* 80117FE0  4B FF A2 99 */	bl procHawkSubjectInit__9daAlink_cFv
/* 80117FE4  48 00 00 F0 */	b lbl_801180D4
lbl_80117FE8:
/* 80117FE8  28 03 00 BA */	cmplwi r3, 0xba
/* 80117FEC  41 82 00 E8 */	beq lbl_801180D4
/* 80117FF0  80 1C 06 14 */	lwz r0, 0x614(r28)
/* 80117FF4  28 00 00 2D */	cmplwi r0, 0x2d
/* 80117FF8  41 82 00 10 */	beq lbl_80118008
/* 80117FFC  28 03 01 4F */	cmplwi r3, 0x14f
/* 80118000  40 82 00 08 */	bne lbl_80118008
/* 80118004  48 00 00 D0 */	b lbl_801180D4
lbl_80118008:
/* 80118008  28 03 01 45 */	cmplwi r3, 0x145
/* 8011800C  40 82 00 20 */	bne lbl_8011802C
/* 80118010  80 1F 5F 18 */	lwz r0, 0x5f18(r31)
/* 80118014  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 80118018  41 82 00 14 */	beq lbl_8011802C
/* 8011801C  7F 83 E3 78 */	mr r3, r28
/* 80118020  38 80 00 00 */	li r4, 0
/* 80118024  48 01 F6 11 */	bl procWolfLieMoveInit__9daAlink_cFi
/* 80118028  48 00 00 AC */	b lbl_801180D4
lbl_8011802C:
/* 8011802C  7F 83 E3 78 */	mr r3, r28
/* 80118030  4B F9 D8 BD */	bl checkWaitAction__9daAlink_cFv
/* 80118034  48 00 00 A0 */	b lbl_801180D4
lbl_80118038:
/* 80118038  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 8011803C  28 00 01 53 */	cmplwi r0, 0x153
/* 80118040  40 82 00 48 */	bne lbl_80118088
/* 80118044  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 80118048  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 8011804C  41 82 00 30 */	beq lbl_8011807C
/* 80118050  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 80118054  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80118058  41 82 00 14 */	beq lbl_8011806C
/* 8011805C  7F 83 E3 78 */	mr r3, r28
/* 80118060  38 80 00 00 */	li r4, 0
/* 80118064  48 02 04 C9 */	bl procWolfSwimWaitInit__9daAlink_cFi
/* 80118068  48 00 00 6C */	b lbl_801180D4
lbl_8011806C:
/* 8011806C  7F 83 E3 78 */	mr r3, r28
/* 80118070  38 80 00 00 */	li r4, 0
/* 80118074  4B FE C2 85 */	bl procSwimWaitInit__9daAlink_cFi
/* 80118078  48 00 00 5C */	b lbl_801180D4
lbl_8011807C:
/* 8011807C  7F 83 E3 78 */	mr r3, r28
/* 80118080  4B F9 D8 6D */	bl checkWaitAction__9daAlink_cFv
/* 80118084  48 00 00 50 */	b lbl_801180D4
lbl_80118088:
/* 80118088  28 00 00 B1 */	cmplwi r0, 0xb1
/* 8011808C  40 82 00 20 */	bne lbl_801180AC
/* 80118090  7F 83 E3 78 */	mr r3, r28
/* 80118094  38 80 00 01 */	li r4, 1
/* 80118098  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 8011809C  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 801180A0  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 801180A4  4B FA E9 A5 */	bl procFallInit__9daAlink_cFif
/* 801180A8  48 00 00 2C */	b lbl_801180D4
lbl_801180AC:
/* 801180AC  7F 83 E3 78 */	mr r3, r28
/* 801180B0  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 801180B4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 801180B8  7D 89 03 A6 */	mtctr r12
/* 801180BC  4E 80 04 21 */	bctrl 
/* 801180C0  28 03 00 00 */	cmplwi r3, 0
/* 801180C4  41 82 00 10 */	beq lbl_801180D4
/* 801180C8  7F 83 E3 78 */	mr r3, r28
/* 801180CC  38 80 00 00 */	li r4, 0
/* 801180D0  4B FD D1 15 */	bl procCanoeWaitInit__9daAlink_cFi
lbl_801180D4:
/* 801180D4  39 61 00 20 */	addi r11, r1, 0x20
/* 801180D8  48 24 A1 49 */	bl _restgpr_27
/* 801180DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801180E0  7C 08 03 A6 */	mtlr r0
/* 801180E4  38 21 00 20 */	addi r1, r1, 0x20
/* 801180E8  4E 80 00 20 */	blr 
