lbl_807F22A4:
/* 807F22A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807F22A8  7C 08 02 A6 */	mflr r0
/* 807F22AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807F22B0  39 61 00 30 */	addi r11, r1, 0x30
/* 807F22B4  4B B6 FF 25 */	bl _savegpr_28
/* 807F22B8  7C 7F 1B 78 */	mr r31, r3
/* 807F22BC  38 60 00 58 */	li r3, 0x58
/* 807F22C0  4B AD C9 8D */	bl __nw__FUl
/* 807F22C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 807F22C8  41 82 00 94 */	beq lbl_807F235C
/* 807F22CC  3C 60 80 7F */	lis r3, d_a_e_yc__stringBase0@ha /* 0x807F294C@ha */
/* 807F22D0  38 63 29 4C */	addi r3, r3, d_a_e_yc__stringBase0@l /* 0x807F294C@l */
/* 807F22D4  38 80 00 15 */	li r4, 0x15
/* 807F22D8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F22DC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F22E0  3F 85 00 02 */	addis r28, r5, 2
/* 807F22E4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807F22E8  7F 85 E3 78 */	mr r5, r28
/* 807F22EC  38 C0 00 80 */	li r6, 0x80
/* 807F22F0  4B 84 9F FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F22F4  7C 7D 1B 78 */	mr r29, r3
/* 807F22F8  3C 60 80 7F */	lis r3, d_a_e_yc__stringBase0@ha /* 0x807F294C@ha */
/* 807F22FC  38 63 29 4C */	addi r3, r3, d_a_e_yc__stringBase0@l /* 0x807F294C@l */
/* 807F2300  38 80 00 18 */	li r4, 0x18
/* 807F2304  7F 85 E3 78 */	mr r5, r28
/* 807F2308  38 C0 00 80 */	li r6, 0x80
/* 807F230C  4B 84 9F E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F2310  7C 64 1B 78 */	mr r4, r3
/* 807F2314  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 807F2318  90 01 00 08 */	stw r0, 8(r1)
/* 807F231C  3C 00 00 08 */	lis r0, 8
/* 807F2320  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F2324  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807F2328  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807F232C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F2330  7F C3 F3 78 */	mr r3, r30
/* 807F2334  38 A0 00 00 */	li r5, 0
/* 807F2338  38 C0 00 00 */	li r6, 0
/* 807F233C  7F A7 EB 78 */	mr r7, r29
/* 807F2340  39 00 00 02 */	li r8, 2
/* 807F2344  3D 20 80 7F */	lis r9, lit_3715@ha /* 0x807F2864@ha */
/* 807F2348  C0 29 28 64 */	lfs f1, lit_3715@l(r9)  /* 0x807F2864@l */
/* 807F234C  39 20 00 00 */	li r9, 0
/* 807F2350  39 40 FF FF */	li r10, -1
/* 807F2354  4B 81 E4 7D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807F2358  7C 7E 1B 78 */	mr r30, r3
lbl_807F235C:
/* 807F235C  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 807F2360  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807F2364  28 03 00 00 */	cmplwi r3, 0
/* 807F2368  41 82 00 10 */	beq lbl_807F2378
/* 807F236C  80 03 00 04 */	lwz r0, 4(r3)
/* 807F2370  28 00 00 00 */	cmplwi r0, 0
/* 807F2374  40 82 00 0C */	bne lbl_807F2380
lbl_807F2378:
/* 807F2378  38 60 00 00 */	li r3, 0
/* 807F237C  48 00 00 08 */	b lbl_807F2384
lbl_807F2380:
/* 807F2380  38 60 00 01 */	li r3, 1
lbl_807F2384:
/* 807F2384  39 61 00 30 */	addi r11, r1, 0x30
/* 807F2388  4B B6 FE 9D */	bl _restgpr_28
/* 807F238C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807F2390  7C 08 03 A6 */	mtlr r0
/* 807F2394  38 21 00 30 */	addi r1, r1, 0x30
/* 807F2398  4E 80 00 20 */	blr 
