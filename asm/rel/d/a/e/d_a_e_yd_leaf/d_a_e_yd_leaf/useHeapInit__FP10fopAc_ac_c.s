lbl_807F8024:
/* 807F8024  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807F8028  7C 08 02 A6 */	mflr r0
/* 807F802C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807F8030  39 61 00 30 */	addi r11, r1, 0x30
/* 807F8034  4B B6 A1 A5 */	bl _savegpr_28
/* 807F8038  7C 7F 1B 78 */	mr r31, r3
/* 807F803C  38 60 00 54 */	li r3, 0x54
/* 807F8040  4B AD 6C 0D */	bl __nw__FUl
/* 807F8044  7C 7E 1B 79 */	or. r30, r3, r3
/* 807F8048  41 82 00 9C */	beq lbl_807F80E4
/* 807F804C  3C 60 80 80 */	lis r3, d_a_e_yd_leaf__stringBase0@ha /* 0x807F81F4@ha */
/* 807F8050  38 63 81 F4 */	addi r3, r3, d_a_e_yd_leaf__stringBase0@l /* 0x807F81F4@l */
/* 807F8054  38 80 00 14 */	li r4, 0x14
/* 807F8058  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F805C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F8060  3F 85 00 02 */	addis r28, r5, 2
/* 807F8064  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807F8068  7F 85 E3 78 */	mr r5, r28
/* 807F806C  38 C0 00 80 */	li r6, 0x80
/* 807F8070  4B 84 42 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F8074  7C 7D 1B 78 */	mr r29, r3
/* 807F8078  3C 60 80 80 */	lis r3, d_a_e_yd_leaf__stringBase0@ha /* 0x807F81F4@ha */
/* 807F807C  38 63 81 F4 */	addi r3, r3, d_a_e_yd_leaf__stringBase0@l /* 0x807F81F4@l */
/* 807F8080  38 80 00 19 */	li r4, 0x19
/* 807F8084  7F 85 E3 78 */	mr r5, r28
/* 807F8088  38 C0 00 80 */	li r6, 0x80
/* 807F808C  4B 84 42 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F8090  7C 64 1B 78 */	mr r4, r3
/* 807F8094  38 00 00 01 */	li r0, 1
/* 807F8098  90 01 00 08 */	stw r0, 8(r1)
/* 807F809C  38 00 00 00 */	li r0, 0
/* 807F80A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F80A4  3C 00 00 08 */	lis r0, 8
/* 807F80A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F80AC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807F80B0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807F80B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F80B8  7F C3 F3 78 */	mr r3, r30
/* 807F80BC  38 A0 00 00 */	li r5, 0
/* 807F80C0  38 C0 00 00 */	li r6, 0
/* 807F80C4  7F A7 EB 78 */	mr r7, r29
/* 807F80C8  39 00 00 02 */	li r8, 2
/* 807F80CC  3D 20 80 80 */	lis r9, lit_3707@ha /* 0x807F81E8@ha */
/* 807F80D0  C0 29 81 E8 */	lfs f1, lit_3707@l(r9)  /* 0x807F81E8@l */
/* 807F80D4  39 20 00 00 */	li r9, 0
/* 807F80D8  39 40 FF FF */	li r10, -1
/* 807F80DC  4B 81 7B 71 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 807F80E0  7C 7E 1B 78 */	mr r30, r3
lbl_807F80E4:
/* 807F80E4  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 807F80E8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807F80EC  28 03 00 00 */	cmplwi r3, 0
/* 807F80F0  41 82 00 10 */	beq lbl_807F8100
/* 807F80F4  80 03 00 04 */	lwz r0, 4(r3)
/* 807F80F8  28 00 00 00 */	cmplwi r0, 0
/* 807F80FC  40 82 00 0C */	bne lbl_807F8108
lbl_807F8100:
/* 807F8100  38 60 00 00 */	li r3, 0
/* 807F8104  48 00 00 08 */	b lbl_807F810C
lbl_807F8108:
/* 807F8108  38 60 00 01 */	li r3, 1
lbl_807F810C:
/* 807F810C  39 61 00 30 */	addi r11, r1, 0x30
/* 807F8110  4B B6 A1 15 */	bl _restgpr_28
/* 807F8114  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807F8118  7C 08 03 A6 */	mtlr r0
/* 807F811C  38 21 00 30 */	addi r1, r1, 0x30
/* 807F8120  4E 80 00 20 */	blr 
