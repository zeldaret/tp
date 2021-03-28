lbl_80D07CF0:
/* 80D07CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D07CF4  7C 08 02 A6 */	mflr r0
/* 80D07CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D07CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D07D00  7C 7F 1B 78 */	mr r31, r3
/* 80D07D04  88 03 1B BD */	lbz r0, 0x1bbd(r3)
/* 80D07D08  28 00 00 00 */	cmplwi r0, 0
/* 80D07D0C  41 82 00 44 */	beq lbl_80D07D50
/* 80D07D10  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D07D14  38 63 86 20 */	addi r3, r3, stringBase0@l
/* 80D07D18  38 80 00 03 */	li r4, 3
/* 80D07D1C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D07D20  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D07D24  3C A5 00 02 */	addis r5, r5, 2
/* 80D07D28  38 C0 00 80 */	li r6, 0x80
/* 80D07D2C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D07D30  4B 33 45 BC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D07D34  7C 64 1B 78 */	mr r4, r3
/* 80D07D38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D07D3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D07D40  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D07D44  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D07D48  7C 05 07 74 */	extsb r5, r0
/* 80D07D4C  4B 32 4D E4 */	b removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
lbl_80D07D50:
/* 80D07D50  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D07D54  3C 80 80 D1 */	lis r4, stringBase0@ha
/* 80D07D58  38 84 86 20 */	addi r4, r4, stringBase0@l
/* 80D07D5C  4B 32 52 AC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D07D60  38 60 00 01 */	li r3, 1
/* 80D07D64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D07D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D07D6C  7C 08 03 A6 */	mtlr r0
/* 80D07D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D07D74  4E 80 00 20 */	blr 
