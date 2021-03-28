lbl_80CD7FE8:
/* 80CD7FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD7FEC  7C 08 02 A6 */	mflr r0
/* 80CD7FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD7FF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD7FF8  7C 7F 1B 78 */	mr r31, r3
/* 80CD7FFC  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 80CD8000  D0 03 09 38 */	stfs f0, 0x938(r3)
/* 80CD8004  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80CD8008  D0 03 09 3C */	stfs f0, 0x93c(r3)
/* 80CD800C  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 80CD8010  D0 03 09 40 */	stfs f0, 0x940(r3)
/* 80CD8014  80 83 09 30 */	lwz r4, 0x930(r3)
/* 80CD8018  38 04 00 01 */	addi r0, r4, 1
/* 80CD801C  90 03 09 30 */	stw r0, 0x930(r3)
/* 80CD8020  4B FF F7 15 */	bl action_proc_call__14daItemShield_cFv
/* 80CD8024  7F E3 FB 78 */	mr r3, r31
/* 80CD8028  4B FF FD D9 */	bl event_proc_call__14daItemShield_cFv
/* 80CD802C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CD8030  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80CD8034  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CD8038  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CD803C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CD8040  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80CD8044  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CD8048  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80CD804C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CD8050  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CD8054  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CD8058  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80CD805C  38 7F 09 44 */	addi r3, r31, 0x944
/* 80CD8060  38 80 00 00 */	li r4, 0
/* 80CD8064  38 A0 00 50 */	li r5, 0x50
/* 80CD8068  38 C0 00 28 */	li r6, 0x28
/* 80CD806C  38 E0 00 0A */	li r7, 0xa
/* 80CD8070  4B 59 84 D0 */	b cLib_addCalcAngleS__FPsssss
/* 80CD8074  38 7F 09 48 */	addi r3, r31, 0x948
/* 80CD8078  38 80 00 00 */	li r4, 0
/* 80CD807C  38 A0 00 50 */	li r5, 0x50
/* 80CD8080  38 C0 00 28 */	li r6, 0x28
/* 80CD8084  38 E0 00 0A */	li r7, 0xa
/* 80CD8088  4B 59 84 B8 */	b cLib_addCalcAngleS__FPsssss
/* 80CD808C  7F E3 FB 78 */	mr r3, r31
/* 80CD8090  4B FF ED 49 */	bl setBaseMtx__14daItemShield_cFv
/* 80CD8094  7F E3 FB 78 */	mr r3, r31
/* 80CD8098  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CD809C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CD80A0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80CD80A4  4B 34 27 3C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CD80A8  3C 60 80 CE */	lis r3, lit_4335@ha
/* 80CD80AC  C0 03 83 20 */	lfs f0, lit_4335@l(r3)
/* 80CD80B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD80B4  40 80 00 18 */	bge lbl_80CD80CC
/* 80CD80B8  38 7F 05 50 */	addi r3, r31, 0x550
/* 80CD80BC  4B 48 74 34 */	b setLookPos__9daPy_py_cFP4cXyz
/* 80CD80C0  38 00 01 00 */	li r0, 0x100
/* 80CD80C4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CD80C8  48 00 00 0C */	b lbl_80CD80D4
lbl_80CD80CC:
/* 80CD80CC  38 00 00 00 */	li r0, 0
/* 80CD80D0  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80CD80D4:
/* 80CD80D4  38 60 00 01 */	li r3, 1
/* 80CD80D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD80DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD80E0  7C 08 03 A6 */	mtlr r0
/* 80CD80E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD80E8  4E 80 00 20 */	blr 
