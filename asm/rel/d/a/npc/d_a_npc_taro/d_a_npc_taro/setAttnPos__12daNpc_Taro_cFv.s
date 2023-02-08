lbl_80567F78:
/* 80567F78  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80567F7C  7C 08 02 A6 */	mflr r0
/* 80567F80  90 01 00 74 */	stw r0, 0x74(r1)
/* 80567F84  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80567F88  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80567F8C  39 61 00 60 */	addi r11, r1, 0x60
/* 80567F90  4B DF A2 41 */	bl _savegpr_26
/* 80567F94  7C 7D 1B 78 */	mr r29, r3
/* 80567F98  3C 60 80 57 */	lis r3, lit_1109@ha /* 0x80573560@ha */
/* 80567F9C  3B C3 35 60 */	addi r30, r3, lit_1109@l /* 0x80573560@l */
/* 80567FA0  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha /* 0x805716C8@ha */
/* 80567FA4  3B E3 16 C8 */	addi r31, r3, m__18daNpc_Taro_Param_c@l /* 0x805716C8@l */
/* 80567FA8  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80567FAC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80567FB0  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80567FB4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80567FB8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80567FBC  88 1D 11 A1 */	lbz r0, 0x11a1(r29)
/* 80567FC0  28 00 00 00 */	cmplwi r0, 0
/* 80567FC4  41 82 00 1C */	beq lbl_80567FE0
/* 80567FC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80567FCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80567FD0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80567FD4  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80567FD8  60 00 02 00 */	ori r0, r0, 0x200
/* 80567FDC  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_80567FE0:
/* 80567FE0  3B 40 00 00 */	li r26, 0
/* 80567FE4  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80567FE8  2C 00 00 21 */	cmpwi r0, 0x21
/* 80567FEC  40 82 00 18 */	bne lbl_80568004
/* 80567FF0  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80567FF4  4B BD DA 31 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80567FF8  2C 03 00 00 */	cmpwi r3, 0
/* 80567FFC  40 82 00 08 */	bne lbl_80568004
/* 80568000  3B 40 00 01 */	li r26, 1
lbl_80568004:
/* 80568004  38 7D 0D 08 */	addi r3, r29, 0xd08
/* 80568008  7F 44 D3 78 */	mr r4, r26
/* 8056800C  4B BD FE 31 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80568010  C0 5F 01 10 */	lfs f2, 0x110(r31)
/* 80568014  A8 7D 0D 80 */	lha r3, 0xd80(r29)
/* 80568018  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8056801C  7C 03 00 50 */	subf r0, r3, r0
/* 80568020  7C 00 07 34 */	extsh r0, r0
/* 80568024  C8 3F 01 18 */	lfd f1, 0x118(r31)
/* 80568028  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8056802C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80568030  3C 00 43 30 */	lis r0, 0x4330
/* 80568034  90 01 00 40 */	stw r0, 0x40(r1)
/* 80568038  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8056803C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80568040  EF E2 00 32 */	fmuls f31, f2, f0
/* 80568044  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80568048  83 43 00 04 */	lwz r26, 4(r3)
/* 8056804C  7F A3 EB 78 */	mr r3, r29
/* 80568050  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80568054  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80568058  7D 89 03 A6 */	mtctr r12
/* 8056805C  4E 80 04 21 */	bctrl 
/* 80568060  7C 7B 1B 78 */	mr r27, r3
/* 80568064  7F A3 EB 78 */	mr r3, r29
/* 80568068  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 8056806C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80568070  7D 89 03 A6 */	mtctr r12
/* 80568074  4E 80 04 21 */	bctrl 
/* 80568078  7C 7C 1B 78 */	mr r28, r3
/* 8056807C  7F A3 EB 78 */	mr r3, r29
/* 80568080  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80568084  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80568088  7D 89 03 A6 */	mtctr r12
/* 8056808C  4E 80 04 21 */	bctrl 
/* 80568090  7C 67 1B 78 */	mr r7, r3
/* 80568094  39 5F 00 00 */	addi r10, r31, 0
/* 80568098  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 8056809C  D0 01 00 08 */	stfs f0, 8(r1)
/* 805680A0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805680A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805680A8  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 805680AC  7F A4 EB 78 */	mr r4, r29
/* 805680B0  7F 45 D3 78 */	mr r5, r26
/* 805680B4  38 C1 00 34 */	addi r6, r1, 0x34
/* 805680B8  7F 88 E3 78 */	mr r8, r28
/* 805680BC  7F 69 DB 78 */	mr r9, r27
/* 805680C0  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 805680C4  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 805680C8  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 805680CC  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 805680D0  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 805680D4  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 805680D8  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 805680DC  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 805680E0  39 40 00 00 */	li r10, 0
/* 805680E4  4B BD EB F5 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 805680E8  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 805680EC  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 805680F0  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 805680F4  FC 60 F8 90 */	fmr f3, f31
/* 805680F8  4B BD FB 41 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 805680FC  7F A3 EB 78 */	mr r3, r29
/* 80568100  4B BE 10 91 */	bl setMtx__8daNpcT_cFv
/* 80568104  7F A3 EB 78 */	mr r3, r29
/* 80568108  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 8056810C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80568110  7D 89 03 A6 */	mtctr r12
/* 80568114  4E 80 04 21 */	bctrl 
/* 80568118  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 8056811C  80 84 00 04 */	lwz r4, 4(r4)
/* 80568120  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80568124  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80568128  1C 03 00 30 */	mulli r0, r3, 0x30
/* 8056812C  7C 64 02 14 */	add r3, r4, r0
/* 80568130  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80568134  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80568138  4B DD E3 79 */	bl PSMTXCopy
/* 8056813C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80568140  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80568144  38 81 00 34 */	addi r4, r1, 0x34
/* 80568148  38 BD 05 38 */	addi r5, r29, 0x538
/* 8056814C  4B DD EC 21 */	bl PSMTXMultVec
/* 80568150  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80568154  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80568158  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8056815C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80568160  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80568164  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80568168  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8056816C  38 81 00 28 */	addi r4, r1, 0x28
/* 80568170  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 80568174  38 A0 00 00 */	li r5, 0
/* 80568178  48 00 8D FD */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 8056817C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80568180  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80568184  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80568188  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8056818C  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80568190  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80568194  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80568198  38 81 00 1C */	addi r4, r1, 0x1c
/* 8056819C  A8 BD 0D 7A */	lha r5, 0xd7a(r29)
/* 805681A0  38 C0 00 01 */	li r6, 1
/* 805681A4  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 805681A8  38 E0 00 00 */	li r7, 0
/* 805681AC  48 00 8C AD */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 805681B0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805681B4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805681B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805681BC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805681C0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805681C4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805681C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805681CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805681D0  A8 9D 0D 7A */	lha r4, 0xd7a(r29)
/* 805681D4  4B AA 42 09 */	bl mDoMtx_YrotS__FPA4_fs
/* 805681D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805681DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805681E0  38 81 00 34 */	addi r4, r1, 0x34
/* 805681E4  7C 85 23 78 */	mr r5, r4
/* 805681E8  4B DD EB 85 */	bl PSMTXMultVec
/* 805681EC  38 61 00 10 */	addi r3, r1, 0x10
/* 805681F0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805681F4  38 A1 00 34 */	addi r5, r1, 0x34
/* 805681F8  4B CF E8 ED */	bl __pl__4cXyzCFRC3Vec
/* 805681FC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80568200  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80568204  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80568208  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 8056820C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80568210  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80568214  3B 80 00 00 */	li r28, 0
/* 80568218  88 1D 0E 25 */	lbz r0, 0xe25(r29)
/* 8056821C  28 00 00 00 */	cmplwi r0, 0
/* 80568220  40 82 00 1C */	bne lbl_8056823C
/* 80568224  4B AC 78 31 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80568228  2C 03 00 00 */	cmpwi r3, 0
/* 8056822C  40 82 00 14 */	bne lbl_80568240
/* 80568230  88 1D 0A 89 */	lbz r0, 0xa89(r29)
/* 80568234  28 00 00 00 */	cmplwi r0, 0
/* 80568238  41 82 00 08 */	beq lbl_80568240
lbl_8056823C:
/* 8056823C  3B 80 00 01 */	li r28, 1
lbl_80568240:
/* 80568240  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80568244  40 82 00 0C */	bne lbl_80568250
/* 80568248  7F A3 EB 78 */	mr r3, r29
/* 8056824C  48 00 06 B1 */	bl setSwingVoice__12daNpc_Taro_cFv
lbl_80568250:
/* 80568250  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 80568254  7C 00 07 75 */	extsb. r0, r0
/* 80568258  40 82 00 30 */	bne lbl_80568288
/* 8056825C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80568260  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80568264  38 7E 00 60 */	addi r3, r30, 0x60
/* 80568268  D0 03 00 04 */	stfs f0, 4(r3)
/* 8056826C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80568270  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x805705F8@ha */
/* 80568274  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805705F8@l */
/* 80568278  38 BE 00 50 */	addi r5, r30, 0x50
/* 8056827C  4B FF DB 9D */	bl __register_global_object
/* 80568280  38 00 00 01 */	li r0, 1
/* 80568284  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_80568288:
/* 80568288  7F A3 EB 78 */	mr r3, r29
/* 8056828C  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80568290  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80568294  7D 89 03 A6 */	mtctr r12
/* 80568298  4E 80 04 21 */	bctrl 
/* 8056829C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 805682A0  2C 00 00 25 */	cmpwi r0, 0x25
/* 805682A4  40 82 00 24 */	bne lbl_805682C8
/* 805682A8  7F A3 EB 78 */	mr r3, r29
/* 805682AC  38 9E 00 60 */	addi r4, r30, 0x60
/* 805682B0  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 805682B4  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 805682B8  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 805682BC  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 805682C0  7D 89 03 A6 */	mtctr r12
/* 805682C4  4E 80 04 21 */	bctrl 
lbl_805682C8:
/* 805682C8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805682CC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805682D0  39 61 00 60 */	addi r11, r1, 0x60
/* 805682D4  4B DF 9F 49 */	bl _restgpr_26
/* 805682D8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805682DC  7C 08 03 A6 */	mtlr r0
/* 805682E0  38 21 00 70 */	addi r1, r1, 0x70
/* 805682E4  4E 80 00 20 */	blr 
