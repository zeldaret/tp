lbl_80115EC0:
/* 80115EC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80115EC4  7C 08 02 A6 */	mflr r0
/* 80115EC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80115ECC  39 61 00 20 */	addi r11, r1, 0x20
/* 80115ED0  48 24 C3 09 */	bl _savegpr_28
/* 80115ED4  7C 7D 1B 78 */	mr r29, r3
/* 80115ED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80115EDC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80115EE0  38 00 00 00 */	li r0, 0
/* 80115EE4  88 7F 4F AD */	lbz r3, 0x4fad(r31)
/* 80115EE8  28 03 00 00 */	cmplwi r3, 0
/* 80115EEC  41 82 00 0C */	beq lbl_80115EF8
/* 80115EF0  28 03 00 02 */	cmplwi r3, 2
/* 80115EF4  40 82 00 08 */	bne lbl_80115EFC
lbl_80115EF8:
/* 80115EF8  38 00 00 01 */	li r0, 1
lbl_80115EFC:
/* 80115EFC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80115F00  41 82 00 24 */	beq lbl_80115F24
/* 80115F04  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80115F08  28 00 00 00 */	cmplwi r0, 0
/* 80115F0C  40 82 00 10 */	bne lbl_80115F1C
/* 80115F10  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80115F14  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 80115F18  90 1D 05 70 */	stw r0, 0x570(r29)
lbl_80115F1C:
/* 80115F1C  38 60 00 00 */	li r3, 0
/* 80115F20  48 00 0F 28 */	b lbl_80116E48
lbl_80115F24:
/* 80115F24  83 DD 06 14 */	lwz r30, 0x614(r29)
/* 80115F28  28 1E 00 06 */	cmplwi r30, 6
/* 80115F2C  41 82 00 18 */	beq lbl_80115F44
/* 80115F30  28 1E 00 08 */	cmplwi r30, 8
/* 80115F34  41 82 00 10 */	beq lbl_80115F44
/* 80115F38  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80115F3C  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 80115F40  90 1D 05 70 */	stw r0, 0x570(r29)
lbl_80115F44:
/* 80115F44  28 1E 00 33 */	cmplwi r30, 0x33
/* 80115F48  41 82 00 1C */	beq lbl_80115F64
/* 80115F4C  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 80115F50  28 00 00 01 */	cmplwi r0, 1
/* 80115F54  40 82 00 10 */	bne lbl_80115F64
/* 80115F58  7F A3 EB 78 */	mr r3, r29
/* 80115F5C  4B FD 49 F5 */	bl procSumouReadyInit__9daAlink_cFv
/* 80115F60  48 00 0E E8 */	b lbl_80116E48
lbl_80115F64:
/* 80115F64  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80115F68  28 00 01 37 */	cmplwi r0, 0x137
/* 80115F6C  40 82 00 0C */	bne lbl_80115F78
/* 80115F70  38 60 00 00 */	li r3, 0
/* 80115F74  48 00 0E D4 */	b lbl_80116E48
lbl_80115F78:
/* 80115F78  80 9D 31 A0 */	lwz r4, 0x31a0(r29)
/* 80115F7C  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 80115F80  40 82 01 04 */	bne lbl_80116084
/* 80115F84  28 1E 02 00 */	cmplwi r30, 0x200
/* 80115F88  41 82 00 FC */	beq lbl_80116084
/* 80115F8C  28 1E 00 46 */	cmplwi r30, 0x46
/* 80115F90  41 82 00 F4 */	beq lbl_80116084
/* 80115F94  28 1E 00 47 */	cmplwi r30, 0x47
/* 80115F98  41 82 00 EC */	beq lbl_80116084
/* 80115F9C  28 1E 00 39 */	cmplwi r30, 0x39
/* 80115FA0  41 82 00 E4 */	beq lbl_80116084
/* 80115FA4  28 1E 00 3A */	cmplwi r30, 0x3a
/* 80115FA8  41 82 00 DC */	beq lbl_80116084
/* 80115FAC  28 1E 00 09 */	cmplwi r30, 9
/* 80115FB0  41 82 00 D4 */	beq lbl_80116084
/* 80115FB4  28 1E 00 11 */	cmplwi r30, 0x11
/* 80115FB8  41 82 00 CC */	beq lbl_80116084
/* 80115FBC  28 1E 00 18 */	cmplwi r30, 0x18
/* 80115FC0  41 82 00 C4 */	beq lbl_80116084
/* 80115FC4  28 1E 00 07 */	cmplwi r30, 7
/* 80115FC8  41 82 00 BC */	beq lbl_80116084
/* 80115FCC  28 1E 00 13 */	cmplwi r30, 0x13
/* 80115FD0  41 82 00 B4 */	beq lbl_80116084
/* 80115FD4  28 1E 00 04 */	cmplwi r30, 4
/* 80115FD8  41 82 00 AC */	beq lbl_80116084
/* 80115FDC  28 1E 00 38 */	cmplwi r30, 0x38
/* 80115FE0  41 82 00 A4 */	beq lbl_80116084
/* 80115FE4  28 1E 00 45 */	cmplwi r30, 0x45
/* 80115FE8  41 82 00 9C */	beq lbl_80116084
/* 80115FEC  28 1E 00 0A */	cmplwi r30, 0xa
/* 80115FF0  41 82 00 94 */	beq lbl_80116084
/* 80115FF4  28 1E 00 2D */	cmplwi r30, 0x2d
/* 80115FF8  41 82 00 8C */	beq lbl_80116084
/* 80115FFC  28 1E 00 23 */	cmplwi r30, 0x23
/* 80116000  41 82 00 84 */	beq lbl_80116084
/* 80116004  28 1E 00 43 */	cmplwi r30, 0x43
/* 80116008  41 82 00 7C */	beq lbl_80116084
/* 8011600C  28 1E 00 34 */	cmplwi r30, 0x34
/* 80116010  41 82 00 74 */	beq lbl_80116084
/* 80116014  28 1E 00 0B */	cmplwi r30, 0xb
/* 80116018  40 82 00 14 */	bne lbl_8011602C
/* 8011601C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010040@ha */
/* 80116020  38 03 00 40 */	addi r0, r3, 0x0040 /* 0x00010040@l */
/* 80116024  7C 80 00 39 */	and. r0, r4, r0
/* 80116028  40 82 00 5C */	bne lbl_80116084
lbl_8011602C:
/* 8011602C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80116030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80116034  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80116038  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8011603C  40 82 00 48 */	bne lbl_80116084
/* 80116040  7F A3 EB 78 */	mr r3, r29
/* 80116044  48 00 21 2D */	bl checkFlyAtnWait__9daAlink_cFv
/* 80116048  2C 03 00 00 */	cmpwi r3, 0
/* 8011604C  40 82 00 38 */	bne lbl_80116084
/* 80116050  80 1D 19 9C */	lwz r0, 0x199c(r29)
/* 80116054  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80116058  40 82 00 10 */	bne lbl_80116068
/* 8011605C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116060  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80116064  41 82 00 18 */	beq lbl_8011607C
lbl_80116068:
/* 80116068  80 9D 31 A0 */	lwz r4, 0x31a0(r29)
/* 8011606C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 80116070  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 80116074  7C 80 00 39 */	and. r0, r4, r0
/* 80116078  41 82 00 0C */	beq lbl_80116084
lbl_8011607C:
/* 8011607C  38 60 00 00 */	li r3, 0
/* 80116080  48 00 0D C8 */	b lbl_80116E48
lbl_80116084:
/* 80116084  7F A3 EB 78 */	mr r3, r29
/* 80116088  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8011608C  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 80116090  7D 89 03 A6 */	mtctr r12
/* 80116094  4E 80 04 21 */	bctrl 
/* 80116098  28 03 00 00 */	cmplwi r3, 0
/* 8011609C  41 82 00 14 */	beq lbl_801160B0
/* 801160A0  C0 1D 37 A4 */	lfs f0, 0x37a4(r29)
/* 801160A4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 801160A8  C0 1D 37 AC */	lfs f0, 0x37ac(r29)
/* 801160AC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_801160B0:
/* 801160B0  28 1E 02 00 */	cmplwi r30, 0x200
/* 801160B4  41 82 00 0C */	beq lbl_801160C0
/* 801160B8  7F A3 EB 78 */	mr r3, r29
/* 801160BC  48 00 1B 79 */	bl endHighModel__9daAlink_cFv
lbl_801160C0:
/* 801160C0  28 1E 02 00 */	cmplwi r30, 0x200
/* 801160C4  40 82 00 1C */	bne lbl_801160E0
/* 801160C8  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 801160CC  64 00 00 10 */	oris r0, r0, 0x10
/* 801160D0  90 1D 05 70 */	stw r0, 0x570(r29)
/* 801160D4  7F A3 EB 78 */	mr r3, r29
/* 801160D8  48 00 35 21 */	bl procCoToolDemoInit__9daAlink_cFv
/* 801160DC  48 00 0D 6C */	b lbl_80116E48
lbl_801160E0:
/* 801160E0  1C 9E 00 0C */	mulli r4, r30, 0xc
/* 801160E4  3C 60 80 3B */	lis r3, m_demoInitTable__9daAlink_c@ha /* 0x803B22E0@ha */
/* 801160E8  38 03 22 E0 */	addi r0, r3, m_demoInitTable__9daAlink_c@l /* 0x803B22E0@l */
/* 801160EC  7F 80 22 14 */	add r28, r0, r4
/* 801160F0  7F 83 E3 78 */	mr r3, r28
/* 801160F4  48 24 BF 25 */	bl __ptmf_test
/* 801160F8  2C 03 00 00 */	cmpwi r3, 0
/* 801160FC  41 82 00 24 */	beq lbl_80116120
/* 80116100  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116104  64 00 00 10 */	oris r0, r0, 0x10
/* 80116108  90 1D 05 70 */	stw r0, 0x570(r29)
/* 8011610C  7F A3 EB 78 */	mr r3, r29
/* 80116110  7F 8C E3 78 */	mr r12, r28
/* 80116114  48 24 BF 71 */	bl __ptmf_scall
/* 80116118  60 00 00 00 */	nop 
/* 8011611C  48 00 0D 2C */	b lbl_80116E48
lbl_80116120:
/* 80116120  28 1E 00 06 */	cmplwi r30, 6
/* 80116124  41 82 00 0C */	beq lbl_80116130
/* 80116128  28 1E 00 08 */	cmplwi r30, 8
/* 8011612C  40 82 02 38 */	bne lbl_80116364
lbl_80116130:
/* 80116130  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80116134  2C 00 00 01 */	cmpwi r0, 1
/* 80116138  41 82 00 50 */	beq lbl_80116188
/* 8011613C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116140  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80116144  40 82 00 44 */	bne lbl_80116188
/* 80116148  38 00 00 5E */	li r0, 0x5e
/* 8011614C  90 01 00 08 */	stw r0, 8(r1)
/* 80116150  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80116154  38 81 00 08 */	addi r4, r1, 8
/* 80116158  38 A0 00 00 */	li r5, 0
/* 8011615C  38 C0 00 00 */	li r6, 0
/* 80116160  38 E0 00 00 */	li r7, 0
/* 80116164  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80116168  FC 40 08 90 */	fmr f2, f1
/* 8011616C  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 80116170  FC 80 18 90 */	fmr f4, f3
/* 80116174  39 00 00 00 */	li r8, 0
/* 80116178  48 19 58 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8011617C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116180  60 00 04 00 */	ori r0, r0, 0x400
/* 80116184  90 1D 05 70 */	stw r0, 0x570(r29)
lbl_80116188:
/* 80116188  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 8011618C  28 00 00 A5 */	cmplwi r0, 0xa5
/* 80116190  40 82 00 20 */	bne lbl_801161B0
/* 80116194  7F A3 EB 78 */	mr r3, r29
/* 80116198  38 80 00 01 */	li r4, 1
/* 8011619C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 801161A0  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 801161A4  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 801161A8  4B FB 08 A1 */	bl procFallInit__9daAlink_cFif
/* 801161AC  48 00 0C 9C */	b lbl_80116E48
lbl_801161B0:
/* 801161B0  80 7D 31 A0 */	lwz r3, 0x31a0(r29)
/* 801161B4  54 60 01 4B */	rlwinm. r0, r3, 0, 5, 5
/* 801161B8  40 82 00 60 */	bne lbl_80116218
/* 801161BC  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 801161C0  40 82 00 58 */	bne lbl_80116218
/* 801161C4  7F A3 EB 78 */	mr r3, r29
/* 801161C8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 801161CC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 801161D0  7D 89 03 A6 */	mtctr r12
/* 801161D4  4E 80 04 21 */	bctrl 
/* 801161D8  28 03 00 00 */	cmplwi r3, 0
/* 801161DC  40 82 00 3C */	bne lbl_80116218
/* 801161E0  7F A3 EB 78 */	mr r3, r29
/* 801161E4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 801161E8  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 801161EC  7D 89 03 A6 */	mtctr r12
/* 801161F0  4E 80 04 21 */	bctrl 
/* 801161F4  28 03 00 00 */	cmplwi r3, 0
/* 801161F8  40 82 00 20 */	bne lbl_80116218
/* 801161FC  7F A3 EB 78 */	mr r3, r29
/* 80116200  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80116204  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 80116208  7D 89 03 A6 */	mtctr r12
/* 8011620C  4E 80 04 21 */	bctrl 
/* 80116210  28 03 00 00 */	cmplwi r3, 0
/* 80116214  41 82 00 E8 */	beq lbl_801162FC
lbl_80116218:
/* 80116218  28 1E 00 06 */	cmplwi r30, 6
/* 8011621C  40 82 00 6C */	bne lbl_80116288
/* 80116220  7F A3 EB 78 */	mr r3, r29
/* 80116224  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80116228  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8011622C  7D 89 03 A6 */	mtctr r12
/* 80116230  4E 80 04 21 */	bctrl 
/* 80116234  28 03 00 00 */	cmplwi r3, 0
/* 80116238  40 82 00 20 */	bne lbl_80116258
/* 8011623C  7F A3 EB 78 */	mr r3, r29
/* 80116240  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80116244  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 80116248  7D 89 03 A6 */	mtctr r12
/* 8011624C  4E 80 04 21 */	bctrl 
/* 80116250  28 03 00 00 */	cmplwi r3, 0
/* 80116254  41 82 00 34 */	beq lbl_80116288
lbl_80116258:
/* 80116258  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8011625C  28 00 00 FF */	cmplwi r0, 0xff
/* 80116260  41 82 00 28 */	beq lbl_80116288
/* 80116264  28 00 00 48 */	cmplwi r0, 0x48
/* 80116268  41 82 00 20 */	beq lbl_80116288
/* 8011626C  7F A3 EB 78 */	mr r3, r29
/* 80116270  4B FA 30 D1 */	bl checkEquipAnime__9daAlink_cCFv
/* 80116274  2C 03 00 00 */	cmpwi r3, 0
/* 80116278  40 82 00 10 */	bne lbl_80116288
/* 8011627C  7F A3 EB 78 */	mr r3, r29
/* 80116280  38 80 00 01 */	li r4, 1
/* 80116284  4B FA 35 B9 */	bl allUnequip__9daAlink_cFi
lbl_80116288:
/* 80116288  7F A3 EB 78 */	mr r3, r29
/* 8011628C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80116290  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80116294  7D 89 03 A6 */	mtctr r12
/* 80116298  4E 80 04 21 */	bctrl 
/* 8011629C  28 03 00 00 */	cmplwi r3, 0
/* 801162A0  41 82 00 4C */	beq lbl_801162EC
/* 801162A4  83 CD 8A 98 */	lwz r30, m_midnaActor__9daPy_py_c(r13)
/* 801162A8  7F A3 EB 78 */	mr r3, r29
/* 801162AC  4B F0 58 69 */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 801162B0  7C 03 F0 40 */	cmplw r3, r30
/* 801162B4  40 82 00 38 */	bne lbl_801162EC
/* 801162B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801162BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801162C0  80 83 5D B8 */	lwz r4, 0x5db8(r3)
/* 801162C4  88 04 16 B8 */	lbz r0, 0x16b8(r4)
/* 801162C8  28 00 00 03 */	cmplwi r0, 3
/* 801162CC  41 82 00 20 */	beq lbl_801162EC
/* 801162D0  38 00 00 03 */	li r0, 3
/* 801162D4  98 04 16 B8 */	stb r0, 0x16b8(r4)
/* 801162D8  38 60 00 00 */	li r3, 0
/* 801162DC  90 64 17 28 */	stw r3, 0x1728(r4)
/* 801162E0  38 00 00 0E */	li r0, 0xe
/* 801162E4  90 04 17 40 */	stw r0, 0x1740(r4)
/* 801162E8  90 64 17 28 */	stw r3, 0x1728(r4)
lbl_801162EC:
/* 801162EC  38 00 00 00 */	li r0, 0
/* 801162F0  B0 1D 30 00 */	sth r0, 0x3000(r29)
/* 801162F4  38 60 00 01 */	li r3, 1
/* 801162F8  48 00 0B 50 */	b lbl_80116E48
lbl_801162FC:
/* 801162FC  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116300  64 00 00 10 */	oris r0, r0, 0x10
/* 80116304  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116308  80 1D 28 30 */	lwz r0, 0x2830(r29)
/* 8011630C  28 00 00 00 */	cmplwi r0, 0
/* 80116310  41 82 00 48 */	beq lbl_80116358
/* 80116314  7F A3 EB 78 */	mr r3, r29
/* 80116318  4B F0 57 FD */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 8011631C  28 03 00 00 */	cmplwi r3, 0
/* 80116320  41 82 00 2C */	beq lbl_8011634C
/* 80116324  7F A3 EB 78 */	mr r3, r29
/* 80116328  4B F0 57 ED */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 8011632C  7C 64 1B 78 */	mr r4, r3
/* 80116330  7F A3 EB 78 */	mr r3, r29
/* 80116334  48 00 1F A1 */	bl checkGrabTalkActor__9daAlink_cFP10fopAc_ac_c
/* 80116338  2C 03 00 00 */	cmpwi r3, 0
/* 8011633C  41 82 00 10 */	beq lbl_8011634C
/* 80116340  7F A3 EB 78 */	mr r3, r29
/* 80116344  4B FD 07 59 */	bl procGrabWaitInit__9daAlink_cFv
/* 80116348  48 00 0B 00 */	b lbl_80116E48
lbl_8011634C:
/* 8011634C  7F A3 EB 78 */	mr r3, r29
/* 80116350  48 00 A1 25 */	bl commonGrabPutInit__9daAlink_cFv
/* 80116354  48 00 0A F4 */	b lbl_80116E48
lbl_80116358:
/* 80116358  7F A3 EB 78 */	mr r3, r29
/* 8011635C  48 00 3A 3D */	bl procCoTalkInit__9daAlink_cFv
/* 80116360  48 00 0A E8 */	b lbl_80116E48
lbl_80116364:
/* 80116364  28 1E 00 04 */	cmplwi r30, 4
/* 80116368  40 82 02 2C */	bne lbl_80116594
/* 8011636C  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80116370  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80116374  41 82 00 14 */	beq lbl_80116388
/* 80116378  7F A3 EB 78 */	mr r3, r29
/* 8011637C  48 01 6E 2D */	bl procWolfWaitInit__9daAlink_cFv
/* 80116380  7C 7C 1B 78 */	mr r28, r3
/* 80116384  48 00 01 EC */	b lbl_80116570
lbl_80116388:
/* 80116388  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 8011638C  2C 00 00 00 */	cmpwi r0, 0
/* 80116390  41 82 01 D4 */	beq lbl_80116564
/* 80116394  7F A3 EB 78 */	mr r3, r29
/* 80116398  4B FC E8 3D */	bl freeGrabItem__9daAlink_cFv
/* 8011639C  80 9D 06 0C */	lwz r4, 0x60c(r29)
/* 801163A0  2C 04 00 01 */	cmpwi r4, 1
/* 801163A4  40 82 00 60 */	bne lbl_80116404
/* 801163A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801163AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801163B0  88 03 00 14 */	lbz r0, 0x14(r3)
/* 801163B4  28 00 00 FF */	cmplwi r0, 0xff
/* 801163B8  41 82 00 4C */	beq lbl_80116404
/* 801163BC  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 801163C0  28 00 01 03 */	cmplwi r0, 0x103
/* 801163C4  41 82 01 98 */	beq lbl_8011655C
/* 801163C8  7F A3 EB 78 */	mr r3, r29
/* 801163CC  38 80 00 00 */	li r4, 0
/* 801163D0  38 A0 00 01 */	li r5, 1
/* 801163D4  4B FA AF 09 */	bl deleteEquipItem__9daAlink_cFii
/* 801163D8  7F A3 EB 78 */	mr r3, r29
/* 801163DC  4B FA 2F 65 */	bl checkEquipAnime__9daAlink_cCFv
/* 801163E0  2C 03 00 00 */	cmpwi r3, 0
/* 801163E4  41 82 00 14 */	beq lbl_801163F8
/* 801163E8  7F A3 EB 78 */	mr r3, r29
/* 801163EC  38 80 00 02 */	li r4, 2
/* 801163F0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 801163F4  4B F9 73 31 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_801163F8:
/* 801163F8  7F A3 EB 78 */	mr r3, r29
/* 801163FC  4B FB AE 6D */	bl setSwordModel__9daAlink_cFv
/* 80116400  48 00 01 5C */	b lbl_8011655C
lbl_80116404:
/* 80116404  2C 04 00 02 */	cmpwi r4, 2
/* 80116408  40 82 00 18 */	bne lbl_80116420
/* 8011640C  7F A3 EB 78 */	mr r3, r29
/* 80116410  38 80 00 00 */	li r4, 0
/* 80116414  38 A0 00 01 */	li r5, 1
/* 80116418  4B FA AE C5 */	bl deleteEquipItem__9daAlink_cFii
/* 8011641C  48 00 01 40 */	b lbl_8011655C
lbl_80116420:
/* 80116420  2C 04 00 04 */	cmpwi r4, 4
/* 80116424  40 82 00 38 */	bne lbl_8011645C
/* 80116428  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 8011642C  48 04 85 F5 */	bl checkFishingRodItem__9daPy_py_cFi
/* 80116430  2C 03 00 00 */	cmpwi r3, 0
/* 80116434  40 82 01 28 */	bne lbl_8011655C
/* 80116438  7F A3 EB 78 */	mr r3, r29
/* 8011643C  38 80 00 00 */	li r4, 0
/* 80116440  38 A0 00 01 */	li r5, 1
/* 80116444  4B FA AE 99 */	bl deleteEquipItem__9daAlink_cFii
/* 80116448  38 00 00 4A */	li r0, 0x4a
/* 8011644C  B0 1D 2F DC */	sth r0, 0x2fdc(r29)
/* 80116450  7F A3 EB 78 */	mr r3, r29
/* 80116454  4B FE 12 B5 */	bl setGroundFishingRodActor__9daAlink_cFv
/* 80116458  48 00 01 04 */	b lbl_8011655C
lbl_8011645C:
/* 8011645C  2C 04 00 03 */	cmpwi r4, 3
/* 80116460  40 82 00 70 */	bne lbl_801164D0
/* 80116464  7F A3 EB 78 */	mr r3, r29
/* 80116468  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8011646C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 80116470  7D 89 03 A6 */	mtctr r12
/* 80116474  4E 80 04 21 */	bctrl 
/* 80116478  28 03 00 00 */	cmplwi r3, 0
/* 8011647C  40 82 00 4C */	bne lbl_801164C8
/* 80116480  3C 60 80 0F */	lis r3, daAlink_searchCanoe__FP10fopAc_ac_cPv@ha /* 0x800F3CD8@ha */
/* 80116484  38 63 3C D8 */	addi r3, r3, daAlink_searchCanoe__FP10fopAc_ac_cPv@l /* 0x800F3CD8@l */
/* 80116488  38 80 00 00 */	li r4, 0
/* 8011648C  4B F0 33 6D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80116490  7C 7E 1B 78 */	mr r30, r3
/* 80116494  38 60 02 E4 */	li r3, 0x2e4
/* 80116498  38 80 00 0D */	li r4, 0xd
/* 8011649C  38 BD 05 C8 */	addi r5, r29, 0x5c8
/* 801164A0  38 C0 FF FF */	li r6, -1
/* 801164A4  38 E0 00 00 */	li r7, 0
/* 801164A8  39 00 00 00 */	li r8, 0
/* 801164AC  39 20 FF FF */	li r9, -1
/* 801164B0  4B F0 38 E9 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 801164B4  90 7E 14 64 */	stw r3, 0x1464(r30)
/* 801164B8  7F A3 EB 78 */	mr r3, r29
/* 801164BC  38 80 00 00 */	li r4, 0
/* 801164C0  4B FD E7 B9 */	bl procCanoeJumpRideInit__9daAlink_cFP10fopAc_ac_c
/* 801164C4  48 00 09 84 */	b lbl_80116E48
lbl_801164C8:
/* 801164C8  38 60 00 01 */	li r3, 1
/* 801164CC  48 00 09 7C */	b lbl_80116E48
lbl_801164D0:
/* 801164D0  2C 04 00 05 */	cmpwi r4, 5
/* 801164D4  40 82 00 54 */	bne lbl_80116528
/* 801164D8  7F A3 EB 78 */	mr r3, r29
/* 801164DC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 801164E0  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 801164E4  7D 89 03 A6 */	mtctr r12
/* 801164E8  4E 80 04 21 */	bctrl 
/* 801164EC  28 03 00 00 */	cmplwi r3, 0
/* 801164F0  40 82 00 30 */	bne lbl_80116520
/* 801164F4  3C 60 80 10 */	lis r3, daAlink_searchIceLeaf__FP10fopAc_ac_cPv@ha /* 0x80105A84@ha */
/* 801164F8  38 63 5A 84 */	addi r3, r3, daAlink_searchIceLeaf__FP10fopAc_ac_cPv@l /* 0x80105A84@l */
/* 801164FC  38 80 00 00 */	li r4, 0
/* 80116500  4B F0 32 F9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80116504  7C 64 1B 79 */	or. r4, r3, r3
/* 80116508  41 82 00 54 */	beq lbl_8011655C
/* 8011650C  38 00 00 05 */	li r0, 5
/* 80116510  98 1D 2F A8 */	stb r0, 0x2fa8(r29)
/* 80116514  7F A3 EB 78 */	mr r3, r29
/* 80116518  4B FF 05 21 */	bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
/* 8011651C  48 00 09 2C */	b lbl_80116E48
lbl_80116520:
/* 80116520  38 60 00 01 */	li r3, 1
/* 80116524  48 00 09 24 */	b lbl_80116E48
lbl_80116528:
/* 80116528  2C 04 00 06 */	cmpwi r4, 6
/* 8011652C  40 82 00 30 */	bne lbl_8011655C
/* 80116530  7F A3 EB 78 */	mr r3, r29
/* 80116534  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80116538  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8011653C  7D 89 03 A6 */	mtctr r12
/* 80116540  4E 80 04 21 */	bctrl 
/* 80116544  28 03 00 00 */	cmplwi r3, 0
/* 80116548  41 82 00 14 */	beq lbl_8011655C
/* 8011654C  38 00 00 00 */	li r0, 0
/* 80116550  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80116554  38 60 00 01 */	li r3, 1
/* 80116558  48 00 08 F0 */	b lbl_80116E48
lbl_8011655C:
/* 8011655C  38 00 00 00 */	li r0, 0
/* 80116560  90 1D 06 0C */	stw r0, 0x60c(r29)
lbl_80116564:
/* 80116564  7F A3 EB 78 */	mr r3, r29
/* 80116568  4B FA CE 51 */	bl procWaitInit__9daAlink_cFv
/* 8011656C  7C 7C 1B 78 */	mr r28, r3
lbl_80116570:
/* 80116570  2C 1C 00 00 */	cmpwi r28, 0
/* 80116574  41 82 00 18 */	beq lbl_8011658C
/* 80116578  80 7D 20 60 */	lwz r3, 0x2060(r29)
/* 8011657C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80116580  38 80 00 00 */	li r4, 0
/* 80116584  A0 BD 30 C6 */	lhz r5, 0x30c6(r29)
/* 80116588  4B EF 92 C1 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_8011658C:
/* 8011658C  7F 83 E3 78 */	mr r3, r28
/* 80116590  48 00 08 B8 */	b lbl_80116E48
lbl_80116594:
/* 80116594  28 1E 00 09 */	cmplwi r30, 9
/* 80116598  40 82 00 78 */	bne lbl_80116610
/* 8011659C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 801165A0  64 00 00 10 */	oris r0, r0, 0x10
/* 801165A4  90 1D 05 70 */	stw r0, 0x570(r29)
/* 801165A8  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 801165AC  28 00 00 33 */	cmplwi r0, 0x33
/* 801165B0  41 82 00 14 */	beq lbl_801165C4
/* 801165B4  28 00 01 08 */	cmplwi r0, 0x108
/* 801165B8  41 82 00 0C */	beq lbl_801165C4
/* 801165BC  28 00 01 5A */	cmplwi r0, 0x15a
/* 801165C0  40 82 00 0C */	bne lbl_801165CC
lbl_801165C4:
/* 801165C4  38 60 00 00 */	li r3, 0
/* 801165C8  48 00 08 80 */	b lbl_80116E48
lbl_801165CC:
/* 801165CC  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 801165D0  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 801165D4  41 82 00 18 */	beq lbl_801165EC
/* 801165D8  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 801165DC  80 9D 31 84 */	lwz r4, 0x3184(r29)
/* 801165E0  4B F3 1B 9D */	bl cutEnd__16dEvent_manager_cFi
/* 801165E4  38 60 00 00 */	li r3, 0
/* 801165E8  48 00 08 60 */	b lbl_80116E48
lbl_801165EC:
/* 801165EC  7F A3 EB 78 */	mr r3, r29
/* 801165F0  38 80 FF FE */	li r4, -2
/* 801165F4  38 A0 00 01 */	li r5, 1
/* 801165F8  38 C0 00 00 */	li r6, 0
/* 801165FC  38 E0 00 00 */	li r7, 0
/* 80116600  39 00 00 00 */	li r8, 0
/* 80116604  39 20 00 00 */	li r9, 0
/* 80116608  4B FC 30 D5 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 8011660C  48 00 08 3C */	b lbl_80116E48
lbl_80116610:
/* 80116610  28 1E 00 24 */	cmplwi r30, 0x24
/* 80116614  40 82 00 80 */	bne lbl_80116694
/* 80116618  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 8011661C  64 00 00 10 */	oris r0, r0, 0x10
/* 80116620  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116624  80 9D 06 0C */	lwz r4, 0x60c(r29)
/* 80116628  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 8011662C  28 00 00 21 */	cmplwi r0, 0x21
/* 80116630  41 82 00 14 */	beq lbl_80116644
/* 80116634  28 00 00 22 */	cmplwi r0, 0x22
/* 80116638  41 82 00 0C */	beq lbl_80116644
/* 8011663C  28 00 00 28 */	cmplwi r0, 0x28
/* 80116640  40 82 00 0C */	bne lbl_8011664C
lbl_80116644:
/* 80116644  38 60 00 00 */	li r3, 0
/* 80116648  48 00 08 00 */	b lbl_80116E48
lbl_8011664C:
/* 8011664C  2C 04 00 05 */	cmpwi r4, 5
/* 80116650  40 80 00 10 */	bge lbl_80116660
/* 80116654  7F A3 EB 78 */	mr r3, r29
/* 80116658  4B FB C9 01 */	bl procCutNormalInit__9daAlink_cFi
/* 8011665C  48 00 07 EC */	b lbl_80116E48
lbl_80116660:
/* 80116660  34 04 FF EC */	addic. r0, r4, -20
/* 80116664  41 80 00 1C */	blt lbl_80116680
/* 80116668  38 84 FF EC */	addi r4, r4, -20
/* 8011666C  2C 04 00 06 */	cmpwi r4, 6
/* 80116670  40 80 00 10 */	bge lbl_80116680
/* 80116674  7F A3 EB 78 */	mr r3, r29
/* 80116678  4B FB CE 61 */	bl procCutFinishInit__9daAlink_cFi
/* 8011667C  48 00 07 CC */	b lbl_80116E48
lbl_80116680:
/* 80116680  7F A3 EB 78 */	mr r3, r29
/* 80116684  38 80 00 01 */	li r4, 1
/* 80116688  38 A0 00 01 */	li r5, 1
/* 8011668C  4B FB E1 51 */	bl procCutTurnInit__9daAlink_cFii
/* 80116690  48 00 07 B8 */	b lbl_80116E48
lbl_80116694:
/* 80116694  28 1E 00 52 */	cmplwi r30, 0x52
/* 80116698  40 82 00 44 */	bne lbl_801166DC
/* 8011669C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 801166A0  64 00 00 10 */	oris r0, r0, 0x10
/* 801166A4  90 1D 05 70 */	stw r0, 0x570(r29)
/* 801166A8  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 801166AC  28 00 00 20 */	cmplwi r0, 0x20
/* 801166B0  41 82 00 14 */	beq lbl_801166C4
/* 801166B4  28 00 00 23 */	cmplwi r0, 0x23
/* 801166B8  41 82 00 0C */	beq lbl_801166C4
/* 801166BC  28 00 00 24 */	cmplwi r0, 0x24
/* 801166C0  40 82 00 0C */	bne lbl_801166CC
lbl_801166C4:
/* 801166C4  38 60 00 01 */	li r3, 1
/* 801166C8  48 00 07 80 */	b lbl_80116E48
lbl_801166CC:
/* 801166CC  7F A3 EB 78 */	mr r3, r29
/* 801166D0  38 80 00 02 */	li r4, 2
/* 801166D4  4B FC 79 35 */	bl procTurnMoveInit__9daAlink_cFi
/* 801166D8  48 00 07 70 */	b lbl_80116E48
lbl_801166DC:
/* 801166DC  28 1E 00 54 */	cmplwi r30, 0x54
/* 801166E0  40 82 00 38 */	bne lbl_80116718
/* 801166E4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 801166E8  64 00 00 10 */	oris r0, r0, 0x10
/* 801166EC  90 1D 05 70 */	stw r0, 0x570(r29)
/* 801166F0  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 801166F4  28 00 00 22 */	cmplwi r0, 0x22
/* 801166F8  41 82 00 18 */	beq lbl_80116710
/* 801166FC  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116700  64 00 01 00 */	oris r0, r0, 0x100
/* 80116704  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116708  7F A3 EB 78 */	mr r3, r29
/* 8011670C  4B FB A9 7D */	bl changeCutFast__9daAlink_cFv
lbl_80116710:
/* 80116710  38 60 00 01 */	li r3, 1
/* 80116714  48 00 07 34 */	b lbl_80116E48
lbl_80116718:
/* 80116718  28 1E 00 2B */	cmplwi r30, 0x2b
/* 8011671C  40 82 00 4C */	bne lbl_80116768
/* 80116720  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116724  64 00 00 10 */	oris r0, r0, 0x10
/* 80116728  90 1D 05 70 */	stw r0, 0x570(r29)
/* 8011672C  80 9D 06 0C */	lwz r4, 0x60c(r29)
/* 80116730  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80116734  28 00 01 20 */	cmplwi r0, 0x120
/* 80116738  40 82 00 0C */	bne lbl_80116744
/* 8011673C  38 60 00 00 */	li r3, 0
/* 80116740  48 00 07 08 */	b lbl_80116E48
lbl_80116744:
/* 80116744  2C 04 00 04 */	cmpwi r4, 4
/* 80116748  41 80 00 14 */	blt lbl_8011675C
/* 8011674C  7F A3 EB 78 */	mr r3, r29
/* 80116750  38 80 00 00 */	li r4, 0
/* 80116754  48 02 46 9D */	bl procWolfWaitAttackInit__9daAlink_cFi
/* 80116758  48 00 06 F0 */	b lbl_80116E48
lbl_8011675C:
/* 8011675C  7F A3 EB 78 */	mr r3, r29
/* 80116760  48 02 46 91 */	bl procWolfWaitAttackInit__9daAlink_cFi
/* 80116764  48 00 06 E4 */	b lbl_80116E48
lbl_80116768:
/* 80116768  28 1E 00 1B */	cmplwi r30, 0x1b
/* 8011676C  40 82 00 7C */	bne lbl_801167E8
/* 80116770  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116774  64 00 00 10 */	oris r0, r0, 0x10
/* 80116778  90 1D 05 70 */	stw r0, 0x570(r29)
/* 8011677C  A0 1D 06 04 */	lhz r0, 0x604(r29)
/* 80116780  2C 00 00 01 */	cmpwi r0, 1
/* 80116784  40 82 00 20 */	bne lbl_801167A4
/* 80116788  7F A3 EB 78 */	mr r3, r29
/* 8011678C  38 80 FF FE */	li r4, -2
/* 80116790  38 A0 00 01 */	li r5, 1
/* 80116794  38 C0 00 00 */	li r6, 0
/* 80116798  38 E0 00 00 */	li r7, 0
/* 8011679C  48 00 9D 65 */	bl commonLargeDamageUpInit__9daAlink_cFiiss
/* 801167A0  48 00 06 A8 */	b lbl_80116E48
lbl_801167A4:
/* 801167A4  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 801167A8  2C 00 00 01 */	cmpwi r0, 1
/* 801167AC  40 82 00 20 */	bne lbl_801167CC
/* 801167B0  7F A3 EB 78 */	mr r3, r29
/* 801167B4  38 80 FF FB */	li r4, -5
/* 801167B8  38 A0 00 01 */	li r5, 1
/* 801167BC  38 C0 00 00 */	li r6, 0
/* 801167C0  38 E0 00 00 */	li r7, 0
/* 801167C4  48 00 9D 3D */	bl commonLargeDamageUpInit__9daAlink_cFiiss
/* 801167C8  48 00 06 80 */	b lbl_80116E48
lbl_801167CC:
/* 801167CC  7F A3 EB 78 */	mr r3, r29
/* 801167D0  38 80 FF FD */	li r4, -3
/* 801167D4  38 A0 00 01 */	li r5, 1
/* 801167D8  38 C0 00 00 */	li r6, 0
/* 801167DC  38 E0 00 00 */	li r7, 0
/* 801167E0  48 00 9D 21 */	bl commonLargeDamageUpInit__9daAlink_cFiiss
/* 801167E4  48 00 06 64 */	b lbl_80116E48
lbl_801167E8:
/* 801167E8  28 1E 00 0F */	cmplwi r30, 0xf
/* 801167EC  40 82 00 20 */	bne lbl_8011680C
/* 801167F0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 801167F4  64 00 00 10 */	oris r0, r0, 0x10
/* 801167F8  90 1D 05 70 */	stw r0, 0x570(r29)
/* 801167FC  7F A3 EB 78 */	mr r3, r29
/* 80116800  38 80 00 01 */	li r4, 1
/* 80116804  48 01 8A 75 */	bl procWolfSitInit__9daAlink_cFi
/* 80116808  48 00 06 40 */	b lbl_80116E48
lbl_8011680C:
/* 8011680C  28 1E 00 15 */	cmplwi r30, 0x15
/* 80116810  40 82 00 20 */	bne lbl_80116830
/* 80116814  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116818  64 00 00 10 */	oris r0, r0, 0x10
/* 8011681C  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116820  7F A3 EB 78 */	mr r3, r29
/* 80116824  38 80 00 00 */	li r4, 0
/* 80116828  48 01 7F 2D */	bl procWolfHowlInit__9daAlink_cFi
/* 8011682C  48 00 06 1C */	b lbl_80116E48
lbl_80116830:
/* 80116830  28 1E 00 16 */	cmplwi r30, 0x16
/* 80116834  40 82 00 20 */	bne lbl_80116854
/* 80116838  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 8011683C  64 00 00 10 */	oris r0, r0, 0x10
/* 80116840  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116844  7F A3 EB 78 */	mr r3, r29
/* 80116848  38 80 00 01 */	li r4, 1
/* 8011684C  48 01 7F 09 */	bl procWolfHowlInit__9daAlink_cFi
/* 80116850  48 00 05 F8 */	b lbl_80116E48
lbl_80116854:
/* 80116854  28 1E 00 2D */	cmplwi r30, 0x2d
/* 80116858  40 82 00 24 */	bne lbl_8011687C
/* 8011685C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116860  64 00 00 10 */	oris r0, r0, 0x10
/* 80116864  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116868  7F A3 EB 78 */	mr r3, r29
/* 8011686C  80 9D 06 0C */	lwz r4, 0x60c(r29)
/* 80116870  80 BD 06 10 */	lwz r5, 0x610(r29)
/* 80116874  48 00 94 D9 */	bl procCoWarpInit__9daAlink_cFii
/* 80116878  48 00 05 D0 */	b lbl_80116E48
lbl_8011687C:
/* 8011687C  28 1E 00 18 */	cmplwi r30, 0x18
/* 80116880  40 82 00 20 */	bne lbl_801168A0
/* 80116884  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116888  64 00 00 10 */	oris r0, r0, 0x10
/* 8011688C  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116890  7F A3 EB 78 */	mr r3, r29
/* 80116894  38 80 00 01 */	li r4, 1
/* 80116898  4B FA F5 D1 */	bl procAutoJumpInit__9daAlink_cFi
/* 8011689C  48 00 05 AC */	b lbl_80116E48
lbl_801168A0:
/* 801168A0  28 1E 00 5B */	cmplwi r30, 0x5b
/* 801168A4  40 82 00 38 */	bne lbl_801168DC
/* 801168A8  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 801168AC  28 00 00 2A */	cmplwi r0, 0x2a
/* 801168B0  41 82 00 0C */	beq lbl_801168BC
/* 801168B4  28 00 00 29 */	cmplwi r0, 0x29
/* 801168B8  40 82 00 0C */	bne lbl_801168C4
lbl_801168BC:
/* 801168BC  38 60 00 01 */	li r3, 1
/* 801168C0  48 00 05 88 */	b lbl_80116E48
lbl_801168C4:
/* 801168C4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 801168C8  64 00 00 10 */	oris r0, r0, 0x10
/* 801168CC  90 1D 05 70 */	stw r0, 0x570(r29)
/* 801168D0  7F A3 EB 78 */	mr r3, r29
/* 801168D4  4B FB E3 95 */	bl procCutTurnChargeInit__9daAlink_cFv
/* 801168D8  48 00 05 70 */	b lbl_80116E48
lbl_801168DC:
/* 801168DC  28 1E 00 5E */	cmplwi r30, 0x5e
/* 801168E0  40 82 00 48 */	bne lbl_80116928
/* 801168E4  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 801168E8  28 00 00 EE */	cmplwi r0, 0xee
/* 801168EC  40 82 00 0C */	bne lbl_801168F8
/* 801168F0  38 60 00 00 */	li r3, 0
/* 801168F4  48 00 05 54 */	b lbl_80116E48
lbl_801168F8:
/* 801168F8  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 801168FC  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 80116900  41 82 00 0C */	beq lbl_8011690C
/* 80116904  38 60 00 00 */	li r3, 0
/* 80116908  48 00 05 40 */	b lbl_80116E48
lbl_8011690C:
/* 8011690C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116910  64 00 00 10 */	oris r0, r0, 0x10
/* 80116914  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116918  7F A3 EB 78 */	mr r3, r29
/* 8011691C  38 80 00 00 */	li r4, 0
/* 80116920  48 01 62 C5 */	bl procWolfServiceWaitInit__9daAlink_cFi
/* 80116924  48 00 05 24 */	b lbl_80116E48
lbl_80116928:
/* 80116928  28 1E 00 5C */	cmplwi r30, 0x5c
/* 8011692C  40 82 00 38 */	bne lbl_80116964
/* 80116930  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80116934  28 00 00 2F */	cmplwi r0, 0x2f
/* 80116938  41 82 00 0C */	beq lbl_80116944
/* 8011693C  28 00 00 2A */	cmplwi r0, 0x2a
/* 80116940  40 82 00 0C */	bne lbl_8011694C
lbl_80116944:
/* 80116944  38 60 00 01 */	li r3, 1
/* 80116948  48 00 05 00 */	b lbl_80116E48
lbl_8011694C:
/* 8011694C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116950  64 00 00 10 */	oris r0, r0, 0x10
/* 80116954  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116958  7F A3 EB 78 */	mr r3, r29
/* 8011695C  4B FB F8 DD */	bl procCutLargeJumpChargeInit__9daAlink_cFv
/* 80116960  48 00 04 E8 */	b lbl_80116E48
lbl_80116964:
/* 80116964  28 1E 00 49 */	cmplwi r30, 0x49
/* 80116968  40 82 00 2C */	bne lbl_80116994
/* 8011696C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116970  64 00 00 10 */	oris r0, r0, 0x10
/* 80116974  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116978  7F A3 EB 78 */	mr r3, r29
/* 8011697C  80 9D 06 0C */	lwz r4, 0x60c(r29)
/* 80116980  30 04 FF FF */	addic r0, r4, -1
/* 80116984  7C 80 21 10 */	subfe r4, r0, r4
/* 80116988  38 84 00 02 */	addi r4, r4, 2
/* 8011698C  4B FA E9 9D */	bl procSideRollInit__9daAlink_cFi
/* 80116990  48 00 04 B8 */	b lbl_80116E48
lbl_80116994:
/* 80116994  28 1E 00 10 */	cmplwi r30, 0x10
/* 80116998  40 82 00 C4 */	bne lbl_80116A5C
/* 8011699C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 801169A0  64 00 00 10 */	oris r0, r0, 0x10
/* 801169A4  90 1D 05 70 */	stw r0, 0x570(r29)
/* 801169A8  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 801169AC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801169B0  41 82 00 5C */	beq lbl_80116A0C
/* 801169B4  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 801169B8  28 00 00 FA */	cmplwi r0, 0xfa
/* 801169BC  41 82 00 1C */	beq lbl_801169D8
/* 801169C0  28 00 00 F8 */	cmplwi r0, 0xf8
/* 801169C4  41 82 00 14 */	beq lbl_801169D8
/* 801169C8  28 00 00 F9 */	cmplwi r0, 0xf9
/* 801169CC  41 82 00 0C */	beq lbl_801169D8
/* 801169D0  28 00 00 F7 */	cmplwi r0, 0xf7
/* 801169D4  40 82 00 0C */	bne lbl_801169E0
lbl_801169D8:
/* 801169D8  38 60 00 00 */	li r3, 0
/* 801169DC  48 00 04 6C */	b lbl_80116E48
lbl_801169E0:
/* 801169E0  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 801169E4  98 1D 2F 98 */	stb r0, 0x2f98(r29)
/* 801169E8  88 1D 2F 98 */	lbz r0, 0x2f98(r29)
/* 801169EC  28 00 00 01 */	cmplwi r0, 1
/* 801169F0  40 82 00 0C */	bne lbl_801169FC
/* 801169F4  38 00 00 01 */	li r0, 1
/* 801169F8  98 1D 2F CC */	stb r0, 0x2fcc(r29)
lbl_801169FC:
/* 801169FC  7F A3 EB 78 */	mr r3, r29
/* 80116A00  38 80 00 00 */	li r4, 0
/* 80116A04  48 01 74 C5 */	bl procWolfSideStepInit__9daAlink_cFi
/* 80116A08  48 00 04 40 */	b lbl_80116E48
lbl_80116A0C:
/* 80116A0C  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80116A10  28 00 00 13 */	cmplwi r0, 0x13
/* 80116A14  41 82 00 1C */	beq lbl_80116A30
/* 80116A18  28 00 00 0B */	cmplwi r0, 0xb
/* 80116A1C  41 82 00 14 */	beq lbl_80116A30
/* 80116A20  28 00 00 12 */	cmplwi r0, 0x12
/* 80116A24  41 82 00 0C */	beq lbl_80116A30
/* 80116A28  28 00 00 0A */	cmplwi r0, 0xa
/* 80116A2C  40 82 00 0C */	bne lbl_80116A38
lbl_80116A30:
/* 80116A30  38 60 00 00 */	li r3, 0
/* 80116A34  48 00 04 14 */	b lbl_80116E48
lbl_80116A38:
/* 80116A38  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80116A3C  2C 00 00 00 */	cmpwi r0, 0
/* 80116A40  40 82 00 0C */	bne lbl_80116A4C
/* 80116A44  38 00 00 01 */	li r0, 1
/* 80116A48  90 1D 06 0C */	stw r0, 0x60c(r29)
lbl_80116A4C:
/* 80116A4C  7F A3 EB 78 */	mr r3, r29
/* 80116A50  80 9D 06 0C */	lwz r4, 0x60c(r29)
/* 80116A54  4B FA D3 4D */	bl procSideStepInit__9daAlink_cFi
/* 80116A58  48 00 03 F0 */	b lbl_80116E48
lbl_80116A5C:
/* 80116A5C  28 1E 00 2C */	cmplwi r30, 0x2c
/* 80116A60  40 82 00 20 */	bne lbl_80116A80
/* 80116A64  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116A68  64 00 00 10 */	oris r0, r0, 0x10
/* 80116A6C  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116A70  7F A3 EB 78 */	mr r3, r29
/* 80116A74  38 80 00 00 */	li r4, 0
/* 80116A78  48 02 0B BD */	bl procWolfLieMoveInit__9daAlink_cFi
/* 80116A7C  48 00 03 CC */	b lbl_80116E48
lbl_80116A80:
/* 80116A80  28 1E 00 11 */	cmplwi r30, 0x11
/* 80116A84  40 82 00 20 */	bne lbl_80116AA4
/* 80116A88  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116A8C  64 00 00 10 */	oris r0, r0, 0x10
/* 80116A90  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116A94  7F A3 EB 78 */	mr r3, r29
/* 80116A98  38 80 00 01 */	li r4, 1
/* 80116A9C  48 00 9A 99 */	bl commonFallInit__9daAlink_cFi
/* 80116AA0  48 00 03 A8 */	b lbl_80116E48
lbl_80116AA4:
/* 80116AA4  28 1E 00 2A */	cmplwi r30, 0x2a
/* 80116AA8  40 82 00 24 */	bne lbl_80116ACC
/* 80116AAC  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116AB0  64 00 00 10 */	oris r0, r0, 0x10
/* 80116AB4  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116AB8  7F A3 EB 78 */	mr r3, r29
/* 80116ABC  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80116AC0  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80116AC4  4B FF 8A 89 */	bl procBottleDrinkInit__9daAlink_cFUs
/* 80116AC8  48 00 03 80 */	b lbl_80116E48
lbl_80116ACC:
/* 80116ACC  28 1E 00 1F */	cmplwi r30, 0x1f
/* 80116AD0  40 82 00 94 */	bne lbl_80116B64
/* 80116AD4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116AD8  64 00 00 10 */	oris r0, r0, 0x10
/* 80116ADC  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116AE0  80 9D 31 A0 */	lwz r4, 0x31a0(r29)
/* 80116AE4  3C 60 04 07 */	lis r3, 0x0407 /* 0x04070C52@ha */
/* 80116AE8  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x04070C52@l */
/* 80116AEC  7C 80 00 39 */	and. r0, r4, r0
/* 80116AF0  40 82 00 60 */	bne lbl_80116B50
/* 80116AF4  7F A3 EB 78 */	mr r3, r29
/* 80116AF8  4B FA 44 89 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 80116AFC  2C 03 00 00 */	cmpwi r3, 0
/* 80116B00  40 82 00 44 */	bne lbl_80116B44
/* 80116B04  88 1D 2F 8C */	lbz r0, 0x2f8c(r29)
/* 80116B08  28 00 00 02 */	cmplwi r0, 2
/* 80116B0C  41 82 00 38 */	beq lbl_80116B44
/* 80116B10  28 00 00 01 */	cmplwi r0, 1
/* 80116B14  41 82 00 30 */	beq lbl_80116B44
/* 80116B18  28 00 00 03 */	cmplwi r0, 3
/* 80116B1C  41 82 00 28 */	beq lbl_80116B44
/* 80116B20  28 00 00 08 */	cmplwi r0, 8
/* 80116B24  41 82 00 20 */	beq lbl_80116B44
/* 80116B28  A0 7D 2F E8 */	lhz r3, 0x2fe8(r29)
/* 80116B2C  28 03 00 71 */	cmplwi r3, 0x71
/* 80116B30  41 82 00 14 */	beq lbl_80116B44
/* 80116B34  28 03 01 45 */	cmplwi r3, 0x145
/* 80116B38  41 82 00 0C */	beq lbl_80116B44
/* 80116B3C  28 00 00 09 */	cmplwi r0, 9
/* 80116B40  40 82 00 10 */	bne lbl_80116B50
lbl_80116B44:
/* 80116B44  7F A3 EB 78 */	mr r3, r29
/* 80116B48  48 00 4D CD */	bl procCoLookWaitInit__9daAlink_cFv
/* 80116B4C  48 00 02 FC */	b lbl_80116E48
lbl_80116B50:
/* 80116B50  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80116B54  80 9D 31 84 */	lwz r4, 0x3184(r29)
/* 80116B58  4B F3 16 25 */	bl cutEnd__16dEvent_manager_cFi
/* 80116B5C  38 60 00 01 */	li r3, 1
/* 80116B60  48 00 02 E8 */	b lbl_80116E48
lbl_80116B64:
/* 80116B64  28 1E 00 07 */	cmplwi r30, 7
/* 80116B68  40 82 00 60 */	bne lbl_80116BC8
/* 80116B6C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116B70  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 80116B74  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116B78  7F A3 EB 78 */	mr r3, r29
/* 80116B7C  4B FA 44 05 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 80116B80  2C 03 00 00 */	cmpwi r3, 0
/* 80116B84  40 82 00 14 */	bne lbl_80116B98
/* 80116B88  7F A3 EB 78 */	mr r3, r29
/* 80116B8C  4B FC D0 E1 */	bl checkGrabAnime__9daAlink_cCFv
/* 80116B90  2C 03 00 00 */	cmpwi r3, 0
/* 80116B94  41 82 00 14 */	beq lbl_80116BA8
lbl_80116B98:
/* 80116B98  7F A3 EB 78 */	mr r3, r29
/* 80116B9C  38 80 00 02 */	li r4, 2
/* 80116BA0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 80116BA4  4B F9 6B 81 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_80116BA8:
/* 80116BA8  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 80116BAC  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80116BB0  40 82 00 0C */	bne lbl_80116BBC
/* 80116BB4  7F A3 EB 78 */	mr r3, r29
/* 80116BB8  4B FD 5F A1 */	bl initForceRideHorse__9daAlink_cFv
lbl_80116BBC:
/* 80116BBC  7F A3 EB 78 */	mr r3, r29
/* 80116BC0  4B FD 88 91 */	bl checkNextActionHorse__9daAlink_cFv
/* 80116BC4  48 00 02 84 */	b lbl_80116E48
lbl_80116BC8:
/* 80116BC8  7F A3 EB 78 */	mr r3, r29
/* 80116BCC  48 00 15 A5 */	bl checkFlyAtnWait__9daAlink_cFv
/* 80116BD0  2C 03 00 00 */	cmpwi r3, 0
/* 80116BD4  41 82 00 10 */	beq lbl_80116BE4
/* 80116BD8  7F A3 EB 78 */	mr r3, r29
/* 80116BDC  4B FA CC F1 */	bl procAtnActorWaitInit__9daAlink_cFv
/* 80116BE0  48 00 02 68 */	b lbl_80116E48
lbl_80116BE4:
/* 80116BE4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116BE8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80116BEC  40 82 00 3C */	bne lbl_80116C28
/* 80116BF0  7F A3 EB 78 */	mr r3, r29
/* 80116BF4  4B FA 43 8D */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 80116BF8  2C 03 00 00 */	cmpwi r3, 0
/* 80116BFC  40 82 00 2C */	bne lbl_80116C28
/* 80116C00  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 80116C04  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80116C08  40 82 00 20 */	bne lbl_80116C28
/* 80116C0C  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80116C10  28 00 01 3F */	cmplwi r0, 0x13f
/* 80116C14  41 82 00 14 */	beq lbl_80116C28
/* 80116C18  28 00 00 A2 */	cmplwi r0, 0xa2
/* 80116C1C  41 82 00 0C */	beq lbl_80116C28
/* 80116C20  28 00 01 3E */	cmplwi r0, 0x13e
/* 80116C24  40 82 02 20 */	bne lbl_80116E44
lbl_80116C28:
/* 80116C28  28 1E 00 01 */	cmplwi r30, 1
/* 80116C2C  41 82 00 68 */	beq lbl_80116C94
/* 80116C30  7F A3 EB 78 */	mr r3, r29
/* 80116C34  7F C4 F3 78 */	mr r4, r30
/* 80116C38  48 00 02 29 */	bl checkDemoMoveMode__9daAlink_cCFUl
/* 80116C3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80116C40  40 82 00 54 */	bne lbl_80116C94
/* 80116C44  28 1E 00 17 */	cmplwi r30, 0x17
/* 80116C48  41 82 00 4C */	beq lbl_80116C94
/* 80116C4C  28 1E 00 1F */	cmplwi r30, 0x1f
/* 80116C50  41 82 00 44 */	beq lbl_80116C94
/* 80116C54  28 1E 00 12 */	cmplwi r30, 0x12
/* 80116C58  41 82 00 3C */	beq lbl_80116C94
/* 80116C5C  7F A3 EB 78 */	mr r3, r29
/* 80116C60  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80116C64  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 80116C68  7D 89 03 A6 */	mtctr r12
/* 80116C6C  4E 80 04 21 */	bctrl 
/* 80116C70  28 03 00 00 */	cmplwi r3, 0
/* 80116C74  41 82 01 D0 */	beq lbl_80116E44
/* 80116C78  28 1E 00 1A */	cmplwi r30, 0x1a
/* 80116C7C  41 82 00 18 */	beq lbl_80116C94
/* 80116C80  28 1E 00 0E */	cmplwi r30, 0xe
/* 80116C84  40 82 01 C0 */	bne lbl_80116E44
/* 80116C88  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80116C8C  2C 00 00 00 */	cmpwi r0, 0
/* 80116C90  40 82 01 B4 */	bne lbl_80116E44
lbl_80116C94:
/* 80116C94  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80116C98  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 80116C9C  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80116CA0  7F A3 EB 78 */	mr r3, r29
/* 80116CA4  4B FA 42 DD */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 80116CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80116CAC  41 82 00 14 */	beq lbl_80116CC0
/* 80116CB0  7F A3 EB 78 */	mr r3, r29
/* 80116CB4  38 80 00 02 */	li r4, 2
/* 80116CB8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 80116CBC  4B F9 6A 69 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_80116CC0:
/* 80116CC0  38 00 00 00 */	li r0, 0
/* 80116CC4  88 7D 2F AA */	lbz r3, 0x2faa(r29)
/* 80116CC8  28 03 00 01 */	cmplwi r3, 1
/* 80116CCC  41 82 00 0C */	beq lbl_80116CD8
/* 80116CD0  28 03 00 02 */	cmplwi r3, 2
/* 80116CD4  40 82 00 08 */	bne lbl_80116CDC
lbl_80116CD8:
/* 80116CD8  38 00 00 01 */	li r0, 1
lbl_80116CDC:
/* 80116CDC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80116CE0  41 82 00 CC */	beq lbl_80116DAC
/* 80116CE4  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 80116CE8  28 00 00 17 */	cmplwi r0, 0x17
/* 80116CEC  40 82 00 40 */	bne lbl_80116D2C
/* 80116CF0  7F A3 EB 78 */	mr r3, r29
/* 80116CF4  4B FA 26 4D */	bl checkEquipAnime__9daAlink_cCFv
/* 80116CF8  2C 03 00 00 */	cmpwi r3, 0
/* 80116CFC  40 82 00 30 */	bne lbl_80116D2C
/* 80116D00  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 80116D04  28 00 01 03 */	cmplwi r0, 0x103
/* 80116D08  41 82 00 24 */	beq lbl_80116D2C
/* 80116D0C  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80116D10  2C 00 00 02 */	cmpwi r0, 2
/* 80116D14  41 82 00 0C */	beq lbl_80116D20
/* 80116D18  2C 00 00 03 */	cmpwi r0, 3
/* 80116D1C  40 82 00 10 */	bne lbl_80116D2C
lbl_80116D20:
/* 80116D20  7F A3 EB 78 */	mr r3, r29
/* 80116D24  38 80 00 00 */	li r4, 0
/* 80116D28  4B FA 26 CD */	bl swordEquip__9daAlink_cFi
lbl_80116D2C:
/* 80116D2C  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80116D30  28 00 00 3B */	cmplwi r0, 0x3b
/* 80116D34  41 82 00 0C */	beq lbl_80116D40
/* 80116D38  28 00 00 3A */	cmplwi r0, 0x3a
/* 80116D3C  40 82 00 64 */	bne lbl_80116DA0
lbl_80116D40:
/* 80116D40  83 DD 28 18 */	lwz r30, 0x2818(r29)
/* 80116D44  28 1E 00 00 */	cmplwi r30, 0
/* 80116D48  40 82 00 14 */	bne lbl_80116D5C
/* 80116D4C  7F A3 EB 78 */	mr r3, r29
/* 80116D50  38 80 00 00 */	li r4, 0
/* 80116D54  4B FA 33 49 */	bl commonCheckNextAction__9daAlink_cFi
/* 80116D58  48 00 00 F0 */	b lbl_80116E48
lbl_80116D5C:
/* 80116D5C  7F A3 EB 78 */	mr r3, r29
/* 80116D60  4B FD 5C DD */	bl commonInitForceRideRein__9daAlink_cFv
/* 80116D64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80116D68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80116D6C  80 03 5D B8 */	lwz r0, 0x5db8(r3)
/* 80116D70  7C 1E 00 40 */	cmplw r30, r0
/* 80116D74  40 82 00 24 */	bne lbl_80116D98
/* 80116D78  7F C3 F3 78 */	mr r3, r30
/* 80116D7C  39 9E 18 EC */	addi r12, r30, 0x18ec
/* 80116D80  48 24 B3 05 */	bl __ptmf_scall
/* 80116D84  60 00 00 00 */	nop 
/* 80116D88  38 7D 2C A8 */	addi r3, r29, 0x2ca8
/* 80116D8C  38 80 00 01 */	li r4, 1
/* 80116D90  48 1A CC DD */	bl setRiding__14Z2CreatureLinkFb
/* 80116D94  48 00 00 0C */	b lbl_80116DA0
lbl_80116D98:
/* 80116D98  7F C3 F3 78 */	mr r3, r30
/* 80116D9C  4B F2 0F 15 */	bl setPlayerRide__10e_wb_classFv
lbl_80116DA0:
/* 80116DA0  7F A3 EB 78 */	mr r3, r29
/* 80116DA4  4B FD 86 AD */	bl checkNextActionHorse__9daAlink_cFv
/* 80116DA8  48 00 00 A0 */	b lbl_80116E48
lbl_80116DAC:
/* 80116DAC  7F A3 EB 78 */	mr r3, r29
/* 80116DB0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80116DB4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 80116DB8  7D 89 03 A6 */	mtctr r12
/* 80116DBC  4E 80 04 21 */	bctrl 
/* 80116DC0  28 03 00 00 */	cmplwi r3, 0
/* 80116DC4  41 82 00 10 */	beq lbl_80116DD4
/* 80116DC8  7F A3 EB 78 */	mr r3, r29
/* 80116DCC  4B FD DB 59 */	bl checkNextActionCanoe__9daAlink_cFv
/* 80116DD0  48 00 00 78 */	b lbl_80116E48
lbl_80116DD4:
/* 80116DD4  7F A3 EB 78 */	mr r3, r29
/* 80116DD8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80116DDC  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 80116DE0  7D 89 03 A6 */	mtctr r12
/* 80116DE4  4E 80 04 21 */	bctrl 
/* 80116DE8  28 03 00 00 */	cmplwi r3, 0
/* 80116DEC  41 82 00 10 */	beq lbl_80116DFC
/* 80116DF0  7F A3 EB 78 */	mr r3, r29
/* 80116DF4  4B FE F7 99 */	bl checkNextActionBoard__9daAlink_cFv
/* 80116DF8  48 00 00 50 */	b lbl_80116E48
lbl_80116DFC:
/* 80116DFC  7F A3 EB 78 */	mr r3, r29
/* 80116E00  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80116E04  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 80116E08  7D 89 03 A6 */	mtctr r12
/* 80116E0C  4E 80 04 21 */	bctrl 
/* 80116E10  28 03 00 00 */	cmplwi r3, 0
/* 80116E14  41 82 00 20 */	beq lbl_80116E34
/* 80116E18  7F A3 EB 78 */	mr r3, r29
/* 80116E1C  38 80 00 01 */	li r4, 1
/* 80116E20  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 80116E24  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 80116E28  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 80116E2C  4B FA FC 1D */	bl procFallInit__9daAlink_cFif
/* 80116E30  48 00 00 18 */	b lbl_80116E48
lbl_80116E34:
/* 80116E34  7F A3 EB 78 */	mr r3, r29
/* 80116E38  38 80 00 00 */	li r4, 0
/* 80116E3C  4B FA 32 61 */	bl commonCheckNextAction__9daAlink_cFi
/* 80116E40  48 00 00 08 */	b lbl_80116E48
lbl_80116E44:
/* 80116E44  38 60 00 00 */	li r3, 0
lbl_80116E48:
/* 80116E48  39 61 00 20 */	addi r11, r1, 0x20
/* 80116E4C  48 24 B3 D9 */	bl _restgpr_28
/* 80116E50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80116E54  7C 08 03 A6 */	mtlr r0
/* 80116E58  38 21 00 20 */	addi r1, r1, 0x20
/* 80116E5C  4E 80 00 20 */	blr 
