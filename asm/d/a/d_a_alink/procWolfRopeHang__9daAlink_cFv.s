lbl_80132914:
/* 80132914  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80132918  7C 08 02 A6 */	mflr r0
/* 8013291C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80132920  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80132924  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80132928  39 61 00 30 */	addi r11, r1, 0x30
/* 8013292C  48 22 F8 B1 */	bl _savegpr_29
/* 80132930  7C 7E 1B 78 */	mr r30, r3
/* 80132934  3B BE 1F D0 */	addi r29, r30, 0x1fd0
/* 80132938  83 E3 28 10 */	lwz r31, 0x2810(r3)
/* 8013293C  28 1F 00 00 */	cmplwi r31, 0
/* 80132940  40 82 00 10 */	bne lbl_80132950
/* 80132944  38 80 00 00 */	li r4, 0
/* 80132948  4B FF 71 FD */	bl checkNextActionWolf__9daAlink_cFi
/* 8013294C  48 00 03 FC */	b lbl_80132D48
lbl_80132950:
/* 80132950  7F A3 EB 78 */	mr r3, r29
/* 80132954  48 02 BB 79 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80132958  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013295C  41 82 00 E4 */	beq lbl_80132A40
/* 80132960  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 80132964  2C 00 00 00 */	cmpwi r0, 0
/* 80132968  41 82 00 A4 */	beq lbl_80132A0C
/* 8013296C  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 80132970  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80132974  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80132978  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 8013297C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80132980  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80132984  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 80132988  2C 00 00 02 */	cmpwi r0, 2
/* 8013298C  40 82 00 44 */	bne lbl_801329D0
/* 80132990  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80132994  38 03 40 00 */	addi r0, r3, 0x4000
/* 80132998  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8013299C  7F C3 F3 78 */	mr r3, r30
/* 801329A0  38 80 00 00 */	li r4, 0
/* 801329A4  38 A0 C0 00 */	li r5, -16384
/* 801329A8  38 C0 00 00 */	li r6, 0
/* 801329AC  4B F7 B1 CD */	bl setOldRootQuaternion__9daAlink_cFsss
/* 801329B0  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 801329B4  7C 00 00 D0 */	neg r0, r0
/* 801329B8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 801329BC  7F C3 F3 78 */	mr r3, r30
/* 801329C0  38 80 00 00 */	li r4, 0
/* 801329C4  38 A0 00 00 */	li r5, 0
/* 801329C8  4B FF F2 AD */	bl procWolfRopeMoveInit__9daAlink_cFii
/* 801329CC  48 00 03 7C */	b lbl_80132D48
lbl_801329D0:
/* 801329D0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 801329D4  38 03 C0 00 */	addi r0, r3, -16384
/* 801329D8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 801329DC  7F C3 F3 78 */	mr r3, r30
/* 801329E0  38 80 00 00 */	li r4, 0
/* 801329E4  38 A0 40 00 */	li r5, 0x4000
/* 801329E8  38 C0 00 00 */	li r6, 0
/* 801329EC  4B F7 B1 8D */	bl setOldRootQuaternion__9daAlink_cFsss
/* 801329F0  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 801329F4  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 801329F8  7F C3 F3 78 */	mr r3, r30
/* 801329FC  38 80 00 01 */	li r4, 1
/* 80132A00  38 A0 00 00 */	li r5, 0
/* 80132A04  4B FF F2 71 */	bl procWolfRopeMoveInit__9daAlink_cFii
/* 80132A08  48 00 03 40 */	b lbl_80132D48
lbl_80132A0C:
/* 80132A0C  38 00 00 01 */	li r0, 1
/* 80132A10  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 80132A14  7F C3 F3 78 */	mr r3, r30
/* 80132A18  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 80132A1C  2C 00 00 02 */	cmpwi r0, 2
/* 80132A20  38 80 00 23 */	li r4, 0x23
/* 80132A24  40 82 00 08 */	bne lbl_80132A2C
/* 80132A28  38 80 00 22 */	li r4, 0x22
lbl_80132A2C:
/* 80132A2C  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlRope_c0@ha /* 0x8038F46C@ha */
/* 80132A30  38 A5 F4 6C */	addi r5, r5, m__20daAlinkHIO_wlRope_c0@l /* 0x8038F46C@l */
/* 80132A34  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 80132A38  C0 45 00 30 */	lfs f2, 0x30(r5)
/* 80132A3C  4B FF 6C 9D */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
lbl_80132A40:
/* 80132A40  C3 FD 00 10 */	lfs f31, 0x10(r29)
/* 80132A44  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 80132A48  2C 00 00 00 */	cmpwi r0, 0
/* 80132A4C  41 82 00 10 */	beq lbl_80132A5C
/* 80132A50  C0 02 96 50 */	lfs f0, lit_34957(r2)
/* 80132A54  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132A58  40 80 00 9C */	bge lbl_80132AF4
lbl_80132A5C:
/* 80132A5C  7F C3 F3 78 */	mr r3, r30
/* 80132A60  38 80 00 33 */	li r4, 0x33
/* 80132A64  4B F8 07 ED */	bl setDoStatus__9daAlink_cFUc
/* 80132A68  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 80132A6C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80132A70  41 82 00 84 */	beq lbl_80132AF4
/* 80132A74  38 00 00 1E */	li r0, 0x1e
/* 80132A78  98 1F 07 16 */	stb r0, 0x716(r31)
/* 80132A7C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80132A80  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80132A84  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80132A88  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80132A8C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80132A90  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80132A94  C0 42 93 B0 */	lfs f2, lit_10039(r2)
/* 80132A98  EC 02 00 32 */	fmuls f0, f2, f0
/* 80132A9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80132AA0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80132AA4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80132AA8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80132AAC  7C 63 02 14 */	add r3, r3, r0
/* 80132AB0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80132AB4  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80132AB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80132ABC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80132AC0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80132AC4  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 80132AC8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80132ACC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80132AD0  EC 00 10 2A */	fadds f0, f0, f2
/* 80132AD4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80132AD8  7F C3 F3 78 */	mr r3, r30
/* 80132ADC  38 80 00 02 */	li r4, 2
/* 80132AE0  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 80132AE4  38 A5 F0 A8 */	addi r5, r5, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 80132AE8  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 80132AEC  4B FF C2 E5 */	bl procWolfFallInit__9daAlink_cFif
/* 80132AF0  48 00 02 58 */	b lbl_80132D48
lbl_80132AF4:
/* 80132AF4  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 80132AF8  2C 00 00 00 */	cmpwi r0, 0
/* 80132AFC  41 82 01 B8 */	beq lbl_80132CB4
/* 80132B00  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 80132B04  2C 00 00 02 */	cmpwi r0, 2
/* 80132B08  40 82 00 D8 */	bne lbl_80132BE0
/* 80132B0C  7F A3 EB 78 */	mr r3, r29
/* 80132B10  C0 22 96 50 */	lfs f1, lit_34957(r2)
/* 80132B14  48 1F 59 19 */	bl checkPass__12J3DFrameCtrlFf
/* 80132B18  2C 03 00 00 */	cmpwi r3, 0
/* 80132B1C  41 82 00 18 */	beq lbl_80132B34
/* 80132B20  7F C3 F3 78 */	mr r3, r30
/* 80132B24  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 80132B28  4B FF EF 45 */	bl wolfRopeSwingInc__9daAlink_cFf
/* 80132B2C  38 00 00 00 */	li r0, 0
/* 80132B30  B0 1E 30 08 */	sth r0, 0x3008(r30)
lbl_80132B34:
/* 80132B34  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80132B38  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132B3C  40 80 00 18 */	bge lbl_80132B54
/* 80132B40  38 00 00 13 */	li r0, 0x13
/* 80132B44  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132B48  38 00 00 17 */	li r0, 0x17
/* 80132B4C  90 1F 07 1C */	stw r0, 0x71c(r31)
/* 80132B50  48 00 01 E8 */	b lbl_80132D38
lbl_80132B54:
/* 80132B54  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 80132B58  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132B5C  40 80 00 10 */	bge lbl_80132B6C
/* 80132B60  38 00 FF FF */	li r0, -1
/* 80132B64  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132B68  48 00 01 D0 */	b lbl_80132D38
lbl_80132B6C:
/* 80132B6C  C0 02 96 50 */	lfs f0, lit_34957(r2)
/* 80132B70  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132B74  40 80 00 10 */	bge lbl_80132B84
/* 80132B78  38 00 00 12 */	li r0, 0x12
/* 80132B7C  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132B80  48 00 01 B8 */	b lbl_80132D38
lbl_80132B84:
/* 80132B84  C0 02 94 EC */	lfs f0, lit_19382(r2)
/* 80132B88  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132B8C  40 80 00 10 */	bge lbl_80132B9C
/* 80132B90  38 00 00 24 */	li r0, 0x24
/* 80132B94  90 1F 07 1C */	stw r0, 0x71c(r31)
/* 80132B98  48 00 01 A0 */	b lbl_80132D38
lbl_80132B9C:
/* 80132B9C  38 00 00 13 */	li r0, 0x13
/* 80132BA0  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132BA4  38 00 00 1F */	li r0, 0x1f
/* 80132BA8  90 1F 07 1C */	stw r0, 0x71c(r31)
/* 80132BAC  38 60 00 00 */	li r3, 0
/* 80132BB0  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 80132BB4  28 00 02 DA */	cmplwi r0, 0x2da
/* 80132BB8  41 82 00 10 */	beq lbl_80132BC8
/* 80132BBC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80132BC0  28 00 02 DB */	cmplwi r0, 0x2db
/* 80132BC4  40 82 00 08 */	bne lbl_80132BCC
lbl_80132BC8:
/* 80132BC8  38 60 00 01 */	li r3, 1
lbl_80132BCC:
/* 80132BCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80132BD0  41 82 01 68 */	beq lbl_80132D38
/* 80132BD4  38 00 E8 00 */	li r0, -6144
/* 80132BD8  B0 1E 30 A0 */	sth r0, 0x30a0(r30)
/* 80132BDC  48 00 01 5C */	b lbl_80132D38
lbl_80132BE0:
/* 80132BE0  7F A3 EB 78 */	mr r3, r29
/* 80132BE4  C0 22 93 38 */	lfs f1, lit_7807(r2)
/* 80132BE8  48 1F 58 45 */	bl checkPass__12J3DFrameCtrlFf
/* 80132BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80132BF0  41 82 00 18 */	beq lbl_80132C08
/* 80132BF4  7F C3 F3 78 */	mr r3, r30
/* 80132BF8  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 80132BFC  4B FF EE 71 */	bl wolfRopeSwingInc__9daAlink_cFf
/* 80132C00  38 00 00 00 */	li r0, 0
/* 80132C04  B0 1E 30 08 */	sth r0, 0x3008(r30)
lbl_80132C08:
/* 80132C08  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80132C0C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132C10  40 80 00 18 */	bge lbl_80132C28
/* 80132C14  38 00 00 13 */	li r0, 0x13
/* 80132C18  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132C1C  38 00 00 17 */	li r0, 0x17
/* 80132C20  90 1F 07 1C */	stw r0, 0x71c(r31)
/* 80132C24  48 00 01 14 */	b lbl_80132D38
lbl_80132C28:
/* 80132C28  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 80132C2C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132C30  40 80 00 10 */	bge lbl_80132C40
/* 80132C34  38 00 FF FF */	li r0, -1
/* 80132C38  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132C3C  48 00 00 FC */	b lbl_80132D38
lbl_80132C40:
/* 80132C40  C0 02 93 38 */	lfs f0, lit_7807(r2)
/* 80132C44  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132C48  40 80 00 10 */	bge lbl_80132C58
/* 80132C4C  38 00 00 12 */	li r0, 0x12
/* 80132C50  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132C54  48 00 00 E4 */	b lbl_80132D38
lbl_80132C58:
/* 80132C58  C0 02 94 E4 */	lfs f0, lit_19380(r2)
/* 80132C5C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132C60  40 80 00 10 */	bge lbl_80132C70
/* 80132C64  38 00 00 1F */	li r0, 0x1f
/* 80132C68  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132C6C  48 00 00 CC */	b lbl_80132D38
lbl_80132C70:
/* 80132C70  38 00 00 18 */	li r0, 0x18
/* 80132C74  90 1F 07 1C */	stw r0, 0x71c(r31)
/* 80132C78  38 00 00 24 */	li r0, 0x24
/* 80132C7C  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132C80  38 60 00 00 */	li r3, 0
/* 80132C84  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 80132C88  28 00 02 DA */	cmplwi r0, 0x2da
/* 80132C8C  41 82 00 10 */	beq lbl_80132C9C
/* 80132C90  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80132C94  28 00 02 DB */	cmplwi r0, 0x2db
/* 80132C98  40 82 00 08 */	bne lbl_80132CA0
lbl_80132C9C:
/* 80132C9C  38 60 00 01 */	li r3, 1
lbl_80132CA0:
/* 80132CA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80132CA4  41 82 00 94 */	beq lbl_80132D38
/* 80132CA8  38 00 E8 00 */	li r0, -6144
/* 80132CAC  B0 1E 30 A0 */	sth r0, 0x30a0(r30)
/* 80132CB0  48 00 00 88 */	b lbl_80132D38
lbl_80132CB4:
/* 80132CB4  7F A3 EB 78 */	mr r3, r29
/* 80132CB8  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 80132CBC  48 1F 57 71 */	bl checkPass__12J3DFrameCtrlFf
/* 80132CC0  2C 03 00 00 */	cmpwi r3, 0
/* 80132CC4  41 82 00 34 */	beq lbl_80132CF8
/* 80132CC8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80132CCC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80132CD0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80132CD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80132CD8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80132CDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80132CE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80132CE4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80132CE8  38 80 00 02 */	li r4, 2
/* 80132CEC  38 A0 00 0F */	li r5, 0xf
/* 80132CF0  38 C1 00 08 */	addi r6, r1, 8
/* 80132CF4  4B F3 CD 31 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80132CF8:
/* 80132CF8  C0 02 93 74 */	lfs f0, lit_8502(r2)
/* 80132CFC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132D00  40 80 00 18 */	bge lbl_80132D18
/* 80132D04  38 00 FF FE */	li r0, -2
/* 80132D08  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132D0C  38 00 FF FF */	li r0, -1
/* 80132D10  90 1F 07 1C */	stw r0, 0x71c(r31)
/* 80132D14  48 00 00 24 */	b lbl_80132D38
lbl_80132D18:
/* 80132D18  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 80132D1C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132D20  40 80 00 10 */	bge lbl_80132D30
/* 80132D24  38 00 00 13 */	li r0, 0x13
/* 80132D28  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132D2C  48 00 00 0C */	b lbl_80132D38
lbl_80132D30:
/* 80132D30  38 00 00 17 */	li r0, 0x17
/* 80132D34  90 1F 07 1C */	stw r0, 0x71c(r31)
lbl_80132D38:
/* 80132D38  7F C3 F3 78 */	mr r3, r30
/* 80132D3C  38 80 00 00 */	li r4, 0
/* 80132D40  4B FF ED BD */	bl setWolfRopeOffsetY__9daAlink_cFi
/* 80132D44  38 60 00 01 */	li r3, 1
lbl_80132D48:
/* 80132D48  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80132D4C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80132D50  39 61 00 30 */	addi r11, r1, 0x30
/* 80132D54  48 22 F4 D5 */	bl _restgpr_29
/* 80132D58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80132D5C  7C 08 03 A6 */	mtlr r0
/* 80132D60  38 21 00 40 */	addi r1, r1, 0x40
/* 80132D64  4E 80 00 20 */	blr 
