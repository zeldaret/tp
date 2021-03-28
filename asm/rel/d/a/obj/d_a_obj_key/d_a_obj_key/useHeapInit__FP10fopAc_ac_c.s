lbl_80C409AC:
/* 80C409AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C409B0  7C 08 02 A6 */	mflr r0
/* 80C409B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C409B8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C409BC  4B 72 18 10 */	b _savegpr_25
/* 80C409C0  7C 7F 1B 78 */	mr r31, r3
/* 80C409C4  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C409C8  38 63 10 7C */	addi r3, r3, stringBase0@l
/* 80C409CC  38 80 00 05 */	li r4, 5
/* 80C409D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C409D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C409D8  3F 65 00 02 */	addis r27, r5, 2
/* 80C409DC  3B 7B C2 F8 */	addi r27, r27, -15624
/* 80C409E0  7F 65 DB 78 */	mr r5, r27
/* 80C409E4  38 C0 00 80 */	li r6, 0x80
/* 80C409E8  4B 3F B9 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C409EC  7C 7A 1B 78 */	mr r26, r3
/* 80C409F0  3B 20 00 00 */	li r25, 0
/* 80C409F4  3B C0 00 00 */	li r30, 0
/* 80C409F8  3B A0 00 00 */	li r29, 0
/* 80C409FC  3F 80 11 00 */	lis r28, 0x1100
lbl_80C40A00:
/* 80C40A00  2C 19 00 01 */	cmpwi r25, 1
/* 80C40A04  40 82 00 20 */	bne lbl_80C40A24
/* 80C40A08  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C40A0C  38 63 10 7C */	addi r3, r3, stringBase0@l
/* 80C40A10  38 80 00 03 */	li r4, 3
/* 80C40A14  7F 65 DB 78 */	mr r5, r27
/* 80C40A18  38 C0 00 80 */	li r6, 0x80
/* 80C40A1C  4B 3F B8 D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C40A20  7C 7A 1B 78 */	mr r26, r3
lbl_80C40A24:
/* 80C40A24  7F 43 D3 78 */	mr r3, r26
/* 80C40A28  3C 80 00 08 */	lis r4, 8
/* 80C40A2C  38 BC 00 84 */	addi r5, r28, 0x84
/* 80C40A30  4B 3D 42 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C40A34  38 1D 05 70 */	addi r0, r29, 0x570
/* 80C40A38  7C 7F 01 2E */	stwx r3, r31, r0
/* 80C40A3C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80C40A40  28 00 00 00 */	cmplwi r0, 0
/* 80C40A44  40 82 00 0C */	bne lbl_80C40A50
/* 80C40A48  38 60 00 00 */	li r3, 0
/* 80C40A4C  48 00 00 54 */	b lbl_80C40AA0
lbl_80C40A50:
/* 80C40A50  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C40A54  7C 7F F2 14 */	add r3, r31, r30
/* 80C40A58  D0 03 05 7C */	stfs f0, 0x57c(r3)
/* 80C40A5C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C40A60  D0 03 05 80 */	stfs f0, 0x580(r3)
/* 80C40A64  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C40A68  D0 03 05 84 */	stfs f0, 0x584(r3)
/* 80C40A6C  3B 39 00 01 */	addi r25, r25, 1
/* 80C40A70  2C 19 00 02 */	cmpwi r25, 2
/* 80C40A74  3B DE 00 0C */	addi r30, r30, 0xc
/* 80C40A78  3B BD 00 04 */	addi r29, r29, 4
/* 80C40A7C  41 80 FF 84 */	blt lbl_80C40A00
/* 80C40A80  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C40A84  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C40A88  38 A0 00 01 */	li r5, 1
/* 80C40A8C  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 80C40A90  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C40A94  7D 89 03 A6 */	mtctr r12
/* 80C40A98  4E 80 04 21 */	bctrl 
/* 80C40A9C  38 60 00 01 */	li r3, 1
lbl_80C40AA0:
/* 80C40AA0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C40AA4  4B 72 17 74 */	b _restgpr_25
/* 80C40AA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C40AAC  7C 08 03 A6 */	mtlr r0
/* 80C40AB0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C40AB4  4E 80 00 20 */	blr 
