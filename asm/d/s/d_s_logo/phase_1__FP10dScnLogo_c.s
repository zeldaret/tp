lbl_802579BC:
/* 802579BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802579C0  7C 08 02 A6 */	mflr r0
/* 802579C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802579C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802579CC  7C 7F 1B 78 */	mr r31, r3
/* 802579D0  4B DC 0D C9 */	bl cDyl_InitAsyncIsDone__Fv
/* 802579D4  2C 03 00 00 */	cmpwi r3, 0
/* 802579D8  40 82 00 0C */	bne lbl_802579E4
/* 802579DC  38 60 00 00 */	li r3, 0
/* 802579E0  48 00 00 7C */	b lbl_80257A5C
lbl_802579E4:
/* 802579E4  88 0D 86 38 */	lbz r0, struct_80450BB8+0x0(r13)
/* 802579E8  28 00 00 00 */	cmplwi r0, 0
/* 802579EC  41 82 00 18 */	beq lbl_80257A04
/* 802579F0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802579F4  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 802579F8  48 06 2B C9 */	bl checkFirstWaves__10Z2SceneMgrFv
/* 802579FC  2C 03 00 00 */	cmpwi r3, 0
/* 80257A00  41 82 00 0C */	beq lbl_80257A0C
lbl_80257A04:
/* 80257A04  38 60 00 00 */	li r3, 0
/* 80257A08  48 00 00 54 */	b lbl_80257A5C
lbl_80257A0C:
/* 80257A0C  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha
/* 80257A10  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l
/* 80257A14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80257A18  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80257A1C  3C 84 00 02 */	addis r4, r4, 2
/* 80257A20  38 A0 00 80 */	li r5, 0x80
/* 80257A24  38 C3 00 0E */	addi r6, r3, 0xe
/* 80257A28  38 E0 00 00 */	li r7, 0
/* 80257A2C  81 1F 01 D0 */	lwz r8, 0x1d0(r31)
/* 80257A30  38 84 C2 F8 */	addi r4, r4, -15624
/* 80257A34  4B DE 46 45 */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 80257A38  38 00 00 01 */	li r0, 1
/* 80257A3C  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80257A40  98 03 00 12 */	stb r0, 0x12(r3)
/* 80257A44  80 6D 86 B4 */	lwz r3, archiveHeap(r13)
/* 80257A48  81 83 00 00 */	lwz r12, 0(r3)
/* 80257A4C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80257A50  7D 89 03 A6 */	mtctr r12
/* 80257A54  4E 80 04 21 */	bctrl 
/* 80257A58  38 60 00 02 */	li r3, 2
lbl_80257A5C:
/* 80257A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80257A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257A64  7C 08 03 A6 */	mtlr r0
/* 80257A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80257A6C  4E 80 00 20 */	blr 
