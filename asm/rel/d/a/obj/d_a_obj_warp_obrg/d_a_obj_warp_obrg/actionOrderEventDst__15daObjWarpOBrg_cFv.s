lbl_80D2A93C:
/* 80D2A93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2A940  7C 08 02 A6 */	mflr r0
/* 80D2A944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2A948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2A94C  7C 7F 1B 78 */	mr r31, r3
/* 80D2A950  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80D2A954  28 00 00 02 */	cmplwi r0, 2
/* 80D2A958  40 82 00 5C */	bne lbl_80D2A9B4
/* 80D2A95C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2A960  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2A964  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D2A968  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80D2A96C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D2A970  3C 80 80 D3 */	lis r4, l_staff_name@ha /* 0x80D2B940@ha */
/* 80D2A974  38 84 B9 40 */	addi r4, r4, l_staff_name@l /* 0x80D2B940@l */
/* 80D2A978  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D2A97C  38 A0 00 00 */	li r5, 0
/* 80D2A980  38 C0 00 00 */	li r6, 0
/* 80D2A984  4B 31 D1 99 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D2A988  90 7F 06 30 */	stw r3, 0x630(r31)
/* 80D2A98C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2A990  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2A994  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D2A998  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D2A99C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D2A9A0  7C 05 07 74 */	extsb r5, r0
/* 80D2A9A4  4B 30 A8 5D */	bl onSwitch__10dSv_info_cFii
/* 80D2A9A8  38 00 00 06 */	li r0, 6
/* 80D2A9AC  98 1F 06 3B */	stb r0, 0x63b(r31)
/* 80D2A9B0  48 00 00 20 */	b lbl_80D2A9D0
lbl_80D2A9B4:
/* 80D2A9B4  A8 9F 06 34 */	lha r4, 0x634(r31)
/* 80D2A9B8  38 A0 00 FF */	li r5, 0xff
/* 80D2A9BC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D2A9C0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D2A9C4  38 E0 00 02 */	li r7, 2
/* 80D2A9C8  39 00 00 01 */	li r8, 1
/* 80D2A9CC  4B 2F 0C B1 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80D2A9D0:
/* 80D2A9D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2A9D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2A9D8  7C 08 03 A6 */	mtlr r0
/* 80D2A9DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2A9E0  4E 80 00 20 */	blr 
