lbl_802587A4:
/* 802587A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802587A8  7C 08 02 A6 */	mflr r0
/* 802587AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802587B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802587B4  7C 7F 1B 78 */	mr r31, r3
/* 802587B8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802587BC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 802587C0  38 80 FF FF */	li r4, -1
/* 802587C4  38 A0 00 00 */	li r5, 0
/* 802587C8  38 C0 00 00 */	li r6, 0
/* 802587CC  48 05 68 45 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 802587D0  7F E3 FB 78 */	mr r3, r31
/* 802587D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802587D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802587DC  3C 84 00 02 */	addis r4, r4, 2
/* 802587E0  38 A0 00 80 */	li r5, 0x80
/* 802587E4  3C C0 80 3A */	lis r6, d_s_d_s_name__stringBase0@ha /* 0x8039A2A8@ha */
/* 802587E8  38 C6 A2 A8 */	addi r6, r6, d_s_d_s_name__stringBase0@l /* 0x8039A2A8@l */
/* 802587EC  38 E0 00 00 */	li r7, 0
/* 802587F0  39 00 00 00 */	li r8, 0
/* 802587F4  38 84 C2 F8 */	addi r4, r4, -15624
/* 802587F8  4B DE 38 81 */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 802587FC  2C 03 00 00 */	cmpwi r3, 0
/* 80258800  38 60 00 02 */	li r3, 2
/* 80258804  40 82 00 08 */	bne lbl_8025880C
/* 80258808  38 60 00 05 */	li r3, 5
lbl_8025880C:
/* 8025880C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80258810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80258814  7C 08 03 A6 */	mtlr r0
/* 80258818  38 21 00 10 */	addi r1, r1, 0x10
/* 8025881C  4E 80 00 20 */	blr 
