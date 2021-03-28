lbl_800F4008:
/* 800F4008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F400C  7C 08 02 A6 */	mflr r0
/* 800F4010  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F4014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F4018  93 C1 00 08 */	stw r30, 8(r1)
/* 800F401C  7C 7E 1B 78 */	mr r30, r3
/* 800F4020  3B E0 00 00 */	li r31, 0
/* 800F4024  38 7E 08 50 */	addi r3, r30, 0x850
/* 800F4028  4B F9 06 31 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 800F402C  28 03 00 00 */	cmplwi r3, 0
/* 800F4030  41 82 00 14 */	beq lbl_800F4044
/* 800F4034  38 7E 09 38 */	addi r3, r30, 0x938
/* 800F4038  4B F8 F6 51 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800F403C  7C 7F 1B 78 */	mr r31, r3
/* 800F4040  48 00 00 20 */	b lbl_800F4060
lbl_800F4044:
/* 800F4044  38 7E 09 8C */	addi r3, r30, 0x98c
/* 800F4048  4B F9 06 11 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 800F404C  28 03 00 00 */	cmplwi r3, 0
/* 800F4050  41 82 00 10 */	beq lbl_800F4060
/* 800F4054  38 7E 0A 74 */	addi r3, r30, 0xa74
/* 800F4058  4B F8 F6 31 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800F405C  7C 7F 1B 78 */	mr r31, r3
lbl_800F4060:
/* 800F4060  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 800F4064  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F4068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F406C  40 80 00 5C */	bge lbl_800F40C8
/* 800F4070  28 1F 00 00 */	cmplwi r31, 0
/* 800F4074  41 82 00 54 */	beq lbl_800F40C8
/* 800F4078  A8 1F 00 08 */	lha r0, 8(r31)
/* 800F407C  2C 00 00 ED */	cmpwi r0, 0xed
/* 800F4080  40 82 00 48 */	bne lbl_800F40C8
/* 800F4084  88 1F 14 43 */	lbz r0, 0x1443(r31)
/* 800F4088  28 00 00 00 */	cmplwi r0, 0
/* 800F408C  41 82 00 3C */	beq lbl_800F40C8
/* 800F4090  7F C3 F3 78 */	mr r3, r30
/* 800F4094  48 02 4C 05 */	bl checkDeadHP__9daAlink_cFv
/* 800F4098  2C 03 00 00 */	cmpwi r3, 0
/* 800F409C  40 82 00 2C */	bne lbl_800F40C8
/* 800F40A0  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800F40A4  28 00 00 18 */	cmplwi r0, 0x18
/* 800F40A8  40 82 00 10 */	bne lbl_800F40B8
/* 800F40AC  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 800F40B0  2C 00 00 00 */	cmpwi r0, 0
/* 800F40B4  41 82 00 14 */	beq lbl_800F40C8
lbl_800F40B8:
/* 800F40B8  7F C3 F3 78 */	mr r3, r30
/* 800F40BC  7F E4 FB 78 */	mr r4, r31
/* 800F40C0  48 00 0B B9 */	bl procCanoeJumpRideInit__9daAlink_cFP10fopAc_ac_c
/* 800F40C4  48 00 00 08 */	b lbl_800F40CC
lbl_800F40C8:
/* 800F40C8  38 60 00 00 */	li r3, 0
lbl_800F40CC:
/* 800F40CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F40D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F40D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F40D8  7C 08 03 A6 */	mtlr r0
/* 800F40DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F40E0  4E 80 00 20 */	blr 
