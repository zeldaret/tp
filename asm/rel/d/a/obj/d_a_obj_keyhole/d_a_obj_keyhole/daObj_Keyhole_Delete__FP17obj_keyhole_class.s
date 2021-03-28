lbl_80C42D14:
/* 80C42D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C42D18  7C 08 02 A6 */	mflr r0
/* 80C42D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C42D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C42D24  7C 7F 1B 78 */	mr r31, r3
/* 80C42D28  88 03 2C B4 */	lbz r0, 0x2cb4(r3)
/* 80C42D2C  28 00 00 00 */	cmplwi r0, 0
/* 80C42D30  41 82 00 48 */	beq lbl_80C42D78
/* 80C42D34  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C42D38  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 80C42D3C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C42D40  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C42D44  3C A5 00 02 */	addis r5, r5, 2
/* 80C42D48  38 C0 00 80 */	li r6, 0x80
/* 80C42D4C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C42D50  4B 3F 95 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C42D54  7C 64 1B 78 */	mr r4, r3
/* 80C42D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C42D5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C42D60  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C42D64  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C42D68  7C 05 07 74 */	extsb r5, r0
/* 80C42D6C  4B 3E 9D C4 */	b removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
/* 80C42D70  38 00 00 00 */	li r0, 0
/* 80C42D74  98 1F 2C B4 */	stb r0, 0x2cb4(r31)
lbl_80C42D78:
/* 80C42D78  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C42D7C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C42D80  4B 3E A2 88 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C42D84  88 1F 2C A5 */	lbz r0, 0x2ca5(r31)
/* 80C42D88  28 00 00 00 */	cmplwi r0, 0
/* 80C42D8C  41 82 00 10 */	beq lbl_80C42D9C
/* 80C42D90  38 00 00 00 */	li r0, 0
/* 80C42D94  3C 60 80 C4 */	lis r3, struct_80C43CE4+0x1@ha
/* 80C42D98  98 03 3C E5 */	stb r0, struct_80C43CE4+0x1@l(r3)
lbl_80C42D9C:
/* 80C42D9C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80C42DA0  28 00 00 00 */	cmplwi r0, 0
/* 80C42DA4  41 82 00 0C */	beq lbl_80C42DB0
/* 80C42DA8  38 7F 05 88 */	addi r3, r31, 0x588
/* 80C42DAC  4B 67 D9 48 */	b stopAnime__10Z2CreatureFv
lbl_80C42DB0:
/* 80C42DB0  38 60 00 01 */	li r3, 1
/* 80C42DB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C42DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C42DBC  7C 08 03 A6 */	mtlr r0
/* 80C42DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C42DC4  4E 80 00 20 */	blr 
