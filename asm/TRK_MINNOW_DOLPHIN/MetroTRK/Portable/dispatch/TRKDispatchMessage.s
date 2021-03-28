lbl_8036DB9C:
/* 8036DB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036DBA0  7C 08 02 A6 */	mflr r0
/* 8036DBA4  38 80 00 00 */	li r4, 0
/* 8036DBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036DBAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036DBB0  3B E0 05 00 */	li r31, 0x500
/* 8036DBB4  93 C1 00 08 */	stw r30, 8(r1)
/* 8036DBB8  7C 7E 1B 78 */	mr r30, r3
/* 8036DBBC  4B FF FA 61 */	bl TRKSetBufferPosition
/* 8036DBC0  3C 60 80 3A */	lis r3, lit_126@ha
/* 8036DBC4  88 BE 00 14 */	lbz r5, 0x14(r30)
/* 8036DBC8  38 83 28 90 */	addi r4, r3, lit_126@l
/* 8036DBCC  38 60 00 01 */	li r3, 1
/* 8036DBD0  4C C6 31 82 */	crclr 6
/* 8036DBD4  48 00 50 81 */	bl MWTRACE
/* 8036DBD8  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 8036DBDC  28 00 00 1A */	cmplwi r0, 0x1a
/* 8036DBE0  41 81 00 F8 */	bgt lbl_8036DCD8
/* 8036DBE4  3C 60 80 3D */	lis r3, lit_128@ha
/* 8036DBE8  54 00 10 3A */	slwi r0, r0, 2
/* 8036DBEC  38 63 31 90 */	addi r3, r3, lit_128@l
/* 8036DBF0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8036DBF4  7C 09 03 A6 */	mtctr r0
/* 8036DBF8  4E 80 04 20 */	bctr 
/* 8036DBFC  7F C3 F3 78 */	mr r3, r30
/* 8036DC00  48 00 10 5D */	bl TRKDoConnect
/* 8036DC04  7C 7F 1B 78 */	mr r31, r3
/* 8036DC08  48 00 00 D0 */	b lbl_8036DCD8
/* 8036DC0C  7F C3 F3 78 */	mr r3, r30
/* 8036DC10  48 00 0F D5 */	bl TRKDoDisconnect
/* 8036DC14  7C 7F 1B 78 */	mr r31, r3
/* 8036DC18  48 00 00 C0 */	b lbl_8036DCD8
/* 8036DC1C  7F C3 F3 78 */	mr r3, r30
/* 8036DC20  48 00 0F 6D */	bl TRKDoReset
/* 8036DC24  7C 7F 1B 78 */	mr r31, r3
/* 8036DC28  48 00 00 B0 */	b lbl_8036DCD8
/* 8036DC2C  7F C3 F3 78 */	mr r3, r30
/* 8036DC30  48 00 0F 05 */	bl TRKDoOverride
/* 8036DC34  7C 7F 1B 78 */	mr r31, r3
/* 8036DC38  48 00 00 A0 */	b lbl_8036DCD8
/* 8036DC3C  7F C3 F3 78 */	mr r3, r30
/* 8036DC40  48 00 0E ED */	bl TRKDoVersions
/* 8036DC44  7C 7F 1B 78 */	mr r31, r3
/* 8036DC48  48 00 00 90 */	b lbl_8036DCD8
/* 8036DC4C  7F C3 F3 78 */	mr r3, r30
/* 8036DC50  48 00 0E D5 */	bl TRKDoSupportMask
/* 8036DC54  7C 7F 1B 78 */	mr r31, r3
/* 8036DC58  48 00 00 80 */	b lbl_8036DCD8
/* 8036DC5C  7F C3 F3 78 */	mr r3, r30
/* 8036DC60  48 00 0C 81 */	bl TRKDoReadMemory
/* 8036DC64  7C 7F 1B 78 */	mr r31, r3
/* 8036DC68  48 00 00 70 */	b lbl_8036DCD8
/* 8036DC6C  7F C3 F3 78 */	mr r3, r30
/* 8036DC70  48 00 0A 35 */	bl TRKDoWriteMemory
/* 8036DC74  7C 7F 1B 78 */	mr r31, r3
/* 8036DC78  48 00 00 60 */	b lbl_8036DCD8
/* 8036DC7C  7F C3 F3 78 */	mr r3, r30
/* 8036DC80  48 00 07 45 */	bl TRKDoReadRegisters
/* 8036DC84  7C 7F 1B 78 */	mr r31, r3
/* 8036DC88  48 00 00 50 */	b lbl_8036DCD8
/* 8036DC8C  7F C3 F3 78 */	mr r3, r30
/* 8036DC90  48 00 04 A5 */	bl TRKDoWriteRegisters
/* 8036DC94  7C 7F 1B 78 */	mr r31, r3
/* 8036DC98  48 00 00 40 */	b lbl_8036DCD8
/* 8036DC9C  7F C3 F3 78 */	mr r3, r30
/* 8036DCA0  48 00 03 E5 */	bl TRKDoContinue
/* 8036DCA4  7C 7F 1B 78 */	mr r31, r3
/* 8036DCA8  48 00 00 30 */	b lbl_8036DCD8
/* 8036DCAC  7F C3 F3 78 */	mr r3, r30
/* 8036DCB0  48 00 01 B5 */	bl TRKDoStep
/* 8036DCB4  7C 7F 1B 78 */	mr r31, r3
/* 8036DCB8  48 00 00 20 */	b lbl_8036DCD8
/* 8036DCBC  7F C3 F3 78 */	mr r3, r30
/* 8036DCC0  48 00 00 FD */	bl TRKDoStop
/* 8036DCC4  7C 7F 1B 78 */	mr r31, r3
/* 8036DCC8  48 00 00 10 */	b lbl_8036DCD8
/* 8036DCCC  7F C3 F3 78 */	mr r3, r30
/* 8036DCD0  48 00 00 45 */	bl TRKDoSetOption
/* 8036DCD4  7C 7F 1B 78 */	mr r31, r3
lbl_8036DCD8:
/* 8036DCD8  3C 60 80 3A */	lis r3, lit_127@ha
/* 8036DCDC  7F E5 FB 78 */	mr r5, r31
/* 8036DCE0  38 83 28 AC */	addi r4, r3, lit_127@l
/* 8036DCE4  38 60 00 01 */	li r3, 1
/* 8036DCE8  4C C6 31 82 */	crclr 6
/* 8036DCEC  48 00 4F 69 */	bl MWTRACE
/* 8036DCF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036DCF4  7F E3 FB 78 */	mr r3, r31
/* 8036DCF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036DCFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8036DD00  7C 08 03 A6 */	mtlr r0
/* 8036DD04  38 21 00 10 */	addi r1, r1, 0x10
/* 8036DD08  4E 80 00 20 */	blr 
