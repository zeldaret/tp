lbl_80846DB0:
/* 80846DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80846DB4  7C 08 02 A6 */	mflr r0
/* 80846DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80846DBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80846DC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80846DC4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80846DC8  7C 9F 23 78 */	mr r31, r4
/* 80846DCC  41 82 01 3C */	beq lbl_80846F08
/* 80846DD0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80846DD4  3C 80 80 85 */	lis r4, l_arcName@ha
/* 80846DD8  38 84 8E 3C */	addi r4, r4, l_arcName@l
/* 80846DDC  4B 7E 62 2C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80846DE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80846DE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80846DE8  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 80846DEC  28 03 00 00 */	cmplwi r3, 0
/* 80846DF0  41 82 00 20 */	beq lbl_80846E10
/* 80846DF4  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80846DF8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80846DFC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80846E00  80 63 00 08 */	lwz r3, 8(r3)
/* 80846E04  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80846E08  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80846E0C  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80846E10:
/* 80846E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80846E14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80846E18  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80846E1C  28 03 00 00 */	cmplwi r3, 0
/* 80846E20  41 82 00 10 */	beq lbl_80846E30
/* 80846E24  80 03 05 78 */	lwz r0, 0x578(r3)
/* 80846E28  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 80846E2C  90 03 05 78 */	stw r0, 0x578(r3)
lbl_80846E30:
/* 80846E30  38 7E 06 18 */	addi r3, r30, 0x618
/* 80846E34  81 9E 06 18 */	lwz r12, 0x618(r30)
/* 80846E38  81 8C 00 08 */	lwz r12, 8(r12)
/* 80846E3C  7D 89 03 A6 */	mtctr r12
/* 80846E40  4E 80 04 21 */	bctrl 
/* 80846E44  34 1E 06 A8 */	addic. r0, r30, 0x6a8
/* 80846E48  41 82 00 20 */	beq lbl_80846E68
/* 80846E4C  34 1E 06 A8 */	addic. r0, r30, 0x6a8
/* 80846E50  41 82 00 18 */	beq lbl_80846E68
/* 80846E54  34 1E 06 A8 */	addic. r0, r30, 0x6a8
/* 80846E58  41 82 00 10 */	beq lbl_80846E68
/* 80846E5C  3C 60 80 85 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80846E60  38 03 8F 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80846E64  90 1E 06 A8 */	stw r0, 0x6a8(r30)
lbl_80846E68:
/* 80846E68  38 7E 06 18 */	addi r3, r30, 0x618
/* 80846E6C  38 80 FF FF */	li r4, -1
/* 80846E70  4B A7 95 B0 */	b __dt__10Z2CreatureFv
/* 80846E74  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80846E78  3C 80 80 84 */	lis r4, __dt__16daPy_frameCtrl_cFv@ha
/* 80846E7C  38 84 6C 4C */	addi r4, r4, __dt__16daPy_frameCtrl_cFv@l
/* 80846E80  38 A0 00 18 */	li r5, 0x18
/* 80846E84  38 C0 00 03 */	li r6, 3
/* 80846E88  4B B1 AE 60 */	b __destroy_arr
/* 80846E8C  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80846E90  3C 80 80 84 */	lis r4, __dt__19mDoExt_AnmRatioPackFv@ha
/* 80846E94  38 84 6C F4 */	addi r4, r4, __dt__19mDoExt_AnmRatioPackFv@l
/* 80846E98  38 A0 00 08 */	li r5, 8
/* 80846E9C  38 C0 00 03 */	li r6, 3
/* 80846EA0  4B B1 AE 48 */	b __destroy_arr
/* 80846EA4  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80846EA8  41 82 00 20 */	beq lbl_80846EC8
/* 80846EAC  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80846EB0  41 82 00 18 */	beq lbl_80846EC8
/* 80846EB4  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80846EB8  41 82 00 10 */	beq lbl_80846EC8
/* 80846EBC  3C 60 80 85 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80846EC0  38 03 8F 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80846EC4  90 1E 05 90 */	stw r0, 0x590(r30)
lbl_80846EC8:
/* 80846EC8  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80846ECC  41 82 00 20 */	beq lbl_80846EEC
/* 80846ED0  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80846ED4  41 82 00 18 */	beq lbl_80846EEC
/* 80846ED8  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80846EDC  41 82 00 10 */	beq lbl_80846EEC
/* 80846EE0  3C 60 80 85 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80846EE4  38 03 8F 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80846EE8  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_80846EEC:
/* 80846EEC  7F C3 F3 78 */	mr r3, r30
/* 80846EF0  38 80 00 00 */	li r4, 0
/* 80846EF4  4B 7D 1D 98 */	b __dt__10fopAc_ac_cFv
/* 80846EF8  7F E0 07 35 */	extsh. r0, r31
/* 80846EFC  40 81 00 0C */	ble lbl_80846F08
/* 80846F00  7F C3 F3 78 */	mr r3, r30
/* 80846F04  4B A8 7E 38 */	b __dl__FPv
lbl_80846F08:
/* 80846F08  7F C3 F3 78 */	mr r3, r30
/* 80846F0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80846F10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80846F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80846F18  7C 08 03 A6 */	mtlr r0
/* 80846F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80846F20  4E 80 00 20 */	blr 
