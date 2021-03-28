lbl_80854328:
/* 80854328  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8085432C  7C 08 02 A6 */	mflr r0
/* 80854330  90 01 00 34 */	stw r0, 0x34(r1)
/* 80854334  39 61 00 30 */	addi r11, r1, 0x30
/* 80854338  4B B0 DE A4 */	b _savegpr_29
/* 8085433C  7C 7F 1B 78 */	mr r31, r3
/* 80854340  88 03 06 E7 */	lbz r0, 0x6e7(r3)
/* 80854344  28 00 00 00 */	cmplwi r0, 0
/* 80854348  40 82 00 2C */	bne lbl_80854374
/* 8085434C  80 7F 07 5C */	lwz r3, 0x75c(r31)
/* 80854350  38 80 00 18 */	li r4, 0x18
/* 80854354  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80854358  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8085435C  3C A5 00 02 */	addis r5, r5, 2
/* 80854360  38 C0 00 80 */	li r6, 0x80
/* 80854364  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80854368  4B 7E 7F 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8085436C  7C 7D 1B 78 */	mr r29, r3
/* 80854370  48 00 00 28 */	b lbl_80854398
lbl_80854374:
/* 80854374  80 7F 07 5C */	lwz r3, 0x75c(r31)
/* 80854378  38 80 00 10 */	li r4, 0x10
/* 8085437C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80854380  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80854384  3C A5 00 02 */	addis r5, r5, 2
/* 80854388  38 C0 00 80 */	li r6, 0x80
/* 8085438C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80854390  4B 7E 7F 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80854394  7C 7D 1B 78 */	mr r29, r3
lbl_80854398:
/* 80854398  38 60 00 58 */	li r3, 0x58
/* 8085439C  4B A7 A8 B0 */	b __nw__FUl
/* 808543A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 808543A4  41 82 00 7C */	beq lbl_80854420
/* 808543A8  7F E3 FB 78 */	mr r3, r31
/* 808543AC  38 80 00 09 */	li r4, 9
/* 808543B0  4B FF 52 B1 */	bl getBckName__8daKago_cFi
/* 808543B4  7C 64 1B 78 */	mr r4, r3
/* 808543B8  80 7F 07 5C */	lwz r3, 0x75c(r31)
/* 808543BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 808543C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 808543C4  3C A5 00 02 */	addis r5, r5, 2
/* 808543C8  38 C0 00 80 */	li r6, 0x80
/* 808543CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 808543D0  4B 7E 7F 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808543D4  7C 67 1B 78 */	mr r7, r3
/* 808543D8  38 1F 05 74 */	addi r0, r31, 0x574
/* 808543DC  90 01 00 08 */	stw r0, 8(r1)
/* 808543E0  3C 00 00 08 */	lis r0, 8
/* 808543E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 808543E8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 808543EC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 808543F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 808543F4  7F C3 F3 78 */	mr r3, r30
/* 808543F8  7F A4 EB 78 */	mr r4, r29
/* 808543FC  38 A0 00 00 */	li r5, 0
/* 80854400  38 C0 00 00 */	li r6, 0
/* 80854404  39 00 00 02 */	li r8, 2
/* 80854408  3D 20 80 85 */	lis r9, lit_3932@ha
/* 8085440C  C0 29 4B 10 */	lfs f1, lit_3932@l(r9)
/* 80854410  39 20 00 00 */	li r9, 0
/* 80854414  39 40 FF FF */	li r10, -1
/* 80854418  4B 7B C3 B8 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8085441C  7C 7E 1B 78 */	mr r30, r3
lbl_80854420:
/* 80854420  93 DF 05 70 */	stw r30, 0x570(r31)
/* 80854424  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80854428  28 03 00 00 */	cmplwi r3, 0
/* 8085442C  41 82 00 10 */	beq lbl_8085443C
/* 80854430  80 A3 00 04 */	lwz r5, 4(r3)
/* 80854434  28 05 00 00 */	cmplwi r5, 0
/* 80854438  40 82 00 0C */	bne lbl_80854444
lbl_8085443C:
/* 8085443C  38 60 00 00 */	li r3, 0
/* 80854440  48 00 00 60 */	b lbl_808544A0
lbl_80854444:
/* 80854444  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80854448  38 E0 00 01 */	li r7, 1
/* 8085444C  3C 60 80 85 */	lis r3, JointCallBack__8daKago_cFP8J3DJointi@ha
/* 80854450  38 83 42 DC */	addi r4, r3, JointCallBack__8daKago_cFP8J3DJointi@l
/* 80854454  48 00 00 34 */	b lbl_80854488
lbl_80854458:
/* 80854458  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8085445C  28 00 00 03 */	cmplwi r0, 3
/* 80854460  41 82 00 14 */	beq lbl_80854474
/* 80854464  28 00 00 05 */	cmplwi r0, 5
/* 80854468  41 82 00 0C */	beq lbl_80854474
/* 8085446C  28 00 00 06 */	cmplwi r0, 6
/* 80854470  40 82 00 14 */	bne lbl_80854484
lbl_80854474:
/* 80854474  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80854478  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 8085447C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80854480  90 83 00 04 */	stw r4, 4(r3)
lbl_80854484:
/* 80854484  38 E7 00 01 */	addi r7, r7, 1
lbl_80854488:
/* 80854488  80 C5 00 04 */	lwz r6, 4(r5)
/* 8085448C  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80854490  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80854494  7C 00 18 40 */	cmplw r0, r3
/* 80854498  41 80 FF C0 */	blt lbl_80854458
/* 8085449C  38 60 00 01 */	li r3, 1
lbl_808544A0:
/* 808544A0  39 61 00 30 */	addi r11, r1, 0x30
/* 808544A4  4B B0 DD 84 */	b _restgpr_29
/* 808544A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 808544AC  7C 08 03 A6 */	mtlr r0
/* 808544B0  38 21 00 30 */	addi r1, r1, 0x30
/* 808544B4  4E 80 00 20 */	blr 
