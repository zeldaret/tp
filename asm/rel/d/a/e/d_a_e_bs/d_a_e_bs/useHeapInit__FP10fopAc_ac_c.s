lbl_80690018:
/* 80690018  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8069001C  7C 08 02 A6 */	mflr r0
/* 80690020  90 01 00 34 */	stw r0, 0x34(r1)
/* 80690024  39 61 00 30 */	addi r11, r1, 0x30
/* 80690028  4B CD 21 B1 */	bl _savegpr_28
/* 8069002C  7C 7F 1B 78 */	mr r31, r3
/* 80690030  38 60 00 58 */	li r3, 0x58
/* 80690034  4B C3 EC 19 */	bl __nw__FUl
/* 80690038  7C 7E 1B 79 */	or. r30, r3, r3
/* 8069003C  41 82 00 94 */	beq lbl_806900D0
/* 80690040  3C 60 80 69 */	lis r3, d_a_e_bs__stringBase0@ha /* 0x80690EB8@ha */
/* 80690044  38 63 0E B8 */	addi r3, r3, d_a_e_bs__stringBase0@l /* 0x80690EB8@l */
/* 80690048  38 80 00 07 */	li r4, 7
/* 8069004C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80690050  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80690054  3F 85 00 02 */	addis r28, r5, 2
/* 80690058  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8069005C  7F 85 E3 78 */	mr r5, r28
/* 80690060  38 C0 00 80 */	li r6, 0x80
/* 80690064  4B 9A C2 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80690068  7C 7D 1B 78 */	mr r29, r3
/* 8069006C  3C 60 80 69 */	lis r3, d_a_e_bs__stringBase0@ha /* 0x80690EB8@ha */
/* 80690070  38 63 0E B8 */	addi r3, r3, d_a_e_bs__stringBase0@l /* 0x80690EB8@l */
/* 80690074  38 80 00 0E */	li r4, 0xe
/* 80690078  7F 85 E3 78 */	mr r5, r28
/* 8069007C  38 C0 00 80 */	li r6, 0x80
/* 80690080  4B 9A C2 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80690084  7C 64 1B 78 */	mr r4, r3
/* 80690088  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 8069008C  90 01 00 08 */	stw r0, 8(r1)
/* 80690090  3C 00 00 08 */	lis r0, 8
/* 80690094  90 01 00 0C */	stw r0, 0xc(r1)
/* 80690098  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8069009C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806900A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806900A4  7F C3 F3 78 */	mr r3, r30
/* 806900A8  38 A0 00 00 */	li r5, 0
/* 806900AC  38 C0 00 00 */	li r6, 0
/* 806900B0  7F A7 EB 78 */	mr r7, r29
/* 806900B4  39 00 00 00 */	li r8, 0
/* 806900B8  3D 20 80 69 */	lis r9, lit_3790@ha /* 0x80690DE0@ha */
/* 806900BC  C0 29 0D E0 */	lfs f1, lit_3790@l(r9)  /* 0x80690DE0@l */
/* 806900C0  39 20 00 00 */	li r9, 0
/* 806900C4  39 40 FF FF */	li r10, -1
/* 806900C8  4B 98 07 09 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806900CC  7C 7E 1B 78 */	mr r30, r3
lbl_806900D0:
/* 806900D0  93 DF 05 CC */	stw r30, 0x5cc(r31)
/* 806900D4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 806900D8  28 03 00 00 */	cmplwi r3, 0
/* 806900DC  41 82 00 10 */	beq lbl_806900EC
/* 806900E0  80 A3 00 04 */	lwz r5, 4(r3)
/* 806900E4  28 05 00 00 */	cmplwi r5, 0
/* 806900E8  40 82 00 0C */	bne lbl_806900F4
lbl_806900EC:
/* 806900EC  38 60 00 00 */	li r3, 0
/* 806900F0  48 00 01 1C */	b lbl_8069020C
lbl_806900F4:
/* 806900F4  93 E5 00 14 */	stw r31, 0x14(r5)
/* 806900F8  38 E0 00 00 */	li r7, 0
/* 806900FC  3C 60 80 69 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x8068E2D4@ha */
/* 80690100  38 83 E2 D4 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x8068E2D4@l */
/* 80690104  48 00 00 24 */	b lbl_80690128
lbl_80690108:
/* 80690108  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8069010C  28 00 00 0A */	cmplwi r0, 0xa
/* 80690110  40 82 00 14 */	bne lbl_80690124
/* 80690114  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80690118  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 8069011C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80690120  90 83 00 04 */	stw r4, 4(r3)
lbl_80690124:
/* 80690124  38 E7 00 01 */	addi r7, r7, 1
lbl_80690128:
/* 80690128  80 C5 00 04 */	lwz r6, 4(r5)
/* 8069012C  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80690130  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80690134  7C 00 18 40 */	cmplw r0, r3
/* 80690138  41 80 FF D0 */	blt lbl_80690108
/* 8069013C  38 60 00 54 */	li r3, 0x54
/* 80690140  4B C3 EB 0D */	bl __nw__FUl
/* 80690144  7C 7D 1B 79 */	or. r29, r3, r3
/* 80690148  41 82 00 9C */	beq lbl_806901E4
/* 8069014C  3C 60 80 69 */	lis r3, d_a_e_bs__stringBase0@ha /* 0x80690EB8@ha */
/* 80690150  38 63 0E B8 */	addi r3, r3, d_a_e_bs__stringBase0@l /* 0x80690EB8@l */
/* 80690154  38 80 00 0A */	li r4, 0xa
/* 80690158  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069015C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80690160  3F 85 00 02 */	addis r28, r5, 2
/* 80690164  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80690168  7F 85 E3 78 */	mr r5, r28
/* 8069016C  38 C0 00 80 */	li r6, 0x80
/* 80690170  4B 9A C1 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80690174  7C 7E 1B 78 */	mr r30, r3
/* 80690178  3C 60 80 69 */	lis r3, d_a_e_bs__stringBase0@ha /* 0x80690EB8@ha */
/* 8069017C  38 63 0E B8 */	addi r3, r3, d_a_e_bs__stringBase0@l /* 0x80690EB8@l */
/* 80690180  38 80 00 0F */	li r4, 0xf
/* 80690184  7F 85 E3 78 */	mr r5, r28
/* 80690188  38 C0 00 80 */	li r6, 0x80
/* 8069018C  4B 9A C1 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80690190  7C 64 1B 78 */	mr r4, r3
/* 80690194  38 00 00 01 */	li r0, 1
/* 80690198  90 01 00 08 */	stw r0, 8(r1)
/* 8069019C  38 00 00 00 */	li r0, 0
/* 806901A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806901A4  3C 00 00 08 */	lis r0, 8
/* 806901A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806901AC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806901B0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806901B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806901B8  7F A3 EB 78 */	mr r3, r29
/* 806901BC  38 A0 00 00 */	li r5, 0
/* 806901C0  38 C0 00 00 */	li r6, 0
/* 806901C4  7F C7 F3 78 */	mr r7, r30
/* 806901C8  39 00 00 00 */	li r8, 0
/* 806901CC  3D 20 80 69 */	lis r9, lit_3790@ha /* 0x80690DE0@ha */
/* 806901D0  C0 29 0D E0 */	lfs f1, lit_3790@l(r9)  /* 0x80690DE0@l */
/* 806901D4  39 20 00 00 */	li r9, 0
/* 806901D8  39 40 FF FF */	li r10, -1
/* 806901DC  4B 97 FA 71 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806901E0  7C 7D 1B 78 */	mr r29, r3
lbl_806901E4:
/* 806901E4  93 BF 05 D4 */	stw r29, 0x5d4(r31)
/* 806901E8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806901EC  28 03 00 00 */	cmplwi r3, 0
/* 806901F0  41 82 00 10 */	beq lbl_80690200
/* 806901F4  80 03 00 04 */	lwz r0, 4(r3)
/* 806901F8  28 00 00 00 */	cmplwi r0, 0
/* 806901FC  40 82 00 0C */	bne lbl_80690208
lbl_80690200:
/* 80690200  38 60 00 00 */	li r3, 0
/* 80690204  48 00 00 08 */	b lbl_8069020C
lbl_80690208:
/* 80690208  38 60 00 01 */	li r3, 1
lbl_8069020C:
/* 8069020C  39 61 00 30 */	addi r11, r1, 0x30
/* 80690210  4B CD 20 15 */	bl _restgpr_28
/* 80690214  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80690218  7C 08 03 A6 */	mtlr r0
/* 8069021C  38 21 00 30 */	addi r1, r1, 0x30
/* 80690220  4E 80 00 20 */	blr 
