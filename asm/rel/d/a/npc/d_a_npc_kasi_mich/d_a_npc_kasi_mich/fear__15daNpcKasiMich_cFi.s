lbl_80A282B4:
/* 80A282B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A282B8  7C 08 02 A6 */	mflr r0
/* 80A282BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A282C0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A282C4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A282C8  7C 7F 1B 78 */	mr r31, r3
/* 80A282CC  3C 80 80 A3 */	lis r4, m__21daNpcKasiMich_Param_c@ha
/* 80A282D0  3B C4 A0 4C */	addi r30, r4, m__21daNpcKasiMich_Param_c@l
/* 80A282D4  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A282D8  2C 00 00 02 */	cmpwi r0, 2
/* 80A282DC  41 82 01 98 */	beq lbl_80A28474
/* 80A282E0  40 80 00 14 */	bge lbl_80A282F4
/* 80A282E4  2C 00 00 00 */	cmpwi r0, 0
/* 80A282E8  41 82 00 1C */	beq lbl_80A28304
/* 80A282EC  40 80 00 60 */	bge lbl_80A2834C
/* 80A282F0  48 00 01 84 */	b lbl_80A28474
lbl_80A282F4:
/* 80A282F4  2C 00 00 04 */	cmpwi r0, 4
/* 80A282F8  41 82 01 1C */	beq lbl_80A28414
/* 80A282FC  40 80 01 78 */	bge lbl_80A28474
/* 80A28300  48 00 00 88 */	b lbl_80A28388
lbl_80A28304:
/* 80A28304  48 00 01 8D */	bl srchWolfTag__15daNpcKasiMich_cFv
/* 80A28308  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A2830C  41 82 01 68 */	beq lbl_80A28474
/* 80A28310  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A28314  4B 72 85 EC */	b initialize__13daNpcF_Path_cFv
/* 80A28318  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A2831C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A28320  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80A28324  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A28328  7C 05 07 74 */	extsb r5, r0
/* 80A2832C  38 C0 00 00 */	li r6, 0
/* 80A28330  4B 72 86 2C */	b setPathInfo__13daNpcF_Path_cFUcScUc
/* 80A28334  7F E3 FB 78 */	mr r3, r31
/* 80A28338  48 00 02 91 */	bl getWolfPathNearIdx__15daNpcKasiMich_cFv
/* 80A2833C  B0 7F 0C 94 */	sth r3, 0xc94(r31)
/* 80A28340  38 00 00 01 */	li r0, 1
/* 80A28344  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A28348  48 00 01 2C */	b lbl_80A28474
lbl_80A2834C:
/* 80A2834C  38 80 10 00 */	li r4, 0x1000
/* 80A28350  48 00 11 09 */	bl _turn_to_link__15daNpcKasiMich_cFs
/* 80A28354  2C 03 00 00 */	cmpwi r3, 0
/* 80A28358  41 82 01 1C */	beq lbl_80A28474
/* 80A2835C  7F E3 FB 78 */	mr r3, r31
/* 80A28360  38 80 00 0A */	li r4, 0xa
/* 80A28364  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80A28368  38 A0 00 00 */	li r5, 0
/* 80A2836C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A28370  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A28374  7D 89 03 A6 */	mtctr r12
/* 80A28378  4E 80 04 21 */	bctrl 
/* 80A2837C  38 00 00 03 */	li r0, 3
/* 80A28380  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A28384  48 00 00 F0 */	b lbl_80A28474
lbl_80A28388:
/* 80A28388  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A2838C  38 80 00 01 */	li r4, 1
/* 80A28390  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A28394  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A28398  40 82 00 18 */	bne lbl_80A283B0
/* 80A2839C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80A283A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A283A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A283A8  41 82 00 08 */	beq lbl_80A283B0
/* 80A283AC  38 80 00 00 */	li r4, 0
lbl_80A283B0:
/* 80A283B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A283B4  41 82 00 C0 */	beq lbl_80A28474
/* 80A283B8  7F E3 FB 78 */	mr r3, r31
/* 80A283BC  38 80 00 08 */	li r4, 8
/* 80A283C0  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80A283C4  38 A0 00 00 */	li r5, 0
/* 80A283C8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A283CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A283D0  7D 89 03 A6 */	mtctr r12
/* 80A283D4  4E 80 04 21 */	bctrl 
/* 80A283D8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A283DC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A283E0  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D4@ha */
/* 80A283E4  38 03 01 D4 */	addi r0, r3, 0x01D4 /* 0x000501D4@l */
/* 80A283E8  90 01 00 08 */	stw r0, 8(r1)
/* 80A283EC  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A283F0  38 81 00 08 */	addi r4, r1, 8
/* 80A283F4  38 A0 FF FF */	li r5, -1
/* 80A283F8  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 80A283FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A28400  7D 89 03 A6 */	mtctr r12
/* 80A28404  4E 80 04 21 */	bctrl 
/* 80A28408  38 00 00 04 */	li r0, 4
/* 80A2840C  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A28410  48 00 00 64 */	b lbl_80A28474
lbl_80A28414:
/* 80A28414  C0 1E 02 38 */	lfs f0, 0x238(r30)
/* 80A28418  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A2841C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A28420  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A28424  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A28428  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A2842C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A28430  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A28434  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A28438  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A2843C  38 81 00 0C */	addi r4, r1, 0xc
/* 80A28440  38 A1 00 18 */	addi r5, r1, 0x18
/* 80A28444  4B 72 89 9C */	b getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80A28448  2C 03 00 00 */	cmpwi r3, 0
/* 80A2844C  41 82 00 18 */	beq lbl_80A28464
/* 80A28450  38 00 00 01 */	li r0, 1
/* 80A28454  98 1F 14 68 */	stb r0, 0x1468(r31)
/* 80A28458  38 00 FF FF */	li r0, -1
/* 80A2845C  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A28460  48 00 00 14 */	b lbl_80A28474
lbl_80A28464:
/* 80A28464  7F E3 FB 78 */	mr r3, r31
/* 80A28468  38 81 00 18 */	addi r4, r1, 0x18
/* 80A2846C  38 A0 03 20 */	li r5, 0x320
/* 80A28470  48 00 10 35 */	bl _turn_pos__15daNpcKasiMich_cFRC4cXyzs
lbl_80A28474:
/* 80A28474  38 60 00 01 */	li r3, 1
/* 80A28478  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A2847C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A28480  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A28484  7C 08 03 A6 */	mtlr r0
/* 80A28488  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2848C  4E 80 00 20 */	blr 
