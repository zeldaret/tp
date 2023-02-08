lbl_80494D88:
/* 80494D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494D8C  7C 08 02 A6 */	mflr r0
/* 80494D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80494D98  7C 7F 1B 78 */	mr r31, r3
/* 80494D9C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80494DA0  28 00 00 02 */	cmplwi r0, 2
/* 80494DA4  40 82 00 58 */	bne lbl_80494DFC
/* 80494DA8  3C 60 80 49 */	lis r3, lit_5868@ha /* 0x804966AC@ha */
/* 80494DAC  38 83 66 AC */	addi r4, r3, lit_5868@l /* 0x804966AC@l */
/* 80494DB0  80 64 00 00 */	lwz r3, 0(r4)
/* 80494DB4  80 04 00 04 */	lwz r0, 4(r4)
/* 80494DB8  90 7F 07 40 */	stw r3, 0x740(r31)
/* 80494DBC  90 1F 07 44 */	stw r0, 0x744(r31)
/* 80494DC0  80 04 00 08 */	lwz r0, 8(r4)
/* 80494DC4  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80494DC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80494DCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80494DD0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80494DD4  3C 80 80 49 */	lis r4, l_staff_name@ha /* 0x804964B4@ha */
/* 80494DD8  38 84 64 B4 */	addi r4, r4, l_staff_name@l /* 0x804964B4@l */
/* 80494DDC  80 84 00 00 */	lwz r4, 0(r4)
/* 80494DE0  38 A0 00 00 */	li r5, 0
/* 80494DE4  38 C0 00 00 */	li r6, 0
/* 80494DE8  4B BB 2D 35 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80494DEC  90 7F 07 4C */	stw r3, 0x74c(r31)
/* 80494DF0  7F E3 FB 78 */	mr r3, r31
/* 80494DF4  4B FF E7 25 */	bl demoProc__8daTbox_cFv
/* 80494DF8  48 00 00 88 */	b lbl_80494E80
lbl_80494DFC:
/* 80494DFC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80494E00  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80494E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80494E08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80494E0C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80494E10  7C 05 07 74 */	extsb r5, r0
/* 80494E14  4B BA 05 4D */	bl isSwitch__10dSv_info_cCFii
/* 80494E18  2C 03 00 00 */	cmpwi r3, 0
/* 80494E1C  41 82 00 64 */	beq lbl_80494E80
/* 80494E20  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80494E24  54 05 46 3E */	srwi r5, r0, 0x18
/* 80494E28  28 05 00 FF */	cmplwi r5, 0xff
/* 80494E2C  40 82 00 2C */	bne lbl_80494E58
/* 80494E30  7F E3 FB 78 */	mr r3, r31
/* 80494E34  3C 80 80 49 */	lis r4, d_a_tbox__stringBase0@ha /* 0x80496334@ha */
/* 80494E38  38 84 63 34 */	addi r4, r4, d_a_tbox__stringBase0@l /* 0x80496334@l */
/* 80494E3C  38 84 00 E4 */	addi r4, r4, 0xe4
/* 80494E40  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80494E44  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80494E48  38 C0 00 01 */	li r6, 1
/* 80494E4C  38 E0 00 00 */	li r7, 0
/* 80494E50  4B B8 65 7D */	bl fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs
/* 80494E54  48 00 00 20 */	b lbl_80494E74
lbl_80494E58:
/* 80494E58  7F E3 FB 78 */	mr r3, r31
/* 80494E5C  A8 9F 09 7A */	lha r4, 0x97a(r31)
/* 80494E60  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80494E64  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80494E68  38 E0 00 00 */	li r7, 0
/* 80494E6C  39 00 00 01 */	li r8, 1
/* 80494E70  4B B8 68 0D */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80494E74:
/* 80494E74  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80494E78  60 00 00 02 */	ori r0, r0, 2
/* 80494E7C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80494E80:
/* 80494E80  38 60 00 01 */	li r3, 1
/* 80494E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80494E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494E8C  7C 08 03 A6 */	mtlr r0
/* 80494E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80494E94  4E 80 00 20 */	blr 
