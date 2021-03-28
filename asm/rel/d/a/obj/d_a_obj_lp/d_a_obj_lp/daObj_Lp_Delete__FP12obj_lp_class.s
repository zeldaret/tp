lbl_80C550F8:
/* 80C550F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C550FC  7C 08 02 A6 */	mflr r0
/* 80C55100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C55104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C55108  7C 7F 1B 78 */	mr r31, r3
/* 80C5510C  3C 7F 00 01 */	addis r3, r31, 1
/* 80C55110  88 03 AD B4 */	lbz r0, -0x524c(r3)
/* 80C55114  28 00 00 00 */	cmplwi r0, 0
/* 80C55118  41 82 00 48 */	beq lbl_80C55160
/* 80C5511C  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C55120  38 63 5A C0 */	addi r3, r3, stringBase0@l
/* 80C55124  38 63 00 07 */	addi r3, r3, 7
/* 80C55128  38 80 00 03 */	li r4, 3
/* 80C5512C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C55130  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C55134  3C A5 00 02 */	addis r5, r5, 2
/* 80C55138  38 C0 00 80 */	li r6, 0x80
/* 80C5513C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C55140  4B 3E 71 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C55144  7C 64 1B 78 */	mr r4, r3
/* 80C55148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5514C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C55150  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C55154  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C55158  7C 05 07 74 */	extsb r5, r0
/* 80C5515C  4B 3D 79 D4 */	b removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
lbl_80C55160:
/* 80C55160  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C55164  3C 80 80 C5 */	lis r4, stringBase0@ha
/* 80C55168  38 84 5A C0 */	addi r4, r4, stringBase0@l
/* 80C5516C  38 84 00 07 */	addi r4, r4, 7
/* 80C55170  4B 3D 7E 98 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C55174  38 60 00 01 */	li r3, 1
/* 80C55178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5517C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C55180  7C 08 03 A6 */	mtlr r0
/* 80C55184  38 21 00 10 */	addi r1, r1, 0x10
/* 80C55188  4E 80 00 20 */	blr 
