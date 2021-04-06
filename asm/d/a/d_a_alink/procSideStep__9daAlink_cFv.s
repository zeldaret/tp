lbl_800C3F60:
/* 800C3F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C3F64  7C 08 02 A6 */	mflr r0
/* 800C3F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C3F70  7C 7F 1B 78 */	mr r31, r3
/* 800C3F74  80 83 27 EC */	lwz r4, 0x27ec(r3)
/* 800C3F78  28 04 00 00 */	cmplwi r4, 0
/* 800C3F7C  41 82 00 54 */	beq lbl_800C3FD0
/* 800C3F80  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 800C3F84  2C 00 00 00 */	cmpwi r0, 0
/* 800C3F88  41 82 00 48 */	beq lbl_800C3FD0
/* 800C3F8C  4B F5 67 85 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800C3F90  7C 64 1B 78 */	mr r4, r3
/* 800C3F94  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800C3F98  38 A0 00 05 */	li r5, 5
/* 800C3F9C  38 C0 05 E8 */	li r6, 0x5e8
/* 800C3FA0  38 E0 01 3C */	li r7, 0x13c
/* 800C3FA4  48 1A C5 9D */	bl cLib_addCalcAngleS__FPsssss
/* 800C3FA8  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800C3FAC  28 00 00 02 */	cmplwi r0, 2
/* 800C3FB0  40 82 00 14 */	bne lbl_800C3FC4
/* 800C3FB4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800C3FB8  38 03 40 00 */	addi r0, r3, 0x4000
/* 800C3FBC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C3FC0  48 00 00 10 */	b lbl_800C3FD0
lbl_800C3FC4:
/* 800C3FC4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800C3FC8  38 03 C0 00 */	addi r0, r3, -16384
/* 800C3FCC  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800C3FD0:
/* 800C3FD0  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800C3FD4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C3FD8  41 82 00 18 */	beq lbl_800C3FF0
/* 800C3FDC  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 800C3FE0  2C 00 00 00 */	cmpwi r0, 0
/* 800C3FE4  41 82 00 0C */	beq lbl_800C3FF0
/* 800C3FE8  38 00 00 01 */	li r0, 1
/* 800C3FEC  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_800C3FF0:
/* 800C3FF0  7F E3 FB 78 */	mr r3, r31
/* 800C3FF4  4B FF 34 C1 */	bl checkUpperItemActionFly__9daAlink_cFv
/* 800C3FF8  2C 03 00 00 */	cmpwi r3, 0
/* 800C3FFC  41 82 00 0C */	beq lbl_800C4008
/* 800C4000  38 60 00 01 */	li r3, 1
/* 800C4004  48 00 00 D8 */	b lbl_800C40DC
lbl_800C4008:
/* 800C4008  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800C400C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C4010  41 82 00 44 */	beq lbl_800C4054
/* 800C4014  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800C4018  2C 00 00 00 */	cmpwi r0, 0
/* 800C401C  41 82 00 38 */	beq lbl_800C4054
/* 800C4020  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800C4024  2C 00 00 00 */	cmpwi r0, 0
/* 800C4028  41 82 00 20 */	beq lbl_800C4048
/* 800C402C  7F E3 FB 78 */	mr r3, r31
/* 800C4030  88 9F 2F 98 */	lbz r4, 0x2f98(r31)
/* 800C4034  4B FF 51 15 */	bl checkSideRollAction__9daAlink_cFi
/* 800C4038  2C 03 00 00 */	cmpwi r3, 0
/* 800C403C  41 82 00 0C */	beq lbl_800C4048
/* 800C4040  38 60 00 01 */	li r3, 1
/* 800C4044  48 00 00 98 */	b lbl_800C40DC
lbl_800C4048:
/* 800C4048  7F E3 FB 78 */	mr r3, r31
/* 800C404C  48 00 00 A5 */	bl procSideStepLandInit__9daAlink_cFv
/* 800C4050  48 00 00 8C */	b lbl_800C40DC
lbl_800C4054:
/* 800C4054  7F E3 FB 78 */	mr r3, r31
/* 800C4058  4B FF 51 FD */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800C405C  2C 03 00 00 */	cmpwi r3, 0
/* 800C4060  41 82 00 28 */	beq lbl_800C4088
/* 800C4064  7F E3 FB 78 */	mr r3, r31
/* 800C4068  48 00 E0 4D */	bl checkForceSwordSwing__9daAlink_cFv
/* 800C406C  2C 03 00 00 */	cmpwi r3, 0
/* 800C4070  41 82 00 18 */	beq lbl_800C4088
/* 800C4074  7F E3 FB 78 */	mr r3, r31
/* 800C4078  38 80 00 01 */	li r4, 1
/* 800C407C  38 A0 00 00 */	li r5, 0
/* 800C4080  48 00 DD 9D */	bl setCutDash__9daAlink_cFii
/* 800C4084  48 00 00 44 */	b lbl_800C40C8
lbl_800C4088:
/* 800C4088  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800C408C  28 00 00 10 */	cmplwi r0, 0x10
/* 800C4090  41 82 00 38 */	beq lbl_800C40C8
/* 800C4094  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800C4098  C0 3F 34 FC */	lfs f1, 0x34fc(r31)
/* 800C409C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_sideStep_c0@ha /* 0x8038D864@ha */
/* 800C40A0  38 A3 D8 64 */	addi r5, r3, m__22daAlinkHIO_sideStep_c0@l /* 0x8038D864@l */
/* 800C40A4  C0 05 00 60 */	lfs f0, 0x60(r5)
/* 800C40A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C40AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800C40B0  40 80 00 18 */	bge lbl_800C40C8
/* 800C40B4  7F E3 FB 78 */	mr r3, r31
/* 800C40B8  38 80 00 02 */	li r4, 2
/* 800C40BC  C0 25 00 64 */	lfs f1, 0x64(r5)
/* 800C40C0  48 00 29 89 */	bl procFallInit__9daAlink_cFif
/* 800C40C4  48 00 00 18 */	b lbl_800C40DC
lbl_800C40C8:
/* 800C40C8  38 00 00 01 */	li r0, 1
/* 800C40CC  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800C40D0  7F E3 FB 78 */	mr r3, r31
/* 800C40D4  4B FF 58 79 */	bl checkItemChangeFromButton__9daAlink_cFv
/* 800C40D8  38 60 00 01 */	li r3, 1
lbl_800C40DC:
/* 800C40DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C40E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C40E4  7C 08 03 A6 */	mtlr r0
/* 800C40E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800C40EC  4E 80 00 20 */	blr 
