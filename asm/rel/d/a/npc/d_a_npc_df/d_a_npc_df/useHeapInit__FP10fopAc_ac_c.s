lbl_809A6478:
/* 809A6478  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809A647C  7C 08 02 A6 */	mflr r0
/* 809A6480  90 01 00 34 */	stw r0, 0x34(r1)
/* 809A6484  39 61 00 30 */	addi r11, r1, 0x30
/* 809A6488  4B 9B BD 40 */	b _savegpr_24
/* 809A648C  7C 7F 1B 78 */	mr r31, r3
/* 809A6490  3C 60 80 9A */	lis r3, stringBase0@ha
/* 809A6494  38 63 69 7C */	addi r3, r3, stringBase0@l
/* 809A6498  38 80 00 03 */	li r4, 3
/* 809A649C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809A64A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809A64A4  3F 45 00 02 */	addis r26, r5, 2
/* 809A64A8  3B 5A C2 F8 */	addi r26, r26, -15624
/* 809A64AC  7F 45 D3 78 */	mr r5, r26
/* 809A64B0  38 C0 00 80 */	li r6, 0x80
/* 809A64B4  4B 69 5E 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A64B8  90 61 00 08 */	stw r3, 8(r1)
/* 809A64BC  3C 60 80 9A */	lis r3, stringBase0@ha
/* 809A64C0  38 63 69 7C */	addi r3, r3, stringBase0@l
/* 809A64C4  38 80 00 04 */	li r4, 4
/* 809A64C8  7F 45 D3 78 */	mr r5, r26
/* 809A64CC  38 C0 00 80 */	li r6, 0x80
/* 809A64D0  4B 69 5E 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A64D4  90 61 00 0C */	stw r3, 0xc(r1)
/* 809A64D8  3B 20 00 00 */	li r25, 0
/* 809A64DC  3B C0 00 00 */	li r30, 0
/* 809A64E0  3B 61 00 08 */	addi r27, r1, 8
/* 809A64E4  3F 80 11 00 */	lis r28, 0x1100
/* 809A64E8  48 00 00 54 */	b lbl_809A653C
lbl_809A64EC:
/* 809A64EC  3B 00 00 00 */	li r24, 0
/* 809A64F0  3B A0 00 00 */	li r29, 0
/* 809A64F4  7F 5F F2 14 */	add r26, r31, r30
lbl_809A64F8:
/* 809A64F8  7C 7B E8 2E */	lwzx r3, r27, r29
/* 809A64FC  3C 80 00 02 */	lis r4, 2
/* 809A6500  38 BC 00 84 */	addi r5, r28, 0x84
/* 809A6504  4B 66 E7 50 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 809A6508  38 1D 05 74 */	addi r0, r29, 0x574
/* 809A650C  7C 7A 01 2E */	stwx r3, r26, r0
/* 809A6510  7C 1A 00 2E */	lwzx r0, r26, r0
/* 809A6514  28 00 00 00 */	cmplwi r0, 0
/* 809A6518  40 82 00 0C */	bne lbl_809A6524
/* 809A651C  38 60 00 00 */	li r3, 0
/* 809A6520  48 00 00 2C */	b lbl_809A654C
lbl_809A6524:
/* 809A6524  3B 18 00 01 */	addi r24, r24, 1
/* 809A6528  2C 18 00 02 */	cmpwi r24, 2
/* 809A652C  3B BD 00 04 */	addi r29, r29, 4
/* 809A6530  41 80 FF C8 */	blt lbl_809A64F8
/* 809A6534  3B 39 00 01 */	addi r25, r25, 1
/* 809A6538  3B DE 00 7C */	addi r30, r30, 0x7c
lbl_809A653C:
/* 809A653C  80 1F 0D 40 */	lwz r0, 0xd40(r31)
/* 809A6540  7C 19 00 00 */	cmpw r25, r0
/* 809A6544  41 80 FF A8 */	blt lbl_809A64EC
/* 809A6548  38 60 00 01 */	li r3, 1
lbl_809A654C:
/* 809A654C  39 61 00 30 */	addi r11, r1, 0x30
/* 809A6550  4B 9B BC C4 */	b _restgpr_24
/* 809A6554  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A6558  7C 08 03 A6 */	mtlr r0
/* 809A655C  38 21 00 30 */	addi r1, r1, 0x30
/* 809A6560  4E 80 00 20 */	blr 
