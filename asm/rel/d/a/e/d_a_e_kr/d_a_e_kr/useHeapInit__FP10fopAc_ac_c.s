lbl_80704BB4:
/* 80704BB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80704BB8  7C 08 02 A6 */	mflr r0
/* 80704BBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80704BC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80704BC4  4B C5 D6 15 */	bl _savegpr_28
/* 80704BC8  7C 7F 1B 78 */	mr r31, r3
/* 80704BCC  38 60 00 58 */	li r3, 0x58
/* 80704BD0  4B BC A0 7D */	bl __nw__FUl
/* 80704BD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80704BD8  41 82 00 94 */	beq lbl_80704C6C
/* 80704BDC  3C 60 80 70 */	lis r3, d_a_e_kr__stringBase0@ha /* 0x80705C4C@ha */
/* 80704BE0  38 63 5C 4C */	addi r3, r3, d_a_e_kr__stringBase0@l /* 0x80705C4C@l */
/* 80704BE4  38 80 00 0D */	li r4, 0xd
/* 80704BE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80704BEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80704BF0  3F 85 00 02 */	addis r28, r5, 2
/* 80704BF4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80704BF8  7F 85 E3 78 */	mr r5, r28
/* 80704BFC  38 C0 00 80 */	li r6, 0x80
/* 80704C00  4B 93 76 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80704C04  7C 7D 1B 78 */	mr r29, r3
/* 80704C08  3C 60 80 70 */	lis r3, d_a_e_kr__stringBase0@ha /* 0x80705C4C@ha */
/* 80704C0C  38 63 5C 4C */	addi r3, r3, d_a_e_kr__stringBase0@l /* 0x80705C4C@l */
/* 80704C10  38 80 00 18 */	li r4, 0x18
/* 80704C14  7F 85 E3 78 */	mr r5, r28
/* 80704C18  38 C0 00 80 */	li r6, 0x80
/* 80704C1C  4B 93 76 D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80704C20  7C 64 1B 78 */	mr r4, r3
/* 80704C24  38 1F 05 C0 */	addi r0, r31, 0x5c0
/* 80704C28  90 01 00 08 */	stw r0, 8(r1)
/* 80704C2C  3C 00 00 08 */	lis r0, 8
/* 80704C30  90 01 00 0C */	stw r0, 0xc(r1)
/* 80704C34  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80704C38  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80704C3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80704C40  7F C3 F3 78 */	mr r3, r30
/* 80704C44  38 A0 00 00 */	li r5, 0
/* 80704C48  38 C0 00 00 */	li r6, 0
/* 80704C4C  7F A7 EB 78 */	mr r7, r29
/* 80704C50  39 00 00 02 */	li r8, 2
/* 80704C54  3D 20 80 70 */	lis r9, lit_3905@ha /* 0x80705B00@ha */
/* 80704C58  C0 29 5B 00 */	lfs f1, lit_3905@l(r9)  /* 0x80705B00@l */
/* 80704C5C  39 20 00 00 */	li r9, 0
/* 80704C60  39 40 FF FF */	li r10, -1
/* 80704C64  4B 90 BB 6D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80704C68  7C 7E 1B 78 */	mr r30, r3
lbl_80704C6C:
/* 80704C6C  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 80704C70  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80704C74  28 03 00 00 */	cmplwi r3, 0
/* 80704C78  41 82 00 10 */	beq lbl_80704C88
/* 80704C7C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80704C80  28 05 00 00 */	cmplwi r5, 0
/* 80704C84  40 82 00 0C */	bne lbl_80704C90
lbl_80704C88:
/* 80704C88  38 60 00 00 */	li r3, 0
/* 80704C8C  48 00 00 4C */	b lbl_80704CD8
lbl_80704C90:
/* 80704C90  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80704C94  38 E0 00 00 */	li r7, 0
/* 80704C98  3C 60 80 70 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x806FF9AC@ha */
/* 80704C9C  38 83 F9 AC */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x806FF9AC@l */
/* 80704CA0  48 00 00 20 */	b lbl_80704CC0
lbl_80704CA4:
/* 80704CA4  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 80704CA8  41 82 00 14 */	beq lbl_80704CBC
/* 80704CAC  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80704CB0  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80704CB4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80704CB8  90 83 00 04 */	stw r4, 4(r3)
lbl_80704CBC:
/* 80704CBC  38 E7 00 01 */	addi r7, r7, 1
lbl_80704CC0:
/* 80704CC0  80 C5 00 04 */	lwz r6, 4(r5)
/* 80704CC4  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80704CC8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80704CCC  7C 00 18 40 */	cmplw r0, r3
/* 80704CD0  41 80 FF D4 */	blt lbl_80704CA4
/* 80704CD4  38 60 00 01 */	li r3, 1
lbl_80704CD8:
/* 80704CD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80704CDC  4B C5 D5 49 */	bl _restgpr_28
/* 80704CE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80704CE4  7C 08 03 A6 */	mtlr r0
/* 80704CE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80704CEC  4E 80 00 20 */	blr 
