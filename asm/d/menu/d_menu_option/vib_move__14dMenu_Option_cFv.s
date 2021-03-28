lbl_801E41F8:
/* 801E41F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801E41FC  7C 08 02 A6 */	mflr r0
/* 801E4200  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E4204  39 61 00 30 */	addi r11, r1, 0x30
/* 801E4208  48 17 DF D1 */	bl _savegpr_28
/* 801E420C  7C 7F 1B 78 */	mr r31, r3
/* 801E4210  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801E4214  4B E4 E3 11 */	bl checkUpTrigger__9STControlFv
/* 801E4218  7C 7C 1B 78 */	mr r28, r3
/* 801E421C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E4220  4B E4 E3 81 */	bl checkDownTrigger__9STControlFv
/* 801E4224  7C 7D 1B 78 */	mr r29, r3
/* 801E4228  7F E3 FB 78 */	mr r3, r31
/* 801E422C  4B FF F8 79 */	bl checkLeftTrigger__14dMenu_Option_cFv
/* 801E4230  7C 7E 1B 78 */	mr r30, r3
/* 801E4234  7F E3 FB 78 */	mr r3, r31
/* 801E4238  4B FF F8 91 */	bl checkRightTrigger__14dMenu_Option_cFv
/* 801E423C  88 1F 03 F3 */	lbz r0, 0x3f3(r31)
/* 801E4240  28 00 00 05 */	cmplwi r0, 5
/* 801E4244  41 82 00 24 */	beq lbl_801E4268
/* 801E4248  7F E3 FB 78 */	mr r3, r31
/* 801E424C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801E4250  3C 80 80 3C */	lis r4, tv_process@ha
/* 801E4254  38 04 DD 70 */	addi r0, r4, tv_process@l
/* 801E4258  7D 80 2A 14 */	add r12, r0, r5
/* 801E425C  48 17 DE 29 */	bl __ptmf_scall
/* 801E4260  60 00 00 00 */	nop 
/* 801E4264  48 00 02 0C */	b lbl_801E4470
lbl_801E4268:
/* 801E4268  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801E426C  41 82 00 44 */	beq lbl_801E42B0
/* 801E4270  38 00 00 00 */	li r0, 0
/* 801E4274  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E4278  38 00 00 4C */	li r0, 0x4c
/* 801E427C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E4280  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4284  38 81 00 14 */	addi r4, r1, 0x14
/* 801E4288  38 A0 00 00 */	li r5, 0
/* 801E428C  38 C0 00 00 */	li r6, 0
/* 801E4290  38 E0 00 00 */	li r7, 0
/* 801E4294  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4298  FC 40 08 90 */	fmr f2, f1
/* 801E429C  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E42A0  FC 80 18 90 */	fmr f4, f3
/* 801E42A4  39 00 00 00 */	li r8, 0
/* 801E42A8  48 0C 76 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E42AC  48 00 01 C4 */	b lbl_801E4470
lbl_801E42B0:
/* 801E42B0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801E42B4  41 82 00 44 */	beq lbl_801E42F8
/* 801E42B8  38 00 00 02 */	li r0, 2
/* 801E42BC  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E42C0  38 00 00 4C */	li r0, 0x4c
/* 801E42C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801E42C8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E42CC  38 81 00 10 */	addi r4, r1, 0x10
/* 801E42D0  38 A0 00 00 */	li r5, 0
/* 801E42D4  38 C0 00 00 */	li r6, 0
/* 801E42D8  38 E0 00 00 */	li r7, 0
/* 801E42DC  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E42E0  FC 40 08 90 */	fmr f2, f1
/* 801E42E4  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E42E8  FC 80 18 90 */	fmr f4, f3
/* 801E42EC  39 00 00 00 */	li r8, 0
/* 801E42F0  48 0C 76 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E42F4  48 00 01 7C */	b lbl_801E4470
lbl_801E42F8:
/* 801E42F8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801E42FC  41 82 00 B4 */	beq lbl_801E43B0
/* 801E4300  7F E3 FB 78 */	mr r3, r31
/* 801E4304  48 00 3D 9D */	bl isRumbleSupported__14dMenu_Option_cFv
/* 801E4308  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801E430C  41 82 01 64 */	beq lbl_801E4470
/* 801E4310  88 1F 03 EA */	lbz r0, 0x3ea(r31)
/* 801E4314  28 00 00 00 */	cmplwi r0, 0
/* 801E4318  40 82 00 38 */	bne lbl_801E4350
/* 801E431C  38 00 00 01 */	li r0, 1
/* 801E4320  98 1F 03 EA */	stb r0, 0x3ea(r31)
/* 801E4324  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha
/* 801E4328  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l
/* 801E432C  80 63 00 00 */	lwz r3, 0(r3)
/* 801E4330  38 63 00 68 */	addi r3, r3, 0x68
/* 801E4334  38 9F 03 E0 */	addi r4, r31, 0x3e0
/* 801E4338  38 A0 00 00 */	li r5, 0
/* 801E433C  38 C0 00 3C */	li r6, 0x3c
/* 801E4340  48 0F D5 8D */	bl startPatternedRumble__Q210JUTGamePad7CRumbleFPvQ310JUTGamePad7CRumble7ERumbleUl
/* 801E4344  38 00 FF FB */	li r0, -5
/* 801E4348  B0 1F 03 DA */	sth r0, 0x3da(r31)
/* 801E434C  48 00 00 1C */	b lbl_801E4368
lbl_801E4350:
/* 801E4350  28 00 00 01 */	cmplwi r0, 1
/* 801E4354  40 82 00 14 */	bne lbl_801E4368
/* 801E4358  38 00 00 00 */	li r0, 0
/* 801E435C  98 1F 03 EA */	stb r0, 0x3ea(r31)
/* 801E4360  38 00 FF FB */	li r0, -5
/* 801E4364  B0 1F 03 DA */	sth r0, 0x3da(r31)
lbl_801E4368:
/* 801E4368  38 00 00 03 */	li r0, 3
/* 801E436C  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E4370  38 00 00 01 */	li r0, 1
/* 801E4374  98 1F 03 F5 */	stb r0, 0x3f5(r31)
/* 801E4378  38 00 00 C8 */	li r0, 0xc8
/* 801E437C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E4380  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4384  38 81 00 0C */	addi r4, r1, 0xc
/* 801E4388  38 A0 00 00 */	li r5, 0
/* 801E438C  38 C0 00 00 */	li r6, 0
/* 801E4390  38 E0 00 00 */	li r7, 0
/* 801E4394  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4398  FC 40 08 90 */	fmr f2, f1
/* 801E439C  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E43A0  FC 80 18 90 */	fmr f4, f3
/* 801E43A4  39 00 00 00 */	li r8, 0
/* 801E43A8  48 0C 75 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E43AC  48 00 00 C4 */	b lbl_801E4470
lbl_801E43B0:
/* 801E43B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801E43B4  41 82 00 B4 */	beq lbl_801E4468
/* 801E43B8  7F E3 FB 78 */	mr r3, r31
/* 801E43BC  48 00 3C E5 */	bl isRumbleSupported__14dMenu_Option_cFv
/* 801E43C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801E43C4  41 82 00 AC */	beq lbl_801E4470
/* 801E43C8  88 1F 03 EA */	lbz r0, 0x3ea(r31)
/* 801E43CC  28 00 00 00 */	cmplwi r0, 0
/* 801E43D0  40 82 00 38 */	bne lbl_801E4408
/* 801E43D4  38 00 00 01 */	li r0, 1
/* 801E43D8  98 1F 03 EA */	stb r0, 0x3ea(r31)
/* 801E43DC  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha
/* 801E43E0  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l
/* 801E43E4  80 63 00 00 */	lwz r3, 0(r3)
/* 801E43E8  38 63 00 68 */	addi r3, r3, 0x68
/* 801E43EC  38 9F 03 E0 */	addi r4, r31, 0x3e0
/* 801E43F0  38 A0 00 00 */	li r5, 0
/* 801E43F4  38 C0 00 3C */	li r6, 0x3c
/* 801E43F8  48 0F D4 D5 */	bl startPatternedRumble__Q210JUTGamePad7CRumbleFPvQ310JUTGamePad7CRumble7ERumbleUl
/* 801E43FC  38 00 00 05 */	li r0, 5
/* 801E4400  B0 1F 03 DA */	sth r0, 0x3da(r31)
/* 801E4404  48 00 00 1C */	b lbl_801E4420
lbl_801E4408:
/* 801E4408  28 00 00 01 */	cmplwi r0, 1
/* 801E440C  40 82 00 14 */	bne lbl_801E4420
/* 801E4410  38 00 00 00 */	li r0, 0
/* 801E4414  98 1F 03 EA */	stb r0, 0x3ea(r31)
/* 801E4418  38 00 00 05 */	li r0, 5
/* 801E441C  B0 1F 03 DA */	sth r0, 0x3da(r31)
lbl_801E4420:
/* 801E4420  38 00 00 03 */	li r0, 3
/* 801E4424  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E4428  38 00 00 01 */	li r0, 1
/* 801E442C  98 1F 03 F5 */	stb r0, 0x3f5(r31)
/* 801E4430  38 00 00 C8 */	li r0, 0xc8
/* 801E4434  90 01 00 08 */	stw r0, 8(r1)
/* 801E4438  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E443C  38 81 00 08 */	addi r4, r1, 8
/* 801E4440  38 A0 00 00 */	li r5, 0
/* 801E4444  38 C0 00 00 */	li r6, 0
/* 801E4448  38 E0 00 00 */	li r7, 0
/* 801E444C  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4450  FC 40 08 90 */	fmr f2, f1
/* 801E4454  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4458  FC 80 18 90 */	fmr f4, f3
/* 801E445C  39 00 00 00 */	li r8, 0
/* 801E4460  48 0C 75 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E4464  48 00 00 0C */	b lbl_801E4470
lbl_801E4468:
/* 801E4468  7F E3 FB 78 */	mr r3, r31
/* 801E446C  48 00 39 89 */	bl changeTVCheck__14dMenu_Option_cFv
lbl_801E4470:
/* 801E4470  39 61 00 30 */	addi r11, r1, 0x30
/* 801E4474  48 17 DD B1 */	bl _restgpr_28
/* 801E4478  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E447C  7C 08 03 A6 */	mtlr r0
/* 801E4480  38 21 00 30 */	addi r1, r1, 0x30
/* 801E4484  4E 80 00 20 */	blr 
