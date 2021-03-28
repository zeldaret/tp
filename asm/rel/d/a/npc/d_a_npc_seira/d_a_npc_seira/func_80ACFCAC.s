lbl_80ACFCAC:
/* 80ACFCAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACFCB0  7C 08 02 A6 */	mflr r0
/* 80ACFCB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACFCB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80ACFCBC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80ACFCC0  7C 7E 1B 78 */	mr r30, r3
/* 80ACFCC4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80ACFCC8  3D 60 80 AD */	lis r11, m__19daNpc_Seira_Param_c@ha
/* 80ACFCCC  3B EB FD F0 */	addi r31, r11, m__19daNpc_Seira_Param_c@l
/* 80ACFCD0  90 01 00 08 */	stw r0, 8(r1)
/* 80ACFCD4  4B FF F2 A1 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80ACFCD8  3C 60 80 3C */	lis r3, __vt__13dShopSystem_c@ha
/* 80ACFCDC  38 03 BA 7C */	addi r0, r3, __vt__13dShopSystem_c@l
/* 80ACFCE0  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80ACFCE4  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80ACFCE8  4B 6C 6C 2C */	b __ct__15dShopItemCtrl_cFv
/* 80ACFCEC  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80ACFCF0  D0 3E 0F 38 */	stfs f1, 0xf38(r30)
/* 80ACFCF4  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80ACFCF8  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 80ACFCFC  D0 3E 0F 40 */	stfs f1, 0xf40(r30)
/* 80ACFD00  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80ACFD04  D0 1E 0F 44 */	stfs f0, 0xf44(r30)
/* 80ACFD08  38 00 00 01 */	li r0, 1
/* 80ACFD0C  98 1E 0F 52 */	stb r0, 0xf52(r30)
/* 80ACFD10  38 60 00 00 */	li r3, 0
/* 80ACFD14  B0 7E 0F 48 */	sth r3, 0xf48(r30)
/* 80ACFD18  B0 7E 0F 4A */	sth r3, 0xf4a(r30)
/* 80ACFD1C  38 00 FF FF */	li r0, -1
/* 80ACFD20  B0 1E 0F 4C */	sth r0, 0xf4c(r30)
/* 80ACFD24  B0 7E 0F 4E */	sth r3, 0xf4e(r30)
/* 80ACFD28  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80ACFD2C  D0 3E 0E F4 */	stfs f1, 0xef4(r30)
/* 80ACFD30  D0 3E 0E F8 */	stfs f1, 0xef8(r30)
/* 80ACFD34  D0 3E 0E FC */	stfs f1, 0xefc(r30)
/* 80ACFD38  D0 3E 0F 00 */	stfs f1, 0xf00(r30)
/* 80ACFD3C  D0 3E 0F 04 */	stfs f1, 0xf04(r30)
/* 80ACFD40  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80ACFD44  D0 1E 0F 08 */	stfs f0, 0xf08(r30)
/* 80ACFD48  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80ACFD4C  D0 1E 0F 0C */	stfs f0, 0xf0c(r30)
/* 80ACFD50  D0 3E 0F 28 */	stfs f1, 0xf28(r30)
/* 80ACFD54  D0 3E 0F 2C */	stfs f1, 0xf2c(r30)
/* 80ACFD58  D0 3E 0F 30 */	stfs f1, 0xf30(r30)
/* 80ACFD5C  B0 7E 0F 50 */	sth r3, 0xf50(r30)
/* 80ACFD60  90 7E 0E 90 */	stw r3, 0xe90(r30)
/* 80ACFD64  90 7E 0E 9C */	stw r3, 0xe9c(r30)
/* 80ACFD68  90 7E 0E 98 */	stw r3, 0xe98(r30)
/* 80ACFD6C  90 7E 0E 94 */	stw r3, 0xe94(r30)
/* 80ACFD70  90 7E 0E A8 */	stw r3, 0xea8(r30)
/* 80ACFD74  90 7E 0E A4 */	stw r3, 0xea4(r30)
/* 80ACFD78  90 7E 0E A0 */	stw r3, 0xea0(r30)
/* 80ACFD7C  90 7E 0E AC */	stw r3, 0xeac(r30)
/* 80ACFD80  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80ACFD84  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80ACFD88  80 64 00 00 */	lwz r3, 0(r4)
/* 80ACFD8C  80 04 00 04 */	lwz r0, 4(r4)
/* 80ACFD90  90 7E 0E 78 */	stw r3, 0xe78(r30)
/* 80ACFD94  90 1E 0E 7C */	stw r0, 0xe7c(r30)
/* 80ACFD98  80 04 00 08 */	lwz r0, 8(r4)
/* 80ACFD9C  90 1E 0E 80 */	stw r0, 0xe80(r30)
/* 80ACFDA0  7F C3 F3 78 */	mr r3, r30
/* 80ACFDA4  4B 6C 75 94 */	b initShopSystem__13dShopSystem_cFv
/* 80ACFDA8  7F C3 F3 78 */	mr r3, r30
/* 80ACFDAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80ACFDB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80ACFDB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACFDB8  7C 08 03 A6 */	mtlr r0
/* 80ACFDBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACFDC0  4E 80 00 20 */	blr 
