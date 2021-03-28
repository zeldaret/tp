lbl_8021C11C:
/* 8021C11C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8021C120  7C 08 02 A6 */	mflr r0
/* 8021C124  90 01 00 74 */	stw r0, 0x74(r1)
/* 8021C128  39 61 00 70 */	addi r11, r1, 0x70
/* 8021C12C  48 14 60 AD */	bl _savegpr_28
/* 8021C130  7C 7C 1B 78 */	mr r28, r3
/* 8021C134  7C 9D 23 78 */	mr r29, r4
/* 8021C138  7C BE 2B 78 */	mr r30, r5
/* 8021C13C  7C DF 33 78 */	mr r31, r6
/* 8021C140  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021C144  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021C148  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8021C14C  28 00 00 00 */	cmplwi r0, 0
/* 8021C150  41 82 00 0C */	beq lbl_8021C15C
/* 8021C154  38 60 00 00 */	li r3, 0
/* 8021C158  48 00 00 6C */	b lbl_8021C1C4
lbl_8021C15C:
/* 8021C15C  B3 BC 00 A4 */	sth r29, 0xa4(r28)
/* 8021C160  38 61 00 08 */	addi r3, r1, 8
/* 8021C164  48 02 DD 9D */	bl __ct__10dMsgFlow_cFv
/* 8021C168  38 61 00 08 */	addi r3, r1, 8
/* 8021C16C  38 80 00 00 */	li r4, 0
/* 8021C170  57 A5 04 3E */	clrlwi r5, r29, 0x10
/* 8021C174  38 C0 00 00 */	li r6, 0
/* 8021C178  38 E0 00 00 */	li r7, 0
/* 8021C17C  48 02 DE 15 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8021C180  38 61 00 08 */	addi r3, r1, 8
/* 8021C184  38 80 00 00 */	li r4, 0
/* 8021C188  38 A0 00 00 */	li r5, 0
/* 8021C18C  38 C0 00 00 */	li r6, 0
/* 8021C190  48 02 E1 49 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8021C194  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8021C198  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8021C19C  B0 1C 00 A4 */	sth r0, 0xa4(r28)
/* 8021C1A0  38 61 00 08 */	addi r3, r1, 8
/* 8021C1A4  48 02 E3 95 */	bl getMsgNo__10dMsgFlow_cFv
/* 8021C1A8  B0 7C 00 A6 */	sth r3, 0xa6(r28)
/* 8021C1AC  B3 DC 00 A8 */	sth r30, 0xa8(r28)
/* 8021C1B0  9B FC 00 F1 */	stb r31, 0xf1(r28)
/* 8021C1B4  38 61 00 08 */	addi r3, r1, 8
/* 8021C1B8  38 80 FF FF */	li r4, -1
/* 8021C1BC  48 02 DD 8D */	bl __dt__10dMsgFlow_cFv
/* 8021C1C0  38 60 00 01 */	li r3, 1
lbl_8021C1C4:
/* 8021C1C4  39 61 00 70 */	addi r11, r1, 0x70
/* 8021C1C8  48 14 60 5D */	bl _restgpr_28
/* 8021C1CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8021C1D0  7C 08 03 A6 */	mtlr r0
/* 8021C1D4  38 21 00 70 */	addi r1, r1, 0x70
/* 8021C1D8  4E 80 00 20 */	blr 
