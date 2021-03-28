lbl_8006FF38:
/* 8006FF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006FF3C  7C 08 02 A6 */	mflr r0
/* 8006FF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006FF44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006FF48  7C 7F 1B 78 */	mr r31, r3
/* 8006FF4C  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 8006FF50  2C 00 FF FF */	cmpwi r0, -1
/* 8006FF54  41 82 00 90 */	beq lbl_8006FFE4
/* 8006FF58  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8006FF5C  2C 00 FF FF */	cmpwi r0, -1
/* 8006FF60  40 82 00 10 */	bne lbl_8006FF70
/* 8006FF64  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 8006FF68  2C 00 FF FF */	cmpwi r0, -1
/* 8006FF6C  41 82 00 30 */	beq lbl_8006FF9C
lbl_8006FF70:
/* 8006FF70  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha
/* 8006FF74  80 83 D2 D8 */	lwz r4, m_gamePad__8mDoCPd_c@l(r3)
/* 8006FF78  38 64 00 68 */	addi r3, r4, 0x68
/* 8006FF7C  A8 84 00 7C */	lha r4, 0x7c(r4)
/* 8006FF80  48 27 19 C9 */	bl stopPatternedRumble__Q210JUTGamePad7CRumbleFs
/* 8006FF84  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha
/* 8006FF88  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l
/* 8006FF8C  80 63 00 00 */	lwz r3, 0(r3)
/* 8006FF90  A8 63 00 7C */	lha r3, 0x7c(r3)
/* 8006FF94  38 80 00 01 */	li r4, 1
/* 8006FF98  48 27 16 F5 */	bl stopMotor__Q210JUTGamePad7CRumbleFib
lbl_8006FF9C:
/* 8006FF9C  38 00 FF FF */	li r0, -1
/* 8006FFA0  90 1F 00 54 */	stw r0, 0x54(r31)
/* 8006FFA4  90 1F 00 04 */	stw r0, 4(r31)
/* 8006FFA8  38 00 FF 9D */	li r0, -99
/* 8006FFAC  90 1F 00 64 */	stw r0, 0x64(r31)
/* 8006FFB0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8006FFB4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8006FFB8  2C 00 FF FF */	cmpwi r0, -1
/* 8006FFBC  41 82 00 0C */	beq lbl_8006FFC8
/* 8006FFC0  38 00 00 00 */	li r0, 0
/* 8006FFC4  90 1F 00 4C */	stw r0, 0x4c(r31)
lbl_8006FFC8:
/* 8006FFC8  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 8006FFCC  2C 00 FF FF */	cmpwi r0, -1
/* 8006FFD0  41 82 00 0C */	beq lbl_8006FFDC
/* 8006FFD4  38 00 00 00 */	li r0, 0
/* 8006FFD8  90 1F 00 80 */	stw r0, 0x80(r31)
lbl_8006FFDC:
/* 8006FFDC  38 00 FF FF */	li r0, -1
/* 8006FFE0  90 1F 00 8C */	stw r0, 0x8c(r31)
lbl_8006FFE4:
/* 8006FFE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006FFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006FFEC  7C 08 03 A6 */	mtlr r0
/* 8006FFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8006FFF4  4E 80 00 20 */	blr 
