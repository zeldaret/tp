lbl_80CC6618:
/* 80CC6618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC661C  7C 08 02 A6 */	mflr r0
/* 80CC6620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC6624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC6628  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC662C  41 82 00 F4 */	beq lbl_80CC6720
/* 80CC6630  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 80CC6634  3C 80 80 CC */	lis r4, __dt__10RopeWork_cFv@ha /* 0x80CC6424@ha */
/* 80CC6638  38 84 64 24 */	addi r4, r4, __dt__10RopeWork_cFv@l /* 0x80CC6424@l */
/* 80CC663C  4B 69 B6 31 */	bl __destroy_new_array
/* 80CC6640  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80CC6644  3C 80 80 CC */	lis r4, __dt__9Sakuita_cFv@ha /* 0x80CC63E4@ha */
/* 80CC6648  38 84 63 E4 */	addi r4, r4, __dt__9Sakuita_cFv@l /* 0x80CC63E4@l */
/* 80CC664C  4B 69 B6 21 */	bl __destroy_new_array
/* 80CC6650  88 1F 06 36 */	lbz r0, 0x636(r31)
/* 80CC6654  28 00 00 00 */	cmplwi r0, 0
/* 80CC6658  41 82 00 50 */	beq lbl_80CC66A8
/* 80CC665C  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CC6998@ha */
/* 80CC6660  38 63 69 98 */	addi r3, r3, l_arcName@l /* 0x80CC6998@l */
/* 80CC6664  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC6668  3C 80 80 CC */	lis r4, d_a_obj_sakuita_rope__stringBase0@ha /* 0x80CC6970@ha */
/* 80CC666C  38 84 69 70 */	addi r4, r4, d_a_obj_sakuita_rope__stringBase0@l /* 0x80CC6970@l */
/* 80CC6670  38 84 00 0A */	addi r4, r4, 0xa
/* 80CC6674  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC6678  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC667C  3C A5 00 02 */	addis r5, r5, 2
/* 80CC6680  38 C0 00 80 */	li r6, 0x80
/* 80CC6684  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CC6688  4B 37 5C F5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CC668C  7C 64 1B 78 */	mr r4, r3
/* 80CC6690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC6694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC6698  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC669C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CC66A0  7C 05 07 74 */	extsb r5, r0
/* 80CC66A4  4B 36 64 8D */	bl removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
lbl_80CC66A8:
/* 80CC66A8  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 80CC66AC  3C 80 80 CC */	lis r4, l_arcName@ha /* 0x80CC6998@ha */
/* 80CC66B0  38 84 69 98 */	addi r4, r4, l_arcName@l /* 0x80CC6998@l */
/* 80CC66B4  80 84 00 00 */	lwz r4, 0(r4)
/* 80CC66B8  4B 36 69 51 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CC66BC  34 1F 05 DC */	addic. r0, r31, 0x5dc
/* 80CC66C0  41 82 00 54 */	beq lbl_80CC6714
/* 80CC66C4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CC66C8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CC66CC  90 7F 05 F4 */	stw r3, 0x5f4(r31)
/* 80CC66D0  38 03 00 20 */	addi r0, r3, 0x20
/* 80CC66D4  90 1F 05 F8 */	stw r0, 0x5f8(r31)
/* 80CC66D8  34 1F 05 F8 */	addic. r0, r31, 0x5f8
/* 80CC66DC  41 82 00 24 */	beq lbl_80CC6700
/* 80CC66E0  3C 60 80 CC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CC6A10@ha */
/* 80CC66E4  38 03 6A 10 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CC6A10@l */
/* 80CC66E8  90 1F 05 F8 */	stw r0, 0x5f8(r31)
/* 80CC66EC  34 1F 05 F8 */	addic. r0, r31, 0x5f8
/* 80CC66F0  41 82 00 10 */	beq lbl_80CC6700
/* 80CC66F4  3C 60 80 CC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CC6A04@ha */
/* 80CC66F8  38 03 6A 04 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CC6A04@l */
/* 80CC66FC  90 1F 05 F8 */	stw r0, 0x5f8(r31)
lbl_80CC6700:
/* 80CC6700  34 1F 05 DC */	addic. r0, r31, 0x5dc
/* 80CC6704  41 82 00 10 */	beq lbl_80CC6714
/* 80CC6708  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CC670C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CC6710  90 1F 05 F4 */	stw r0, 0x5f4(r31)
lbl_80CC6714:
/* 80CC6714  7F E3 FB 78 */	mr r3, r31
/* 80CC6718  38 80 00 00 */	li r4, 0
/* 80CC671C  4B 35 25 71 */	bl __dt__10fopAc_ac_cFv
lbl_80CC6720:
/* 80CC6720  38 60 00 01 */	li r3, 1
/* 80CC6724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC6728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC672C  7C 08 03 A6 */	mtlr r0
/* 80CC6730  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC6734  4E 80 00 20 */	blr 
