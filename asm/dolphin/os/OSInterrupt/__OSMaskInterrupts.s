lbl_8033DABC:
/* 8033DABC  7C 08 02 A6 */	mflr r0
/* 8033DAC0  90 01 00 04 */	stw r0, 4(r1)
/* 8033DAC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033DAC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033DACC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033DAD0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033DAD4  7C 7F 1B 78 */	mr r31, r3
/* 8033DAD8  4B FF FC 1D */	bl OSDisableInterrupts
/* 8033DADC  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000C4@ha */
/* 8033DAE0  83 A4 00 C4 */	lwz r29, 0x00C4(r4)  /* 0x800000C4@l */
/* 8033DAE4  7C 7E 1B 78 */	mr r30, r3
/* 8033DAE8  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 8033DAEC  7F A0 2B 78 */	or r0, r29, r5
/* 8033DAF0  7F E3 00 78 */	andc r3, r31, r0
/* 8033DAF4  7F FF EB 78 */	or r31, r31, r29
/* 8033DAF8  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 8033DAFC  7F FF 2B 78 */	or r31, r31, r5
/* 8033DB00  48 00 00 04 */	b lbl_8033DB04
lbl_8033DB04:
/* 8033DB04  48 00 00 04 */	b lbl_8033DB08
lbl_8033DB08:
/* 8033DB08  48 00 00 0C */	b lbl_8033DB14
lbl_8033DB0C:
/* 8033DB0C  7F E4 FB 78 */	mr r4, r31
/* 8033DB10  4B FF FC D5 */	bl SetInterruptMask
lbl_8033DB14:
/* 8033DB14  28 03 00 00 */	cmplwi r3, 0
/* 8033DB18  40 82 FF F4 */	bne lbl_8033DB0C
/* 8033DB1C  7F C3 F3 78 */	mr r3, r30
/* 8033DB20  4B FF FB FD */	bl OSRestoreInterrupts
/* 8033DB24  7F A3 EB 78 */	mr r3, r29
/* 8033DB28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033DB2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033DB30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033DB34  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033DB38  38 21 00 20 */	addi r1, r1, 0x20
/* 8033DB3C  7C 08 03 A6 */	mtlr r0
/* 8033DB40  4E 80 00 20 */	blr 
