lbl_804DA5F4:
/* 804DA5F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA5F8  7C 08 02 A6 */	mflr r0
/* 804DA5FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA600  39 61 00 20 */	addi r11, r1, 0x20
/* 804DA604  4B E8 7B D4 */	b _savegpr_28
/* 804DA608  7C 7C 1B 78 */	mr r28, r3
/* 804DA60C  80 63 14 3C */	lwz r3, 0x143c(r3)
/* 804DA610  38 80 00 04 */	li r4, 4
/* 804DA614  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804DA618  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804DA61C  3F A5 00 02 */	addis r29, r5, 2
/* 804DA620  3B BD C2 F8 */	addi r29, r29, -15624
/* 804DA624  7F A5 EB 78 */	mr r5, r29
/* 804DA628  38 C0 00 80 */	li r6, 0x80
/* 804DA62C  4B B6 1C C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DA630  7C 7F 1B 78 */	mr r31, r3
/* 804DA634  80 7C 14 3C */	lwz r3, 0x143c(r28)
/* 804DA638  38 80 00 03 */	li r4, 3
/* 804DA63C  7F A5 EB 78 */	mr r5, r29
/* 804DA640  38 C0 00 80 */	li r6, 0x80
/* 804DA644  4B B6 1C A8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DA648  7C 7E 1B 78 */	mr r30, r3
/* 804DA64C  80 7C 14 3C */	lwz r3, 0x143c(r28)
/* 804DA650  38 80 00 05 */	li r4, 5
/* 804DA654  7F A5 EB 78 */	mr r5, r29
/* 804DA658  38 C0 00 80 */	li r6, 0x80
/* 804DA65C  4B B6 1C 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DA660  7C 7D 1B 78 */	mr r29, r3
/* 804DA664  7F E3 FB 78 */	mr r3, r31
/* 804DA668  3C 80 00 08 */	lis r4, 8
/* 804DA66C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804DA670  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804DA674  4B B3 A5 E0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804DA678  90 7C 05 70 */	stw r3, 0x570(r28)
/* 804DA67C  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 804DA680  28 00 00 00 */	cmplwi r0, 0
/* 804DA684  40 82 00 0C */	bne lbl_804DA690
/* 804DA688  38 60 00 00 */	li r3, 0
/* 804DA68C  48 00 00 7C */	b lbl_804DA708
lbl_804DA690:
/* 804DA690  7F C3 F3 78 */	mr r3, r30
/* 804DA694  3C 80 00 08 */	lis r4, 8
/* 804DA698  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804DA69C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804DA6A0  4B B3 A5 B4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804DA6A4  90 7C 05 74 */	stw r3, 0x574(r28)
/* 804DA6A8  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 804DA6AC  28 00 00 00 */	cmplwi r0, 0
/* 804DA6B0  40 82 00 0C */	bne lbl_804DA6BC
/* 804DA6B4  38 60 00 00 */	li r3, 0
/* 804DA6B8  48 00 00 50 */	b lbl_804DA708
lbl_804DA6BC:
/* 804DA6BC  7F A3 EB 78 */	mr r3, r29
/* 804DA6C0  3C 80 00 08 */	lis r4, 8
/* 804DA6C4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804DA6C8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804DA6CC  4B B3 A5 88 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804DA6D0  90 7C 05 78 */	stw r3, 0x578(r28)
/* 804DA6D4  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 804DA6D8  28 00 00 00 */	cmplwi r0, 0
/* 804DA6DC  40 82 00 0C */	bne lbl_804DA6E8
/* 804DA6E0  38 60 00 00 */	li r3, 0
/* 804DA6E4  48 00 00 24 */	b lbl_804DA708
lbl_804DA6E8:
/* 804DA6E8  38 7C 14 1C */	addi r3, r28, 0x141c
/* 804DA6EC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804DA6F0  38 A0 00 01 */	li r5, 1
/* 804DA6F4  81 9C 14 2C */	lwz r12, 0x142c(r28)
/* 804DA6F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804DA6FC  7D 89 03 A6 */	mtctr r12
/* 804DA700  4E 80 04 21 */	bctrl 
/* 804DA704  38 60 00 01 */	li r3, 1
lbl_804DA708:
/* 804DA708  39 61 00 20 */	addi r11, r1, 0x20
/* 804DA70C  4B E8 7B 18 */	b _restgpr_28
/* 804DA710  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA714  7C 08 03 A6 */	mtlr r0
/* 804DA718  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA71C  4E 80 00 20 */	blr 
