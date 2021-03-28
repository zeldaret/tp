lbl_80A3F358:
/* 80A3F358  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3F35C  7C 08 02 A6 */	mflr r0
/* 80A3F360  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A3F364  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3F368  4B 92 2E 74 */	b _savegpr_29
/* 80A3F36C  7C 7E 1B 78 */	mr r30, r3
/* 80A3F370  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A3F374  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A3F378  A0 1E 0E 2A */	lhz r0, 0xe2a(r30)
/* 80A3F37C  2C 00 00 02 */	cmpwi r0, 2
/* 80A3F380  41 82 00 B0 */	beq lbl_80A3F430
/* 80A3F384  40 80 02 04 */	bge lbl_80A3F588
/* 80A3F388  2C 00 00 00 */	cmpwi r0, 0
/* 80A3F38C  40 80 00 0C */	bge lbl_80A3F398
/* 80A3F390  48 00 01 F8 */	b lbl_80A3F588
/* 80A3F394  48 00 01 F4 */	b lbl_80A3F588
lbl_80A3F398:
/* 80A3F398  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3F39C  2C 00 00 01 */	cmpwi r0, 1
/* 80A3F3A0  41 82 00 24 */	beq lbl_80A3F3C4
/* 80A3F3A4  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3F3A8  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3F3AC  4B 70 64 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F3B0  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3F3B4  38 00 00 01 */	li r0, 1
/* 80A3F3B8  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3F3BC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F3C0  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3F3C4:
/* 80A3F3C4  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3F3C8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3F3CC  4B 70 64 CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F3D0  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3F3D4  38 00 00 0B */	li r0, 0xb
/* 80A3F3D8  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3F3DC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F3E0  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A3F3E4  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A3F3E8  2C 00 00 01 */	cmpwi r0, 1
/* 80A3F3EC  41 82 00 28 */	beq lbl_80A3F414
/* 80A3F3F0  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A3F3F4  4B 70 63 08 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A3F3F8  38 00 00 00 */	li r0, 0
/* 80A3F3FC  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A3F400  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3F404  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A3F408  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A3F40C  38 00 00 01 */	li r0, 1
/* 80A3F410  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A3F414:
/* 80A3F414  38 00 00 00 */	li r0, 0
/* 80A3F418  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A3F41C  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A3F420  A8 03 00 90 */	lha r0, 0x90(r3)
/* 80A3F424  90 1E 0D EC */	stw r0, 0xdec(r30)
/* 80A3F428  38 00 00 02 */	li r0, 2
/* 80A3F42C  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
lbl_80A3F430:
/* 80A3F430  7F C3 F3 78 */	mr r3, r30
/* 80A3F434  4B FF 86 D5 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A3F438  38 7E 08 C4 */	addi r3, r30, 0x8c4
/* 80A3F43C  4B 64 43 F4 */	b Move__10dCcD_GSttsFv
/* 80A3F440  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A3F444  4B 64 50 1C */	b ChkTgHit__12dCcD_GObjInfFv
/* 80A3F448  28 03 00 00 */	cmplwi r3, 0
/* 80A3F44C  41 82 00 C8 */	beq lbl_80A3F514
/* 80A3F450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3F454  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80A3F458  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80A3F45C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80A3F460  28 00 00 29 */	cmplwi r0, 0x29
/* 80A3F464  41 82 00 B0 */	beq lbl_80A3F514
/* 80A3F468  88 1E 15 AC */	lbz r0, 0x15ac(r30)
/* 80A3F46C  28 00 00 01 */	cmplwi r0, 1
/* 80A3F470  40 82 00 10 */	bne lbl_80A3F480
/* 80A3F474  38 00 00 0A */	li r0, 0xa
/* 80A3F478  B0 1E 0E 36 */	sth r0, 0xe36(r30)
/* 80A3F47C  48 00 00 14 */	b lbl_80A3F490
lbl_80A3F480:
/* 80A3F480  28 00 00 02 */	cmplwi r0, 2
/* 80A3F484  40 82 00 0C */	bne lbl_80A3F490
/* 80A3F488  38 00 00 0C */	li r0, 0xc
/* 80A3F48C  B0 1E 0E 36 */	sth r0, 0xe36(r30)
lbl_80A3F490:
/* 80A3F490  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3F494  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A3F498  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3F49C  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A3F4A0  C0 03 00 98 */	lfs f0, 0x98(r3)
/* 80A3F4A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3F4A8  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80A3F4AC  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80A3F4B0  38 9E 05 50 */	addi r4, r30, 0x550
/* 80A3F4B4  4B 83 17 50 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A3F4B8  7C 64 1B 78 */	mr r4, r3
/* 80A3F4BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3F4C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3F4C4  4B 5C CF 18 */	b mDoMtx_YrotS__FPA4_fs
/* 80A3F4C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3F4CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3F4D0  38 81 00 08 */	addi r4, r1, 8
/* 80A3F4D4  38 BE 15 B0 */	addi r5, r30, 0x15b0
/* 80A3F4D8  4B 90 78 94 */	b PSMTXMultVec
/* 80A3F4DC  38 7E 15 B0 */	addi r3, r30, 0x15b0
/* 80A3F4E0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A3F4E4  7C 65 1B 78 */	mr r5, r3
/* 80A3F4E8  4B 90 7B A8 */	b PSVECAdd
/* 80A3F4EC  38 00 00 01 */	li r0, 1
/* 80A3F4F0  98 1E 15 BC */	stb r0, 0x15bc(r30)
/* 80A3F4F4  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A3F4F8  3C 80 00 04 */	lis r4, 4
/* 80A3F4FC  38 A0 00 1E */	li r5, 0x1e
/* 80A3F500  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80A3F504  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A3F508  7D 89 03 A6 */	mtctr r12
/* 80A3F50C  4E 80 04 21 */	bctrl 
/* 80A3F510  48 00 00 78 */	b lbl_80A3F588
lbl_80A3F514:
/* 80A3F514  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80A3F518  4B FF C8 31 */	bl func_80A3BD48
/* 80A3F51C  2C 03 00 00 */	cmpwi r3, 0
/* 80A3F520  40 82 00 68 */	bne lbl_80A3F588
/* 80A3F524  38 00 00 01 */	li r0, 1
/* 80A3F528  B0 1E 0E 36 */	sth r0, 0xe36(r30)
/* 80A3F52C  38 00 02 C1 */	li r0, 0x2c1
/* 80A3F530  90 1E 0A B0 */	stw r0, 0xab0(r30)
/* 80A3F534  38 00 00 05 */	li r0, 5
/* 80A3F538  98 1E 15 AE */	stb r0, 0x15ae(r30)
/* 80A3F53C  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3F540  2C 00 00 01 */	cmpwi r0, 1
/* 80A3F544  41 82 00 24 */	beq lbl_80A3F568
/* 80A3F548  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3F54C  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3F550  4B 70 63 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F554  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3F558  38 00 00 01 */	li r0, 1
/* 80A3F55C  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3F560  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F564  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3F568:
/* 80A3F568  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3F56C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3F570  4B 70 63 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F574  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3F578  38 00 00 00 */	li r0, 0
/* 80A3F57C  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3F580  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F584  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A3F588:
/* 80A3F588  38 60 00 01 */	li r3, 1
/* 80A3F58C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3F590  4B 92 2C 98 */	b _restgpr_29
/* 80A3F594  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3F598  7C 08 03 A6 */	mtlr r0
/* 80A3F59C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A3F5A0  4E 80 00 20 */	blr 
