lbl_80D66CDC:
/* 80D66CDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D66CE0  7C 08 02 A6 */	mflr r0
/* 80D66CE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D66CE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D66CEC  4B 5F B4 F1 */	bl _savegpr_29
/* 80D66CF0  7C 7F 1B 78 */	mr r31, r3
/* 80D66CF4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D66CF8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D66CFC  40 82 00 C8 */	bne lbl_80D66DC4
/* 80D66D00  7F E0 FB 79 */	or. r0, r31, r31
/* 80D66D04  41 82 00 B4 */	beq lbl_80D66DB8
/* 80D66D08  7C 1E 03 78 */	mr r30, r0
/* 80D66D0C  4B 2B 1E 59 */	bl __ct__10fopAc_ac_cFv
/* 80D66D10  3B BE 05 78 */	addi r29, r30, 0x578
/* 80D66D14  3C 60 80 D6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D67D5C@ha */
/* 80D66D18  38 03 7D 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D67D5C@l */
/* 80D66D1C  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80D66D20  7F A3 EB 78 */	mr r3, r29
/* 80D66D24  38 80 00 00 */	li r4, 0
/* 80D66D28  4B 5C 16 D5 */	bl init__12J3DFrameCtrlFs
/* 80D66D2C  38 00 00 00 */	li r0, 0
/* 80D66D30  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80D66D34  3B BE 05 94 */	addi r29, r30, 0x594
/* 80D66D38  3C 60 80 D6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D67D5C@ha */
/* 80D66D3C  38 03 7D 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D67D5C@l */
/* 80D66D40  90 1E 05 94 */	stw r0, 0x594(r30)
/* 80D66D44  7F A3 EB 78 */	mr r3, r29
/* 80D66D48  38 80 00 00 */	li r4, 0
/* 80D66D4C  4B 5C 16 B1 */	bl init__12J3DFrameCtrlFs
/* 80D66D50  38 00 00 00 */	li r0, 0
/* 80D66D54  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80D66D58  3B BE 05 AC */	addi r29, r30, 0x5ac
/* 80D66D5C  3C 60 80 D6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D67D5C@ha */
/* 80D66D60  38 03 7D 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D67D5C@l */
/* 80D66D64  90 1E 05 AC */	stw r0, 0x5ac(r30)
/* 80D66D68  7F A3 EB 78 */	mr r3, r29
/* 80D66D6C  38 80 00 00 */	li r4, 0
/* 80D66D70  4B 5C 16 8D */	bl init__12J3DFrameCtrlFs
/* 80D66D74  38 00 00 00 */	li r0, 0
/* 80D66D78  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80D66D7C  3B BE 05 C4 */	addi r29, r30, 0x5c4
/* 80D66D80  3C 60 80 D6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D67D5C@ha */
/* 80D66D84  38 03 7D 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D67D5C@l */
/* 80D66D88  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 80D66D8C  7F A3 EB 78 */	mr r3, r29
/* 80D66D90  38 80 00 00 */	li r4, 0
/* 80D66D94  4B 5C 16 69 */	bl init__12J3DFrameCtrlFs
/* 80D66D98  38 00 00 00 */	li r0, 0
/* 80D66D9C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80D66DA0  3C 60 80 D6 */	lis r3, __vt__12dDlst_base_c@ha /* 0x80D67D50@ha */
/* 80D66DA4  38 03 7D 50 */	addi r0, r3, __vt__12dDlst_base_c@l /* 0x80D67D50@l */
/* 80D66DA8  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80D66DAC  3C 60 80 D6 */	lis r3, __vt__15dDlst_daTitle_c@ha /* 0x80D67D40@ha */
/* 80D66DB0  38 03 7D 40 */	addi r0, r3, __vt__15dDlst_daTitle_c@l /* 0x80D67D40@l */
/* 80D66DB4  90 1E 05 E4 */	stw r0, 0x5e4(r30)
lbl_80D66DB8:
/* 80D66DB8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D66DBC  60 00 00 08 */	ori r0, r0, 8
/* 80D66DC0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D66DC4:
/* 80D66DC4  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D66DC8  3C 80 80 D6 */	lis r4, l_arcName@ha /* 0x80D67BE0@ha */
/* 80D66DCC  38 84 7B E0 */	addi r4, r4, l_arcName@l /* 0x80D67BE0@l */
/* 80D66DD0  4B 2C 60 ED */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D66DD4  7C 7E 1B 78 */	mr r30, r3
/* 80D66DD8  2C 1E 00 04 */	cmpwi r30, 4
/* 80D66DDC  41 82 00 08 */	beq lbl_80D66DE4
/* 80D66DE0  48 00 00 84 */	b lbl_80D66E64
lbl_80D66DE4:
/* 80D66DE4  7F E3 FB 78 */	mr r3, r31
/* 80D66DE8  3C 80 80 D6 */	lis r4, createHeapCallBack__9daTitle_cFP10fopAc_ac_c@ha /* 0x80D66E7C@ha */
/* 80D66DEC  38 84 6E 7C */	addi r4, r4, createHeapCallBack__9daTitle_cFP10fopAc_ac_c@l /* 0x80D66E7C@l */
/* 80D66DF0  38 A0 40 00 */	li r5, 0x4000
/* 80D66DF4  4B 2B 36 BD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D66DF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D66DFC  40 82 00 0C */	bne lbl_80D66E08
/* 80D66E00  38 60 00 05 */	li r3, 5
/* 80D66E04  48 00 00 60 */	b lbl_80D66E64
lbl_80D66E08:
/* 80D66E08  3C 60 80 D6 */	lis r3, d_a_title__stringBase0@ha /* 0x80D67C10@ha */
/* 80D66E0C  38 63 7C 10 */	addi r3, r3, d_a_title__stringBase0@l /* 0x80D67C10@l */
/* 80D66E10  38 80 00 00 */	li r4, 0
/* 80D66E14  38 A0 00 00 */	li r5, 0
/* 80D66E18  4B 2A EF FD */	bl create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap
/* 80D66E1C  90 7F 05 E0 */	stw r3, 0x5e0(r31)
/* 80D66E20  38 00 00 00 */	li r0, 0
/* 80D66E24  98 1F 05 F8 */	stb r0, 0x5f8(r31)
/* 80D66E28  98 1F 05 F9 */	stb r0, 0x5f9(r31)
/* 80D66E2C  4B 2A 7F 25 */	bl mDoExt_getGameHeap__Fv
/* 80D66E30  7C 64 1B 78 */	mr r4, r3
/* 80D66E34  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80D66E38  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 80D66E3C  38 A0 00 00 */	li r5, 0
/* 80D66E40  4B 56 7F ED */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 80D66E44  90 7F 05 DC */	stw r3, 0x5dc(r31)
/* 80D66E48  7F E3 FB 78 */	mr r3, r31
/* 80D66E4C  48 00 01 C5 */	bl loadWait_init__9daTitle_cFv
/* 80D66E50  38 00 FF FF */	li r0, -1
/* 80D66E54  3C 60 80 D6 */	lis r3, g_daTitHIO@ha /* 0x80D67D8C@ha */
/* 80D66E58  38 63 7D 8C */	addi r3, r3, g_daTitHIO@l /* 0x80D67D8C@l */
/* 80D66E5C  98 03 00 04 */	stb r0, 4(r3)
/* 80D66E60  7F C3 F3 78 */	mr r3, r30
lbl_80D66E64:
/* 80D66E64  39 61 00 20 */	addi r11, r1, 0x20
/* 80D66E68  4B 5F B3 C1 */	bl _restgpr_29
/* 80D66E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D66E70  7C 08 03 A6 */	mtlr r0
/* 80D66E74  38 21 00 20 */	addi r1, r1, 0x20
/* 80D66E78  4E 80 00 20 */	blr 
