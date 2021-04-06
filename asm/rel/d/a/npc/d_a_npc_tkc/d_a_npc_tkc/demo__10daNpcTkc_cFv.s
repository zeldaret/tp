lbl_80B0EEE8:
/* 80B0EEE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0EEEC  7C 08 02 A6 */	mflr r0
/* 80B0EEF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0EEF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0EEF8  4B 85 32 E1 */	bl _savegpr_28
/* 80B0EEFC  7C 7C 1B 78 */	mr r28, r3
/* 80B0EF00  3C 80 80 B1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B10A60@ha */
/* 80B0EF04  3B E4 0A 60 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80B10A60@l */
/* 80B0EF08  A0 03 0D 76 */	lhz r0, 0xd76(r3)
/* 80B0EF0C  2C 00 00 02 */	cmpwi r0, 2
/* 80B0EF10  41 82 00 3C */	beq lbl_80B0EF4C
/* 80B0EF14  40 80 00 E0 */	bge lbl_80B0EFF4
/* 80B0EF18  2C 00 00 00 */	cmpwi r0, 0
/* 80B0EF1C  41 82 00 0C */	beq lbl_80B0EF28
/* 80B0EF20  48 00 00 D4 */	b lbl_80B0EFF4
/* 80B0EF24  48 00 00 D0 */	b lbl_80B0EFF4
lbl_80B0EF28:
/* 80B0EF28  38 80 00 01 */	li r4, 1
/* 80B0EF2C  3C A0 80 B1 */	lis r5, lit_4891@ha /* 0x80B109D8@ha */
/* 80B0EF30  C0 25 09 D8 */	lfs f1, lit_4891@l(r5)  /* 0x80B109D8@l */
/* 80B0EF34  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B0EF38  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B0EF3C  7D 89 03 A6 */	mtctr r12
/* 80B0EF40  4E 80 04 21 */	bctrl 
/* 80B0EF44  38 00 00 02 */	li r0, 2
/* 80B0EF48  B0 1C 0D 76 */	sth r0, 0xd76(r28)
lbl_80B0EF4C:
/* 80B0EF4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0EF50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0EF54  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B0EF58  28 00 00 00 */	cmplwi r0, 0
/* 80B0EF5C  41 82 00 8C */	beq lbl_80B0EFE8
/* 80B0EF60  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80B0EF64  28 00 00 01 */	cmplwi r0, 1
/* 80B0EF68  41 82 00 80 */	beq lbl_80B0EFE8
/* 80B0EF6C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B0EF70  7F C3 F3 78 */	mr r3, r30
/* 80B0EF74  80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 80B0EF78  38 A0 00 00 */	li r5, 0
/* 80B0EF7C  38 C0 00 00 */	li r6, 0
/* 80B0EF80  4B 53 8B 9D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B0EF84  2C 03 FF FF */	cmpwi r3, -1
/* 80B0EF88  41 82 00 6C */	beq lbl_80B0EFF4
/* 80B0EF8C  7C 7D 1B 78 */	mr r29, r3
/* 80B0EF90  93 BC 09 2C */	stw r29, 0x92c(r28)
/* 80B0EF94  7F C3 F3 78 */	mr r3, r30
/* 80B0EF98  7F A4 EB 78 */	mr r4, r29
/* 80B0EF9C  38 BF 00 48 */	addi r5, r31, 0x48
/* 80B0EFA0  38 C0 00 04 */	li r6, 4
/* 80B0EFA4  38 E0 00 00 */	li r7, 0
/* 80B0EFA8  39 00 00 00 */	li r8, 0
/* 80B0EFAC  4B 53 8E 65 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B0EFB0  7C 60 1B 78 */	mr r0, r3
/* 80B0EFB4  7F 83 E3 78 */	mr r3, r28
/* 80B0EFB8  7F A4 EB 78 */	mr r4, r29
/* 80B0EFBC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80B0EFC0  39 9F 00 84 */	addi r12, r31, 0x84
/* 80B0EFC4  7D 8C 02 14 */	add r12, r12, r0
/* 80B0EFC8  4B 85 30 BD */	bl __ptmf_scall
/* 80B0EFCC  60 00 00 00 */	nop 
/* 80B0EFD0  2C 03 00 00 */	cmpwi r3, 0
/* 80B0EFD4  41 82 00 20 */	beq lbl_80B0EFF4
/* 80B0EFD8  7F C3 F3 78 */	mr r3, r30
/* 80B0EFDC  7F A4 EB 78 */	mr r4, r29
/* 80B0EFE0  4B 53 91 9D */	bl cutEnd__16dEvent_manager_cFi
/* 80B0EFE4  48 00 00 10 */	b lbl_80B0EFF4
lbl_80B0EFE8:
/* 80B0EFE8  38 00 FF FF */	li r0, -1
/* 80B0EFEC  90 1C 09 2C */	stw r0, 0x92c(r28)
/* 80B0EFF0  B0 1C 09 D4 */	sth r0, 0x9d4(r28)
lbl_80B0EFF4:
/* 80B0EFF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0EFF8  4B 85 32 2D */	bl _restgpr_28
/* 80B0EFFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0F000  7C 08 03 A6 */	mtlr r0
/* 80B0F004  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0F008  4E 80 00 20 */	blr 
