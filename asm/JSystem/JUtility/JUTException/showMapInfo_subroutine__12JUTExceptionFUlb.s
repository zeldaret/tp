lbl_802E2B44:
/* 802E2B44  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 802E2B48  7C 08 02 A6 */	mflr r0
/* 802E2B4C  90 01 01 64 */	stw r0, 0x164(r1)
/* 802E2B50  39 61 01 60 */	addi r11, r1, 0x160
/* 802E2B54  48 07 F6 85 */	bl _savegpr_28
/* 802E2B58  7C 9C 23 78 */	mr r28, r4
/* 802E2B5C  7C BD 2B 78 */	mr r29, r5
/* 802E2B60  3C 00 80 00 */	lis r0, 0x8000
/* 802E2B64  7C 1C 00 40 */	cmplw r28, r0
/* 802E2B68  41 80 00 14 */	blt lbl_802E2B7C
/* 802E2B6C  3C 60 83 00 */	lis r3, 0x8300 /* 0x82FFFFFF@ha */
/* 802E2B70  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x82FFFFFF@l */
/* 802E2B74  7C 1C 00 40 */	cmplw r28, r0
/* 802E2B78  40 81 00 0C */	ble lbl_802E2B84
lbl_802E2B7C:
/* 802E2B7C  38 60 00 00 */	li r3, 0
/* 802E2B80  48 00 01 08 */	b lbl_802E2C88
lbl_802E2B84:
/* 802E2B84  3C 60 80 3A */	lis r3, JUTException__stringBase0@ha
/* 802E2B88  38 63 D4 90 */	addi r3, r3, JUTException__stringBase0@l
/* 802E2B8C  3B C3 01 4F */	addi r30, r3, 0x14f
/* 802E2B90  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802E2B94  40 82 00 08 */	bne lbl_802E2B9C
/* 802E2B98  3B C3 03 90 */	addi r30, r3, 0x390
lbl_802E2B9C:
/* 802E2B9C  7F 83 E3 78 */	mr r3, r28
/* 802E2BA0  38 81 00 20 */	addi r4, r1, 0x20
/* 802E2BA4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 802E2BA8  38 C1 00 18 */	addi r6, r1, 0x18
/* 802E2BAC  38 E1 00 24 */	addi r7, r1, 0x24
/* 802E2BB0  4B FF F9 C9 */	bl searchPartialModule__12JUTExceptionFUlPUlPUlPUlPUl
/* 802E2BB4  7C 7F 1B 78 */	mr r31, r3
/* 802E2BB8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802E2BBC  28 00 00 01 */	cmplwi r0, 1
/* 802E2BC0  40 82 00 40 */	bne lbl_802E2C00
/* 802E2BC4  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802E2BC8  38 81 00 28 */	addi r4, r1, 0x28
/* 802E2BCC  38 A0 00 20 */	li r5, 0x20
/* 802E2BD0  4B FF FA 69 */	bl search_name_part__FPUcPUci
/* 802E2BD4  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2BD8  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E2BDC  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2BE0  38 84 03 91 */	addi r4, r4, 0x391
/* 802E2BE4  7F C5 F3 78 */	mr r5, r30
/* 802E2BE8  38 C1 00 28 */	addi r6, r1, 0x28
/* 802E2BEC  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 802E2BF0  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 802E2BF4  4C C6 31 82 */	crclr 6
/* 802E2BF8  48 00 4F C1 */	bl print_f__10JUTConsoleFPCce
/* 802E2BFC  3B A0 00 00 */	li r29, 0
lbl_802E2C00:
/* 802E2C00  3C 60 80 43 */	lis r3, sMapFileList__12JUTException@ha
/* 802E2C04  80 03 45 98 */	lwz r0, sMapFileList__12JUTException@l(r3)
/* 802E2C08  28 00 00 00 */	cmplwi r0, 0
/* 802E2C0C  41 82 00 78 */	beq lbl_802E2C84
/* 802E2C10  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802E2C14  28 00 00 01 */	cmplwi r0, 1
/* 802E2C18  40 82 00 30 */	bne lbl_802E2C48
/* 802E2C1C  93 A1 00 08 */	stw r29, 8(r1)
/* 802E2C20  38 61 00 28 */	addi r3, r1, 0x28
/* 802E2C24  80 81 00 18 */	lwz r4, 0x18(r1)
/* 802E2C28  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 802E2C2C  38 C1 00 14 */	addi r6, r1, 0x14
/* 802E2C30  38 E1 00 10 */	addi r7, r1, 0x10
/* 802E2C34  39 01 00 4C */	addi r8, r1, 0x4c
/* 802E2C38  39 20 01 00 */	li r9, 0x100
/* 802E2C3C  39 40 00 01 */	li r10, 1
/* 802E2C40  48 00 0F 61 */	bl queryMapAddress__12JUTExceptionFPcUllPUlPUlPcUlbb
/* 802E2C44  48 00 00 2C */	b lbl_802E2C70
lbl_802E2C48:
/* 802E2C48  93 A1 00 08 */	stw r29, 8(r1)
/* 802E2C4C  38 60 00 00 */	li r3, 0
/* 802E2C50  7F 84 E3 78 */	mr r4, r28
/* 802E2C54  38 A0 FF FF */	li r5, -1
/* 802E2C58  38 C1 00 14 */	addi r6, r1, 0x14
/* 802E2C5C  38 E1 00 10 */	addi r7, r1, 0x10
/* 802E2C60  39 01 00 4C */	addi r8, r1, 0x4c
/* 802E2C64  39 20 01 00 */	li r9, 0x100
/* 802E2C68  39 40 00 01 */	li r10, 1
/* 802E2C6C  48 00 0F 35 */	bl queryMapAddress__12JUTExceptionFPcUllPUlPUlPcUlbb
lbl_802E2C70:
/* 802E2C70  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802E2C74  28 00 00 01 */	cmplwi r0, 1
/* 802E2C78  40 82 00 0C */	bne lbl_802E2C84
/* 802E2C7C  38 60 00 01 */	li r3, 1
/* 802E2C80  48 00 00 08 */	b lbl_802E2C88
lbl_802E2C84:
/* 802E2C84  38 60 00 00 */	li r3, 0
lbl_802E2C88:
/* 802E2C88  39 61 01 60 */	addi r11, r1, 0x160
/* 802E2C8C  48 07 F5 99 */	bl _restgpr_28
/* 802E2C90  80 01 01 64 */	lwz r0, 0x164(r1)
/* 802E2C94  7C 08 03 A6 */	mtlr r0
/* 802E2C98  38 21 01 60 */	addi r1, r1, 0x160
/* 802E2C9C  4E 80 00 20 */	blr 
