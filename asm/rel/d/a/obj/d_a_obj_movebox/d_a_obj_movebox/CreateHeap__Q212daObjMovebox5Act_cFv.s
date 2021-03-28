lbl_8047EB48:
/* 8047EB48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047EB4C  7C 08 02 A6 */	mflr r0
/* 8047EB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047EB54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047EB58  7C 7F 1B 78 */	mr r31, r3
/* 8047EB5C  38 60 00 01 */	li r3, 1
/* 8047EB60  80 DF 08 AC */	lwz r6, 0x8ac(r31)
/* 8047EB64  1C A6 00 A0 */	mulli r5, r6, 0xa0
/* 8047EB68  3C 80 80 48 */	lis r4, M_attr__Q212daObjMovebox5Act_c@ha
/* 8047EB6C  38 04 11 68 */	addi r0, r4, M_attr__Q212daObjMovebox5Act_c@l
/* 8047EB70  7C 80 2A 14 */	add r4, r0, r5
/* 8047EB74  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8047EB78  2C 04 00 00 */	cmpwi r4, 0
/* 8047EB7C  41 80 00 54 */	blt lbl_8047EBD0
/* 8047EB80  54 C0 10 3A */	slwi r0, r6, 2
/* 8047EB84  3C 60 80 48 */	lis r3, M_arcname__Q212daObjMovebox5Act_c@ha
/* 8047EB88  38 63 11 04 */	addi r3, r3, M_arcname__Q212daObjMovebox5Act_c@l
/* 8047EB8C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8047EB90  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8047EB94  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8047EB98  3C A5 00 02 */	addis r5, r5, 2
/* 8047EB9C  38 C0 00 80 */	li r6, 0x80
/* 8047EBA0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8047EBA4  4B BB D7 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8047EBA8  3C 80 00 08 */	lis r4, 8
/* 8047EBAC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8047EBB0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8047EBB4  4B B9 60 A0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8047EBB8  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 8047EBBC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8047EBC0  30 03 FF FF */	addic r0, r3, -1
/* 8047EBC4  7C 00 19 10 */	subfe r0, r0, r3
/* 8047EBC8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8047EBCC  48 00 00 0C */	b lbl_8047EBD8
lbl_8047EBD0:
/* 8047EBD0  38 00 00 00 */	li r0, 0
/* 8047EBD4  90 1F 05 A8 */	stw r0, 0x5a8(r31)
lbl_8047EBD8:
/* 8047EBD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047EBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047EBE0  7C 08 03 A6 */	mtlr r0
/* 8047EBE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8047EBE8  4E 80 00 20 */	blr 
