lbl_8099DA60:
/* 8099DA60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8099DA64  7C 08 02 A6 */	mflr r0
/* 8099DA68  90 01 00 44 */	stw r0, 0x44(r1)
/* 8099DA6C  39 61 00 40 */	addi r11, r1, 0x40
/* 8099DA70  4B 9C 47 6C */	b _savegpr_29
/* 8099DA74  7C 7F 1B 78 */	mr r31, r3
/* 8099DA78  7C 9D 23 78 */	mr r29, r4
/* 8099DA7C  80 03 24 C0 */	lwz r0, 0x24c0(r3)
/* 8099DA80  2C 00 00 00 */	cmpwi r0, 0
/* 8099DA84  40 82 00 2C */	bne lbl_8099DAB0
/* 8099DA88  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500D4@ha */
/* 8099DA8C  38 03 00 D4 */	addi r0, r3, 0x00D4 /* 0x000500D4@l */
/* 8099DA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099DA94  38 7F 21 54 */	addi r3, r31, 0x2154
/* 8099DA98  38 81 00 14 */	addi r4, r1, 0x14
/* 8099DA9C  38 A0 FF FF */	li r5, -1
/* 8099DAA0  81 9F 21 54 */	lwz r12, 0x2154(r31)
/* 8099DAA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8099DAA8  7D 89 03 A6 */	mtctr r12
/* 8099DAAC  4E 80 04 21 */	bctrl 
lbl_8099DAB0:
/* 8099DAB0  80 1F 24 C0 */	lwz r0, 0x24c0(r31)
/* 8099DAB4  2C 00 00 05 */	cmpwi r0, 5
/* 8099DAB8  40 80 00 D4 */	bge lbl_8099DB8C
/* 8099DABC  3B C0 00 00 */	li r30, 0
/* 8099DAC0  38 00 00 05 */	li r0, 5
/* 8099DAC4  7C 09 03 A6 */	mtctr r0
lbl_8099DAC8:
/* 8099DAC8  38 1E 24 7C */	addi r0, r30, 0x247c
/* 8099DACC  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8099DAD0  3C 03 00 01 */	addis r0, r3, 1
/* 8099DAD4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8099DAD8  40 82 00 AC */	bne lbl_8099DB84
/* 8099DADC  38 7F 1B 68 */	addi r3, r31, 0x1b68
/* 8099DAE0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8099DAE4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8099DAE8  4B 9A 89 C8 */	b PSMTXCopy
/* 8099DAEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099DAF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099DAF4  7F A4 EB 78 */	mr r4, r29
/* 8099DAF8  38 A1 00 18 */	addi r5, r1, 0x18
/* 8099DAFC  4B 9A 92 70 */	b PSMTXMultVec
/* 8099DB00  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8099DB04  7C 07 07 74 */	extsb r7, r0
/* 8099DB08  38 00 00 00 */	li r0, 0
/* 8099DB0C  90 01 00 08 */	stw r0, 8(r1)
/* 8099DB10  38 60 00 58 */	li r3, 0x58
/* 8099DB14  28 1F 00 00 */	cmplwi r31, 0
/* 8099DB18  41 82 00 0C */	beq lbl_8099DB24
/* 8099DB1C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8099DB20  48 00 00 08 */	b lbl_8099DB28
lbl_8099DB24:
/* 8099DB24  38 80 FF FF */	li r4, -1
lbl_8099DB28:
/* 8099DB28  38 A0 00 00 */	li r5, 0
/* 8099DB2C  38 C1 00 18 */	addi r6, r1, 0x18
/* 8099DB30  39 00 00 00 */	li r8, 0
/* 8099DB34  39 20 00 00 */	li r9, 0
/* 8099DB38  39 40 FF FF */	li r10, -1
/* 8099DB3C  4B 67 C3 B4 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8099DB40  7C 9F F2 14 */	add r4, r31, r30
/* 8099DB44  90 64 24 7C */	stw r3, 0x247c(r4)
/* 8099DB48  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060052@ha */
/* 8099DB4C  38 03 00 52 */	addi r0, r3, 0x0052 /* 0x00060052@l */
/* 8099DB50  90 01 00 10 */	stw r0, 0x10(r1)
/* 8099DB54  38 7F 1B F0 */	addi r3, r31, 0x1bf0
/* 8099DB58  38 81 00 10 */	addi r4, r1, 0x10
/* 8099DB5C  38 A0 00 00 */	li r5, 0
/* 8099DB60  38 C0 FF FF */	li r6, -1
/* 8099DB64  81 9F 1C 00 */	lwz r12, 0x1c00(r31)
/* 8099DB68  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8099DB6C  7D 89 03 A6 */	mtctr r12
/* 8099DB70  4E 80 04 21 */	bctrl 
/* 8099DB74  80 7F 24 C0 */	lwz r3, 0x24c0(r31)
/* 8099DB78  38 03 00 01 */	addi r0, r3, 1
/* 8099DB7C  90 1F 24 C0 */	stw r0, 0x24c0(r31)
/* 8099DB80  48 00 00 0C */	b lbl_8099DB8C
lbl_8099DB84:
/* 8099DB84  3B DE 00 04 */	addi r30, r30, 4
/* 8099DB88  42 00 FF 40 */	bdnz lbl_8099DAC8
lbl_8099DB8C:
/* 8099DB8C  39 61 00 40 */	addi r11, r1, 0x40
/* 8099DB90  4B 9C 46 98 */	b _restgpr_29
/* 8099DB94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8099DB98  7C 08 03 A6 */	mtlr r0
/* 8099DB9C  38 21 00 40 */	addi r1, r1, 0x40
/* 8099DBA0  4E 80 00 20 */	blr 
