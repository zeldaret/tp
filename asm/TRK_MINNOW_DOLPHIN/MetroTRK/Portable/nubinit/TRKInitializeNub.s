lbl_8036CE8C:
/* 8036CE8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036CE90  7C 08 02 A6 */	mflr r0
/* 8036CE94  38 A0 00 12 */	li r5, 0x12
/* 8036CE98  38 80 00 34 */	li r4, 0x34
/* 8036CE9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036CEA0  38 60 00 56 */	li r3, 0x56
/* 8036CEA4  38 00 00 78 */	li r0, 0x78
/* 8036CEA8  38 C0 00 01 */	li r6, 1
/* 8036CEAC  98 A1 00 08 */	stb r5, 8(r1)
/* 8036CEB0  3C A0 80 45 */	lis r5, gTRKBigEndian@ha /* 0x8044D8B8@ha */
/* 8036CEB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036CEB8  3B E0 00 00 */	li r31, 0
/* 8036CEBC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036CEC0  98 81 00 09 */	stb r4, 9(r1)
/* 8036CEC4  98 61 00 0A */	stb r3, 0xa(r1)
/* 8036CEC8  98 01 00 0B */	stb r0, 0xb(r1)
/* 8036CECC  80 61 00 08 */	lwz r3, 8(r1)
/* 8036CED0  94 C5 D8 B8 */	stwu r6, gTRKBigEndian@l(r5)  /* 0x8044D8B8@l */
/* 8036CED4  3C 03 ED CC */	addis r0, r3, 0xedcc
/* 8036CED8  28 00 56 78 */	cmplwi r0, 0x5678
/* 8036CEDC  40 82 00 0C */	bne lbl_8036CEE8
/* 8036CEE0  90 C5 00 00 */	stw r6, 0(r5)
/* 8036CEE4  48 00 00 1C */	b lbl_8036CF00
lbl_8036CEE8:
/* 8036CEE8  3C 03 87 AA */	addis r0, r3, 0x87aa
/* 8036CEEC  28 00 34 12 */	cmplwi r0, 0x3412
/* 8036CEF0  40 82 00 0C */	bne lbl_8036CEFC
/* 8036CEF4  93 E5 00 00 */	stw r31, 0(r5)
/* 8036CEF8  48 00 00 08 */	b lbl_8036CF00
lbl_8036CEFC:
/* 8036CEFC  7C DF 33 78 */	mr r31, r6
lbl_8036CF00:
/* 8036CF00  3C 60 80 3A */	lis r3, lit_154@ha /* 0x803A26A4@ha */
/* 8036CF04  38 83 26 A4 */	addi r4, r3, lit_154@l /* 0x803A26A4@l */
/* 8036CF08  38 60 00 01 */	li r3, 1
/* 8036CF0C  4C C6 31 82 */	crclr 6
/* 8036CF10  48 00 5D 45 */	bl MWTRACE
/* 8036CF14  2C 1F 00 00 */	cmpwi r31, 0
/* 8036CF18  40 82 00 08 */	bne lbl_8036CF20
/* 8036CF1C  48 00 0B F5 */	bl usr_put_initialize
lbl_8036CF20:
/* 8036CF20  2C 1F 00 00 */	cmpwi r31, 0
/* 8036CF24  40 82 00 0C */	bne lbl_8036CF30
/* 8036CF28  4B FF FE C1 */	bl TRKInitializeEventQueue
/* 8036CF2C  7C 7F 1B 78 */	mr r31, r3
lbl_8036CF30:
/* 8036CF30  2C 1F 00 00 */	cmpwi r31, 0
/* 8036CF34  40 82 00 0C */	bne lbl_8036CF40
/* 8036CF38  48 00 08 AD */	bl TRKInitializeMessageBuffers
/* 8036CF3C  7C 7F 1B 78 */	mr r31, r3
lbl_8036CF40:
/* 8036CF40  2C 1F 00 00 */	cmpwi r31, 0
/* 8036CF44  40 82 00 0C */	bne lbl_8036CF50
/* 8036CF48  48 00 0D C5 */	bl TRKInitializeDispatcher
/* 8036CF4C  7C 7F 1B 78 */	mr r31, r3
lbl_8036CF50:
/* 8036CF50  48 00 4D 31 */	bl InitializeProgramEndTrap
/* 8036CF54  2C 1F 00 00 */	cmpwi r31, 0
/* 8036CF58  40 82 00 0C */	bne lbl_8036CF64
/* 8036CF5C  48 00 09 05 */	bl TRKInitializeSerialHandler
/* 8036CF60  7C 7F 1B 78 */	mr r31, r3
lbl_8036CF64:
/* 8036CF64  2C 1F 00 00 */	cmpwi r31, 0
/* 8036CF68  40 82 00 0C */	bne lbl_8036CF74
/* 8036CF6C  48 00 4A 41 */	bl TRKInitializeTarget
/* 8036CF70  7C 7F 1B 78 */	mr r31, r3
lbl_8036CF74:
/* 8036CF74  2C 1F 00 00 */	cmpwi r31, 0
/* 8036CF78  40 82 00 44 */	bne lbl_8036CFBC
/* 8036CF7C  3C 60 80 45 */	lis r3, gTRKInputPendingPtr@ha /* 0x804519B8@ha */
/* 8036CF80  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000E100@ha */
/* 8036CF84  38 C3 19 B8 */	addi r6, r3, gTRKInputPendingPtr@l /* 0x804519B8@l */
/* 8036CF88  38 80 00 01 */	li r4, 1
/* 8036CF8C  38 65 E1 00 */	addi r3, r5, 0xE100 /* 0x0000E100@l */
/* 8036CF90  38 A0 00 00 */	li r5, 0
/* 8036CF94  48 00 4E C5 */	bl TRKInitializeIntDrivenUART
/* 8036CF98  3C 80 80 45 */	lis r4, gTRKInputPendingPtr@ha /* 0x804519B8@ha */
/* 8036CF9C  7C 60 1B 78 */	mr r0, r3
/* 8036CFA0  38 64 19 B8 */	addi r3, r4, gTRKInputPendingPtr@l /* 0x804519B8@l */
/* 8036CFA4  80 63 00 00 */	lwz r3, 0(r3)
/* 8036CFA8  7C 1E 03 78 */	mr r30, r0
/* 8036CFAC  48 00 2B 2D */	bl TRKTargetSetInputPendingPtr
/* 8036CFB0  2C 1E 00 00 */	cmpwi r30, 0
/* 8036CFB4  41 82 00 08 */	beq lbl_8036CFBC
/* 8036CFB8  7F DF F3 78 */	mr r31, r30
lbl_8036CFBC:
/* 8036CFBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036CFC0  7F E3 FB 78 */	mr r3, r31
/* 8036CFC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036CFC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036CFCC  7C 08 03 A6 */	mtlr r0
/* 8036CFD0  38 21 00 20 */	addi r1, r1, 0x20
/* 8036CFD4  4E 80 00 20 */	blr 
