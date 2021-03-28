lbl_80071DEC:
/* 80071DEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80071DF0  7C 08 02 A6 */	mflr r0
/* 80071DF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80071DF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80071DFC  7C 7F 1B 78 */	mr r31, r3
/* 80071E00  38 00 FF FF */	li r0, -1
/* 80071E04  90 03 05 14 */	stw r0, 0x514(r3)
/* 80071E08  C0 02 8C 98 */	lfs f0, lit_5137(r2)
/* 80071E0C  D0 03 05 18 */	stfs f0, 0x518(r3)
/* 80071E10  80 03 03 34 */	lwz r0, 0x334(r3)
/* 80071E14  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80071E18  40 82 00 58 */	bne lbl_80071E70
/* 80071E1C  3C 60 80 07 */	lis r3, sound_attention__FP10fopAc_ac_cPv@ha
/* 80071E20  38 63 1D 6C */	addi r3, r3, sound_attention__FP10fopAc_ac_cPv@l
/* 80071E24  7F E4 FB 78 */	mr r4, r31
/* 80071E28  4B FA 79 95 */	bl fopAcIt_Executor__FPFPvPv_iPv
/* 80071E2C  80 1F 05 14 */	lwz r0, 0x514(r31)
/* 80071E30  90 01 00 08 */	stw r0, 8(r1)
/* 80071E34  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80071E38  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80071E3C  38 81 00 08 */	addi r4, r1, 8
/* 80071E40  4B FA 79 B9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80071E44  28 03 00 00 */	cmplwi r3, 0
/* 80071E48  41 82 00 28 */	beq lbl_80071E70
/* 80071E4C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80071E50  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80071E54  C0 22 8C 9C */	lfs f1, lit_5138(r2)
/* 80071E58  C0 1F 05 18 */	lfs f0, 0x518(r31)
/* 80071E5C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80071E60  48 24 40 29 */	bl bgmNowBattle__8Z2SeqMgrFf
/* 80071E64  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80071E68  60 00 01 00 */	ori r0, r0, 0x100
/* 80071E6C  90 1F 03 34 */	stw r0, 0x334(r31)
lbl_80071E70:
/* 80071E70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80071E74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80071E78  7C 08 03 A6 */	mtlr r0
/* 80071E7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80071E80  4E 80 00 20 */	blr 
