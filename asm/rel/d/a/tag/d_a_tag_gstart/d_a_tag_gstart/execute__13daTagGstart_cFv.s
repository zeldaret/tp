lbl_805A3590:
/* 805A3590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3594  7C 08 02 A6 */	mflr r0
/* 805A3598  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A359C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A35A0  7C 7F 1B 78 */	mr r31, r3
/* 805A35A4  88 83 05 68 */	lbz r4, 0x568(r3)
/* 805A35A8  28 04 00 FF */	cmplwi r4, 0xff
/* 805A35AC  41 82 00 20 */	beq lbl_805A35CC
/* 805A35B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A35B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A35B8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A35BC  7C 05 07 74 */	extsb r5, r0
/* 805A35C0  4B A9 1D A0 */	b isSwitch__10dSv_info_cCFii
/* 805A35C4  2C 03 00 00 */	cmpwi r3, 0
/* 805A35C8  41 82 00 78 */	beq lbl_805A3640
lbl_805A35CC:
/* 805A35CC  88 9F 05 69 */	lbz r4, 0x569(r31)
/* 805A35D0  28 04 00 FF */	cmplwi r4, 0xff
/* 805A35D4  41 82 00 20 */	beq lbl_805A35F4
/* 805A35D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A35DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A35E0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A35E4  7C 05 07 74 */	extsb r5, r0
/* 805A35E8  4B A9 1D 78 */	b isSwitch__10dSv_info_cCFii
/* 805A35EC  2C 03 00 00 */	cmpwi r3, 0
/* 805A35F0  40 82 00 50 */	bne lbl_805A3640
lbl_805A35F4:
/* 805A35F4  88 1F 05 6B */	lbz r0, 0x56b(r31)
/* 805A35F8  28 00 00 00 */	cmplwi r0, 0
/* 805A35FC  40 82 00 1C */	bne lbl_805A3618
/* 805A3600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A3604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A3608  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 805A360C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805A3610  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805A3614  41 82 00 2C */	beq lbl_805A3640
lbl_805A3618:
/* 805A3618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A361C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A3620  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 805A3624  88 9F 05 6A */	lbz r4, 0x56a(r31)
/* 805A3628  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805A362C  7C 05 07 74 */	extsb r5, r0
/* 805A3630  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805A3634  81 8C 01 84 */	lwz r12, 0x184(r12)
/* 805A3638  7D 89 03 A6 */	mtctr r12
/* 805A363C  4E 80 04 21 */	bctrl 
lbl_805A3640:
/* 805A3640  38 60 00 01 */	li r3, 1
/* 805A3644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A3648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A364C  7C 08 03 A6 */	mtlr r0
/* 805A3650  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3654  4E 80 00 20 */	blr 
