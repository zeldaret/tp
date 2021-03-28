lbl_80C8DB28:
/* 80C8DB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8DB2C  7C 08 02 A6 */	mflr r0
/* 80C8DB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8DB34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8DB38  7C 7F 1B 78 */	mr r31, r3
/* 80C8DB3C  3C 60 80 C9 */	lis r3, stringBase0@ha
/* 80C8DB40  38 63 E6 D0 */	addi r3, r3, stringBase0@l
/* 80C8DB44  38 80 00 04 */	li r4, 4
/* 80C8DB48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C8DB4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C8DB50  3C A5 00 02 */	addis r5, r5, 2
/* 80C8DB54  38 C0 00 80 */	li r6, 0x80
/* 80C8DB58  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C8DB5C  4B 3A E7 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C8DB60  3C 80 00 08 */	lis r4, 8
/* 80C8DB64  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C8DB68  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C8DB6C  4B 38 70 E8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C8DB70  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C8DB74  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C8DB78  30 03 FF FF */	addic r0, r3, -1
/* 80C8DB7C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C8DB80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8DB84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8DB88  7C 08 03 A6 */	mtlr r0
/* 80C8DB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8DB90  4E 80 00 20 */	blr 
