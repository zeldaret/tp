lbl_80CCBCB0:
/* 80CCBCB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCBCB4  7C 08 02 A6 */	mflr r0
/* 80CCBCB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCBCBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCBCC0  7C 7F 1B 78 */	mr r31, r3
/* 80CCBCC4  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CCBCC8  28 00 00 02 */	cmplwi r0, 2
/* 80CCBCCC  40 82 00 44 */	bne lbl_80CCBD10
/* 80CCBCD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCBCD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCBCD8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CCBCDC  3C 80 80 CD */	lis r4, l_staffName@ha /* 0x80CCCCF4@ha */
/* 80CCBCE0  38 84 CC F4 */	addi r4, r4, l_staffName@l /* 0x80CCCCF4@l */
/* 80CCBCE4  80 84 00 00 */	lwz r4, 0(r4)
/* 80CCBCE8  38 A0 00 00 */	li r5, 0
/* 80CCBCEC  38 C0 00 00 */	li r6, 0
/* 80CCBCF0  4B 37 BE 2D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80CCBCF4  90 7F 05 E4 */	stw r3, 0x5e4(r31)
/* 80CCBCF8  38 00 00 02 */	li r0, 2
/* 80CCBCFC  98 1F 05 F0 */	stb r0, 0x5f0(r31)
/* 80CCBD00  7F E3 FB 78 */	mr r3, r31
/* 80CCBD04  38 80 00 00 */	li r4, 0
/* 80CCBD08  48 00 01 85 */	bl demoModeInit__17daObjSCannonTen_cFi
/* 80CCBD0C  48 00 00 2C */	b lbl_80CCBD38
lbl_80CCBD10:
/* 80CCBD10  A8 9F 05 EC */	lha r4, 0x5ec(r31)
/* 80CCBD14  38 A0 00 FF */	li r5, 0xff
/* 80CCBD18  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CCBD1C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CCBD20  38 E0 00 00 */	li r7, 0
/* 80CCBD24  39 00 00 01 */	li r8, 1
/* 80CCBD28  4B 34 F9 55 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CCBD2C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CCBD30  60 00 00 02 */	ori r0, r0, 2
/* 80CCBD34  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CCBD38:
/* 80CCBD38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCBD3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCBD40  7C 08 03 A6 */	mtlr r0
/* 80CCBD44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCBD48  4E 80 00 20 */	blr 
