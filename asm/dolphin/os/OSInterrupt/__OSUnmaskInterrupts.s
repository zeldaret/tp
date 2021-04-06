lbl_8033DB44:
/* 8033DB44  7C 08 02 A6 */	mflr r0
/* 8033DB48  90 01 00 04 */	stw r0, 4(r1)
/* 8033DB4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033DB50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033DB54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033DB58  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033DB5C  7C 7F 1B 78 */	mr r31, r3
/* 8033DB60  4B FF FB 95 */	bl OSDisableInterrupts
/* 8033DB64  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000C4@ha */
/* 8033DB68  83 A4 00 C4 */	lwz r29, 0x00C4(r4)  /* 0x800000C4@l */
/* 8033DB6C  7C 7E 1B 78 */	mr r30, r3
/* 8033DB70  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 8033DB74  7F A0 2B 78 */	or r0, r29, r5
/* 8033DB78  7F E3 00 38 */	and r3, r31, r0
/* 8033DB7C  7F BF F8 78 */	andc r31, r29, r31
/* 8033DB80  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 8033DB84  7F FF 2B 78 */	or r31, r31, r5
/* 8033DB88  48 00 00 04 */	b lbl_8033DB8C
lbl_8033DB8C:
/* 8033DB8C  48 00 00 04 */	b lbl_8033DB90
lbl_8033DB90:
/* 8033DB90  48 00 00 0C */	b lbl_8033DB9C
lbl_8033DB94:
/* 8033DB94  7F E4 FB 78 */	mr r4, r31
/* 8033DB98  4B FF FC 4D */	bl SetInterruptMask
lbl_8033DB9C:
/* 8033DB9C  28 03 00 00 */	cmplwi r3, 0
/* 8033DBA0  40 82 FF F4 */	bne lbl_8033DB94
/* 8033DBA4  7F C3 F3 78 */	mr r3, r30
/* 8033DBA8  4B FF FB 75 */	bl OSRestoreInterrupts
/* 8033DBAC  7F A3 EB 78 */	mr r3, r29
/* 8033DBB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033DBB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033DBB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033DBBC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033DBC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8033DBC4  7C 08 03 A6 */	mtlr r0
/* 8033DBC8  4E 80 00 20 */	blr 
