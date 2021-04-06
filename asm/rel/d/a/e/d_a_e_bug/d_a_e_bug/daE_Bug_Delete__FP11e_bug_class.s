lbl_806975A8:
/* 806975A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806975AC  7C 08 02 A6 */	mflr r0
/* 806975B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806975B4  39 61 00 30 */	addi r11, r1, 0x30
/* 806975B8  4B CC AC 15 */	bl _savegpr_25
/* 806975BC  7C 7F 1B 78 */	mr r31, r3
/* 806975C0  88 03 7D AD */	lbz r0, 0x7dad(r3)
/* 806975C4  28 00 00 00 */	cmplwi r0, 0
/* 806975C8  41 82 00 68 */	beq lbl_80697630
/* 806975CC  3B 20 00 00 */	li r25, 0
/* 806975D0  3B C0 00 00 */	li r30, 0
/* 806975D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806975D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806975DC  3F 63 00 02 */	addis r27, r3, 2
/* 806975E0  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 806975E4  3C 60 80 69 */	lis r3, d_a_e_bug__stringBase0@ha /* 0x80697D98@ha */
/* 806975E8  3B 83 7D 98 */	addi r28, r3, d_a_e_bug__stringBase0@l /* 0x80697D98@l */
/* 806975EC  3C 60 80 69 */	lis r3, l_bmdidx_4962@ha /* 0x80697D80@ha */
/* 806975F0  3B A3 7D 80 */	addi r29, r3, l_bmdidx_4962@l /* 0x80697D80@l */
/* 806975F4  3B 7B C2 F8 */	addi r27, r27, -15624
lbl_806975F8:
/* 806975F8  7F 83 E3 78 */	mr r3, r28
/* 806975FC  7C 9D F0 2E */	lwzx r4, r29, r30
/* 80697600  7F 65 DB 78 */	mr r5, r27
/* 80697604  38 C0 00 80 */	li r6, 0x80
/* 80697608  4B 9A 4C E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8069760C  7C 64 1B 78 */	mr r4, r3
/* 80697610  7F 43 D3 78 */	mr r3, r26
/* 80697614  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80697618  7C 05 07 74 */	extsb r5, r0
/* 8069761C  4B 99 55 15 */	bl removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
/* 80697620  3B 39 00 01 */	addi r25, r25, 1
/* 80697624  28 19 00 02 */	cmplwi r25, 2
/* 80697628  3B DE 00 04 */	addi r30, r30, 4
/* 8069762C  41 80 FF CC */	blt lbl_806975F8
lbl_80697630:
/* 80697630  38 7F 05 68 */	addi r3, r31, 0x568
/* 80697634  3C 80 80 69 */	lis r4, d_a_e_bug__stringBase0@ha /* 0x80697D98@ha */
/* 80697638  38 84 7D 98 */	addi r4, r4, d_a_e_bug__stringBase0@l /* 0x80697D98@l */
/* 8069763C  4B 99 59 CD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80697640  88 1F 7D AC */	lbz r0, 0x7dac(r31)
/* 80697644  28 00 00 00 */	cmplwi r0, 0
/* 80697648  41 82 00 10 */	beq lbl_80697658
/* 8069764C  38 00 00 00 */	li r0, 0
/* 80697650  3C 60 80 69 */	lis r3, struct_80697E6C+0x1@ha /* 0x80697E6D@ha */
/* 80697654  98 03 7E 6D */	stb r0, struct_80697E6C+0x1@l(r3)  /* 0x80697E6D@l */
lbl_80697658:
/* 80697658  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8069765C  28 00 00 00 */	cmplwi r0, 0
/* 80697660  41 82 00 38 */	beq lbl_80697698
/* 80697664  38 7F 7D 8C */	addi r3, r31, 0x7d8c
/* 80697668  4B C2 69 91 */	bl deleteObject__14Z2SoundObjBaseFv
/* 8069766C  3B 20 00 00 */	li r25, 0
/* 80697670  3B C0 00 00 */	li r30, 0
/* 80697674  48 00 00 18 */	b lbl_8069768C
lbl_80697678:
/* 80697678  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8069767C  7C 7F 1A 14 */	add r3, r31, r3
/* 80697680  4B C2 69 79 */	bl deleteObject__14Z2SoundObjBaseFv
/* 80697684  3B 39 00 01 */	addi r25, r25, 1
/* 80697688  3B DE 00 78 */	addi r30, r30, 0x78
lbl_8069768C:
/* 8069768C  80 1F 7D 88 */	lwz r0, 0x7d88(r31)
/* 80697690  7C 19 00 00 */	cmpw r25, r0
/* 80697694  41 80 FF E4 */	blt lbl_80697678
lbl_80697698:
/* 80697698  38 60 00 01 */	li r3, 1
/* 8069769C  39 61 00 30 */	addi r11, r1, 0x30
/* 806976A0  4B CC AB 79 */	bl _restgpr_25
/* 806976A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806976A8  7C 08 03 A6 */	mtlr r0
/* 806976AC  38 21 00 30 */	addi r1, r1, 0x30
/* 806976B0  4E 80 00 20 */	blr 
