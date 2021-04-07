lbl_80A2F24C:
/* 80A2F24C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2F250  7C 08 02 A6 */	mflr r0
/* 80A2F254  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2F258  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2F25C  4B 93 2F 7D */	bl _savegpr_28
/* 80A2F260  7C 7D 1B 78 */	mr r29, r3
/* 80A2F264  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A2F268  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A2F26C  A0 1D 0E 2A */	lhz r0, 0xe2a(r29)
/* 80A2F270  2C 00 00 02 */	cmpwi r0, 2
/* 80A2F274  41 82 00 AC */	beq lbl_80A2F320
/* 80A2F278  40 80 03 6C */	bge lbl_80A2F5E4
/* 80A2F27C  2C 00 00 00 */	cmpwi r0, 0
/* 80A2F280  40 80 00 0C */	bge lbl_80A2F28C
/* 80A2F284  48 00 03 60 */	b lbl_80A2F5E4
/* 80A2F288  48 00 03 5C */	b lbl_80A2F5E4
lbl_80A2F28C:
/* 80A2F28C  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2F290  2C 00 00 01 */	cmpwi r0, 1
/* 80A2F294  41 82 00 24 */	beq lbl_80A2F2B8
/* 80A2F298  83 FD 0B 90 */	lwz r31, 0xb90(r29)
/* 80A2F29C  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2F2A0  4B 71 65 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F2A4  93 FD 0B 90 */	stw r31, 0xb90(r29)
/* 80A2F2A8  38 00 00 01 */	li r0, 1
/* 80A2F2AC  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2F2B0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F2B4  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2F2B8:
/* 80A2F2B8  83 FD 0B B4 */	lwz r31, 0xbb4(r29)
/* 80A2F2BC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2F2C0  4B 71 65 D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F2C4  93 FD 0B B4 */	stw r31, 0xbb4(r29)
/* 80A2F2C8  38 00 00 0B */	li r0, 0xb
/* 80A2F2CC  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2F2D0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F2D4  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A2F2D8  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A2F2DC  2C 00 00 00 */	cmpwi r0, 0
/* 80A2F2E0  41 82 00 24 */	beq lbl_80A2F304
/* 80A2F2E4  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A2F2E8  4B 71 64 15 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A2F2EC  38 00 00 00 */	li r0, 0
/* 80A2F2F0  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A2F2F4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A2F2F8  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A2F2FC  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2F300  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A2F304:
/* 80A2F304  38 00 00 00 */	li r0, 0
/* 80A2F308  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2F30C  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2F310  A8 03 00 90 */	lha r0, 0x90(r3)
/* 80A2F314  90 1D 0D EC */	stw r0, 0xdec(r29)
/* 80A2F318  38 00 00 02 */	li r0, 2
/* 80A2F31C  B0 1D 0E 2A */	sth r0, 0xe2a(r29)
lbl_80A2F320:
/* 80A2F320  7F A3 EB 78 */	mr r3, r29
/* 80A2F324  48 00 87 E5 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A2F328  38 7D 08 C4 */	addi r3, r29, 0x8c4
/* 80A2F32C  4B 65 45 05 */	bl Move__10dCcD_GSttsFv
/* 80A2F330  38 7D 11 DC */	addi r3, r29, 0x11dc
/* 80A2F334  4B 65 51 2D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80A2F338  28 03 00 00 */	cmplwi r3, 0
/* 80A2F33C  41 82 02 34 */	beq lbl_80A2F570
/* 80A2F340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2F344  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2F348  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A2F34C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80A2F350  28 00 00 29 */	cmplwi r0, 0x29
/* 80A2F354  41 82 02 1C */	beq lbl_80A2F570
/* 80A2F358  88 1D 15 AC */	lbz r0, 0x15ac(r29)
/* 80A2F35C  28 00 00 03 */	cmplwi r0, 3
/* 80A2F360  40 82 00 10 */	bne lbl_80A2F370
/* 80A2F364  38 00 00 10 */	li r0, 0x10
/* 80A2F368  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A2F36C  48 00 00 0C */	b lbl_80A2F378
lbl_80A2F370:
/* 80A2F370  38 00 00 11 */	li r0, 0x11
/* 80A2F374  B0 1D 0E 36 */	sth r0, 0xe36(r29)
lbl_80A2F378:
/* 80A2F378  34 9D 12 B0 */	addic. r4, r29, 0x12b0
/* 80A2F37C  41 82 00 10 */	beq lbl_80A2F38C
/* 80A2F380  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A2F384  4B 84 18 81 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A2F388  48 00 00 10 */	b lbl_80A2F398
lbl_80A2F38C:
/* 80A2F38C  7F A3 EB 78 */	mr r3, r29
/* 80A2F390  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2F394  4B 5E B3 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
lbl_80A2F398:
/* 80A2F398  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A2F39C  7C 00 18 50 */	subf r0, r0, r3
/* 80A2F3A0  7C 00 07 35 */	extsh. r0, r0
/* 80A2F3A4  40 80 00 08 */	bge lbl_80A2F3AC
/* 80A2F3A8  7C 00 00 D0 */	neg r0, r0
lbl_80A2F3AC:
/* 80A2F3AC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80A2F3B0  40 80 00 B0 */	bge lbl_80A2F460
/* 80A2F3B4  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2F3B8  2C 00 00 01 */	cmpwi r0, 1
/* 80A2F3BC  41 82 00 24 */	beq lbl_80A2F3E0
/* 80A2F3C0  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2F3C4  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2F3C8  4B 71 64 D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F3CC  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2F3D0  38 00 00 01 */	li r0, 1
/* 80A2F3D4  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2F3D8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F3DC  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2F3E0:
/* 80A2F3E0  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2F3E4  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A2F3E8  41 82 00 24 */	beq lbl_80A2F40C
/* 80A2F3EC  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2F3F0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2F3F4  4B 71 64 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F3F8  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2F3FC  38 00 00 12 */	li r0, 0x12
/* 80A2F400  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2F404  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F408  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2F40C:
/* 80A2F40C  7F A3 EB 78 */	mr r3, r29
/* 80A2F410  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2F414  4B 5E B2 FD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2F418  7C 64 1B 78 */	mr r4, r3
/* 80A2F41C  7F A3 EB 78 */	mr r3, r29
/* 80A2F420  48 00 B6 D1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A2F424  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2F428  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A2F42C  FC 00 00 50 */	fneg f0, f0
/* 80A2F430  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2F434  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A2F438  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A2F43C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2F440  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2F444  38 81 00 0C */	addi r4, r1, 0xc
/* 80A2F448  38 A0 FF FF */	li r5, -1
/* 80A2F44C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2F450  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A2F454  7D 89 03 A6 */	mtctr r12
/* 80A2F458  4E 80 04 21 */	bctrl 
/* 80A2F45C  48 00 00 B4 */	b lbl_80A2F510
lbl_80A2F460:
/* 80A2F460  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2F464  2C 00 00 01 */	cmpwi r0, 1
/* 80A2F468  41 82 00 24 */	beq lbl_80A2F48C
/* 80A2F46C  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2F470  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2F474  4B 71 64 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F478  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2F47C  38 00 00 01 */	li r0, 1
/* 80A2F480  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2F484  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F488  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2F48C:
/* 80A2F48C  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2F490  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A2F494  41 82 00 24 */	beq lbl_80A2F4B8
/* 80A2F498  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2F49C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2F4A0  4B 71 63 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F4A4  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2F4A8  38 00 00 0E */	li r0, 0xe
/* 80A2F4AC  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2F4B0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F4B4  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2F4B8:
/* 80A2F4B8  7F A3 EB 78 */	mr r3, r29
/* 80A2F4BC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2F4C0  4B 5E B2 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2F4C4  7C 64 1B 78 */	mr r4, r3
/* 80A2F4C8  7F A3 EB 78 */	mr r3, r29
/* 80A2F4CC  3C 84 00 01 */	addis r4, r4, 1
/* 80A2F4D0  38 04 80 00 */	addi r0, r4, -32768
/* 80A2F4D4  7C 04 07 34 */	extsh r4, r0
/* 80A2F4D8  48 00 B6 19 */	bl setAngle__10daNpc_Kn_cFs
/* 80A2F4DC  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2F4E0  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A2F4E4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2F4E8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A2F4EC  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A2F4F0  90 01 00 08 */	stw r0, 8(r1)
/* 80A2F4F4  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2F4F8  38 81 00 08 */	addi r4, r1, 8
/* 80A2F4FC  38 A0 FF FF */	li r5, -1
/* 80A2F500  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2F504  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A2F508  7D 89 03 A6 */	mtctr r12
/* 80A2F50C  4E 80 04 21 */	bctrl 
lbl_80A2F510:
/* 80A2F510  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2F514  3C 80 00 04 */	lis r4, 4
/* 80A2F518  38 A0 00 1F */	li r5, 0x1f
/* 80A2F51C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2F520  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A2F524  7D 89 03 A6 */	mtctr r12
/* 80A2F528  4E 80 04 21 */	bctrl 
/* 80A2F52C  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A2F530  2C 00 00 00 */	cmpwi r0, 0
/* 80A2F534  41 82 00 24 */	beq lbl_80A2F558
/* 80A2F538  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A2F53C  4B 71 61 C1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A2F540  38 00 00 00 */	li r0, 0
/* 80A2F544  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A2F548  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A2F54C  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A2F550  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2F554  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A2F558:
/* 80A2F558  38 00 00 00 */	li r0, 0
/* 80A2F55C  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2F560  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2F564  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80A2F568  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A2F56C  48 00 00 78 */	b lbl_80A2F5E4
lbl_80A2F570:
/* 80A2F570  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80A2F574  48 00 C7 D5 */	bl func_80A3BD48
/* 80A2F578  2C 03 00 00 */	cmpwi r3, 0
/* 80A2F57C  40 82 00 68 */	bne lbl_80A2F5E4
/* 80A2F580  38 00 00 01 */	li r0, 1
/* 80A2F584  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A2F588  38 00 03 06 */	li r0, 0x306
/* 80A2F58C  90 1D 0A B0 */	stw r0, 0xab0(r29)
/* 80A2F590  38 00 00 09 */	li r0, 9
/* 80A2F594  98 1D 15 AE */	stb r0, 0x15ae(r29)
/* 80A2F598  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2F59C  2C 00 00 01 */	cmpwi r0, 1
/* 80A2F5A0  41 82 00 24 */	beq lbl_80A2F5C4
/* 80A2F5A4  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2F5A8  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2F5AC  4B 71 62 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F5B0  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2F5B4  38 00 00 01 */	li r0, 1
/* 80A2F5B8  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2F5BC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F5C0  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2F5C4:
/* 80A2F5C4  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2F5C8  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2F5CC  4B 71 62 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F5D0  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2F5D4  38 00 00 00 */	li r0, 0
/* 80A2F5D8  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2F5DC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F5E0  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2F5E4:
/* 80A2F5E4  38 60 00 01 */	li r3, 1
/* 80A2F5E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2F5EC  4B 93 2C 39 */	bl _restgpr_28
/* 80A2F5F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2F5F4  7C 08 03 A6 */	mtlr r0
/* 80A2F5F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2F5FC  4E 80 00 20 */	blr 
