lbl_80495058:
/* 80495058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049505C  7C 08 02 A6 */	mflr r0
/* 80495060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495068  7C 7F 1B 78 */	mr r31, r3
/* 8049506C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80495070  28 00 00 02 */	cmplwi r0, 2
/* 80495074  40 82 00 58 */	bne lbl_804950CC
/* 80495078  3C 60 80 49 */	lis r3, lit_5954@ha /* 0x804966DC@ha */
/* 8049507C  38 83 66 DC */	addi r4, r3, lit_5954@l /* 0x804966DC@l */
/* 80495080  80 64 00 00 */	lwz r3, 0(r4)
/* 80495084  80 04 00 04 */	lwz r0, 4(r4)
/* 80495088  90 7F 07 40 */	stw r3, 0x740(r31)
/* 8049508C  90 1F 07 44 */	stw r0, 0x744(r31)
/* 80495090  80 04 00 08 */	lwz r0, 8(r4)
/* 80495094  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80495098  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049509C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804950A0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804950A4  3C 80 80 49 */	lis r4, l_staff_name@ha /* 0x804964B4@ha */
/* 804950A8  38 84 64 B4 */	addi r4, r4, l_staff_name@l /* 0x804964B4@l */
/* 804950AC  80 84 00 00 */	lwz r4, 0(r4)
/* 804950B0  38 A0 00 00 */	li r5, 0
/* 804950B4  38 C0 00 00 */	li r6, 0
/* 804950B8  4B BB 2A 65 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 804950BC  90 7F 07 4C */	stw r3, 0x74c(r31)
/* 804950C0  7F E3 FB 78 */	mr r3, r31
/* 804950C4  4B FF E4 55 */	bl demoProc__8daTbox_cFv
/* 804950C8  48 00 00 AC */	b lbl_80495174
lbl_804950CC:
/* 804950CC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804950D0  7C 03 07 74 */	extsb r3, r0
/* 804950D4  4B B8 79 49 */	bl fopAcM_myRoomSearchEnemy__FSc
/* 804950D8  28 03 00 00 */	cmplwi r3, 0
/* 804950DC  40 82 00 98 */	bne lbl_80495174
/* 804950E0  88 7F 07 5C */	lbz r3, 0x75c(r31)
/* 804950E4  28 03 00 00 */	cmplwi r3, 0
/* 804950E8  41 82 00 10 */	beq lbl_804950F8
/* 804950EC  38 03 FF FF */	addi r0, r3, -1
/* 804950F0  98 1F 07 5C */	stb r0, 0x75c(r31)
/* 804950F4  48 00 00 80 */	b lbl_80495174
lbl_804950F8:
/* 804950F8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804950FC  54 05 46 3E */	srwi r5, r0, 0x18
/* 80495100  28 05 00 FF */	cmplwi r5, 0xff
/* 80495104  40 82 00 2C */	bne lbl_80495130
/* 80495108  7F E3 FB 78 */	mr r3, r31
/* 8049510C  3C 80 80 49 */	lis r4, d_a_tbox__stringBase0@ha /* 0x80496334@ha */
/* 80495110  38 84 63 34 */	addi r4, r4, d_a_tbox__stringBase0@l /* 0x80496334@l */
/* 80495114  38 84 00 E4 */	addi r4, r4, 0xe4
/* 80495118  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8049511C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80495120  38 C0 00 01 */	li r6, 1
/* 80495124  38 E0 00 00 */	li r7, 0
/* 80495128  4B B8 62 A5 */	bl fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs
/* 8049512C  48 00 00 20 */	b lbl_8049514C
lbl_80495130:
/* 80495130  7F E3 FB 78 */	mr r3, r31
/* 80495134  A8 9F 09 7A */	lha r4, 0x97a(r31)
/* 80495138  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8049513C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80495140  38 E0 00 00 */	li r7, 0
/* 80495144  39 00 00 01 */	li r8, 1
/* 80495148  4B B8 65 35 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_8049514C:
/* 8049514C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80495150  60 00 00 02 */	ori r0, r0, 2
/* 80495154  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80495158  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8049515C  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80495160  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80495164  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80495168  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8049516C  7C 05 07 74 */	extsb r5, r0
/* 80495170  4B BA 00 91 */	bl onSwitch__10dSv_info_cFii
lbl_80495174:
/* 80495174  38 60 00 01 */	li r3, 1
/* 80495178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049517C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495180  7C 08 03 A6 */	mtlr r0
/* 80495184  38 21 00 10 */	addi r1, r1, 0x10
/* 80495188  4E 80 00 20 */	blr 
