lbl_8078D6B0:
/* 8078D6B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078D6B4  7C 08 02 A6 */	mflr r0
/* 8078D6B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078D6BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078D6C0  7C 7F 1B 78 */	mr r31, r3
/* 8078D6C4  3C 60 80 79 */	lis r3, stringBase0@ha
/* 8078D6C8  38 63 DE AC */	addi r3, r3, stringBase0@l
/* 8078D6CC  38 80 00 03 */	li r4, 3
/* 8078D6D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8078D6D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8078D6D8  3C A5 00 02 */	addis r5, r5, 2
/* 8078D6DC  38 C0 00 80 */	li r6, 0x80
/* 8078D6E0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8078D6E4  4B 8A EC 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8078D6E8  38 C0 00 00 */	li r6, 0
/* 8078D6EC  3C 80 80 79 */	lis r4, nodeCallBack__FP8J3DJointi@ha
/* 8078D6F0  38 A4 A2 6C */	addi r5, r4, nodeCallBack__FP8J3DJointi@l
/* 8078D6F4  48 00 00 18 */	b lbl_8078D70C
lbl_8078D6F8:
/* 8078D6F8  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8078D6FC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8078D700  7C 84 00 2E */	lwzx r4, r4, r0
/* 8078D704  90 A4 00 04 */	stw r5, 4(r4)
/* 8078D708  38 C6 00 01 */	addi r6, r6, 1
lbl_8078D70C:
/* 8078D70C  54 C4 04 3E */	clrlwi r4, r6, 0x10
/* 8078D710  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 8078D714  7C 04 00 40 */	cmplw r4, r0
/* 8078D718  41 80 FF E0 */	blt lbl_8078D6F8
/* 8078D71C  3C 80 00 08 */	lis r4, 8
/* 8078D720  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8078D724  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8078D728  4B 88 75 2C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8078D72C  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 8078D730  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8078D734  28 03 00 00 */	cmplwi r3, 0
/* 8078D738  40 82 00 0C */	bne lbl_8078D744
/* 8078D73C  38 60 00 00 */	li r3, 0
/* 8078D740  48 00 00 2C */	b lbl_8078D76C
lbl_8078D744:
/* 8078D744  93 E3 00 14 */	stw r31, 0x14(r3)
/* 8078D748  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 8078D74C  7F E4 FB 78 */	mr r4, r31
/* 8078D750  3C A0 80 79 */	lis r5, jc_data@ha
/* 8078D754  38 A5 DF B0 */	addi r5, r5, jc_data@l
/* 8078D758  80 DF 05 B8 */	lwz r6, 0x5b8(r31)
/* 8078D75C  38 E0 00 01 */	li r7, 1
/* 8078D760  4B 8A 85 40 */	b init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli
/* 8078D764  30 03 FF FF */	addic r0, r3, -1
/* 8078D768  7C 60 19 10 */	subfe r3, r0, r3
lbl_8078D76C:
/* 8078D76C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8078D770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078D774  7C 08 03 A6 */	mtlr r0
/* 8078D778  38 21 00 10 */	addi r1, r1, 0x10
/* 8078D77C  4E 80 00 20 */	blr 
