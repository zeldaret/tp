lbl_80670328:
/* 80670328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067032C  7C 08 02 A6 */	mflr r0
/* 80670330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80670334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80670338  7C 7F 1B 78 */	mr r31, r3
/* 8067033C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80670340  28 00 00 03 */	cmplwi r0, 3
/* 80670344  40 82 00 3C */	bne lbl_80670380
/* 80670348  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067034C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80670350  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80670354  3C 80 80 67 */	lis r4, l_staff_name@ha /* 0x8067096C@ha */
/* 80670358  38 84 09 6C */	addi r4, r4, l_staff_name@l /* 0x8067096C@l */
/* 8067035C  38 A0 00 00 */	li r5, 0
/* 80670360  38 C0 00 00 */	li r6, 0
/* 80670364  4B 9D 77 B9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80670368  90 7F 05 88 */	stw r3, 0x588(r31)
/* 8067036C  7F E3 FB 78 */	mr r3, r31
/* 80670370  4B FF F7 91 */	bl demoProc__9daBdoor_cFv
/* 80670374  38 00 00 02 */	li r0, 2
/* 80670378  98 1F 05 81 */	stb r0, 0x581(r31)
/* 8067037C  48 00 00 2C */	b lbl_806703A8
lbl_80670380:
/* 80670380  4B FF FF 15 */	bl checkOpen__9daBdoor_cFv
/* 80670384  2C 03 00 00 */	cmpwi r3, 0
/* 80670388  41 82 00 20 */	beq lbl_806703A8
/* 8067038C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80670390  3C 80 80 67 */	lis r4, l_door_open_demo@ha /* 0x80670954@ha */
/* 80670394  38 84 09 54 */	addi r4, r4, l_door_open_demo@l /* 0x80670954@l */
/* 80670398  4B 9D 30 91 */	bl setEventName__11dEvt_info_cFPc
/* 8067039C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 806703A0  60 00 00 04 */	ori r0, r0, 4
/* 806703A4  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_806703A8:
/* 806703A8  38 60 00 01 */	li r3, 1
/* 806703AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806703B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806703B4  7C 08 03 A6 */	mtlr r0
/* 806703B8  38 21 00 10 */	addi r1, r1, 0x10
/* 806703BC  4E 80 00 20 */	blr 
