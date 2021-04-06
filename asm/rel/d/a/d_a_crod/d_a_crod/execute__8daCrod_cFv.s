lbl_804A36D8:
/* 804A36D8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804A36DC  7C 08 02 A6 */	mflr r0
/* 804A36E0  90 01 00 84 */	stw r0, 0x84(r1)
/* 804A36E4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 804A36E8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 804A36EC  39 61 00 70 */	addi r11, r1, 0x70
/* 804A36F0  4B EB EA E5 */	bl _savegpr_27
/* 804A36F4  7C 7F 1B 78 */	mr r31, r3
/* 804A36F8  3C 60 80 4A */	lis r3, lit_3759@ha /* 0x804A40EC@ha */
/* 804A36FC  3B C3 40 EC */	addi r30, r3, lit_3759@l /* 0x804A40EC@l */
/* 804A3700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A3704  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A3708  83 9D 5D B4 */	lwz r28, 0x5db4(r29)
/* 804A370C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804A3710  28 00 00 06 */	cmplwi r0, 6
/* 804A3714  40 82 00 84 */	bne lbl_804A3798
/* 804A3718  7F 83 E3 78 */	mr r3, r28
/* 804A371C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804A3720  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 804A3724  7D 89 03 A6 */	mtctr r12
/* 804A3728  4E 80 04 21 */	bctrl 
/* 804A372C  28 03 00 00 */	cmplwi r3, 0
/* 804A3730  41 82 00 60 */	beq lbl_804A3790
/* 804A3734  7F 83 E3 78 */	mr r3, r28
/* 804A3738  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804A373C  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 804A3740  7D 89 03 A6 */	mtctr r12
/* 804A3744  4E 80 04 21 */	bctrl 
/* 804A3748  C0 03 00 00 */	lfs f0, 0(r3)
/* 804A374C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804A3750  C0 03 00 04 */	lfs f0, 4(r3)
/* 804A3754  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804A3758  C0 03 00 08 */	lfs f0, 8(r3)
/* 804A375C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804A3760  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804A3764  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 804A3768  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804A376C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 804A3770  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804A3774  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 804A3778  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804A377C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804A3780  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804A3784  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804A3788  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804A378C  D0 1F 05 40 */	stfs f0, 0x540(r31)
lbl_804A3790:
/* 804A3790  38 60 00 01 */	li r3, 1
/* 804A3794  48 00 08 00 */	b lbl_804A3F94
lbl_804A3798:
/* 804A3798  38 60 00 01 */	li r3, 1
/* 804A379C  88 1F 05 71 */	lbz r0, 0x571(r31)
/* 804A37A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804A37A4  40 82 00 18 */	bne lbl_804A37BC
/* 804A37A8  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 804A37AC  C0 1F 05 78 */	lfs f0, 0x578(r31)
/* 804A37B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804A37B4  41 82 00 08 */	beq lbl_804A37BC
/* 804A37B8  38 60 00 00 */	li r3, 0
lbl_804A37BC:
/* 804A37BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A37C0  41 82 00 10 */	beq lbl_804A37D0
/* 804A37C4  7F E3 FB 78 */	mr r3, r31
/* 804A37C8  38 80 00 0F */	li r4, 0xf
/* 804A37CC  4B FF FD B5 */	bl setBckAnm__8daCrod_cFUs
lbl_804A37D0:
/* 804A37D0  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 804A37D4  28 00 00 66 */	cmplwi r0, 0x66
/* 804A37D8  40 82 00 60 */	bne lbl_804A3838
/* 804A37DC  88 1F 07 32 */	lbz r0, 0x732(r31)
/* 804A37E0  28 00 00 00 */	cmplwi r0, 0
/* 804A37E4  40 82 00 20 */	bne lbl_804A3804
/* 804A37E8  7F E3 FB 78 */	mr r3, r31
/* 804A37EC  38 80 00 0D */	li r4, 0xd
/* 804A37F0  4B FF FD 91 */	bl setBckAnm__8daCrod_cFUs
/* 804A37F4  38 00 00 02 */	li r0, 2
/* 804A37F8  98 1F 05 70 */	stb r0, 0x570(r31)
/* 804A37FC  38 00 00 20 */	li r0, 0x20
/* 804A3800  B0 1F 05 76 */	sth r0, 0x576(r31)
lbl_804A3804:
/* 804A3804  38 00 00 01 */	li r0, 1
/* 804A3808  98 1F 07 32 */	stb r0, 0x732(r31)
/* 804A380C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 804A3810  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 804A3814  C0 1F 05 7C */	lfs f0, 0x57c(r31)
/* 804A3818  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A381C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A3820  D0 1F 07 24 */	stfs f0, 0x724(r31)
/* 804A3824  C0 1F 07 24 */	lfs f0, 0x724(r31)
/* 804A3828  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A382C  40 81 00 FC */	ble lbl_804A3928
/* 804A3830  D0 3F 07 24 */	stfs f1, 0x724(r31)
/* 804A3834  48 00 00 F4 */	b lbl_804A3928
lbl_804A3838:
/* 804A3838  7F E3 FB 78 */	mr r3, r31
/* 804A383C  4B FF FE 21 */	bl setLightPower__8daCrod_cFv
/* 804A3840  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 804A3844  4B BE 0A 7D */	bl ChkAtHit__12dCcD_GObjInfFv
/* 804A3848  28 03 00 00 */	cmplwi r3, 0
/* 804A384C  41 82 00 BC */	beq lbl_804A3908
/* 804A3850  38 7F 06 24 */	addi r3, r31, 0x624
/* 804A3854  4B BD FE 35 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 804A3858  7C 7B 1B 78 */	mr r27, r3
/* 804A385C  7F 83 E3 78 */	mr r3, r28
/* 804A3860  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804A3864  81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 804A3868  7D 89 03 A6 */	mtctr r12
/* 804A386C  4E 80 04 21 */	bctrl 
/* 804A3870  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A3874  41 82 00 88 */	beq lbl_804A38FC
/* 804A3878  28 1B 00 00 */	cmplwi r27, 0
/* 804A387C  41 82 00 80 */	beq lbl_804A38FC
/* 804A3880  A8 1B 00 08 */	lha r0, 8(r27)
/* 804A3884  2C 00 01 98 */	cmpwi r0, 0x198
/* 804A3888  41 82 00 0C */	beq lbl_804A3894
/* 804A388C  2C 00 00 BB */	cmpwi r0, 0xbb
/* 804A3890  40 82 00 6C */	bne lbl_804A38FC
lbl_804A3894:
/* 804A3894  38 00 00 04 */	li r0, 4
/* 804A3898  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 804A389C  38 7F 07 40 */	addi r3, r31, 0x740
/* 804A38A0  7F 64 DB 78 */	mr r4, r27
/* 804A38A4  4B CB B4 15 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 804A38A8  38 7F 07 48 */	addi r3, r31, 0x748
/* 804A38AC  7F 64 DB 78 */	mr r4, r27
/* 804A38B0  4B CB B4 09 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 804A38B4  A8 1B 00 08 */	lha r0, 8(r27)
/* 804A38B8  2C 00 01 98 */	cmpwi r0, 0x198
/* 804A38BC  40 82 00 30 */	bne lbl_804A38EC
/* 804A38C0  38 00 00 00 */	li r0, 0
/* 804A38C4  88 7B 0A DD */	lbz r3, 0xadd(r27)
/* 804A38C8  28 03 00 04 */	cmplwi r3, 4
/* 804A38CC  41 82 00 0C */	beq lbl_804A38D8
/* 804A38D0  28 03 00 03 */	cmplwi r3, 3
/* 804A38D4  40 82 00 08 */	bne lbl_804A38DC
lbl_804A38D8:
/* 804A38D8  38 00 00 01 */	li r0, 1
lbl_804A38DC:
/* 804A38DC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804A38E0  41 82 00 0C */	beq lbl_804A38EC
/* 804A38E4  38 80 00 12 */	li r4, 0x12
/* 804A38E8  48 00 00 08 */	b lbl_804A38F0
lbl_804A38EC:
/* 804A38EC  38 80 00 11 */	li r4, 0x11
lbl_804A38F0:
/* 804A38F0  7F E3 FB 78 */	mr r3, r31
/* 804A38F4  4B FF FC 8D */	bl setBckAnm__8daCrod_cFUs
/* 804A38F8  48 00 00 30 */	b lbl_804A3928
lbl_804A38FC:
/* 804A38FC  7F E3 FB 78 */	mr r3, r31
/* 804A3900  4B FF FC FD */	bl setReturn__8daCrod_cFv
/* 804A3904  48 00 00 24 */	b lbl_804A3928
lbl_804A3908:
/* 804A3908  88 1F 07 32 */	lbz r0, 0x732(r31)
/* 804A390C  28 00 00 00 */	cmplwi r0, 0
/* 804A3910  41 82 00 18 */	beq lbl_804A3928
/* 804A3914  38 00 00 00 */	li r0, 0
/* 804A3918  98 1F 07 32 */	stb r0, 0x732(r31)
/* 804A391C  7F E3 FB 78 */	mr r3, r31
/* 804A3920  38 80 00 0E */	li r4, 0xe
/* 804A3924  4B FF FC 5D */	bl setBckAnm__8daCrod_cFUs
lbl_804A3928:
/* 804A3928  3C 60 80 4A */	lis r3, data_804A4218@ha /* 0x804A4218@ha */
/* 804A392C  38 83 42 18 */	addi r4, r3, data_804A4218@l /* 0x804A4218@l */
/* 804A3930  88 04 00 00 */	lbz r0, 0(r4)
/* 804A3934  7C 00 07 75 */	extsb. r0, r0
/* 804A3938  40 82 00 24 */	bne lbl_804A395C
/* 804A393C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 804A3940  3C 60 80 4A */	lis r3, shootInitLocalPos@ha /* 0x804A4188@ha */
/* 804A3944  38 63 41 88 */	addi r3, r3, shootInitLocalPos@l /* 0x804A4188@l */
/* 804A3948  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A394C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 804A3950  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A3954  38 00 00 01 */	li r0, 1
/* 804A3958  98 04 00 00 */	stb r0, 0(r4)
lbl_804A395C:
/* 804A395C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804A3960  28 00 00 02 */	cmplwi r0, 2
/* 804A3964  40 82 00 98 */	bne lbl_804A39FC
/* 804A3968  38 00 00 03 */	li r0, 3
/* 804A396C  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 804A3970  A8 1C 05 9C */	lha r0, 0x59c(r28)
/* 804A3974  7C 00 00 D0 */	neg r0, r0
/* 804A3978  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 804A397C  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 804A3980  A8 1C 05 9E */	lha r0, 0x59e(r28)
/* 804A3984  7C 03 02 14 */	add r0, r3, r0
/* 804A3988  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804A398C  7F 83 E3 78 */	mr r3, r28
/* 804A3990  4B C3 D9 81 */	bl getCopyRodBallSpeed__9daAlink_cCFv
/* 804A3994  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 804A3998  38 7C 38 34 */	addi r3, r28, 0x3834
/* 804A399C  4B B6 93 C9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 804A39A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804A39A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804A39A8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 804A39AC  7C 00 00 D0 */	neg r0, r0
/* 804A39B0  7C 04 07 34 */	extsh r4, r0
/* 804A39B4  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 804A39B8  38 C0 00 00 */	li r6, 0
/* 804A39BC  4B B6 88 E5 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 804A39C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804A39C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804A39C8  3C 80 80 4A */	lis r4, shootInitLocalPos@ha /* 0x804A4188@ha */
/* 804A39CC  38 84 41 88 */	addi r4, r4, shootInitLocalPos@l /* 0x804A4188@l */
/* 804A39D0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804A39D4  4B EA 33 99 */	bl PSMTXMultVec
/* 804A39D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804A39DC  D0 1F 07 34 */	stfs f0, 0x734(r31)
/* 804A39E0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804A39E4  D0 1F 07 38 */	stfs f0, 0x738(r31)
/* 804A39E8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804A39EC  D0 1F 07 3C */	stfs f0, 0x73c(r31)
/* 804A39F0  38 00 00 00 */	li r0, 0
/* 804A39F4  98 1F 07 31 */	stb r0, 0x731(r31)
/* 804A39F8  48 00 00 88 */	b lbl_804A3A80
lbl_804A39FC:
/* 804A39FC  28 00 00 04 */	cmplwi r0, 4
/* 804A3A00  40 82 00 1C */	bne lbl_804A3A1C
/* 804A3A04  80 1F 07 44 */	lwz r0, 0x744(r31)
/* 804A3A08  28 00 00 00 */	cmplwi r0, 0
/* 804A3A0C  40 82 00 74 */	bne lbl_804A3A80
/* 804A3A10  7F E3 FB 78 */	mr r3, r31
/* 804A3A14  4B FF FB E9 */	bl setReturn__8daCrod_cFv
/* 804A3A18  48 00 00 68 */	b lbl_804A3A80
lbl_804A3A1C:
/* 804A3A1C  28 00 00 00 */	cmplwi r0, 0
/* 804A3A20  40 82 00 30 */	bne lbl_804A3A50
/* 804A3A24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A3A28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A3A2C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804A3A30  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804A3A34  41 82 00 4C */	beq lbl_804A3A80
/* 804A3A38  38 00 00 01 */	li r0, 1
/* 804A3A3C  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 804A3A40  7F E3 FB 78 */	mr r3, r31
/* 804A3A44  38 80 00 10 */	li r4, 0x10
/* 804A3A48  4B FF FB 39 */	bl setBckAnm__8daCrod_cFUs
/* 804A3A4C  48 00 00 34 */	b lbl_804A3A80
lbl_804A3A50:
/* 804A3A50  28 00 00 01 */	cmplwi r0, 1
/* 804A3A54  40 82 00 2C */	bne lbl_804A3A80
/* 804A3A58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A3A5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A3A60  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804A3A64  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804A3A68  40 82 00 18 */	bne lbl_804A3A80
/* 804A3A6C  38 00 00 00 */	li r0, 0
/* 804A3A70  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 804A3A74  7F E3 FB 78 */	mr r3, r31
/* 804A3A78  38 80 00 0E */	li r4, 0xe
/* 804A3A7C  4B FF FB 05 */	bl setBckAnm__8daCrod_cFUs
lbl_804A3A80:
/* 804A3A80  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804A3A84  28 00 00 05 */	cmplwi r0, 5
/* 804A3A88  40 82 01 F4 */	bne lbl_804A3C7C
/* 804A3A8C  38 61 00 34 */	addi r3, r1, 0x34
/* 804A3A90  38 9C 35 34 */	addi r4, r28, 0x3534
/* 804A3A94  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804A3A98  4B DC 30 9D */	bl __mi__4cXyzCFRC3Vec
/* 804A3A9C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804A3AA0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804A3AA4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804A3AA8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A3AAC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804A3AB0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804A3AB4  38 61 00 40 */	addi r3, r1, 0x40
/* 804A3AB8  4B EA 36 81 */	bl PSVECSquareMag
/* 804A3ABC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 804A3AC0  EC 00 00 32 */	fmuls f0, f0, f0
/* 804A3AC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A3AC8  40 80 00 90 */	bge lbl_804A3B58
/* 804A3ACC  38 7F 07 48 */	addi r3, r31, 0x748
/* 804A3AD0  4B CB B2 2D */	bl clearData__16daPy_actorKeep_cFv
/* 804A3AD4  7F 83 E3 78 */	mr r3, r28
/* 804A3AD8  4B C3 DF 59 */	bl returnCopyRod__9daAlink_cFv
/* 804A3ADC  2C 03 00 00 */	cmpwi r3, 0
/* 804A3AE0  41 82 00 68 */	beq lbl_804A3B48
/* 804A3AE4  38 00 00 00 */	li r0, 0
/* 804A3AE8  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 804A3AEC  7F E3 FB 78 */	mr r3, r31
/* 804A3AF0  38 80 00 0E */	li r4, 0xe
/* 804A3AF4  4B FF FA 8D */	bl setBckAnm__8daCrod_cFUs
/* 804A3AF8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804A3AFC  7C 03 07 74 */	extsb r3, r0
/* 804A3B00  4B B8 95 6D */	bl dComIfGp_getReverb__Fi
/* 804A3B04  7C 67 1B 78 */	mr r7, r3
/* 804A3B08  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020069@ha */
/* 804A3B0C  38 03 00 69 */	addi r0, r3, 0x0069 /* 0x00020069@l */
/* 804A3B10  90 01 00 18 */	stw r0, 0x18(r1)
/* 804A3B14  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804A3B18  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804A3B1C  80 63 00 00 */	lwz r3, 0(r3)
/* 804A3B20  38 81 00 18 */	addi r4, r1, 0x18
/* 804A3B24  38 BF 05 38 */	addi r5, r31, 0x538
/* 804A3B28  38 C0 00 00 */	li r6, 0
/* 804A3B2C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 804A3B30  FC 40 08 90 */	fmr f2, f1
/* 804A3B34  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 804A3B38  FC 80 18 90 */	fmr f4, f3
/* 804A3B3C  39 00 00 00 */	li r8, 0
/* 804A3B40  4B E0 7E 45 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804A3B44  48 00 01 38 */	b lbl_804A3C7C
lbl_804A3B48:
/* 804A3B48  7F E3 FB 78 */	mr r3, r31
/* 804A3B4C  4B B7 61 31 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 804A3B50  38 60 00 01 */	li r3, 1
/* 804A3B54  48 00 04 40 */	b lbl_804A3F94
lbl_804A3B58:
/* 804A3B58  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804A3B5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804A3B60  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 804A3B64  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A3B68  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804A3B6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A3B70  38 61 00 1C */	addi r3, r1, 0x1c
/* 804A3B74  4B EA 35 C5 */	bl PSVECSquareMag
/* 804A3B78  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 804A3B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A3B80  40 81 00 58 */	ble lbl_804A3BD8
/* 804A3B84  FC 00 08 34 */	frsqrte f0, f1
/* 804A3B88  C8 9E 00 38 */	lfd f4, 0x38(r30)
/* 804A3B8C  FC 44 00 32 */	fmul f2, f4, f0
/* 804A3B90  C8 7E 00 40 */	lfd f3, 0x40(r30)
/* 804A3B94  FC 00 00 32 */	fmul f0, f0, f0
/* 804A3B98  FC 01 00 32 */	fmul f0, f1, f0
/* 804A3B9C  FC 03 00 28 */	fsub f0, f3, f0
/* 804A3BA0  FC 02 00 32 */	fmul f0, f2, f0
/* 804A3BA4  FC 44 00 32 */	fmul f2, f4, f0
/* 804A3BA8  FC 00 00 32 */	fmul f0, f0, f0
/* 804A3BAC  FC 01 00 32 */	fmul f0, f1, f0
/* 804A3BB0  FC 03 00 28 */	fsub f0, f3, f0
/* 804A3BB4  FC 02 00 32 */	fmul f0, f2, f0
/* 804A3BB8  FC 44 00 32 */	fmul f2, f4, f0
/* 804A3BBC  FC 00 00 32 */	fmul f0, f0, f0
/* 804A3BC0  FC 01 00 32 */	fmul f0, f1, f0
/* 804A3BC4  FC 03 00 28 */	fsub f0, f3, f0
/* 804A3BC8  FC 02 00 32 */	fmul f0, f2, f0
/* 804A3BCC  FC 41 00 32 */	fmul f2, f1, f0
/* 804A3BD0  FC 40 10 18 */	frsp f2, f2
/* 804A3BD4  48 00 00 90 */	b lbl_804A3C64
lbl_804A3BD8:
/* 804A3BD8  C8 1E 00 48 */	lfd f0, 0x48(r30)
/* 804A3BDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A3BE0  40 80 00 10 */	bge lbl_804A3BF0
/* 804A3BE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804A3BE8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804A3BEC  48 00 00 78 */	b lbl_804A3C64
lbl_804A3BF0:
/* 804A3BF0  D0 21 00 08 */	stfs f1, 8(r1)
/* 804A3BF4  80 81 00 08 */	lwz r4, 8(r1)
/* 804A3BF8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804A3BFC  3C 00 7F 80 */	lis r0, 0x7f80
/* 804A3C00  7C 03 00 00 */	cmpw r3, r0
/* 804A3C04  41 82 00 14 */	beq lbl_804A3C18
/* 804A3C08  40 80 00 40 */	bge lbl_804A3C48
/* 804A3C0C  2C 03 00 00 */	cmpwi r3, 0
/* 804A3C10  41 82 00 20 */	beq lbl_804A3C30
/* 804A3C14  48 00 00 34 */	b lbl_804A3C48
lbl_804A3C18:
/* 804A3C18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A3C1C  41 82 00 0C */	beq lbl_804A3C28
/* 804A3C20  38 00 00 01 */	li r0, 1
/* 804A3C24  48 00 00 28 */	b lbl_804A3C4C
lbl_804A3C28:
/* 804A3C28  38 00 00 02 */	li r0, 2
/* 804A3C2C  48 00 00 20 */	b lbl_804A3C4C
lbl_804A3C30:
/* 804A3C30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A3C34  41 82 00 0C */	beq lbl_804A3C40
/* 804A3C38  38 00 00 05 */	li r0, 5
/* 804A3C3C  48 00 00 10 */	b lbl_804A3C4C
lbl_804A3C40:
/* 804A3C40  38 00 00 03 */	li r0, 3
/* 804A3C44  48 00 00 08 */	b lbl_804A3C4C
lbl_804A3C48:
/* 804A3C48  38 00 00 04 */	li r0, 4
lbl_804A3C4C:
/* 804A3C4C  2C 00 00 01 */	cmpwi r0, 1
/* 804A3C50  40 82 00 10 */	bne lbl_804A3C60
/* 804A3C54  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804A3C58  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804A3C5C  48 00 00 08 */	b lbl_804A3C64
lbl_804A3C60:
/* 804A3C60  FC 40 08 90 */	fmr f2, f1
lbl_804A3C64:
/* 804A3C64  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 804A3C68  4B DC 3A 0D */	bl cM_atan2s__Fff
/* 804A3C6C  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 804A3C70  38 61 00 40 */	addi r3, r1, 0x40
/* 804A3C74  4B DC 34 B5 */	bl atan2sX_Z__4cXyzCFv
/* 804A3C78  B0 7F 04 DE */	sth r3, 0x4de(r31)
lbl_804A3C7C:
/* 804A3C7C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804A3C80  28 00 00 03 */	cmplwi r0, 3
/* 804A3C84  41 82 00 0C */	beq lbl_804A3C90
/* 804A3C88  28 00 00 05 */	cmplwi r0, 5
/* 804A3C8C  40 82 01 64 */	bne lbl_804A3DF0
lbl_804A3C90:
/* 804A3C90  7F E3 FB 78 */	mr r3, r31
/* 804A3C94  4B FF F8 6D */	bl posMove__8daCrod_cFv
/* 804A3C98  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804A3C9C  28 00 00 03 */	cmplwi r0, 3
/* 804A3CA0  40 82 01 00 */	bne lbl_804A3DA0
/* 804A3CA4  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 804A3CA8  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 804A3CAC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804A3CB0  4B DC B6 39 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 804A3CB4  38 61 00 28 */	addi r3, r1, 0x28
/* 804A3CB8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804A3CBC  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 804A3CC0  4B DC 2E 75 */	bl __mi__4cXyzCFRC3Vec
/* 804A3CC4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 804A3CC8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 804A3CCC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804A3CD0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A3CD4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804A3CD8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804A3CDC  D0 3F 06 50 */	stfs f1, 0x650(r31)
/* 804A3CE0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804A3CE4  D0 1F 06 54 */	stfs f0, 0x654(r31)
/* 804A3CE8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804A3CEC  D0 1F 06 58 */	stfs f0, 0x658(r31)
/* 804A3CF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A3CF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A3CF8  38 63 23 3C */	addi r3, r3, 0x233c
/* 804A3CFC  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 804A3D00  4B DC 0E A9 */	bl Set__4cCcSFP8cCcD_Obj
/* 804A3D04  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804A3D08  7C 03 07 74 */	extsb r3, r0
/* 804A3D0C  4B B8 93 61 */	bl dComIfGp_getReverb__Fi
/* 804A3D10  7C 67 1B 78 */	mr r7, r3
/* 804A3D14  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020067@ha */
/* 804A3D18  38 03 00 67 */	addi r0, r3, 0x0067 /* 0x00020067@l */
/* 804A3D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A3D20  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804A3D24  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804A3D28  80 63 00 00 */	lwz r3, 0(r3)
/* 804A3D2C  38 81 00 14 */	addi r4, r1, 0x14
/* 804A3D30  38 BF 05 38 */	addi r5, r31, 0x538
/* 804A3D34  38 C0 00 00 */	li r6, 0
/* 804A3D38  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 804A3D3C  FC 40 08 90 */	fmr f2, f1
/* 804A3D40  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 804A3D44  FC 80 18 90 */	fmr f4, f3
/* 804A3D48  39 00 00 00 */	li r8, 0
/* 804A3D4C  4B E0 87 C1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804A3D50  C3 FC 34 90 */	lfs f31, 0x3490(r28)
/* 804A3D54  7F 83 E3 78 */	mr r3, r28
/* 804A3D58  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804A3D5C  81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 804A3D60  7D 89 03 A6 */	mtctr r12
/* 804A3D64  4E 80 04 21 */	bctrl 
/* 804A3D68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A3D6C  41 82 00 28 */	beq lbl_804A3D94
/* 804A3D70  88 1F 07 31 */	lbz r0, 0x731(r31)
/* 804A3D74  28 00 00 00 */	cmplwi r0, 0
/* 804A3D78  40 82 00 1C */	bne lbl_804A3D94
/* 804A3D7C  38 7F 07 34 */	addi r3, r31, 0x734
/* 804A3D80  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804A3D84  4B EA 36 19 */	bl PSVECSquareDistance
/* 804A3D88  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 804A3D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A3D90  40 81 01 7C */	ble lbl_804A3F0C
lbl_804A3D94:
/* 804A3D94  7F E3 FB 78 */	mr r3, r31
/* 804A3D98  4B FF F8 65 */	bl setReturn__8daCrod_cFv
/* 804A3D9C  48 00 01 70 */	b lbl_804A3F0C
lbl_804A3DA0:
/* 804A3DA0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804A3DA4  7C 03 07 74 */	extsb r3, r0
/* 804A3DA8  4B B8 92 C5 */	bl dComIfGp_getReverb__Fi
/* 804A3DAC  7C 67 1B 78 */	mr r7, r3
/* 804A3DB0  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020068@ha */
/* 804A3DB4  38 03 00 68 */	addi r0, r3, 0x0068 /* 0x00020068@l */
/* 804A3DB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A3DBC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804A3DC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804A3DC4  80 63 00 00 */	lwz r3, 0(r3)
/* 804A3DC8  38 81 00 10 */	addi r4, r1, 0x10
/* 804A3DCC  38 BF 05 38 */	addi r5, r31, 0x538
/* 804A3DD0  38 C0 00 00 */	li r6, 0
/* 804A3DD4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 804A3DD8  FC 40 08 90 */	fmr f2, f1
/* 804A3DDC  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 804A3DE0  FC 80 18 90 */	fmr f4, f3
/* 804A3DE4  39 00 00 00 */	li r8, 0
/* 804A3DE8  4B E0 87 25 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804A3DEC  48 00 01 20 */	b lbl_804A3F0C
lbl_804A3DF0:
/* 804A3DF0  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 804A3DF4  4B BE 05 25 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 804A3DF8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804A3DFC  28 00 00 04 */	cmplwi r0, 4
/* 804A3E00  40 82 00 4C */	bne lbl_804A3E4C
/* 804A3E04  80 7F 07 44 */	lwz r3, 0x744(r31)
/* 804A3E08  A8 03 00 08 */	lha r0, 8(r3)
/* 804A3E0C  2C 00 01 98 */	cmpwi r0, 0x198
/* 804A3E10  40 82 00 20 */	bne lbl_804A3E30
/* 804A3E14  C0 03 0B 20 */	lfs f0, 0xb20(r3)
/* 804A3E18  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804A3E1C  C0 03 0B 24 */	lfs f0, 0xb24(r3)
/* 804A3E20  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804A3E24  C0 03 0B 28 */	lfs f0, 0xb28(r3)
/* 804A3E28  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804A3E2C  48 00 00 E0 */	b lbl_804A3F0C
lbl_804A3E30:
/* 804A3E30  C0 03 0B 2C */	lfs f0, 0xb2c(r3)
/* 804A3E34  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804A3E38  C0 03 0B 30 */	lfs f0, 0xb30(r3)
/* 804A3E3C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804A3E40  C0 03 0B 34 */	lfs f0, 0xb34(r3)
/* 804A3E44  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804A3E48  48 00 00 C4 */	b lbl_804A3F0C
lbl_804A3E4C:
/* 804A3E4C  80 9C 07 08 */	lwz r4, 0x708(r28)
/* 804A3E50  28 04 00 00 */	cmplwi r4, 0
/* 804A3E54  41 82 00 10 */	beq lbl_804A3E64
/* 804A3E58  80 64 00 84 */	lwz r3, 0x84(r4)
/* 804A3E5C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A3E60  48 00 00 08 */	b lbl_804A3E68
lbl_804A3E64:
/* 804A3E64  38 00 00 00 */	li r0, 0
lbl_804A3E68:
/* 804A3E68  28 00 00 00 */	cmplwi r0, 0
/* 804A3E6C  41 82 00 28 */	beq lbl_804A3E94
/* 804A3E70  28 04 00 00 */	cmplwi r4, 0
/* 804A3E74  41 82 00 10 */	beq lbl_804A3E84
/* 804A3E78  80 64 00 84 */	lwz r3, 0x84(r4)
/* 804A3E7C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804A3E80  48 00 00 08 */	b lbl_804A3E88
lbl_804A3E84:
/* 804A3E84  38 60 00 00 */	li r3, 0
lbl_804A3E88:
/* 804A3E88  38 9E 00 0C */	addi r4, r30, 0xc
/* 804A3E8C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804A3E90  4B EA 2E DD */	bl PSMTXMultVec
lbl_804A3E94:
/* 804A3E94  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 804A3E98  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804A3E9C  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 804A3EA0  7D 89 03 A6 */	mtctr r12
/* 804A3EA4  4E 80 04 21 */	bctrl 
/* 804A3EA8  2C 03 00 00 */	cmpwi r3, 0
/* 804A3EAC  41 82 00 60 */	beq lbl_804A3F0C
/* 804A3EB0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804A3EB4  20 00 00 01 */	subfic r0, r0, 1
/* 804A3EB8  7C 00 00 34 */	cntlzw r0, r0
/* 804A3EBC  54 1B D9 7E */	srwi r27, r0, 5
/* 804A3EC0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804A3EC4  7C 03 07 74 */	extsb r3, r0
/* 804A3EC8  4B B8 91 A5 */	bl dComIfGp_getReverb__Fi
/* 804A3ECC  7C 67 1B 78 */	mr r7, r3
/* 804A3ED0  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002008E@ha */
/* 804A3ED4  38 03 00 8E */	addi r0, r3, 0x008E /* 0x0002008E@l */
/* 804A3ED8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A3EDC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804A3EE0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804A3EE4  80 63 00 00 */	lwz r3, 0(r3)
/* 804A3EE8  38 81 00 0C */	addi r4, r1, 0xc
/* 804A3EEC  38 BF 05 38 */	addi r5, r31, 0x538
/* 804A3EF0  7F 66 DB 78 */	mr r6, r27
/* 804A3EF4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 804A3EF8  FC 40 08 90 */	fmr f2, f1
/* 804A3EFC  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 804A3F00  FC 80 18 90 */	fmr f4, f3
/* 804A3F04  39 00 00 00 */	li r8, 0
/* 804A3F08  4B E0 86 05 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804A3F0C:
/* 804A3F0C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804A3F10  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804A3F14  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804A3F18  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804A3F1C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804A3F20  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 804A3F24  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804A3F28  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 804A3F2C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804A3F30  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 804A3F34  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804A3F38  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 804A3F3C  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 804A3F40  4B C0 53 09 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 804A3F44  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 804A3F48  4B C0 53 01 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 804A3F4C  38 7F 05 6C */	addi r3, r31, 0x56c
/* 804A3F50  4B B6 94 D9 */	bl play__14mDoExt_baseAnmFv
/* 804A3F54  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 804A3F58  80 83 00 04 */	lwz r4, 4(r3)
/* 804A3F5C  38 7F 05 6C */	addi r3, r31, 0x56c
/* 804A3F60  C0 3F 05 7C */	lfs f1, 0x57c(r31)
/* 804A3F64  4B B6 9A 69 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 804A3F68  7F E3 FB 78 */	mr r3, r31
/* 804A3F6C  4B FF F5 45 */	bl setRoomInfo__8daCrod_cFv
/* 804A3F70  7F E3 FB 78 */	mr r3, r31
/* 804A3F74  4B FF F5 41 */	bl setMatrix__8daCrod_cFv
/* 804A3F78  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804A3F7C  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 804A3F80  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804A3F84  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 804A3F88  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804A3F8C  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 804A3F90  38 60 00 01 */	li r3, 1
lbl_804A3F94:
/* 804A3F94  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 804A3F98  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 804A3F9C  39 61 00 70 */	addi r11, r1, 0x70
/* 804A3FA0  4B EB E2 81 */	bl _restgpr_27
/* 804A3FA4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804A3FA8  7C 08 03 A6 */	mtlr r0
/* 804A3FAC  38 21 00 80 */	addi r1, r1, 0x80
/* 804A3FB0  4E 80 00 20 */	blr 
