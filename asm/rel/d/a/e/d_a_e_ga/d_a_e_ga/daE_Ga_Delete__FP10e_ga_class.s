lbl_804FB724:
/* 804FB724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB728  7C 08 02 A6 */	mflr r0
/* 804FB72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FB734  7C 7F 1B 78 */	mr r31, r3
/* 804FB738  88 03 4D 79 */	lbz r0, 0x4d79(r3)
/* 804FB73C  28 00 00 00 */	cmplwi r0, 0
/* 804FB740  41 82 00 44 */	beq lbl_804FB784
/* 804FB744  3C 60 80 50 */	lis r3, stringBase0@ha
/* 804FB748  38 63 BB D4 */	addi r3, r3, stringBase0@l
/* 804FB74C  38 80 00 03 */	li r4, 3
/* 804FB750  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804FB754  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804FB758  3C A5 00 02 */	addis r5, r5, 2
/* 804FB75C  38 C0 00 80 */	li r6, 0x80
/* 804FB760  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804FB764  4B B4 0B 88 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804FB768  7C 64 1B 78 */	mr r4, r3
/* 804FB76C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804FB770  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804FB774  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804FB778  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804FB77C  7C 05 07 74 */	extsb r5, r0
/* 804FB780  4B B3 13 B0 */	b removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
lbl_804FB784:
/* 804FB784  38 7F 05 68 */	addi r3, r31, 0x568
/* 804FB788  3C 80 80 50 */	lis r4, stringBase0@ha
/* 804FB78C  38 84 BB D4 */	addi r4, r4, stringBase0@l
/* 804FB790  4B B3 18 78 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804FB794  88 1F 4D 78 */	lbz r0, 0x4d78(r31)
/* 804FB798  28 00 00 00 */	cmplwi r0, 0
/* 804FB79C  41 82 00 10 */	beq lbl_804FB7AC
/* 804FB7A0  38 00 00 00 */	li r0, 0
/* 804FB7A4  3C 60 80 50 */	lis r3, data_804FBC48@ha
/* 804FB7A8  98 03 BC 48 */	stb r0, data_804FBC48@l(r3)
lbl_804FB7AC:
/* 804FB7AC  38 60 00 01 */	li r3, 1
/* 804FB7B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FB7B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB7B8  7C 08 03 A6 */	mtlr r0
/* 804FB7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB7C0  4E 80 00 20 */	blr 
