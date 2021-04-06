lbl_80B3606C:
/* 80B3606C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80B36070  7C 08 02 A6 */	mflr r0
/* 80B36074  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B36078  39 61 00 90 */	addi r11, r1, 0x90
/* 80B3607C  4B 82 C1 59 */	bl _savegpr_27
/* 80B36080  7C 7F 1B 78 */	mr r31, r3
/* 80B36084  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B36088  3B C3 16 DC */	addi r30, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B3608C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B36090  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B36094  83 BC 5D AC */	lwz r29, 0x5dac(r28)
/* 80B36098  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B3609C  30 00 FF FF */	addic r0, r0, -1
/* 80B360A0  7C 00 01 10 */	subfe r0, r0, r0
/* 80B360A4  38 60 00 00 */	li r3, 0
/* 80B360A8  7C 7B 00 78 */	andc r27, r3, r0
/* 80B360AC  A0 1F 0E 96 */	lhz r0, 0xe96(r31)
/* 80B360B0  2C 00 00 02 */	cmpwi r0, 2
/* 80B360B4  41 82 02 D0 */	beq lbl_80B36384
/* 80B360B8  40 80 00 10 */	bge lbl_80B360C8
/* 80B360BC  2C 00 00 00 */	cmpwi r0, 0
/* 80B360C0  41 82 00 14 */	beq lbl_80B360D4
/* 80B360C4  48 00 08 28 */	b lbl_80B368EC
lbl_80B360C8:
/* 80B360C8  2C 00 00 04 */	cmpwi r0, 4
/* 80B360CC  40 80 08 20 */	bge lbl_80B368EC
/* 80B360D0  48 00 07 A0 */	b lbl_80B36870
lbl_80B360D4:
/* 80B360D4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B360D8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B360DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B360E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B360E4  1C 1B 00 30 */	mulli r0, r27, 0x30
/* 80B360E8  7C 63 02 14 */	add r3, r3, r0
/* 80B360EC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B360F0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B360F4  4B 81 03 BD */	bl PSMTXCopy
/* 80B360F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B360FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B36100  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B36104  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B36108  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3610C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B36110  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B36114  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B36118  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 80B3611C  28 00 00 14 */	cmplwi r0, 0x14
/* 80B36120  40 82 01 18 */	bne lbl_80B36238
/* 80B36124  7F E3 FB 78 */	mr r3, r31
/* 80B36128  38 80 00 0D */	li r4, 0xd
/* 80B3612C  38 A0 00 01 */	li r5, 1
/* 80B36130  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B36134  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B36138  7D 89 03 A6 */	mtctr r12
/* 80B3613C  4E 80 04 21 */	bctrl 
/* 80B36140  7F E3 FB 78 */	mr r3, r31
/* 80B36144  38 80 00 1C */	li r4, 0x1c
/* 80B36148  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 80B3614C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B36150  38 A0 00 00 */	li r5, 0
/* 80B36154  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B36158  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3615C  7D 89 03 A6 */	mtctr r12
/* 80B36160  4E 80 04 21 */	bctrl 
/* 80B36164  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B36168  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3616C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80B36170  38 80 00 00 */	li r4, 0
/* 80B36174  90 81 00 08 */	stw r4, 8(r1)
/* 80B36178  38 00 FF FF */	li r0, -1
/* 80B3617C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B36180  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B36184  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B36188  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B3618C  38 80 00 00 */	li r4, 0
/* 80B36190  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008546@ha */
/* 80B36194  38 A5 85 46 */	addi r5, r5, 0x8546 /* 0x00008546@l */
/* 80B36198  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B3619C  38 E0 00 00 */	li r7, 0
/* 80B361A0  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B361A4  39 20 00 00 */	li r9, 0
/* 80B361A8  39 40 00 FF */	li r10, 0xff
/* 80B361AC  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B361B0  4B 51 68 E1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B361B4  90 7F 0D D8 */	stw r3, 0xdd8(r31)
/* 80B361B8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80B361BC  38 80 00 00 */	li r4, 0
/* 80B361C0  90 81 00 08 */	stw r4, 8(r1)
/* 80B361C4  38 00 FF FF */	li r0, -1
/* 80B361C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B361CC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B361D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B361D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B361D8  38 80 00 00 */	li r4, 0
/* 80B361DC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008547@ha */
/* 80B361E0  38 A5 85 47 */	addi r5, r5, 0x8547 /* 0x00008547@l */
/* 80B361E4  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B361E8  38 E0 00 00 */	li r7, 0
/* 80B361EC  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B361F0  39 20 00 00 */	li r9, 0
/* 80B361F4  39 40 00 FF */	li r10, 0xff
/* 80B361F8  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B361FC  4B 51 68 95 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B36200  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80B36204  80 7F 0D D8 */	lwz r3, 0xdd8(r31)
/* 80B36208  28 03 00 00 */	cmplwi r3, 0
/* 80B3620C  41 82 00 10 */	beq lbl_80B3621C
/* 80B36210  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B36214  60 00 00 40 */	ori r0, r0, 0x40
/* 80B36218  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B3621C:
/* 80B3621C  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B36220  28 03 00 00 */	cmplwi r3, 0
/* 80B36224  41 82 01 24 */	beq lbl_80B36348
/* 80B36228  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B3622C  60 00 00 40 */	ori r0, r0, 0x40
/* 80B36230  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B36234  48 00 01 14 */	b lbl_80B36348
lbl_80B36238:
/* 80B36238  7F E3 FB 78 */	mr r3, r31
/* 80B3623C  38 80 00 0C */	li r4, 0xc
/* 80B36240  38 A0 00 01 */	li r5, 1
/* 80B36244  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B36248  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B3624C  7D 89 03 A6 */	mtctr r12
/* 80B36250  4E 80 04 21 */	bctrl 
/* 80B36254  7F E3 FB 78 */	mr r3, r31
/* 80B36258  38 80 00 0D */	li r4, 0xd
/* 80B3625C  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 80B36260  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B36264  38 A0 00 00 */	li r5, 0
/* 80B36268  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B3626C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B36270  7D 89 03 A6 */	mtctr r12
/* 80B36274  4E 80 04 21 */	bctrl 
/* 80B36278  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3627C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B36280  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80B36284  38 80 00 00 */	li r4, 0
/* 80B36288  90 81 00 08 */	stw r4, 8(r1)
/* 80B3628C  38 00 FF FF */	li r0, -1
/* 80B36290  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B36294  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B36298  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B3629C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B362A0  38 80 00 00 */	li r4, 0
/* 80B362A4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008543@ha */
/* 80B362A8  38 A5 85 43 */	addi r5, r5, 0x8543 /* 0x00008543@l */
/* 80B362AC  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B362B0  38 E0 00 00 */	li r7, 0
/* 80B362B4  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B362B8  39 20 00 00 */	li r9, 0
/* 80B362BC  39 40 00 FF */	li r10, 0xff
/* 80B362C0  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B362C4  4B 51 67 CD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B362C8  90 7F 0D D8 */	stw r3, 0xdd8(r31)
/* 80B362CC  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80B362D0  38 80 00 00 */	li r4, 0
/* 80B362D4  90 81 00 08 */	stw r4, 8(r1)
/* 80B362D8  38 00 FF FF */	li r0, -1
/* 80B362DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B362E0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B362E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B362E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B362EC  38 80 00 00 */	li r4, 0
/* 80B362F0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008544@ha */
/* 80B362F4  38 A5 85 44 */	addi r5, r5, 0x8544 /* 0x00008544@l */
/* 80B362F8  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B362FC  38 E0 00 00 */	li r7, 0
/* 80B36300  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B36304  39 20 00 00 */	li r9, 0
/* 80B36308  39 40 00 FF */	li r10, 0xff
/* 80B3630C  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B36310  4B 51 67 81 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B36314  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80B36318  80 7F 0D D8 */	lwz r3, 0xdd8(r31)
/* 80B3631C  28 03 00 00 */	cmplwi r3, 0
/* 80B36320  41 82 00 10 */	beq lbl_80B36330
/* 80B36324  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B36328  60 00 00 40 */	ori r0, r0, 0x40
/* 80B3632C  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B36330:
/* 80B36330  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B36334  28 03 00 00 */	cmplwi r3, 0
/* 80B36338  41 82 00 10 */	beq lbl_80B36348
/* 80B3633C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B36340  60 00 00 40 */	ori r0, r0, 0x40
/* 80B36344  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B36348:
/* 80B36348  38 60 00 00 */	li r3, 0
/* 80B3634C  90 7F 0D E4 */	stw r3, 0xde4(r31)
/* 80B36350  90 7F 0D E0 */	stw r3, 0xde0(r31)
/* 80B36354  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B36358  28 00 00 00 */	cmplwi r0, 0
/* 80B3635C  41 82 00 1C */	beq lbl_80B36378
/* 80B36360  A8 1F 0E 90 */	lha r0, 0xe90(r31)
/* 80B36364  2C 00 00 00 */	cmpwi r0, 0
/* 80B36368  41 82 00 08 */	beq lbl_80B36370
/* 80B3636C  B0 7F 0E 90 */	sth r3, 0xe90(r31)
lbl_80B36370:
/* 80B36370  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80B36374  4B 61 A3 6D */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80B36378:
/* 80B36378  38 00 00 02 */	li r0, 2
/* 80B3637C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B36380  48 00 05 6C */	b lbl_80B368EC
lbl_80B36384:
/* 80B36384  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80B36388  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80B3638C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B36390  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B36394  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B36398  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80B3639C  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 80B363A0  4B 4D 69 C5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B363A4  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 80B363A8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B363AC  4B 73 A8 59 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B363B0  A8 1F 0E 94 */	lha r0, 0xe94(r31)
/* 80B363B4  7C 00 1A 14 */	add r0, r0, r3
/* 80B363B8  7C 04 07 34 */	extsh r4, r0
/* 80B363BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B363C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B363C4  4B 4D 60 71 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B363C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B363CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B363D0  38 81 00 20 */	addi r4, r1, 0x20
/* 80B363D4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B363D8  4B 81 09 95 */	bl PSMTXMultVec
/* 80B363DC  7F E3 FB 78 */	mr r3, r31
/* 80B363E0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B363E4  4B 4E 43 2D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B363E8  7C 64 1B 78 */	mr r4, r3
/* 80B363EC  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 80B363F0  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 80B363F4  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B363F8  38 C0 40 00 */	li r6, 0x4000
/* 80B363FC  38 E0 00 40 */	li r7, 0x40
/* 80B36400  4B 73 A1 41 */	bl cLib_addCalcAngleS__FPsssss
/* 80B36404  7F E3 FB 78 */	mr r3, r31
/* 80B36408  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B3640C  4B 61 DE 45 */	bl setAngle__8daNpcF_cFs
/* 80B36410  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B36414  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B36418  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B3641C  7F A3 EB 78 */	mr r3, r29
/* 80B36420  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B36424  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B36428  7D 89 03 A6 */	mtctr r12
/* 80B3642C  4E 80 04 21 */	bctrl 
/* 80B36430  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B36434  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B36438  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B3643C  4B 4D AD B1 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80B36440  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80B36444  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B36448  40 82 00 18 */	bne lbl_80B36460
/* 80B3644C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B36450  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B36454  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 80B36458  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3645C  41 82 00 20 */	beq lbl_80B3647C
lbl_80B36460:
/* 80B36460  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80B36464  40 82 00 EC */	bne lbl_80B36550
/* 80B36468  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B3646C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B36470  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80B36474  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B36478  40 82 00 D8 */	bne lbl_80B36550
lbl_80B3647C:
/* 80B3647C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B36480  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B36484  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80B36488  38 80 00 00 */	li r4, 0
/* 80B3648C  90 81 00 08 */	stw r4, 8(r1)
/* 80B36490  38 00 FF FF */	li r0, -1
/* 80B36494  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B36498  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B3649C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B364A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B364A4  38 80 00 00 */	li r4, 0
/* 80B364A8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008539@ha */
/* 80B364AC  38 A5 85 39 */	addi r5, r5, 0x8539 /* 0x00008539@l */
/* 80B364B0  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B364B4  38 E0 00 00 */	li r7, 0
/* 80B364B8  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B364BC  39 20 00 00 */	li r9, 0
/* 80B364C0  39 40 00 FF */	li r10, 0xff
/* 80B364C4  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B364C8  4B 51 65 C9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B364CC  90 7F 0D E0 */	stw r3, 0xde0(r31)
/* 80B364D0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80B364D4  38 80 00 00 */	li r4, 0
/* 80B364D8  90 81 00 08 */	stw r4, 8(r1)
/* 80B364DC  38 00 FF FF */	li r0, -1
/* 80B364E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B364E4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B364E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B364EC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B364F0  38 80 00 00 */	li r4, 0
/* 80B364F4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000853A@ha */
/* 80B364F8  38 A5 85 3A */	addi r5, r5, 0x853A /* 0x0000853A@l */
/* 80B364FC  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B36500  38 E0 00 00 */	li r7, 0
/* 80B36504  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B36508  39 20 00 00 */	li r9, 0
/* 80B3650C  39 40 00 FF */	li r10, 0xff
/* 80B36510  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B36514  4B 51 65 7D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B36518  90 7F 0D E4 */	stw r3, 0xde4(r31)
/* 80B3651C  80 7F 0D E0 */	lwz r3, 0xde0(r31)
/* 80B36520  28 03 00 00 */	cmplwi r3, 0
/* 80B36524  41 82 00 10 */	beq lbl_80B36534
/* 80B36528  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B3652C  60 00 00 40 */	ori r0, r0, 0x40
/* 80B36530  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B36534:
/* 80B36534  80 7F 0D E4 */	lwz r3, 0xde4(r31)
/* 80B36538  28 03 00 00 */	cmplwi r3, 0
/* 80B3653C  41 82 00 5C */	beq lbl_80B36598
/* 80B36540  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B36544  60 00 00 40 */	ori r0, r0, 0x40
/* 80B36548  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B3654C  48 00 00 4C */	b lbl_80B36598
lbl_80B36550:
/* 80B36550  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B36554  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B36558  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 80B3655C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B36560  40 82 00 38 */	bne lbl_80B36598
/* 80B36564  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B36568  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80B3656C  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 80B36570  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B36574  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80B36578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3657C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B36580  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B36584  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B36588  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80B3658C  38 A0 00 0F */	li r5, 0xf
/* 80B36590  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80B36594  4B 53 94 91 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80B36598:
/* 80B36598  80 BF 0D D8 */	lwz r5, 0xdd8(r31)
/* 80B3659C  28 05 00 00 */	cmplwi r5, 0
/* 80B365A0  41 82 00 28 */	beq lbl_80B365C8
/* 80B365A4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B365A8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B365AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B365B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B365B4  1C 1B 00 30 */	mulli r0, r27, 0x30
/* 80B365B8  7C 63 02 14 */	add r3, r3, r0
/* 80B365BC  38 85 00 68 */	addi r4, r5, 0x68
/* 80B365C0  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80B365C4  4B 74 A2 1D */	bl func_802807E0
lbl_80B365C8:
/* 80B365C8  80 BF 0D DC */	lwz r5, 0xddc(r31)
/* 80B365CC  28 05 00 00 */	cmplwi r5, 0
/* 80B365D0  41 82 00 28 */	beq lbl_80B365F8
/* 80B365D4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B365D8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B365DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B365E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B365E4  1C 1B 00 30 */	mulli r0, r27, 0x30
/* 80B365E8  7C 63 02 14 */	add r3, r3, r0
/* 80B365EC  38 85 00 68 */	addi r4, r5, 0x68
/* 80B365F0  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80B365F4  4B 74 A1 ED */	bl func_802807E0
lbl_80B365F8:
/* 80B365F8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B365FC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B36600  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B36604  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B36608  1F 9B 00 30 */	mulli r28, r27, 0x30
/* 80B3660C  7C 60 E2 14 */	add r3, r0, r28
/* 80B36610  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B36614  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B36618  4B 80 FE 99 */	bl PSMTXCopy
/* 80B3661C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B36620  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B36624  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80B36628  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B3662C  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80B36630  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B36634  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80B36638  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B3663C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B36640  80 63 00 04 */	lwz r3, 4(r3)
/* 80B36644  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B36648  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B3664C  7C 60 E2 14 */	add r3, r0, r28
/* 80B36650  7F 64 DB 78 */	mr r4, r27
/* 80B36654  4B 80 FE 5D */	bl PSMTXCopy
/* 80B36658  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80B3665C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B36660  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80B36664  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B36668  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80B3666C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B36670  38 61 00 68 */	addi r3, r1, 0x68
/* 80B36674  4B 4D 66 F1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B36678  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3667C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B36680  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B36684  4B 4D 5D B1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B36688  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3668C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B36690  C0 1E 05 A0 */	lfs f0, 0x5a0(r30)
/* 80B36694  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B36698  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80B3669C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B366A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B366A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B366A8  38 81 00 68 */	addi r4, r1, 0x68
/* 80B366AC  7C 85 23 78 */	mr r5, r4
/* 80B366B0  4B 81 06 BD */	bl PSMTXMultVec
/* 80B366B4  80 7F 0D E0 */	lwz r3, 0xde0(r31)
/* 80B366B8  28 03 00 00 */	cmplwi r3, 0
/* 80B366BC  41 82 00 28 */	beq lbl_80B366E4
/* 80B366C0  E0 01 00 68 */	psq_l f0, 104(r1), 0, 0 /* qr0 */
/* 80B366C4  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80B366C8  F0 01 00 50 */	psq_st f0, 80(r1), 0, 0 /* qr0 */
/* 80B366CC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80B366D0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B366D4  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80B366D8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B366DC  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 80B366E0  D0 23 00 AC */	stfs f1, 0xac(r3)
lbl_80B366E4:
/* 80B366E4  80 DF 0D E4 */	lwz r6, 0xde4(r31)
/* 80B366E8  28 06 00 00 */	cmplwi r6, 0
/* 80B366EC  41 82 00 40 */	beq lbl_80B3672C
/* 80B366F0  A8 7F 08 F0 */	lha r3, 0x8f0(r31)
/* 80B366F4  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B366F8  A8 BF 08 F4 */	lha r5, 0x8f4(r31)
/* 80B366FC  E0 01 00 68 */	psq_l f0, 104(r1), 0, 0 /* qr0 */
/* 80B36700  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80B36704  F0 01 00 44 */	psq_st f0, 68(r1), 0, 0 /* qr0 */
/* 80B36708  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80B3670C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B36710  D0 06 00 A4 */	stfs f0, 0xa4(r6)
/* 80B36714  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B36718  D0 06 00 A8 */	stfs f0, 0xa8(r6)
/* 80B3671C  D0 26 00 AC */	stfs f1, 0xac(r6)
/* 80B36720  80 DF 0D E4 */	lwz r6, 0xde4(r31)
/* 80B36724  38 C6 00 68 */	addi r6, r6, 0x68
/* 80B36728  4B 74 A0 0D */	bl JPAGetXYZRotateMtx__FsssPA4_f
lbl_80B3672C:
/* 80B3672C  7F E3 FB 78 */	mr r3, r31
/* 80B36730  4B FF D2 BD */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B36734  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B36738  41 82 00 98 */	beq lbl_80B367D0
/* 80B3673C  3C 60 80 B4 */	lis r3, lit_7272@ha /* 0x80B42A18@ha */
/* 80B36740  38 83 2A 18 */	addi r4, r3, lit_7272@l /* 0x80B42A18@l */
/* 80B36744  80 64 00 00 */	lwz r3, 0(r4)
/* 80B36748  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3674C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B36750  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B36754  80 04 00 08 */	lwz r0, 8(r4)
/* 80B36758  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B3675C  38 00 00 03 */	li r0, 3
/* 80B36760  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B36764  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B36768  4B 82 B8 B1 */	bl __ptmf_test
/* 80B3676C  2C 03 00 00 */	cmpwi r3, 0
/* 80B36770  41 82 00 18 */	beq lbl_80B36788
/* 80B36774  7F E3 FB 78 */	mr r3, r31
/* 80B36778  38 80 00 00 */	li r4, 0
/* 80B3677C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B36780  4B 82 B9 05 */	bl __ptmf_scall
/* 80B36784  60 00 00 00 */	nop 
lbl_80B36788:
/* 80B36788  38 00 00 00 */	li r0, 0
/* 80B3678C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B36790  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80B36794  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B36798  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B3679C  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B367A0  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80B367A4  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B367A8  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B367AC  4B 82 B8 6D */	bl __ptmf_test
/* 80B367B0  2C 03 00 00 */	cmpwi r3, 0
/* 80B367B4  41 82 01 38 */	beq lbl_80B368EC
/* 80B367B8  7F E3 FB 78 */	mr r3, r31
/* 80B367BC  38 80 00 00 */	li r4, 0
/* 80B367C0  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B367C4  4B 82 B8 C1 */	bl __ptmf_scall
/* 80B367C8  60 00 00 00 */	nop 
/* 80B367CC  48 00 01 20 */	b lbl_80B368EC
lbl_80B367D0:
/* 80B367D0  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 80B367D4  28 00 00 08 */	cmplwi r0, 8
/* 80B367D8  40 82 01 14 */	bne lbl_80B368EC
/* 80B367DC  3C 60 80 B4 */	lis r3, lit_7277@ha /* 0x80B42A24@ha */
/* 80B367E0  38 83 2A 24 */	addi r4, r3, lit_7277@l /* 0x80B42A24@l */
/* 80B367E4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B367E8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B367EC  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B367F0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B367F4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B367F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B367FC  38 00 00 03 */	li r0, 3
/* 80B36800  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B36804  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B36808  4B 82 B8 11 */	bl __ptmf_test
/* 80B3680C  2C 03 00 00 */	cmpwi r3, 0
/* 80B36810  41 82 00 18 */	beq lbl_80B36828
/* 80B36814  7F E3 FB 78 */	mr r3, r31
/* 80B36818  38 80 00 00 */	li r4, 0
/* 80B3681C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B36820  4B 82 B8 65 */	bl __ptmf_scall
/* 80B36824  60 00 00 00 */	nop 
lbl_80B36828:
/* 80B36828  38 00 00 00 */	li r0, 0
/* 80B3682C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B36830  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B36834  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B36838  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B3683C  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B36840  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B36844  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B36848  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3684C  4B 82 B7 CD */	bl __ptmf_test
/* 80B36850  2C 03 00 00 */	cmpwi r3, 0
/* 80B36854  41 82 00 98 */	beq lbl_80B368EC
/* 80B36858  7F E3 FB 78 */	mr r3, r31
/* 80B3685C  38 80 00 00 */	li r4, 0
/* 80B36860  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B36864  4B 82 B8 21 */	bl __ptmf_scall
/* 80B36868  60 00 00 00 */	nop 
/* 80B3686C  48 00 00 80 */	b lbl_80B368EC
lbl_80B36870:
/* 80B36870  80 9F 0D D8 */	lwz r4, 0xdd8(r31)
/* 80B36874  28 04 00 00 */	cmplwi r4, 0
/* 80B36878  41 82 00 14 */	beq lbl_80B3688C
/* 80B3687C  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80B36880  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B36884  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80B36888  90 7F 0D D8 */	stw r3, 0xdd8(r31)
lbl_80B3688C:
/* 80B3688C  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B36890  28 03 00 00 */	cmplwi r3, 0
/* 80B36894  41 82 00 18 */	beq lbl_80B368AC
/* 80B36898  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B3689C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B368A0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B368A4  38 00 00 00 */	li r0, 0
/* 80B368A8  90 1F 0D DC */	stw r0, 0xddc(r31)
lbl_80B368AC:
/* 80B368AC  80 7F 0D E0 */	lwz r3, 0xde0(r31)
/* 80B368B0  28 03 00 00 */	cmplwi r3, 0
/* 80B368B4  41 82 00 18 */	beq lbl_80B368CC
/* 80B368B8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B368BC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B368C0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B368C4  38 00 00 00 */	li r0, 0
/* 80B368C8  90 1F 0D E0 */	stw r0, 0xde0(r31)
lbl_80B368CC:
/* 80B368CC  80 7F 0D E4 */	lwz r3, 0xde4(r31)
/* 80B368D0  28 03 00 00 */	cmplwi r3, 0
/* 80B368D4  41 82 00 18 */	beq lbl_80B368EC
/* 80B368D8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B368DC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B368E0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B368E4  38 00 00 00 */	li r0, 0
/* 80B368E8  90 1F 0D E4 */	stw r0, 0xde4(r31)
lbl_80B368EC:
/* 80B368EC  38 60 00 01 */	li r3, 1
/* 80B368F0  39 61 00 90 */	addi r11, r1, 0x90
/* 80B368F4  4B 82 B9 2D */	bl _restgpr_27
/* 80B368F8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B368FC  7C 08 03 A6 */	mtlr r0
/* 80B36900  38 21 00 90 */	addi r1, r1, 0x90
/* 80B36904  4E 80 00 20 */	blr 
