lbl_80B39334:
/* 80B39334  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B39338  7C 08 02 A6 */	mflr r0
/* 80B3933C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B39340  39 61 00 30 */	addi r11, r1, 0x30
/* 80B39344  4B 82 8E 99 */	bl _savegpr_29
/* 80B39348  7C 7E 1B 78 */	mr r30, r3
/* 80B3934C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B39350  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B39354  83 FD 5D AC */	lwz r31, 0x5dac(r29)
/* 80B39358  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B3935C  2C 00 00 02 */	cmpwi r0, 2
/* 80B39360  41 82 00 68 */	beq lbl_80B393C8
/* 80B39364  40 80 01 D4 */	bge lbl_80B39538
/* 80B39368  2C 00 00 00 */	cmpwi r0, 0
/* 80B3936C  41 82 00 0C */	beq lbl_80B39378
/* 80B39370  48 00 01 C8 */	b lbl_80B39538
/* 80B39374  48 00 01 C4 */	b lbl_80B39538
lbl_80B39378:
/* 80B39378  38 80 00 0A */	li r4, 0xa
/* 80B3937C  38 A0 00 01 */	li r5, 1
/* 80B39380  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B39384  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B39388  7D 89 03 A6 */	mtctr r12
/* 80B3938C  4E 80 04 21 */	bctrl 
/* 80B39390  7F C3 F3 78 */	mr r3, r30
/* 80B39394  38 80 00 18 */	li r4, 0x18
/* 80B39398  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B3939C  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B393A0  38 A0 00 00 */	li r5, 0
/* 80B393A4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B393A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B393AC  7D 89 03 A6 */	mtctr r12
/* 80B393B0  4E 80 04 21 */	bctrl 
/* 80B393B4  38 00 00 00 */	li r0, 0
/* 80B393B8  90 1E 0E 74 */	stw r0, 0xe74(r30)
/* 80B393BC  38 00 00 02 */	li r0, 2
/* 80B393C0  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B393C4  48 00 01 74 */	b lbl_80B39538
lbl_80B393C8:
/* 80B393C8  80 7E 0B DC */	lwz r3, 0xbdc(r30)
/* 80B393CC  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80B393D0  3C 60 80 B4 */	lis r3, lit_4418@ha /* 0x80B41894@ha */
/* 80B393D4  C0 03 18 94 */	lfs f0, lit_4418@l(r3)  /* 0x80B41894@l */
/* 80B393D8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B393DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B393E0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B393E4  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80B393E8  4B 4D 39 7D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B393EC  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80B393F0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B393F4  4B 73 78 11 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B393F8  A8 1E 0E 94 */	lha r0, 0xe94(r30)
/* 80B393FC  7C 00 1A 14 */	add r0, r0, r3
/* 80B39400  7C 04 07 34 */	extsh r4, r0
/* 80B39404  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B39408  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3940C  4B 4D 30 29 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B39410  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B39414  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B39418  38 81 00 08 */	addi r4, r1, 8
/* 80B3941C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B39420  4B 80 D9 4D */	bl PSMTXMultVec
/* 80B39424  7F C3 F3 78 */	mr r3, r30
/* 80B39428  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B3942C  4B 4E 12 E5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B39430  7C 64 1B 78 */	mr r4, r3
/* 80B39434  38 7E 08 F2 */	addi r3, r30, 0x8f2
/* 80B39438  80 BE 0B D8 */	lwz r5, 0xbd8(r30)
/* 80B3943C  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B39440  38 C0 40 00 */	li r6, 0x4000
/* 80B39444  38 E0 00 40 */	li r7, 0x40
/* 80B39448  4B 73 70 F9 */	bl cLib_addCalcAngleS__FPsssss
/* 80B3944C  7F C3 F3 78 */	mr r3, r30
/* 80B39450  A8 9E 08 F2 */	lha r4, 0x8f2(r30)
/* 80B39454  4B 61 AD FD */	bl setAngle__8daNpcF_cFs
/* 80B39458  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B3945C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B39460  80 63 00 00 */	lwz r3, 0(r3)
/* 80B39464  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B39468  38 80 00 02 */	li r4, 2
/* 80B3946C  4B 77 89 89 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 80B39470  3C 60 80 B4 */	lis r3, lit_4418@ha /* 0x80B41894@ha */
/* 80B39474  C0 03 18 94 */	lfs f0, lit_4418@l(r3)  /* 0x80B41894@l */
/* 80B39478  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B3947C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B39480  7F E3 FB 78 */	mr r3, r31
/* 80B39484  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80B39488  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B3948C  7D 89 03 A6 */	mtctr r12
/* 80B39490  4E 80 04 21 */	bctrl 
/* 80B39494  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B39498  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B3949C  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 80B394A0  28 00 00 16 */	cmplwi r0, 0x16
/* 80B394A4  40 82 00 94 */	bne lbl_80B39538
/* 80B394A8  3C 60 80 B4 */	lis r3, lit_8584@ha /* 0x80B42BB0@ha */
/* 80B394AC  38 83 2B B0 */	addi r4, r3, lit_8584@l /* 0x80B42BB0@l */
/* 80B394B0  80 64 00 00 */	lwz r3, 0(r4)
/* 80B394B4  80 04 00 04 */	lwz r0, 4(r4)
/* 80B394B8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B394BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B394C0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B394C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B394C8  38 00 00 03 */	li r0, 3
/* 80B394CC  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B394D0  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B394D4  4B 82 8B 45 */	bl __ptmf_test
/* 80B394D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B394DC  41 82 00 18 */	beq lbl_80B394F4
/* 80B394E0  7F C3 F3 78 */	mr r3, r30
/* 80B394E4  38 80 00 00 */	li r4, 0
/* 80B394E8  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B394EC  4B 82 8B 99 */	bl __ptmf_scall
/* 80B394F0  60 00 00 00 */	nop 
lbl_80B394F4:
/* 80B394F4  38 00 00 00 */	li r0, 0
/* 80B394F8  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B394FC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B39500  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B39504  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B39508  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B3950C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B39510  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B39514  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B39518  4B 82 8B 01 */	bl __ptmf_test
/* 80B3951C  2C 03 00 00 */	cmpwi r3, 0
/* 80B39520  41 82 00 18 */	beq lbl_80B39538
/* 80B39524  7F C3 F3 78 */	mr r3, r30
/* 80B39528  38 80 00 00 */	li r4, 0
/* 80B3952C  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B39530  4B 82 8B 55 */	bl __ptmf_scall
/* 80B39534  60 00 00 00 */	nop 
lbl_80B39538:
/* 80B39538  38 60 00 01 */	li r3, 1
/* 80B3953C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B39540  4B 82 8C E9 */	bl _restgpr_29
/* 80B39544  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B39548  7C 08 03 A6 */	mtlr r0
/* 80B3954C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B39550  4E 80 00 20 */	blr 
