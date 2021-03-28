lbl_80157588:
/* 80157588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015758C  7C 08 02 A6 */	mflr r0
/* 80157590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80157594  38 A0 00 00 */	li r5, 0
/* 80157598  88 03 09 E8 */	lbz r0, 0x9e8(r3)
/* 8015759C  28 00 00 00 */	cmplwi r0, 0
/* 801575A0  54 84 18 38 */	slwi r4, r4, 3
/* 801575A4  3C 60 80 39 */	lis r3, l_objTbl@ha
/* 801575A8  38 03 2C E8 */	addi r0, r3, l_objTbl@l
/* 801575AC  7C 60 22 14 */	add r3, r0, r4
/* 801575B0  41 82 00 10 */	beq lbl_801575C0
/* 801575B4  3C 60 80 39 */	lis r3, l_objTWTbl@ha
/* 801575B8  38 03 2D 30 */	addi r0, r3, l_objTWTbl@l
/* 801575BC  7C 60 22 14 */	add r3, r0, r4
lbl_801575C0:
/* 801575C0  80 83 00 04 */	lwz r4, 4(r3)
/* 801575C4  2C 04 00 00 */	cmpwi r4, 0
/* 801575C8  40 81 00 24 */	ble lbl_801575EC
/* 801575CC  80 63 00 00 */	lwz r3, 0(r3)
/* 801575D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 801575D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 801575D8  3C A5 00 02 */	addis r5, r5, 2
/* 801575DC  38 C0 00 80 */	li r6, 0x80
/* 801575E0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801575E4  4B EE 4D 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801575E8  7C 65 1B 78 */	mr r5, r3
lbl_801575EC:
/* 801575EC  7C A3 2B 78 */	mr r3, r5
/* 801575F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801575F4  7C 08 03 A6 */	mtlr r0
/* 801575F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801575FC  4E 80 00 20 */	blr 
