lbl_800C4378:
/* 800C4378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C437C  7C 08 02 A6 */	mflr r0
/* 800C4380  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C4384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C4388  93 C1 00 08 */	stw r30, 8(r1)
/* 800C438C  7C 7F 1B 78 */	mr r31, r3
/* 800C4390  7C 9E 23 78 */	mr r30, r4
/* 800C4394  38 80 00 0C */	li r4, 0xc
/* 800C4398  4B FF DB D5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C439C  38 00 00 FF */	li r0, 0xff
/* 800C43A0  98 1F 08 28 */	stb r0, 0x828(r31)
/* 800C43A4  38 00 00 08 */	li r0, 8
/* 800C43A8  B0 1F 30 90 */	sth r0, 0x3090(r31)
/* 800C43AC  B3 DF 04 DE */	sth r30, 0x4de(r31)
/* 800C43B0  38 7F 1A 60 */	addi r3, r31, 0x1a60
/* 800C43B4  38 80 00 00 */	li r4, 0
/* 800C43B8  4B FD DE 29 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800C43BC  7C 60 07 34 */	extsh r0, r3
/* 800C43C0  2C 00 00 D4 */	cmpwi r0, 0xd4
/* 800C43C4  40 82 00 10 */	bne lbl_800C43D4
/* 800C43C8  38 00 00 01 */	li r0, 1
/* 800C43CC  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800C43D0  48 00 00 0C */	b lbl_800C43DC
lbl_800C43D4:
/* 800C43D4  38 00 00 00 */	li r0, 0
/* 800C43D8  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_800C43DC:
/* 800C43DC  7F C3 F3 78 */	mr r3, r30
/* 800C43E0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800C43E4  48 1A CA 41 */	bl cLib_distanceAngleS__Fss
/* 800C43E8  2C 03 38 00 */	cmpwi r3, 0x3800
/* 800C43EC  41 80 00 10 */	blt lbl_800C43FC
/* 800C43F0  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800C43F4  2C 00 00 00 */	cmpwi r0, 0
/* 800C43F8  41 82 00 94 */	beq lbl_800C448C
lbl_800C43FC:
/* 800C43FC  38 00 00 01 */	li r0, 1
/* 800C4400  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800C4404  7F E3 FB 78 */	mr r3, r31
/* 800C4408  38 80 00 BD */	li r4, 0xbd
/* 800C440C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_slide_c0@ha
/* 800C4410  38 A5 D8 CC */	addi r5, r5, m__19daAlinkHIO_slide_c0@l
/* 800C4414  4B FE 8C E1 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C4418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800C441C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800C4420  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 800C4424  60 00 01 00 */	ori r0, r0, 0x100
/* 800C4428  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 800C442C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800C4430  60 00 80 00 */	ori r0, r0, 0x8000
/* 800C4434  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800C4438  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800C443C  64 00 02 00 */	oris r0, r0, 0x200
/* 800C4440  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800C4444  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800C4448  64 00 20 00 */	oris r0, r0, 0x2000
/* 800C444C  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800C4450  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C4454  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C4458  38 00 00 04 */	li r0, 4
/* 800C445C  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800C4460  7F E3 FB 78 */	mr r3, r31
/* 800C4464  38 80 00 CE */	li r4, 0xce
/* 800C4468  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C446C  4B FE 8F 09 */	bl setUpperAnimeBaseMorf__9daAlink_cFUsf
/* 800C4470  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800C4474  64 00 10 00 */	oris r0, r0, 0x1000
/* 800C4478  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800C447C  7F E3 FB 78 */	mr r3, r31
/* 800C4480  38 80 00 00 */	li r4, 0
/* 800C4484  48 05 CD 3D */	bl setFootEffectProcType__9daAlink_cFi
/* 800C4488  48 00 00 4C */	b lbl_800C44D4
lbl_800C448C:
/* 800C448C  38 00 00 00 */	li r0, 0
/* 800C4490  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800C4494  7F E3 FB 78 */	mr r3, r31
/* 800C4498  38 80 00 BE */	li r4, 0xbe
/* 800C449C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_slide_c0@ha
/* 800C44A0  38 A5 D8 CC */	addi r5, r5, m__19daAlinkHIO_slide_c0@l
/* 800C44A4  38 A5 00 14 */	addi r5, r5, 0x14
/* 800C44A8  4B FE 8C 4D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C44AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800C44B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800C44B4  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 800C44B8  60 00 02 00 */	ori r0, r0, 0x200
/* 800C44BC  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 800C44C0  38 00 00 60 */	li r0, 0x60
/* 800C44C4  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800C44C8  7F E3 FB 78 */	mr r3, r31
/* 800C44CC  38 80 00 01 */	li r4, 1
/* 800C44D0  48 05 CC F1 */	bl setFootEffectProcType__9daAlink_cFi
lbl_800C44D4:
/* 800C44D4  3C 60 80 39 */	lis r3, m__19daAlinkHIO_slide_c0@ha
/* 800C44D8  38 63 D8 CC */	addi r3, r3, m__19daAlinkHIO_slide_c0@l
/* 800C44DC  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 800C44E0  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 800C44E4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C44E8  D0 1F 33 CC */	stfs f0, 0x33cc(r31)
/* 800C44EC  38 00 00 00 */	li r0, 0
/* 800C44F0  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800C44F4  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800C44F8  38 60 00 01 */	li r3, 1
/* 800C44FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C4500  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C4504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C4508  7C 08 03 A6 */	mtlr r0
/* 800C450C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C4510  4E 80 00 20 */	blr 
