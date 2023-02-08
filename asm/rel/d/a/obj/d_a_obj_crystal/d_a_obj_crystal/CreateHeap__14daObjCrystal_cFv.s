lbl_80BD65B0:
/* 80BD65B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BD65B4  7C 08 02 A6 */	mflr r0
/* 80BD65B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BD65BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD65C0  4B 78 BC 09 */	bl _savegpr_24
/* 80BD65C4  7C 78 1B 78 */	mr r24, r3
/* 80BD65C8  3C 60 80 BD */	lis r3, lit_3693@ha /* 0x80BD68BC@ha */
/* 80BD65CC  38 83 68 BC */	addi r4, r3, lit_3693@l /* 0x80BD68BC@l */
/* 80BD65D0  3B 20 00 00 */	li r25, 0
/* 80BD65D4  3B E0 00 00 */	li r31, 0
/* 80BD65D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD65DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD65E0  3F 43 00 02 */	addis r26, r3, 2
/* 80BD65E4  3C 60 80 BD */	lis r3, l_arcName@ha /* 0x80BD68F0@ha */
/* 80BD65E8  3B 63 68 F0 */	addi r27, r3, l_arcName@l /* 0x80BD68F0@l */
/* 80BD65EC  3B 84 00 04 */	addi r28, r4, 4
/* 80BD65F0  3B A4 00 0C */	addi r29, r4, 0xc
/* 80BD65F4  3B C4 00 14 */	addi r30, r4, 0x14
/* 80BD65F8  3B 5A C2 F8 */	addi r26, r26, -15624
lbl_80BD65FC:
/* 80BD65FC  80 7B 00 00 */	lwz r3, 0(r27)
/* 80BD6600  7C 9C F8 2E */	lwzx r4, r28, r31
/* 80BD6604  7F 45 D3 78 */	mr r5, r26
/* 80BD6608  38 C0 00 80 */	li r6, 0x80
/* 80BD660C  4B 46 5C E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BD6610  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80BD6614  7C BE F8 2E */	lwzx r5, r30, r31
/* 80BD6618  4B 43 E6 3D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BD661C  38 1F 05 70 */	addi r0, r31, 0x570
/* 80BD6620  7C 78 01 2E */	stwx r3, r24, r0
/* 80BD6624  7C 18 00 2E */	lwzx r0, r24, r0
/* 80BD6628  28 00 00 00 */	cmplwi r0, 0
/* 80BD662C  40 82 00 0C */	bne lbl_80BD6638
/* 80BD6630  38 60 00 00 */	li r3, 0
/* 80BD6634  48 00 00 18 */	b lbl_80BD664C
lbl_80BD6638:
/* 80BD6638  3B 39 00 01 */	addi r25, r25, 1
/* 80BD663C  2C 19 00 02 */	cmpwi r25, 2
/* 80BD6640  3B FF 00 04 */	addi r31, r31, 4
/* 80BD6644  41 80 FF B8 */	blt lbl_80BD65FC
/* 80BD6648  38 60 00 01 */	li r3, 1
lbl_80BD664C:
/* 80BD664C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD6650  4B 78 BB C5 */	bl _restgpr_24
/* 80BD6654  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BD6658  7C 08 03 A6 */	mtlr r0
/* 80BD665C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BD6660  4E 80 00 20 */	blr 
