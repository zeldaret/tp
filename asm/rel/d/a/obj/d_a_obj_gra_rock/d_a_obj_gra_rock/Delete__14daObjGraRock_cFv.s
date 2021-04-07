lbl_80C121C4:
/* 80C121C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C121C8  7C 08 02 A6 */	mflr r0
/* 80C121CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C121D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C121D4  4B 75 00 01 */	bl _savegpr_27
/* 80C121D8  7C 7B 1B 78 */	mr r27, r3
/* 80C121DC  3B 80 00 00 */	li r28, 0
/* 80C121E0  3B E0 00 00 */	li r31, 0
/* 80C121E4  3B C0 00 00 */	li r30, 0
/* 80C121E8  3C 60 80 C1 */	lis r3, l_arcName@ha /* 0x80C1249C@ha */
/* 80C121EC  3B A3 24 9C */	addi r29, r3, l_arcName@l /* 0x80C1249C@l */
lbl_80C121F0:
/* 80C121F0  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C121F4  7C 7B 1A 14 */	add r3, r27, r3
/* 80C121F8  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80C121FC  4B 41 AE 0D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C12200  3B 9C 00 01 */	addi r28, r28, 1
/* 80C12204  2C 1C 00 05 */	cmpwi r28, 5
/* 80C12208  3B FF 00 04 */	addi r31, r31, 4
/* 80C1220C  3B DE 00 08 */	addi r30, r30, 8
/* 80C12210  41 80 FF E0 */	blt lbl_80C121F0
/* 80C12214  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80C12218  28 03 00 00 */	cmplwi r3, 0
/* 80C1221C  41 82 00 24 */	beq lbl_80C12240
/* 80C12220  4B 65 5F B5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C12224  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C12228  41 82 00 18 */	beq lbl_80C12240
/* 80C1222C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C12230  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C12234  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C12238  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 80C1223C  4B 46 20 15 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C12240:
/* 80C12240  38 60 00 01 */	li r3, 1
/* 80C12244  39 61 00 20 */	addi r11, r1, 0x20
/* 80C12248  4B 74 FF D9 */	bl _restgpr_27
/* 80C1224C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C12250  7C 08 03 A6 */	mtlr r0
/* 80C12254  38 21 00 20 */	addi r1, r1, 0x20
/* 80C12258  4E 80 00 20 */	blr 
