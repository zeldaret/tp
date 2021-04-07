lbl_8006D914:
/* 8006D914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006D918  7C 08 02 A6 */	mflr r0
/* 8006D91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006D920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006D924  93 C1 00 08 */	stw r30, 8(r1)
/* 8006D928  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006D92C  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006D930  80 1F 10 58 */	lwz r0, 0x1058(r31)
/* 8006D934  28 00 00 00 */	cmplwi r0, 0
/* 8006D938  41 82 00 B4 */	beq lbl_8006D9EC
/* 8006D93C  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006D940  38 63 A5 78 */	addi r3, r3, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006D944  38 63 00 10 */	addi r3, r3, 0x10
/* 8006D948  38 80 00 53 */	li r4, 0x53
/* 8006D94C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006D950  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006D954  3F C5 00 02 */	addis r30, r5, 2
/* 8006D958  3B DE C2 F8 */	addi r30, r30, -15624
/* 8006D95C  7F C5 F3 78 */	mr r5, r30
/* 8006D960  38 C0 00 80 */	li r6, 0x80
/* 8006D964  4B FC E9 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8006D968  80 9F 10 58 */	lwz r4, 0x1058(r31)
/* 8006D96C  90 64 00 14 */	stw r3, 0x14(r4)
/* 8006D970  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006D974  38 63 A5 78 */	addi r3, r3, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006D978  38 63 00 94 */	addi r3, r3, 0x94
/* 8006D97C  4B FC 1A B9 */	bl dComIfG_getStageRes__FPCc
/* 8006D980  80 9F 10 58 */	lwz r4, 0x1058(r31)
/* 8006D984  90 64 00 18 */	stw r3, 0x18(r4)
/* 8006D988  80 7F 10 58 */	lwz r3, 0x1058(r31)
/* 8006D98C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8006D990  28 00 00 00 */	cmplwi r0, 0
/* 8006D994  40 82 00 28 */	bne lbl_8006D9BC
/* 8006D998  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006D99C  38 63 A5 78 */	addi r3, r3, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006D9A0  38 63 00 10 */	addi r3, r3, 0x10
/* 8006D9A4  38 80 00 53 */	li r4, 0x53
/* 8006D9A8  7F C5 F3 78 */	mr r5, r30
/* 8006D9AC  38 C0 00 80 */	li r6, 0x80
/* 8006D9B0  4B FC E9 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8006D9B4  80 9F 10 58 */	lwz r4, 0x1058(r31)
/* 8006D9B8  90 64 00 18 */	stw r3, 0x18(r4)
lbl_8006D9BC:
/* 8006D9BC  38 60 00 00 */	li r3, 0
/* 8006D9C0  7C 65 1B 78 */	mr r5, r3
/* 8006D9C4  38 00 07 D0 */	li r0, 0x7d0
/* 8006D9C8  7C 09 03 A6 */	mtctr r0
lbl_8006D9CC:
/* 8006D9CC  80 9F 10 58 */	lwz r4, 0x1058(r31)
/* 8006D9D0  38 03 00 1C */	addi r0, r3, 0x1c
/* 8006D9D4  7C A4 01 AE */	stbx r5, r4, r0
/* 8006D9D8  38 63 00 44 */	addi r3, r3, 0x44
/* 8006D9DC  42 00 FF F0 */	bdnz lbl_8006D9CC
/* 8006D9E0  38 00 00 00 */	li r0, 0
/* 8006D9E4  80 7F 10 58 */	lwz r3, 0x1058(r31)
/* 8006D9E8  90 03 00 10 */	stw r0, 0x10(r3)
lbl_8006D9EC:
/* 8006D9EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006D9F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8006D9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006D9F8  7C 08 03 A6 */	mtlr r0
/* 8006D9FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8006DA00  4E 80 00 20 */	blr 
