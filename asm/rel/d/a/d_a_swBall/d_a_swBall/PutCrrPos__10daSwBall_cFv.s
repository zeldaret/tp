lbl_80D4E6C8:
/* 80D4E6C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4E6CC  7C 08 02 A6 */	mflr r0
/* 80D4E6D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4E6D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4E6D8  4B 61 3A F4 */	b _savegpr_25
/* 80D4E6DC  7C 7B 1B 78 */	mr r27, r3
/* 80D4E6E0  3C 60 80 D5 */	lis r3, lit_3718@ha
/* 80D4E6E4  3B E3 E9 98 */	addi r31, r3, lit_3718@l
/* 80D4E6E8  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80D4E6EC  54 00 27 BF */	rlwinm. r0, r0, 4, 0x1e, 0x1f
/* 80D4E6F0  40 82 02 04 */	bne lbl_80D4E8F4
/* 80D4E6F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4E6F8  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80D4E6FC  83 9A 5D AC */	lwz r28, 0x5dac(r26)
/* 80D4E700  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80D4E704  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80D4E708  4B 52 24 FC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80D4E70C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80D4E710  7C 00 18 50 */	subf r0, r0, r3
/* 80D4E714  7C 19 07 34 */	extsh r25, r0
/* 80D4E718  7F 63 DB 78 */	mr r3, r27
/* 80D4E71C  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80D4E720  4B 2C C2 44 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D4E724  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80D4E728  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D4E72C  40 80 00 78 */	bge lbl_80D4E7A4
/* 80D4E730  2C 19 40 00 */	cmpwi r25, 0x4000
/* 80D4E734  40 80 00 70 */	bge lbl_80D4E7A4
/* 80D4E738  7F 83 E3 78 */	mr r3, r28
/* 80D4E73C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80D4E740  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80D4E744  7D 89 03 A6 */	mtctr r12
/* 80D4E748  4E 80 04 21 */	bctrl 
/* 80D4E74C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80D4E750  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80D4E754  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80D4E758  38 81 00 0C */	addi r4, r1, 0xc
/* 80D4E75C  4B 2C B0 9C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80D4E760  7C 7A 1B 79 */	or. r26, r3, r3
/* 80D4E764  41 82 00 40 */	beq lbl_80D4E7A4
/* 80D4E768  4B 2C A5 78 */	b fopAc_IsActor__FPv
/* 80D4E76C  2C 03 00 00 */	cmpwi r3, 0
/* 80D4E770  41 82 00 34 */	beq lbl_80D4E7A4
/* 80D4E774  A8 1A 00 08 */	lha r0, 8(r26)
/* 80D4E778  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80D4E77C  40 82 00 28 */	bne lbl_80D4E7A4
/* 80D4E780  88 1A 0C F0 */	lbz r0, 0xcf0(r26)
/* 80D4E784  2C 00 00 0B */	cmpwi r0, 0xb
/* 80D4E788  40 82 00 1C */	bne lbl_80D4E7A4
/* 80D4E78C  7F 83 E3 78 */	mr r3, r28
/* 80D4E790  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80D4E794  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80D4E798  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 80D4E79C  7D 89 03 A6 */	mtctr r12
/* 80D4E7A0  4E 80 04 21 */	bctrl 
lbl_80D4E7A4:
/* 80D4E7A4  3B 80 00 00 */	li r28, 0
/* 80D4E7A8  3B 40 00 00 */	li r26, 0
lbl_80D4E7AC:
/* 80D4E7AC  3B DA 05 68 */	addi r30, r26, 0x568
/* 80D4E7B0  7C 7B F0 2E */	lwzx r3, r27, r30
/* 80D4E7B4  3C 03 00 01 */	addis r0, r3, 1
/* 80D4E7B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D4E7BC  41 82 00 20 */	beq lbl_80D4E7DC
/* 80D4E7C0  90 61 00 08 */	stw r3, 8(r1)
/* 80D4E7C4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80D4E7C8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80D4E7CC  38 81 00 08 */	addi r4, r1, 8
/* 80D4E7D0  4B 2C B0 28 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80D4E7D4  7C 7D 1B 78 */	mr r29, r3
/* 80D4E7D8  48 00 00 08 */	b lbl_80D4E7E0
lbl_80D4E7DC:
/* 80D4E7DC  3B A0 00 00 */	li r29, 0
lbl_80D4E7E0:
/* 80D4E7E0  28 1D 00 00 */	cmplwi r29, 0
/* 80D4E7E4  41 82 01 00 */	beq lbl_80D4E8E4
/* 80D4E7E8  80 7B 05 9C */	lwz r3, 0x59c(r27)
/* 80D4E7EC  7C 1B F0 2E */	lwzx r0, r27, r30
/* 80D4E7F0  7C 03 00 40 */	cmplw r3, r0
/* 80D4E7F4  41 82 00 10 */	beq lbl_80D4E804
/* 80D4E7F8  3C 03 00 01 */	addis r0, r3, 1
/* 80D4E7FC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D4E800  40 82 00 D4 */	bne lbl_80D4E8D4
lbl_80D4E804:
/* 80D4E804  3B 3C 05 93 */	addi r25, r28, 0x593
/* 80D4E808  7C 1B C8 AE */	lbzx r0, r27, r25
/* 80D4E80C  2C 00 00 01 */	cmpwi r0, 1
/* 80D4E810  41 82 00 78 */	beq lbl_80D4E888
/* 80D4E814  40 80 00 C0 */	bge lbl_80D4E8D4
/* 80D4E818  2C 00 00 00 */	cmpwi r0, 0
/* 80D4E81C  40 80 00 08 */	bge lbl_80D4E824
/* 80D4E820  48 00 00 B4 */	b lbl_80D4E8D4
lbl_80D4E824:
/* 80D4E824  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80D4E828  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80D4E82C  40 82 00 50 */	bne lbl_80D4E87C
/* 80D4E830  7F 63 DB 78 */	mr r3, r27
/* 80D4E834  7F A4 EB 78 */	mr r4, r29
/* 80D4E838  4B FF F8 1D */	bl checkArea_sub__10daSwBall_cFP10fopAc_ac_c
/* 80D4E83C  2C 03 00 00 */	cmpwi r3, 0
/* 80D4E840  41 82 00 3C */	beq lbl_80D4E87C
/* 80D4E844  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 80D4E848  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D4E84C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D4E850  40 82 00 14 */	bne lbl_80D4E864
/* 80D4E854  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80D4E858  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D4E85C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D4E860  41 82 00 10 */	beq lbl_80D4E870
lbl_80D4E864:
/* 80D4E864  38 00 00 01 */	li r0, 1
/* 80D4E868  98 1D 0D B8 */	stb r0, 0xdb8(r29)
/* 80D4E86C  7C 1B C9 AE */	stbx r0, r27, r25
lbl_80D4E870:
/* 80D4E870  7C 1B F0 2E */	lwzx r0, r27, r30
/* 80D4E874  90 1B 05 9C */	stw r0, 0x59c(r27)
/* 80D4E878  48 00 00 5C */	b lbl_80D4E8D4
lbl_80D4E87C:
/* 80D4E87C  38 00 FF FF */	li r0, -1
/* 80D4E880  90 1B 05 9C */	stw r0, 0x59c(r27)
/* 80D4E884  48 00 00 50 */	b lbl_80D4E8D4
lbl_80D4E888:
/* 80D4E888  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80D4E88C  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 80D4E890  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D4E894  4B 52 1E AC */	b cLib_chaseF__FPfff
/* 80D4E898  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 80D4E89C  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80D4E8A0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D4E8A4  4B 52 1E 9C */	b cLib_chaseF__FPfff
/* 80D4E8A8  7F 63 DB 78 */	mr r3, r27
/* 80D4E8AC  7F A4 EB 78 */	mr r4, r29
/* 80D4E8B0  4B 2C C0 B4 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D4E8B4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80D4E8B8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D4E8BC  40 82 00 10 */	bne lbl_80D4E8CC
/* 80D4E8C0  38 00 00 00 */	li r0, 0
/* 80D4E8C4  98 1D 0D B8 */	stb r0, 0xdb8(r29)
/* 80D4E8C8  7C 1B C9 AE */	stbx r0, r27, r25
lbl_80D4E8CC:
/* 80D4E8CC  7C 1B F0 2E */	lwzx r0, r27, r30
/* 80D4E8D0  90 1B 05 9C */	stw r0, 0x59c(r27)
lbl_80D4E8D4:
/* 80D4E8D4  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80D4E8D8  54 03 9F FE */	rlwinm r3, r0, 0x13, 0x1f, 0x1f
/* 80D4E8DC  38 1C 05 8B */	addi r0, r28, 0x58b
/* 80D4E8E0  7C 7B 01 AE */	stbx r3, r27, r0
lbl_80D4E8E4:
/* 80D4E8E4  3B 9C 00 01 */	addi r28, r28, 1
/* 80D4E8E8  2C 1C 00 08 */	cmpwi r28, 8
/* 80D4E8EC  3B 5A 00 04 */	addi r26, r26, 4
/* 80D4E8F0  41 80 FE BC */	blt lbl_80D4E7AC
lbl_80D4E8F4:
/* 80D4E8F4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4E8F8  4B 61 39 20 */	b _restgpr_25
/* 80D4E8FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4E900  7C 08 03 A6 */	mtlr r0
/* 80D4E904  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4E908  4E 80 00 20 */	blr 
