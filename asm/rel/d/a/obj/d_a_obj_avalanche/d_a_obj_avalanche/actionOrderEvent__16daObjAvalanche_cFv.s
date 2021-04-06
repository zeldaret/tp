lbl_80BA773C:
/* 80BA773C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA7740  7C 08 02 A6 */	mflr r0
/* 80BA7744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA7748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA774C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA7750  7C 7E 1B 78 */	mr r30, r3
/* 80BA7754  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80BA7758  28 00 00 02 */	cmplwi r0, 2
/* 80BA775C  40 82 00 68 */	bne lbl_80BA77C4
/* 80BA7760  38 00 00 02 */	li r0, 2
/* 80BA7764  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80BA7768  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA776C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA7770  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80BA7774  38 7F 40 C0 */	addi r3, r31, 0x40c0
/* 80BA7778  3C 80 80 BA */	lis r4, l_staffName@ha /* 0x80BA7D98@ha */
/* 80BA777C  38 84 7D 98 */	addi r4, r4, l_staffName@l /* 0x80BA7D98@l */
/* 80BA7780  80 84 00 00 */	lwz r4, 0(r4)
/* 80BA7784  38 A0 00 00 */	li r5, 0
/* 80BA7788  38 C0 00 00 */	li r6, 0
/* 80BA778C  4B 4A 03 91 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80BA7790  90 7E 05 EC */	stw r3, 0x5ec(r30)
/* 80BA7794  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BA7798  28 03 00 00 */	cmplwi r3, 0
/* 80BA779C  41 82 00 1C */	beq lbl_80BA77B8
/* 80BA77A0  4B 6C 0A 35 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80BA77A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA77A8  41 82 00 10 */	beq lbl_80BA77B8
/* 80BA77AC  7F E3 FB 78 */	mr r3, r31
/* 80BA77B0  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80BA77B4  4B 4C CA 9D */	bl Release__4cBgSFP9dBgW_Base
lbl_80BA77B8:
/* 80BA77B8  7F C3 F3 78 */	mr r3, r30
/* 80BA77BC  48 00 00 D1 */	bl demoProc__16daObjAvalanche_cFv
/* 80BA77C0  48 00 00 2C */	b lbl_80BA77EC
lbl_80BA77C4:
/* 80BA77C4  A8 9E 05 F0 */	lha r4, 0x5f0(r30)
/* 80BA77C8  88 BE 05 E9 */	lbz r5, 0x5e9(r30)
/* 80BA77CC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80BA77D0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80BA77D4  38 E0 00 00 */	li r7, 0
/* 80BA77D8  39 00 00 01 */	li r8, 1
/* 80BA77DC  4B 47 3E A1 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80BA77E0  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80BA77E4  60 00 00 02 */	ori r0, r0, 2
/* 80BA77E8  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_80BA77EC:
/* 80BA77EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA77F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA77F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA77F8  7C 08 03 A6 */	mtlr r0
/* 80BA77FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA7800  4E 80 00 20 */	blr 
