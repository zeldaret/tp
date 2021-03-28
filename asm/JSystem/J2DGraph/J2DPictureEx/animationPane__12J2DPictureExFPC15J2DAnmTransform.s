lbl_80306C70:
/* 80306C70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80306C74  7C 08 02 A6 */	mflr r0
/* 80306C78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80306C7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80306C80  48 05 B5 59 */	bl _savegpr_28
/* 80306C84  7C 7C 1B 78 */	mr r28, r3
/* 80306C88  7C 9D 23 78 */	mr r29, r4
/* 80306C8C  80 63 01 94 */	lwz r3, 0x194(r3)
/* 80306C90  28 03 00 00 */	cmplwi r3, 0
/* 80306C94  41 82 00 38 */	beq lbl_80306CCC
/* 80306C98  A0 9C 01 54 */	lhz r4, 0x154(r28)
/* 80306C9C  28 04 FF FF */	cmplwi r4, 0xffff
/* 80306CA0  41 82 00 2C */	beq lbl_80306CCC
/* 80306CA4  38 A1 00 08 */	addi r5, r1, 8
/* 80306CA8  48 00 53 A1 */	bl getVisibility__20J2DAnmVisibilityFullCFUsPUc
/* 80306CAC  88 01 00 08 */	lbz r0, 8(r1)
/* 80306CB0  28 00 00 00 */	cmplwi r0, 0
/* 80306CB4  41 82 00 10 */	beq lbl_80306CC4
/* 80306CB8  38 00 00 01 */	li r0, 1
/* 80306CBC  98 1C 00 B0 */	stb r0, 0xb0(r28)
/* 80306CC0  48 00 00 0C */	b lbl_80306CCC
lbl_80306CC4:
/* 80306CC4  38 00 00 00 */	li r0, 0
/* 80306CC8  98 1C 00 B0 */	stb r0, 0xb0(r28)
lbl_80306CCC:
/* 80306CCC  80 7C 01 98 */	lwz r3, 0x198(r28)
/* 80306CD0  28 03 00 00 */	cmplwi r3, 0
/* 80306CD4  41 82 00 D0 */	beq lbl_80306DA4
/* 80306CD8  A3 E3 00 10 */	lhz r31, 0x10(r3)
/* 80306CDC  3B C0 00 00 */	li r30, 0
/* 80306CE0  48 00 00 B8 */	b lbl_80306D98
lbl_80306CE4:
/* 80306CE4  88 7C 01 9C */	lbz r3, 0x19c(r28)
/* 80306CE8  38 00 00 01 */	li r0, 1
/* 80306CEC  57 C7 06 3E */	clrlwi r7, r30, 0x18
/* 80306CF0  7C 00 38 30 */	slw r0, r0, r7
/* 80306CF4  7C 60 00 39 */	and. r0, r3, r0
/* 80306CF8  41 82 00 9C */	beq lbl_80306D94
/* 80306CFC  38 A0 00 00 */	li r5, 0
/* 80306D00  57 C3 0D FC */	rlwinm r3, r30, 1, 0x17, 0x1e
/* 80306D04  39 23 01 58 */	addi r9, r3, 0x158
/* 80306D08  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80306D0C  48 00 00 7C */	b lbl_80306D88
lbl_80306D10:
/* 80306D10  80 7C 01 98 */	lwz r3, 0x198(r28)
/* 80306D14  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80306D18  54 A4 1B 78 */	rlwinm r4, r5, 3, 0xd, 0x1c
/* 80306D1C  7C C6 22 14 */	add r6, r6, r4
/* 80306D20  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 80306D24  80 86 00 04 */	lwz r4, 4(r6)
/* 80306D28  54 84 08 3C */	slwi r4, r4, 1
/* 80306D2C  7D 48 22 14 */	add r10, r8, r4
/* 80306D30  39 60 00 00 */	li r11, 0
/* 80306D34  A1 06 00 00 */	lhz r8, 0(r6)
/* 80306D38  48 00 00 40 */	b lbl_80306D78
lbl_80306D3C:
/* 80306D3C  7C DC 4A 2E */	lhzx r6, r28, r9
/* 80306D40  55 64 0B FC */	rlwinm r4, r11, 1, 0xf, 0x1e
/* 80306D44  7C 8A 22 2E */	lhzx r4, r10, r4
/* 80306D48  7C 06 20 40 */	cmplw r6, r4
/* 80306D4C  40 82 00 28 */	bne lbl_80306D74
/* 80306D50  38 80 00 00 */	li r4, 0
/* 80306D54  54 E6 10 3A */	slwi r6, r7, 2
/* 80306D58  38 C6 01 38 */	addi r6, r6, 0x138
/* 80306D5C  7C DC 32 14 */	add r6, r28, r6
/* 80306D60  81 83 00 00 */	lwz r12, 0(r3)
/* 80306D64  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80306D68  7D 89 03 A6 */	mtctr r12
/* 80306D6C  4E 80 04 21 */	bctrl 
/* 80306D70  48 00 00 24 */	b lbl_80306D94
lbl_80306D74:
/* 80306D74  39 6B 00 01 */	addi r11, r11, 1
lbl_80306D78:
/* 80306D78  55 64 04 3E */	clrlwi r4, r11, 0x10
/* 80306D7C  7C 04 40 40 */	cmplw r4, r8
/* 80306D80  41 80 FF BC */	blt lbl_80306D3C
/* 80306D84  38 A5 00 01 */	addi r5, r5, 1
lbl_80306D88:
/* 80306D88  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 80306D8C  7C 03 00 40 */	cmplw r3, r0
/* 80306D90  41 80 FF 80 */	blt lbl_80306D10
lbl_80306D94:
/* 80306D94  3B DE 00 01 */	addi r30, r30, 1
lbl_80306D98:
/* 80306D98  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80306D9C  28 00 00 04 */	cmplwi r0, 4
/* 80306DA0  41 80 FF 44 */	blt lbl_80306CE4
lbl_80306DA4:
/* 80306DA4  7F 83 E3 78 */	mr r3, r28
/* 80306DA8  7F A4 EB 78 */	mr r4, r29
/* 80306DAC  4B FF 14 7D */	bl animationPane__7J2DPaneFPC15J2DAnmTransform
/* 80306DB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80306DB4  48 05 B4 71 */	bl _restgpr_28
/* 80306DB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80306DBC  7C 08 03 A6 */	mtlr r0
/* 80306DC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80306DC4  4E 80 00 20 */	blr 
