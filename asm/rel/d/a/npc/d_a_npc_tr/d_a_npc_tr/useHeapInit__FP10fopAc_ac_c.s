lbl_80B2632C:
/* 80B2632C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B26330  7C 08 02 A6 */	mflr r0
/* 80B26334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B26338  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2633C  7C 7F 1B 78 */	mr r31, r3
/* 80B26340  3C 60 80 B2 */	lis r3, stringBase0@ha
/* 80B26344  38 63 66 08 */	addi r3, r3, stringBase0@l
/* 80B26348  38 80 00 03 */	li r4, 3
/* 80B2634C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B26350  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B26354  3C A5 00 02 */	addis r5, r5, 2
/* 80B26358  38 C0 00 80 */	li r6, 0x80
/* 80B2635C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B26360  4B 51 5F 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B26364  3C 80 00 08 */	lis r4, 8
/* 80B26368  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B2636C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B26370  4B 4E E8 E4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B26374  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 80B26378  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80B2637C  28 03 00 00 */	cmplwi r3, 0
/* 80B26380  40 82 00 0C */	bne lbl_80B2638C
/* 80B26384  38 60 00 00 */	li r3, 0
/* 80B26388  48 00 00 48 */	b lbl_80B263D0
lbl_80B2638C:
/* 80B2638C  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80B26390  38 C0 00 00 */	li r6, 0
/* 80B26394  3C 60 80 B2 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80B26398  38 83 5A 54 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80B2639C  48 00 00 18 */	b lbl_80B263B4
lbl_80B263A0:
/* 80B263A0  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80B263A4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B263A8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B263AC  90 83 00 04 */	stw r4, 4(r3)
/* 80B263B0  38 C6 00 01 */	addi r6, r6, 1
lbl_80B263B4:
/* 80B263B4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80B263B8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B263BC  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80B263C0  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80B263C4  7C 00 18 40 */	cmplw r0, r3
/* 80B263C8  41 80 FF D8 */	blt lbl_80B263A0
/* 80B263CC  38 60 00 01 */	li r3, 1
lbl_80B263D0:
/* 80B263D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B263D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B263D8  7C 08 03 A6 */	mtlr r0
/* 80B263DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B263E0  4E 80 00 20 */	blr 
