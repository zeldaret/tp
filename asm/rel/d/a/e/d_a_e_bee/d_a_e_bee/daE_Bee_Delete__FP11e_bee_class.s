lbl_80684B64:
/* 80684B64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80684B68  7C 08 02 A6 */	mflr r0
/* 80684B6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80684B70  39 61 00 30 */	addi r11, r1, 0x30
/* 80684B74  4B CD D6 59 */	bl _savegpr_25
/* 80684B78  7C 7F 1B 78 */	mr r31, r3
/* 80684B7C  88 03 25 87 */	lbz r0, 0x2587(r3)
/* 80684B80  28 00 00 00 */	cmplwi r0, 0
/* 80684B84  41 82 00 68 */	beq lbl_80684BEC
/* 80684B88  3B 20 00 00 */	li r25, 0
/* 80684B8C  3B C0 00 00 */	li r30, 0
/* 80684B90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80684B94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80684B98  3F 63 00 02 */	addis r27, r3, 2
/* 80684B9C  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 80684BA0  3C 60 80 68 */	lis r3, d_a_e_bee__stringBase0@ha /* 0x80685524@ha */
/* 80684BA4  3B 83 55 24 */	addi r28, r3, d_a_e_bee__stringBase0@l /* 0x80685524@l */
/* 80684BA8  3C 60 80 68 */	lis r3, l_bmdidx_4715@ha /* 0x806854F8@ha */
/* 80684BAC  3B A3 54 F8 */	addi r29, r3, l_bmdidx_4715@l /* 0x806854F8@l */
/* 80684BB0  3B 7B C2 F8 */	addi r27, r27, -15624
lbl_80684BB4:
/* 80684BB4  7F 83 E3 78 */	mr r3, r28
/* 80684BB8  7C 9D F0 2E */	lwzx r4, r29, r30
/* 80684BBC  7F 65 DB 78 */	mr r5, r27
/* 80684BC0  38 C0 00 80 */	li r6, 0x80
/* 80684BC4  4B 9B 77 29 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80684BC8  7C 64 1B 78 */	mr r4, r3
/* 80684BCC  7F 43 D3 78 */	mr r3, r26
/* 80684BD0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80684BD4  7C 05 07 74 */	extsb r5, r0
/* 80684BD8  4B 9A 7F 59 */	bl removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
/* 80684BDC  3B 39 00 01 */	addi r25, r25, 1
/* 80684BE0  28 19 00 04 */	cmplwi r25, 4
/* 80684BE4  3B DE 00 04 */	addi r30, r30, 4
/* 80684BE8  41 80 FF CC */	blt lbl_80684BB4
lbl_80684BEC:
/* 80684BEC  38 7F 05 68 */	addi r3, r31, 0x568
/* 80684BF0  3C 80 80 68 */	lis r4, d_a_e_bee__stringBase0@ha /* 0x80685524@ha */
/* 80684BF4  38 84 55 24 */	addi r4, r4, d_a_e_bee__stringBase0@l /* 0x80685524@l */
/* 80684BF8  4B 9A 84 11 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80684BFC  88 1F 25 86 */	lbz r0, 0x2586(r31)
/* 80684C00  28 00 00 00 */	cmplwi r0, 0
/* 80684C04  41 82 00 10 */	beq lbl_80684C14
/* 80684C08  38 00 00 00 */	li r0, 0
/* 80684C0C  3C 60 80 68 */	lis r3, struct_80685674+0x1@ha /* 0x80685675@ha */
/* 80684C10  98 03 56 75 */	stb r0, struct_80685674+0x1@l(r3)  /* 0x80685675@l */
lbl_80684C14:
/* 80684C14  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80684C18  28 00 00 00 */	cmplwi r0, 0
/* 80684C1C  41 82 00 38 */	beq lbl_80684C54
/* 80684C20  38 7F 05 74 */	addi r3, r31, 0x574
/* 80684C24  4B C3 93 D5 */	bl deleteObject__14Z2SoundObjBaseFv
/* 80684C28  3B 20 00 00 */	li r25, 0
/* 80684C2C  3B C0 00 00 */	li r30, 0
/* 80684C30  48 00 00 18 */	b lbl_80684C48
lbl_80684C34:
/* 80684C34  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 80684C38  7C 7F 1A 14 */	add r3, r31, r3
/* 80684C3C  4B C3 93 BD */	bl deleteObject__14Z2SoundObjBaseFv
/* 80684C40  3B 39 00 01 */	addi r25, r25, 1
/* 80684C44  3B DE 00 74 */	addi r30, r30, 0x74
lbl_80684C48:
/* 80684C48  80 1F 22 A0 */	lwz r0, 0x22a0(r31)
/* 80684C4C  7C 19 00 00 */	cmpw r25, r0
/* 80684C50  41 80 FF E4 */	blt lbl_80684C34
lbl_80684C54:
/* 80684C54  38 60 00 01 */	li r3, 1
/* 80684C58  39 61 00 30 */	addi r11, r1, 0x30
/* 80684C5C  4B CD D5 BD */	bl _restgpr_25
/* 80684C60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80684C64  7C 08 03 A6 */	mtlr r0
/* 80684C68  38 21 00 30 */	addi r1, r1, 0x30
/* 80684C6C  4E 80 00 20 */	blr 
