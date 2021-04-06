lbl_809DB214:
/* 809DB214  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809DB218  7C 08 02 A6 */	mflr r0
/* 809DB21C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809DB220  39 61 00 30 */	addi r11, r1, 0x30
/* 809DB224  4B 98 6F B5 */	bl _savegpr_28
/* 809DB228  7C 7F 1B 78 */	mr r31, r3
/* 809DB22C  7C BC 2B 78 */	mr r28, r5
/* 809DB230  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 809DB234  7C BD 2B 78 */	mr r29, r5
/* 809DB238  3C 60 80 9E */	lis r3, lit_4605@ha /* 0x809DF010@ha */
/* 809DB23C  38 83 F0 10 */	addi r4, r3, lit_4605@l /* 0x809DF010@l */
/* 809DB240  80 64 00 00 */	lwz r3, 0(r4)
/* 809DB244  80 04 00 04 */	lwz r0, 4(r4)
/* 809DB248  90 61 00 08 */	stw r3, 8(r1)
/* 809DB24C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809DB250  80 04 00 08 */	lwz r0, 8(r4)
/* 809DB254  90 01 00 10 */	stw r0, 0x10(r1)
/* 809DB258  2C 05 00 00 */	cmpwi r5, 0
/* 809DB25C  40 82 00 B0 */	bne lbl_809DB30C
/* 809DB260  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809DB264  80 63 00 04 */	lwz r3, 4(r3)
/* 809DB268  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809DB26C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809DB270  38 63 00 30 */	addi r3, r3, 0x30
/* 809DB274  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809DB278  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809DB27C  4B 96 B2 35 */	bl PSMTXCopy
/* 809DB280  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809DB284  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809DB288  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809DB28C  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 809DB290  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809DB294  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 809DB298  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809DB29C  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 809DB2A0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809DB2A4  80 63 00 04 */	lwz r3, 4(r3)
/* 809DB2A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809DB2AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809DB2B0  38 63 00 90 */	addi r3, r3, 0x90
/* 809DB2B4  7F C4 F3 78 */	mr r4, r30
/* 809DB2B8  4B 96 B1 F9 */	bl PSMTXCopy
/* 809DB2BC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809DB2C0  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 809DB2C4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809DB2C8  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 809DB2CC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809DB2D0  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 809DB2D4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809DB2D8  80 63 00 04 */	lwz r3, 4(r3)
/* 809DB2DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809DB2E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809DB2E4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809DB2E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809DB2EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809DB2F0  4B 96 B1 C1 */	bl PSMTXCopy
/* 809DB2F4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809DB2F8  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 809DB2FC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809DB300  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 809DB304  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809DB308  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_809DB30C:
/* 809DB30C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 809DB310  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809DB314  1F DD 00 30 */	mulli r30, r29, 0x30
/* 809DB318  7C 60 F2 14 */	add r3, r0, r30
/* 809DB31C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809DB320  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809DB324  4B 96 B1 8D */	bl PSMTXCopy
/* 809DB328  2C 1D 00 02 */	cmpwi r29, 2
/* 809DB32C  41 82 00 38 */	beq lbl_809DB364
/* 809DB330  40 80 00 10 */	bge lbl_809DB340
/* 809DB334  2C 1D 00 01 */	cmpwi r29, 1
/* 809DB338  40 80 00 10 */	bge lbl_809DB348
/* 809DB33C  48 00 00 28 */	b lbl_809DB364
lbl_809DB340:
/* 809DB340  2C 1D 00 05 */	cmpwi r29, 5
/* 809DB344  40 80 00 20 */	bge lbl_809DB364
lbl_809DB348:
/* 809DB348  7F E3 FB 78 */	mr r3, r31
/* 809DB34C  7F A4 EB 78 */	mr r4, r29
/* 809DB350  38 A1 00 08 */	addi r5, r1, 8
/* 809DB354  3C C0 80 9E */	lis r6, m__17daNpc_grO_Param_c@ha /* 0x809DEF7C@ha */
/* 809DB358  38 C6 EF 7C */	addi r6, r6, m__17daNpc_grO_Param_c@l /* 0x809DEF7C@l */
/* 809DB35C  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 809DB360  4B 77 80 1D */	bl setLookatMtx__8daNpcF_cFiPif
lbl_809DB364:
/* 809DB364  2C 1D 00 01 */	cmpwi r29, 1
/* 809DB368  40 82 00 30 */	bne lbl_809DB398
/* 809DB36C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809DB370  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809DB374  A8 9F 09 08 */	lha r4, 0x908(r31)
/* 809DB378  4B 63 11 55 */	bl mDoMtx_ZrotM__FPA4_fs
/* 809DB37C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809DB380  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809DB384  A8 1F 09 0C */	lha r0, 0x90c(r31)
/* 809DB388  7C 00 00 D0 */	neg r0, r0
/* 809DB38C  7C 04 07 34 */	extsh r4, r0
/* 809DB390  4B 63 10 A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 809DB394  48 00 00 34 */	b lbl_809DB3C8
lbl_809DB398:
/* 809DB398  2C 1D 00 04 */	cmpwi r29, 4
/* 809DB39C  40 82 00 2C */	bne lbl_809DB3C8
/* 809DB3A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809DB3A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809DB3A8  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 809DB3AC  4B 63 11 21 */	bl mDoMtx_ZrotM__FPA4_fs
/* 809DB3B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809DB3B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809DB3B8  A8 1F 09 18 */	lha r0, 0x918(r31)
/* 809DB3BC  7C 00 00 D0 */	neg r0, r0
/* 809DB3C0  7C 04 07 34 */	extsh r4, r0
/* 809DB3C4  4B 63 10 71 */	bl mDoMtx_YrotM__FPA4_fs
lbl_809DB3C8:
/* 809DB3C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809DB3CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809DB3D0  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 809DB3D4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809DB3D8  7C 80 F2 14 */	add r4, r0, r30
/* 809DB3DC  4B 96 B0 D5 */	bl PSMTXCopy
/* 809DB3E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809DB3E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809DB3E8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 809DB3EC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 809DB3F0  4B 96 B0 C1 */	bl PSMTXCopy
/* 809DB3F4  2C 1D 00 04 */	cmpwi r29, 4
/* 809DB3F8  41 82 00 0C */	beq lbl_809DB404
/* 809DB3FC  2C 1D 00 0A */	cmpwi r29, 0xa
/* 809DB400  40 82 00 2C */	bne lbl_809DB42C
lbl_809DB404:
/* 809DB404  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809DB408  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 809DB40C  41 82 00 20 */	beq lbl_809DB42C
/* 809DB410  83 9F 05 80 */	lwz r28, 0x580(r31)
/* 809DB414  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809DB418  80 83 00 08 */	lwz r4, 8(r3)
/* 809DB41C  38 7F 05 6C */	addi r3, r31, 0x56c
/* 809DB420  4B 63 25 71 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 809DB424  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809DB428  93 83 00 08 */	stw r28, 8(r3)
lbl_809DB42C:
/* 809DB42C  38 60 00 01 */	li r3, 1
/* 809DB430  39 61 00 30 */	addi r11, r1, 0x30
/* 809DB434  4B 98 6D F1 */	bl _restgpr_28
/* 809DB438  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809DB43C  7C 08 03 A6 */	mtlr r0
/* 809DB440  38 21 00 30 */	addi r1, r1, 0x30
/* 809DB444  4E 80 00 20 */	blr 
