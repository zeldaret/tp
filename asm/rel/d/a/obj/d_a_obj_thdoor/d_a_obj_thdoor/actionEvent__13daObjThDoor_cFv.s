lbl_80D0DD90:
/* 80D0DD90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0DD94  7C 08 02 A6 */	mflr r0
/* 80D0DD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0DD9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0DDA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0DDA4  7C 7E 1B 78 */	mr r30, r3
/* 80D0DDA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0DDAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0DDB0  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80D0DDB4  38 7F 40 C0 */	addi r3, r31, 0x40c0
/* 80D0DDB8  A8 9E 05 AE */	lha r4, 0x5ae(r30)
/* 80D0DDBC  4B 33 9C BD */	bl endCheck__16dEvent_manager_cFs
/* 80D0DDC0  2C 03 00 00 */	cmpwi r3, 0
/* 80D0DDC4  41 82 00 4C */	beq lbl_80D0DE10
/* 80D0DDC8  38 00 00 03 */	li r0, 3
/* 80D0DDCC  98 1E 05 AC */	stb r0, 0x5ac(r30)
/* 80D0DDD0  38 7F 3F 90 */	addi r3, r31, 0x3f90
/* 80D0DDD4  4B 33 46 95 */	bl reset__14dEvt_control_cFv
/* 80D0DDD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0DDDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0DDE0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D0DDE4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D0DDE8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D0DDEC  7C 05 07 74 */	extsb r5, r0
/* 80D0DDF0  4B 32 74 11 */	bl onSwitch__10dSv_info_cFii
/* 80D0DDF4  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80D0DDF8  28 04 00 00 */	cmplwi r4, 0
/* 80D0DDFC  41 82 00 1C */	beq lbl_80D0DE18
/* 80D0DE00  7F E3 FB 78 */	mr r3, r31
/* 80D0DE04  7F C5 F3 78 */	mr r5, r30
/* 80D0DE08  4B 36 6C 01 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D0DE0C  48 00 00 0C */	b lbl_80D0DE18
lbl_80D0DE10:
/* 80D0DE10  7F C3 F3 78 */	mr r3, r30
/* 80D0DE14  48 00 00 21 */	bl demoProc__13daObjThDoor_cFv
lbl_80D0DE18:
/* 80D0DE18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0DE1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0DE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0DE24  7C 08 03 A6 */	mtlr r0
/* 80D0DE28  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0DE2C  4E 80 00 20 */	blr 
