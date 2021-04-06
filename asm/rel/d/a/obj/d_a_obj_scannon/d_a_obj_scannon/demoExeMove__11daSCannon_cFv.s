lbl_80CC8278:
/* 80CC8278  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CC827C  7C 08 02 A6 */	mflr r0
/* 80CC8280  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CC8284  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CC8288  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CC828C  7C 7E 1B 78 */	mr r30, r3
/* 80CC8290  3C 80 80 CD */	lis r4, TKS_SET_POS@ha /* 0x80CC9188@ha */
/* 80CC8294  3B E4 91 88 */	addi r31, r4, TKS_SET_POS@l /* 0x80CC9188@l */
/* 80CC8298  A0 83 06 12 */	lhz r4, 0x612(r3)
/* 80CC829C  38 A0 00 03 */	li r5, 3
/* 80CC82A0  38 DE 06 28 */	addi r6, r30, 0x628
/* 80CC82A4  48 00 08 BD */	bl exeEmtRt__11daSCannon_cFUsiPP14JPABaseEmitter
/* 80CC82A8  38 7E 05 84 */	addi r3, r30, 0x584
/* 80CC82AC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80CC82B0  4B 66 01 7D */	bl checkPass__12J3DFrameCtrlFf
/* 80CC82B4  2C 03 00 00 */	cmpwi r3, 0
/* 80CC82B8  41 82 00 38 */	beq lbl_80CC82F0
/* 80CC82BC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80CC82C0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CC82C4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80CC82C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CC82CC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CC82D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC82D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC82D8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CC82DC  38 80 00 05 */	li r4, 5
/* 80CC82E0  38 A0 00 1F */	li r5, 0x1f
/* 80CC82E4  38 C1 00 14 */	addi r6, r1, 0x14
/* 80CC82E8  4B 3A 77 3D */	bl StartShock__12dVibration_cFii4cXyz
/* 80CC82EC  48 00 00 74 */	b lbl_80CC8360
lbl_80CC82F0:
/* 80CC82F0  38 7E 05 84 */	addi r3, r30, 0x584
/* 80CC82F4  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80CC82F8  4B 66 01 35 */	bl checkPass__12J3DFrameCtrlFf
/* 80CC82FC  2C 03 00 00 */	cmpwi r3, 0
/* 80CC8300  41 82 00 38 */	beq lbl_80CC8338
/* 80CC8304  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80CC8308  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CC830C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80CC8310  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CC8314  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CC8318  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC831C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC8320  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CC8324  38 80 00 05 */	li r4, 5
/* 80CC8328  38 A0 00 1F */	li r5, 0x1f
/* 80CC832C  38 C1 00 08 */	addi r6, r1, 8
/* 80CC8330  4B 3A 76 F5 */	bl StartShock__12dVibration_cFii4cXyz
/* 80CC8334  48 00 00 2C */	b lbl_80CC8360
lbl_80CC8338:
/* 80CC8338  38 7E 05 84 */	addi r3, r30, 0x584
/* 80CC833C  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80CC8340  4B 66 00 ED */	bl checkPass__12J3DFrameCtrlFf
/* 80CC8344  2C 03 00 00 */	cmpwi r3, 0
/* 80CC8348  41 82 00 18 */	beq lbl_80CC8360
/* 80CC834C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC8350  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC8354  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CC8358  80 9E 06 04 */	lwz r4, 0x604(r30)
/* 80CC835C  4B 37 FE 21 */	bl cutEnd__16dEvent_manager_cFi
lbl_80CC8360:
/* 80CC8360  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CC8364  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CC8368  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CC836C  7C 08 03 A6 */	mtlr r0
/* 80CC8370  38 21 00 30 */	addi r1, r1, 0x30
/* 80CC8374  4E 80 00 20 */	blr 
