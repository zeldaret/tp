lbl_800C40F0:
/* 800C40F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C40F4  7C 08 02 A6 */	mflr r0
/* 800C40F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C40FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C4100  93 C1 00 08 */	stw r30, 8(r1)
/* 800C4104  7C 7F 1B 78 */	mr r31, r3
/* 800C4108  38 80 00 0B */	li r4, 0xb
/* 800C410C  4B FF DE 61 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C4110  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800C4114  28 00 00 01 */	cmplwi r0, 1
/* 800C4118  40 82 00 54 */	bne lbl_800C416C
/* 800C411C  38 00 00 04 */	li r0, 4
/* 800C4120  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800C4124  7F E3 FB 78 */	mr r3, r31
/* 800C4128  38 80 00 22 */	li r4, 0x22
/* 800C412C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_sideStep_c0@ha
/* 800C4130  38 A5 D8 64 */	addi r5, r5, m__22daAlinkHIO_sideStep_c0@l
/* 800C4134  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800C4138  4B FE 8F BD */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C413C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_sideStep_c0@ha
/* 800C4140  38 63 D8 64 */	addi r3, r3, m__22daAlinkHIO_sideStep_c0@l
/* 800C4144  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 800C4148  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800C414C  38 00 00 02 */	li r0, 2
/* 800C4150  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800C4154  38 00 00 00 */	li r0, 0
/* 800C4158  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 800C415C  98 1F 2F B0 */	stb r0, 0x2fb0(r31)
/* 800C4160  38 00 00 0A */	li r0, 0xa
/* 800C4164  98 1F 2F CC */	stb r0, 0x2fcc(r31)
/* 800C4168  48 00 00 B4 */	b lbl_800C421C
lbl_800C416C:
/* 800C416C  28 00 00 02 */	cmplwi r0, 2
/* 800C4170  40 82 00 10 */	bne lbl_800C4180
/* 800C4174  38 80 00 1F */	li r4, 0x1f
/* 800C4178  3B C0 00 3F */	li r30, 0x3f
/* 800C417C  48 00 00 0C */	b lbl_800C4188
lbl_800C4180:
/* 800C4180  38 80 00 20 */	li r4, 0x20
/* 800C4184  3B C0 00 40 */	li r30, 0x40
lbl_800C4188:
/* 800C4188  7F E3 FB 78 */	mr r3, r31
/* 800C418C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_sideStep_c0@ha
/* 800C4190  38 A5 D8 64 */	addi r5, r5, m__22daAlinkHIO_sideStep_c0@l
/* 800C4194  38 A5 00 14 */	addi r5, r5, 0x14
/* 800C4198  4B FE 8F 5D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C419C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_sideStep_c0@ha
/* 800C41A0  38 63 D8 64 */	addi r3, r3, m__22daAlinkHIO_sideStep_c0@l
/* 800C41A4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800C41A8  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800C41AC  38 00 00 01 */	li r0, 1
/* 800C41B0  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 800C41B4  38 00 00 08 */	li r0, 8
/* 800C41B8  98 1F 2F B0 */	stb r0, 0x2fb0(r31)
/* 800C41BC  38 00 00 00 */	li r0, 0
/* 800C41C0  98 1F 2F CC */	stb r0, 0x2fcc(r31)
/* 800C41C4  80 7F 27 EC */	lwz r3, 0x27ec(r31)
/* 800C41C8  48 01 83 81 */	bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800C41CC  2C 03 00 00 */	cmpwi r3, 0
/* 800C41D0  41 82 00 4C */	beq lbl_800C421C
/* 800C41D4  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C41D8  28 00 01 03 */	cmplwi r0, 0x103
/* 800C41DC  40 82 00 40 */	bne lbl_800C421C
/* 800C41E0  7F E3 FB 78 */	mr r3, r31
/* 800C41E4  4B FF 50 71 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800C41E8  2C 03 00 00 */	cmpwi r3, 0
/* 800C41EC  41 82 00 30 */	beq lbl_800C421C
/* 800C41F0  7F E3 FB 78 */	mr r3, r31
/* 800C41F4  7F C4 F3 78 */	mr r4, r30
/* 800C41F8  3C A0 80 39 */	lis r5, m__21daAlinkHIO_atnMove_c0@ha
/* 800C41FC  38 A5 D7 14 */	addi r5, r5, m__21daAlinkHIO_atnMove_c0@l
/* 800C4200  C0 25 00 08 */	lfs f1, 8(r5)
/* 800C4204  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800C4208  4B FE 91 A1 */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800C420C  7F E3 FB 78 */	mr r3, r31
/* 800C4210  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200A5@ha */
/* 800C4214  38 84 00 A5 */	addi r4, r4, 0x00A5 /* 0x000200A5@l */
/* 800C4218  4B FF AE D5 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800C421C:
/* 800C421C  38 00 00 04 */	li r0, 4
/* 800C4220  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800C4224  7F E3 FB 78 */	mr r3, r31
/* 800C4228  38 80 00 02 */	li r4, 2
/* 800C422C  48 05 CF 95 */	bl setFootEffectProcType__9daAlink_cFi
/* 800C4230  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800C4234  60 00 00 30 */	ori r0, r0, 0x30
/* 800C4238  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800C423C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C4240  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C4244  38 00 00 00 */	li r0, 0
/* 800C4248  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800C424C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C4250  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C4254  7F E3 FB 78 */	mr r3, r31
/* 800C4258  4B FF 1A 0D */	bl setStepLandVibration__9daAlink_cFv
/* 800C425C  38 60 00 01 */	li r3, 1
/* 800C4260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C4264  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C4268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C426C  7C 08 03 A6 */	mtlr r0
/* 800C4270  38 21 00 10 */	addi r1, r1, 0x10
/* 800C4274  4E 80 00 20 */	blr 
