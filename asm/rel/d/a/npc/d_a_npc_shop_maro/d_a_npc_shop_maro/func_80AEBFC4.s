lbl_80AEBFC4:
/* 80AEBFC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AEBFC8  7C 08 02 A6 */	mflr r0
/* 80AEBFCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AEBFD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AEBFD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AEBFD8  7C 7E 1B 78 */	mr r30, r3
/* 80AEBFDC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AEBFE0  3D 60 80 AF */	lis r11, lit_4009@ha
/* 80AEBFE4  3B EB C9 18 */	addi r31, r11, lit_4009@l
/* 80AEBFE8  90 01 00 08 */	stw r0, 8(r1)
/* 80AEBFEC  48 00 01 81 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80AEBFF0  3C 60 80 3C */	lis r3, __vt__13dShopSystem_c@ha
/* 80AEBFF4  38 03 BA 7C */	addi r0, r3, __vt__13dShopSystem_c@l
/* 80AEBFF8  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AEBFFC  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80AEC000  4B 6A A9 14 */	b __ct__15dShopItemCtrl_cFv
/* 80AEC004  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80AEC008  D0 3E 0F 38 */	stfs f1, 0xf38(r30)
/* 80AEC00C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80AEC010  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 80AEC014  D0 3E 0F 40 */	stfs f1, 0xf40(r30)
/* 80AEC018  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80AEC01C  D0 1E 0F 44 */	stfs f0, 0xf44(r30)
/* 80AEC020  38 00 00 01 */	li r0, 1
/* 80AEC024  98 1E 0F 52 */	stb r0, 0xf52(r30)
/* 80AEC028  38 60 00 00 */	li r3, 0
/* 80AEC02C  B0 7E 0F 48 */	sth r3, 0xf48(r30)
/* 80AEC030  B0 7E 0F 4A */	sth r3, 0xf4a(r30)
/* 80AEC034  38 00 FF FF */	li r0, -1
/* 80AEC038  B0 1E 0F 4C */	sth r0, 0xf4c(r30)
/* 80AEC03C  B0 7E 0F 4E */	sth r3, 0xf4e(r30)
/* 80AEC040  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AEC044  D0 3E 0E F4 */	stfs f1, 0xef4(r30)
/* 80AEC048  D0 3E 0E F8 */	stfs f1, 0xef8(r30)
/* 80AEC04C  D0 3E 0E FC */	stfs f1, 0xefc(r30)
/* 80AEC050  D0 3E 0F 00 */	stfs f1, 0xf00(r30)
/* 80AEC054  D0 3E 0F 04 */	stfs f1, 0xf04(r30)
/* 80AEC058  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80AEC05C  D0 1E 0F 08 */	stfs f0, 0xf08(r30)
/* 80AEC060  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80AEC064  D0 1E 0F 0C */	stfs f0, 0xf0c(r30)
/* 80AEC068  D0 3E 0F 28 */	stfs f1, 0xf28(r30)
/* 80AEC06C  D0 3E 0F 2C */	stfs f1, 0xf2c(r30)
/* 80AEC070  D0 3E 0F 30 */	stfs f1, 0xf30(r30)
/* 80AEC074  B0 7E 0F 50 */	sth r3, 0xf50(r30)
/* 80AEC078  90 7E 0E 90 */	stw r3, 0xe90(r30)
/* 80AEC07C  90 7E 0E 9C */	stw r3, 0xe9c(r30)
/* 80AEC080  90 7E 0E 98 */	stw r3, 0xe98(r30)
/* 80AEC084  90 7E 0E 94 */	stw r3, 0xe94(r30)
/* 80AEC088  90 7E 0E A8 */	stw r3, 0xea8(r30)
/* 80AEC08C  90 7E 0E A4 */	stw r3, 0xea4(r30)
/* 80AEC090  90 7E 0E A0 */	stw r3, 0xea0(r30)
/* 80AEC094  90 7E 0E AC */	stw r3, 0xeac(r30)
/* 80AEC098  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80AEC09C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80AEC0A0  80 64 00 00 */	lwz r3, 0(r4)
/* 80AEC0A4  80 04 00 04 */	lwz r0, 4(r4)
/* 80AEC0A8  90 7E 0E 78 */	stw r3, 0xe78(r30)
/* 80AEC0AC  90 1E 0E 7C */	stw r0, 0xe7c(r30)
/* 80AEC0B0  80 04 00 08 */	lwz r0, 8(r4)
/* 80AEC0B4  90 1E 0E 80 */	stw r0, 0xe80(r30)
/* 80AEC0B8  7F C3 F3 78 */	mr r3, r30
/* 80AEC0BC  4B 6A B2 7C */	b initShopSystem__13dShopSystem_cFv
/* 80AEC0C0  7F C3 F3 78 */	mr r3, r30
/* 80AEC0C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AEC0C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AEC0CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AEC0D0  7C 08 03 A6 */	mtlr r0
/* 80AEC0D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AEC0D8  4E 80 00 20 */	blr 
