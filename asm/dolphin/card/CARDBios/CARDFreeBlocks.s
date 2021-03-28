lbl_80353CD0:
/* 80353CD0  7C 08 02 A6 */	mflr r0
/* 80353CD4  90 01 00 04 */	stw r0, 4(r1)
/* 80353CD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80353CDC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80353CE0  3B E5 00 00 */	addi r31, r5, 0
/* 80353CE4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80353CE8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80353CEC  3B A4 00 00 */	addi r29, r4, 0
/* 80353CF0  38 81 00 18 */	addi r4, r1, 0x18
/* 80353CF4  4B FF FE C1 */	bl __CARDGetControlBlock
/* 80353CF8  2C 03 00 00 */	cmpwi r3, 0
/* 80353CFC  40 80 00 08 */	bge lbl_80353D04
/* 80353D00  48 00 01 04 */	b lbl_80353E04
lbl_80353D04:
/* 80353D04  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80353D08  48 00 17 0D */	bl __CARDGetFatBlock
/* 80353D0C  7C 7E 1B 78 */	mr r30, r3
/* 80353D10  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80353D14  48 00 1A 69 */	bl __CARDGetDirBlock
/* 80353D18  28 1E 00 00 */	cmplwi r30, 0
/* 80353D1C  41 82 00 0C */	beq lbl_80353D28
/* 80353D20  28 03 00 00 */	cmplwi r3, 0
/* 80353D24  40 82 00 44 */	bne lbl_80353D68
lbl_80353D28:
/* 80353D28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80353D2C  4B FE 99 C9 */	bl OSDisableInterrupts
/* 80353D30  80 1E 00 00 */	lwz r0, 0(r30)
/* 80353D34  2C 00 00 00 */	cmpwi r0, 0
/* 80353D38  41 82 00 10 */	beq lbl_80353D48
/* 80353D3C  38 00 FF FA */	li r0, -6
/* 80353D40  90 1E 00 04 */	stw r0, 4(r30)
/* 80353D44  48 00 00 18 */	b lbl_80353D5C
lbl_80353D48:
/* 80353D48  80 1E 00 04 */	lwz r0, 4(r30)
/* 80353D4C  2C 00 FF FF */	cmpwi r0, -1
/* 80353D50  40 82 00 0C */	bne lbl_80353D5C
/* 80353D54  38 00 FF FA */	li r0, -6
/* 80353D58  90 1E 00 04 */	stw r0, 4(r30)
lbl_80353D5C:
/* 80353D5C  4B FE 99 C1 */	bl OSRestoreInterrupts
/* 80353D60  38 60 FF FA */	li r3, -6
/* 80353D64  48 00 00 A0 */	b lbl_80353E04
lbl_80353D68:
/* 80353D68  28 1D 00 00 */	cmplwi r29, 0
/* 80353D6C  41 82 00 18 */	beq lbl_80353D84
/* 80353D70  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80353D74  A0 1E 00 06 */	lhz r0, 6(r30)
/* 80353D78  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80353D7C  7C 04 01 D6 */	mullw r0, r4, r0
/* 80353D80  90 1D 00 00 */	stw r0, 0(r29)
lbl_80353D84:
/* 80353D84  28 1F 00 00 */	cmplwi r31, 0
/* 80353D88  41 82 00 40 */	beq lbl_80353DC8
/* 80353D8C  38 00 00 00 */	li r0, 0
/* 80353D90  90 1F 00 00 */	stw r0, 0(r31)
/* 80353D94  38 A0 00 00 */	li r5, 0
/* 80353D98  48 00 00 24 */	b lbl_80353DBC
lbl_80353D9C:
/* 80353D9C  88 03 00 08 */	lbz r0, 8(r3)
/* 80353DA0  28 00 00 FF */	cmplwi r0, 0xff
/* 80353DA4  40 82 00 10 */	bne lbl_80353DB4
/* 80353DA8  80 9F 00 00 */	lwz r4, 0(r31)
/* 80353DAC  38 04 00 01 */	addi r0, r4, 1
/* 80353DB0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80353DB4:
/* 80353DB4  38 63 00 40 */	addi r3, r3, 0x40
/* 80353DB8  38 A5 00 01 */	addi r5, r5, 1
lbl_80353DBC:
/* 80353DBC  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80353DC0  28 00 00 7F */	cmplwi r0, 0x7f
/* 80353DC4  41 80 FF D8 */	blt lbl_80353D9C
lbl_80353DC8:
/* 80353DC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80353DCC  4B FE 99 29 */	bl OSDisableInterrupts
/* 80353DD0  80 1E 00 00 */	lwz r0, 0(r30)
/* 80353DD4  2C 00 00 00 */	cmpwi r0, 0
/* 80353DD8  41 82 00 10 */	beq lbl_80353DE8
/* 80353DDC  38 00 00 00 */	li r0, 0
/* 80353DE0  90 1E 00 04 */	stw r0, 4(r30)
/* 80353DE4  48 00 00 18 */	b lbl_80353DFC
lbl_80353DE8:
/* 80353DE8  80 1E 00 04 */	lwz r0, 4(r30)
/* 80353DEC  2C 00 FF FF */	cmpwi r0, -1
/* 80353DF0  40 82 00 0C */	bne lbl_80353DFC
/* 80353DF4  38 00 00 00 */	li r0, 0
/* 80353DF8  90 1E 00 04 */	stw r0, 4(r30)
lbl_80353DFC:
/* 80353DFC  4B FE 99 21 */	bl OSRestoreInterrupts
/* 80353E00  38 60 00 00 */	li r3, 0
lbl_80353E04:
/* 80353E04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80353E08  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80353E0C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80353E10  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80353E14  38 21 00 30 */	addi r1, r1, 0x30
/* 80353E18  7C 08 03 A6 */	mtlr r0
/* 80353E1C  4E 80 00 20 */	blr 
