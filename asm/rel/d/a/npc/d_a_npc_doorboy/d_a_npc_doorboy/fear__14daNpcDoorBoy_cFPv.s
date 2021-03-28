lbl_809AC064:
/* 809AC064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AC068  7C 08 02 A6 */	mflr r0
/* 809AC06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AC070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AC074  93 C1 00 08 */	stw r30, 8(r1)
/* 809AC078  7C 7E 1B 78 */	mr r30, r3
/* 809AC07C  3C 80 80 9B */	lis r4, m__20daNpcDoorBoy_Param_c@ha
/* 809AC080  3B E4 D9 A8 */	addi r31, r4, m__20daNpcDoorBoy_Param_c@l
/* 809AC084  A0 03 0E 04 */	lhz r0, 0xe04(r3)
/* 809AC088  2C 00 00 02 */	cmpwi r0, 2
/* 809AC08C  41 82 00 48 */	beq lbl_809AC0D4
/* 809AC090  40 80 00 68 */	bge lbl_809AC0F8
/* 809AC094  2C 00 00 00 */	cmpwi r0, 0
/* 809AC098  41 82 00 0C */	beq lbl_809AC0A4
/* 809AC09C  48 00 00 5C */	b lbl_809AC0F8
/* 809AC0A0  48 00 00 58 */	b lbl_809AC0F8
lbl_809AC0A4:
/* 809AC0A4  38 80 00 0B */	li r4, 0xb
/* 809AC0A8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 809AC0AC  38 A0 00 00 */	li r5, 0
/* 809AC0B0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809AC0B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809AC0B8  7D 89 03 A6 */	mtctr r12
/* 809AC0BC  4E 80 04 21 */	bctrl 
/* 809AC0C0  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 809AC0C4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809AC0C8  38 00 00 02 */	li r0, 2
/* 809AC0CC  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 809AC0D0  48 00 00 28 */	b lbl_809AC0F8
lbl_809AC0D4:
/* 809AC0D4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809AC0D8  38 63 00 0C */	addi r3, r3, 0xc
/* 809AC0DC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 809AC0E0  4B 97 C3 4C */	b checkPass__12J3DFrameCtrlFf
/* 809AC0E4  2C 03 00 00 */	cmpwi r3, 0
/* 809AC0E8  41 82 00 10 */	beq lbl_809AC0F8
/* 809AC0EC  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809AC0F0  38 80 00 02 */	li r4, 2
/* 809AC0F4  4B 91 4D 24 */	b playVoice__17Z2CreatureCitizenFi
lbl_809AC0F8:
/* 809AC0F8  38 60 00 01 */	li r3, 1
/* 809AC0FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AC100  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AC104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AC108  7C 08 03 A6 */	mtlr r0
/* 809AC10C  38 21 00 10 */	addi r1, r1, 0x10
/* 809AC110  4E 80 00 20 */	blr 
