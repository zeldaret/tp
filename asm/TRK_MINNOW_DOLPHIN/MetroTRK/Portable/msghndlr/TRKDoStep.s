lbl_8036DE64:
/* 8036DE64  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8036DE68  7C 08 02 A6 */	mflr r0
/* 8036DE6C  38 80 00 00 */	li r4, 0
/* 8036DE70  90 01 01 64 */	stw r0, 0x164(r1)
/* 8036DE74  BF 61 01 4C */	stmw r27, 0x14c(r1)
/* 8036DE78  7C 7B 1B 78 */	mr r27, r3
/* 8036DE7C  4B FF F7 A1 */	bl TRKSetBufferPosition
/* 8036DE80  8B FB 00 18 */	lbz r31, 0x18(r27)
/* 8036DE84  83 BB 00 20 */	lwz r29, 0x20(r27)
/* 8036DE88  2C 1F 00 10 */	cmpwi r31, 0x10
/* 8036DE8C  83 9B 00 24 */	lwz r28, 0x24(r27)
/* 8036DE90  41 82 00 2C */	beq lbl_8036DEBC
/* 8036DE94  40 80 00 1C */	bge lbl_8036DEB0
/* 8036DE98  2C 1F 00 01 */	cmpwi r31, 1
/* 8036DE9C  41 82 00 68 */	beq lbl_8036DF04
/* 8036DEA0  40 80 00 B4 */	bge lbl_8036DF54
/* 8036DEA4  2C 1F 00 00 */	cmpwi r31, 0
/* 8036DEA8  40 80 00 14 */	bge lbl_8036DEBC
/* 8036DEAC  48 00 00 A8 */	b lbl_8036DF54
lbl_8036DEB0:
/* 8036DEB0  2C 1F 00 12 */	cmpwi r31, 0x12
/* 8036DEB4  40 80 00 A0 */	bge lbl_8036DF54
/* 8036DEB8  48 00 00 4C */	b lbl_8036DF04
lbl_8036DEBC:
/* 8036DEBC  8B DB 00 1C */	lbz r30, 0x1c(r27)
/* 8036DEC0  28 1E 00 01 */	cmplwi r30, 1
/* 8036DEC4  40 80 00 CC */	bge lbl_8036DF90
/* 8036DEC8  38 61 01 08 */	addi r3, r1, 0x108
/* 8036DECC  38 80 00 00 */	li r4, 0
/* 8036DED0  38 A0 00 40 */	li r5, 0x40
/* 8036DED4  4B C9 55 85 */	bl memset
/* 8036DED8  38 60 00 80 */	li r3, 0x80
/* 8036DEDC  38 A0 00 40 */	li r5, 0x40
/* 8036DEE0  38 00 00 11 */	li r0, 0x11
/* 8036DEE4  98 61 01 0C */	stb r3, 0x10c(r1)
/* 8036DEE8  38 61 01 08 */	addi r3, r1, 0x108
/* 8036DEEC  38 80 00 40 */	li r4, 0x40
/* 8036DEF0  90 A1 01 08 */	stw r5, 0x108(r1)
/* 8036DEF4  98 01 01 10 */	stb r0, 0x110(r1)
/* 8036DEF8  48 00 3E 71 */	bl TRKWriteUARTN
/* 8036DEFC  38 60 00 00 */	li r3, 0
/* 8036DF00  48 00 01 70 */	b lbl_8036E070
lbl_8036DF04:
/* 8036DF04  48 00 1E 1D */	bl TRKTargetGetPC
/* 8036DF08  7C 03 E8 40 */	cmplw r3, r29
/* 8036DF0C  41 80 00 0C */	blt lbl_8036DF18
/* 8036DF10  7C 03 E0 40 */	cmplw r3, r28
/* 8036DF14  40 81 00 7C */	ble lbl_8036DF90
lbl_8036DF18:
/* 8036DF18  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8036DF1C  38 80 00 00 */	li r4, 0
/* 8036DF20  38 A0 00 40 */	li r5, 0x40
/* 8036DF24  4B C9 55 35 */	bl memset
/* 8036DF28  38 60 00 80 */	li r3, 0x80
/* 8036DF2C  38 A0 00 40 */	li r5, 0x40
/* 8036DF30  38 00 00 11 */	li r0, 0x11
/* 8036DF34  98 61 00 CC */	stb r3, 0xcc(r1)
/* 8036DF38  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8036DF3C  38 80 00 40 */	li r4, 0x40
/* 8036DF40  90 A1 00 C8 */	stw r5, 0xc8(r1)
/* 8036DF44  98 01 00 D0 */	stb r0, 0xd0(r1)
/* 8036DF48  48 00 3E 21 */	bl TRKWriteUARTN
/* 8036DF4C  38 60 00 00 */	li r3, 0
/* 8036DF50  48 00 01 20 */	b lbl_8036E070
lbl_8036DF54:
/* 8036DF54  38 61 00 88 */	addi r3, r1, 0x88
/* 8036DF58  38 80 00 00 */	li r4, 0
/* 8036DF5C  38 A0 00 40 */	li r5, 0x40
/* 8036DF60  4B C9 54 F9 */	bl memset
/* 8036DF64  38 60 00 80 */	li r3, 0x80
/* 8036DF68  38 A0 00 40 */	li r5, 0x40
/* 8036DF6C  38 00 00 12 */	li r0, 0x12
/* 8036DF70  98 61 00 8C */	stb r3, 0x8c(r1)
/* 8036DF74  38 61 00 88 */	addi r3, r1, 0x88
/* 8036DF78  38 80 00 40 */	li r4, 0x40
/* 8036DF7C  90 A1 00 88 */	stw r5, 0x88(r1)
/* 8036DF80  98 01 00 90 */	stb r0, 0x90(r1)
/* 8036DF84  48 00 3D E5 */	bl TRKWriteUARTN
/* 8036DF88  38 60 00 00 */	li r3, 0
/* 8036DF8C  48 00 00 E4 */	b lbl_8036E070
lbl_8036DF90:
/* 8036DF90  48 00 1B 81 */	bl TRKTargetStopped
/* 8036DF94  2C 03 00 00 */	cmpwi r3, 0
/* 8036DF98  40 82 00 40 */	bne lbl_8036DFD8
/* 8036DF9C  38 61 00 48 */	addi r3, r1, 0x48
/* 8036DFA0  38 80 00 00 */	li r4, 0
/* 8036DFA4  38 A0 00 40 */	li r5, 0x40
/* 8036DFA8  4B C9 54 B1 */	bl memset
/* 8036DFAC  38 60 00 80 */	li r3, 0x80
/* 8036DFB0  38 A0 00 40 */	li r5, 0x40
/* 8036DFB4  38 00 00 16 */	li r0, 0x16
/* 8036DFB8  98 61 00 4C */	stb r3, 0x4c(r1)
/* 8036DFBC  38 61 00 48 */	addi r3, r1, 0x48
/* 8036DFC0  38 80 00 40 */	li r4, 0x40
/* 8036DFC4  90 A1 00 48 */	stw r5, 0x48(r1)
/* 8036DFC8  98 01 00 50 */	stb r0, 0x50(r1)
/* 8036DFCC  48 00 3D 9D */	bl TRKWriteUARTN
/* 8036DFD0  38 60 00 00 */	li r3, 0
/* 8036DFD4  48 00 00 9C */	b lbl_8036E070
lbl_8036DFD8:
/* 8036DFD8  38 61 00 08 */	addi r3, r1, 8
/* 8036DFDC  38 80 00 00 */	li r4, 0
/* 8036DFE0  38 A0 00 40 */	li r5, 0x40
/* 8036DFE4  4B C9 54 75 */	bl memset
/* 8036DFE8  38 60 00 80 */	li r3, 0x80
/* 8036DFEC  38 A0 00 40 */	li r5, 0x40
/* 8036DFF0  38 00 00 00 */	li r0, 0
/* 8036DFF4  98 61 00 0C */	stb r3, 0xc(r1)
/* 8036DFF8  38 61 00 08 */	addi r3, r1, 8
/* 8036DFFC  38 80 00 40 */	li r4, 0x40
/* 8036E000  90 A1 00 08 */	stw r5, 8(r1)
/* 8036E004  98 01 00 10 */	stb r0, 0x10(r1)
/* 8036E008  48 00 3D 61 */	bl TRKWriteUARTN
/* 8036E00C  2C 1F 00 10 */	cmpwi r31, 0x10
/* 8036E010  38 60 00 00 */	li r3, 0
/* 8036E014  41 82 00 2C */	beq lbl_8036E040
/* 8036E018  40 80 00 1C */	bge lbl_8036E034
/* 8036E01C  2C 1F 00 01 */	cmpwi r31, 1
/* 8036E020  41 82 00 38 */	beq lbl_8036E058
/* 8036E024  40 80 00 4C */	bge lbl_8036E070
/* 8036E028  2C 1F 00 00 */	cmpwi r31, 0
/* 8036E02C  40 80 00 14 */	bge lbl_8036E040
/* 8036E030  48 00 00 40 */	b lbl_8036E070
lbl_8036E034:
/* 8036E034  2C 1F 00 12 */	cmpwi r31, 0x12
/* 8036E038  40 80 00 38 */	bge lbl_8036E070
/* 8036E03C  48 00 00 1C */	b lbl_8036E058
lbl_8036E040:
/* 8036E040  20 1F 00 10 */	subfic r0, r31, 0x10
/* 8036E044  7F C3 F3 78 */	mr r3, r30
/* 8036E048  7C 00 00 34 */	cntlzw r0, r0
/* 8036E04C  54 04 D9 7E */	srwi r4, r0, 5
/* 8036E050  48 00 1D 99 */	bl TRKTargetSingleStep
/* 8036E054  48 00 00 1C */	b lbl_8036E070
lbl_8036E058:
/* 8036E058  20 1F 00 11 */	subfic r0, r31, 0x11
/* 8036E05C  7F A3 EB 78 */	mr r3, r29
/* 8036E060  7C 00 00 34 */	cntlzw r0, r0
/* 8036E064  7F 84 E3 78 */	mr r4, r28
/* 8036E068  54 05 D9 7E */	srwi r5, r0, 5
/* 8036E06C  48 00 1C C5 */	bl TRKTargetStepOutOfRange
lbl_8036E070:
/* 8036E070  BB 61 01 4C */	lmw r27, 0x14c(r1)
/* 8036E074  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8036E078  7C 08 03 A6 */	mtlr r0
/* 8036E07C  38 21 01 60 */	addi r1, r1, 0x160
/* 8036E080  4E 80 00 20 */	blr 
