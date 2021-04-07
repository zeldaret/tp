lbl_8086E6CC:
/* 8086E6CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8086E6D0  7C 08 02 A6 */	mflr r0
/* 8086E6D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8086E6D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8086E6DC  4B AF 3A FD */	bl _savegpr_28
/* 8086E6E0  7C 7F 1B 78 */	mr r31, r3
/* 8086E6E4  88 03 6B 7C */	lbz r0, 0x6b7c(r3)
/* 8086E6E8  28 00 00 00 */	cmplwi r0, 0
/* 8086E6EC  41 82 00 78 */	beq lbl_8086E764
/* 8086E6F0  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086E6F4  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086E6F8  38 80 00 05 */	li r4, 5
/* 8086E6FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086E700  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086E704  3F C5 00 02 */	addis r30, r5, 2
/* 8086E708  3B DE C2 F8 */	addi r30, r30, -15624
/* 8086E70C  7F C5 F3 78 */	mr r5, r30
/* 8086E710  38 C0 00 80 */	li r6, 0x80
/* 8086E714  4B 7C DB D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086E718  7C 64 1B 78 */	mr r4, r3
/* 8086E71C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086E720  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086E724  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8086E728  7F A3 EB 78 */	mr r3, r29
/* 8086E72C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8086E730  7C 05 07 74 */	extsb r5, r0
/* 8086E734  4B 7B E3 FD */	bl removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
/* 8086E738  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086E73C  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086E740  38 80 00 06 */	li r4, 6
/* 8086E744  7F C5 F3 78 */	mr r5, r30
/* 8086E748  38 C0 00 80 */	li r6, 0x80
/* 8086E74C  4B 7C DB A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086E750  7C 64 1B 78 */	mr r4, r3
/* 8086E754  7F A3 EB 78 */	mr r3, r29
/* 8086E758  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8086E75C  7C 05 07 74 */	extsb r5, r0
/* 8086E760  4B 7B E3 D1 */	bl removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
lbl_8086E764:
/* 8086E764  38 7F 05 68 */	addi r3, r31, 0x568
/* 8086E768  3C 80 80 87 */	lis r4, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086E76C  38 84 02 7C */	addi r4, r4, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086E770  4B 7B E8 99 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8086E774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086E778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086E77C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8086E780  7F A3 EB 78 */	mr r3, r29
/* 8086E784  80 9F 6B 68 */	lwz r4, 0x6b68(r31)
/* 8086E788  4B 80 5A C9 */	bl Release__4cBgSFP9dBgW_Base
/* 8086E78C  88 1F 40 0E */	lbz r0, 0x400e(r31)
/* 8086E790  28 00 00 00 */	cmplwi r0, 0
/* 8086E794  41 82 00 40 */	beq lbl_8086E7D4
/* 8086E798  7F A3 EB 78 */	mr r3, r29
/* 8086E79C  80 9F 40 2C */	lwz r4, 0x402c(r31)
/* 8086E7A0  4B 80 5A B1 */	bl Release__4cBgSFP9dBgW_Base
/* 8086E7A4  3B 80 00 00 */	li r28, 0
/* 8086E7A8  3B C0 00 00 */	li r30, 0
lbl_8086E7AC:
/* 8086E7AC  38 1E 42 F4 */	addi r0, r30, 0x42f4
/* 8086E7B0  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8086E7B4  28 04 00 00 */	cmplwi r4, 0
/* 8086E7B8  41 82 00 0C */	beq lbl_8086E7C4
/* 8086E7BC  7F A3 EB 78 */	mr r3, r29
/* 8086E7C0  4B 80 5A 91 */	bl Release__4cBgSFP9dBgW_Base
lbl_8086E7C4:
/* 8086E7C4  3B 9C 00 01 */	addi r28, r28, 1
/* 8086E7C8  2C 1C 00 64 */	cmpwi r28, 0x64
/* 8086E7CC  3B DE 00 68 */	addi r30, r30, 0x68
/* 8086E7D0  41 80 FF DC */	blt lbl_8086E7AC
lbl_8086E7D4:
/* 8086E7D4  38 60 00 01 */	li r3, 1
/* 8086E7D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8086E7DC  4B AF 3A 49 */	bl _restgpr_28
/* 8086E7E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8086E7E4  7C 08 03 A6 */	mtlr r0
/* 8086E7E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8086E7EC  4E 80 00 20 */	blr 
