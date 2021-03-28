lbl_8015994C:
/* 8015994C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80159950  7C 08 02 A6 */	mflr r0
/* 80159954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80159958  38 A0 00 00 */	li r5, 0
/* 8015995C  88 03 0A C6 */	lbz r0, 0xac6(r3)
/* 80159960  28 00 00 00 */	cmplwi r0, 0
/* 80159964  54 84 18 38 */	slwi r4, r4, 3
/* 80159968  3C 60 80 39 */	lis r3, l_objTbl@ha
/* 8015996C  38 03 35 20 */	addi r0, r3, l_objTbl@l
/* 80159970  7C 60 22 14 */	add r3, r0, r4
/* 80159974  41 82 00 10 */	beq lbl_80159984
/* 80159978  3C 60 80 39 */	lis r3, l_objTWTbl@ha
/* 8015997C  38 03 35 88 */	addi r0, r3, l_objTWTbl@l
/* 80159980  7C 60 22 14 */	add r3, r0, r4
lbl_80159984:
/* 80159984  80 83 00 04 */	lwz r4, 4(r3)
/* 80159988  2C 04 00 00 */	cmpwi r4, 0
/* 8015998C  40 81 00 24 */	ble lbl_801599B0
/* 80159990  80 63 00 00 */	lwz r3, 0(r3)
/* 80159994  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80159998  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8015999C  3C A5 00 02 */	addis r5, r5, 2
/* 801599A0  38 C0 00 80 */	li r6, 0x80
/* 801599A4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801599A8  4B EE 29 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801599AC  7C 65 1B 78 */	mr r5, r3
lbl_801599B0:
/* 801599B0  7C A3 2B 78 */	mr r3, r5
/* 801599B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801599B8  7C 08 03 A6 */	mtlr r0
/* 801599BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801599C0  4E 80 00 20 */	blr 
