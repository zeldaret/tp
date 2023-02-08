lbl_801E0BB0:
/* 801E0BB0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801E0BB4  7C 08 02 A6 */	mflr r0
/* 801E0BB8  90 01 00 74 */	stw r0, 0x74(r1)
/* 801E0BBC  39 61 00 70 */	addi r11, r1, 0x70
/* 801E0BC0  48 18 16 11 */	bl _savegpr_26
/* 801E0BC4  7C 7E 1B 78 */	mr r30, r3
/* 801E0BC8  4B FF FF 5D */	bl setCursorPos__14dMenu_Letter_cFv
/* 801E0BCC  3B E0 00 00 */	li r31, 0
/* 801E0BD0  3B A0 00 00 */	li r29, 0
/* 801E0BD4  3B 80 00 00 */	li r28, 0
/* 801E0BD8  3B 60 00 00 */	li r27, 0
lbl_801E0BDC:
/* 801E0BDC  88 1E 03 6E */	lbz r0, 0x36e(r30)
/* 801E0BE0  7C 1F 00 00 */	cmpw r31, r0
/* 801E0BE4  40 82 01 14 */	bne lbl_801E0CF8
/* 801E0BE8  80 1E 03 38 */	lwz r0, 0x338(r30)
/* 801E0BEC  90 01 00 50 */	stw r0, 0x50(r1)
/* 801E0BF0  80 1E 03 18 */	lwz r0, 0x318(r30)
/* 801E0BF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801E0BF8  7F 5E DA 14 */	add r26, r30, r27
/* 801E0BFC  80 7A 00 34 */	lwz r3, 0x34(r26)
/* 801E0C00  38 81 00 54 */	addi r4, r1, 0x54
/* 801E0C04  38 A1 00 50 */	addi r5, r1, 0x50
/* 801E0C08  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0C0C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801E0C10  7D 89 03 A6 */	mtctr r12
/* 801E0C14  4E 80 04 21 */	bctrl 
/* 801E0C18  80 1E 03 3C */	lwz r0, 0x33c(r30)
/* 801E0C1C  90 01 00 48 */	stw r0, 0x48(r1)
/* 801E0C20  80 1E 03 1C */	lwz r0, 0x31c(r30)
/* 801E0C24  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801E0C28  80 7A 00 38 */	lwz r3, 0x38(r26)
/* 801E0C2C  38 81 00 4C */	addi r4, r1, 0x4c
/* 801E0C30  38 A1 00 48 */	addi r5, r1, 0x48
/* 801E0C34  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0C38  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801E0C3C  7D 89 03 A6 */	mtctr r12
/* 801E0C40  4E 80 04 21 */	bctrl 
/* 801E0C44  80 1E 03 40 */	lwz r0, 0x340(r30)
/* 801E0C48  90 01 00 40 */	stw r0, 0x40(r1)
/* 801E0C4C  80 1E 03 20 */	lwz r0, 0x320(r30)
/* 801E0C50  90 01 00 44 */	stw r0, 0x44(r1)
/* 801E0C54  80 7A 00 3C */	lwz r3, 0x3c(r26)
/* 801E0C58  38 81 00 44 */	addi r4, r1, 0x44
/* 801E0C5C  38 A1 00 40 */	addi r5, r1, 0x40
/* 801E0C60  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0C64  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801E0C68  7D 89 03 A6 */	mtctr r12
/* 801E0C6C  4E 80 04 21 */	bctrl 
/* 801E0C70  80 1E 03 44 */	lwz r0, 0x344(r30)
/* 801E0C74  90 01 00 38 */	stw r0, 0x38(r1)
/* 801E0C78  80 1E 03 24 */	lwz r0, 0x324(r30)
/* 801E0C7C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801E0C80  7F 5E E2 14 */	add r26, r30, r28
/* 801E0C84  80 7A 01 28 */	lwz r3, 0x128(r26)
/* 801E0C88  38 81 00 3C */	addi r4, r1, 0x3c
/* 801E0C8C  38 A1 00 38 */	addi r5, r1, 0x38
/* 801E0C90  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0C94  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801E0C98  7D 89 03 A6 */	mtctr r12
/* 801E0C9C  4E 80 04 21 */	bctrl 
/* 801E0CA0  80 1E 03 44 */	lwz r0, 0x344(r30)
/* 801E0CA4  90 01 00 30 */	stw r0, 0x30(r1)
/* 801E0CA8  80 1E 03 24 */	lwz r0, 0x324(r30)
/* 801E0CAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E0CB0  80 7A 01 30 */	lwz r3, 0x130(r26)
/* 801E0CB4  38 81 00 34 */	addi r4, r1, 0x34
/* 801E0CB8  38 A1 00 30 */	addi r5, r1, 0x30
/* 801E0CBC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0CC0  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801E0CC4  7D 89 03 A6 */	mtctr r12
/* 801E0CC8  4E 80 04 21 */	bctrl 
/* 801E0CCC  C0 1E 03 60 */	lfs f0, 0x360(r30)
/* 801E0CD0  38 1D 02 C8 */	addi r0, r29, 0x2c8
/* 801E0CD4  7C 7E 00 2E */	lwzx r3, r30, r0
/* 801E0CD8  80 63 00 04 */	lwz r3, 4(r3)
/* 801E0CDC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E0CE0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E0CE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0CE8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E0CEC  7D 89 03 A6 */	mtctr r12
/* 801E0CF0  4E 80 04 21 */	bctrl 
/* 801E0CF4  48 00 01 10 */	b lbl_801E0E04
lbl_801E0CF8:
/* 801E0CF8  80 1E 03 48 */	lwz r0, 0x348(r30)
/* 801E0CFC  90 01 00 28 */	stw r0, 0x28(r1)
/* 801E0D00  80 1E 03 28 */	lwz r0, 0x328(r30)
/* 801E0D04  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801E0D08  7F 5E DA 14 */	add r26, r30, r27
/* 801E0D0C  80 7A 00 34 */	lwz r3, 0x34(r26)
/* 801E0D10  38 81 00 2C */	addi r4, r1, 0x2c
/* 801E0D14  38 A1 00 28 */	addi r5, r1, 0x28
/* 801E0D18  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0D1C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801E0D20  7D 89 03 A6 */	mtctr r12
/* 801E0D24  4E 80 04 21 */	bctrl 
/* 801E0D28  80 1E 03 4C */	lwz r0, 0x34c(r30)
/* 801E0D2C  90 01 00 20 */	stw r0, 0x20(r1)
/* 801E0D30  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 801E0D34  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E0D38  80 7A 00 38 */	lwz r3, 0x38(r26)
/* 801E0D3C  38 81 00 24 */	addi r4, r1, 0x24
/* 801E0D40  38 A1 00 20 */	addi r5, r1, 0x20
/* 801E0D44  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0D48  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801E0D4C  7D 89 03 A6 */	mtctr r12
/* 801E0D50  4E 80 04 21 */	bctrl 
/* 801E0D54  80 1E 03 50 */	lwz r0, 0x350(r30)
/* 801E0D58  90 01 00 18 */	stw r0, 0x18(r1)
/* 801E0D5C  80 1E 03 30 */	lwz r0, 0x330(r30)
/* 801E0D60  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801E0D64  80 7A 00 3C */	lwz r3, 0x3c(r26)
/* 801E0D68  38 81 00 1C */	addi r4, r1, 0x1c
/* 801E0D6C  38 A1 00 18 */	addi r5, r1, 0x18
/* 801E0D70  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0D74  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801E0D78  7D 89 03 A6 */	mtctr r12
/* 801E0D7C  4E 80 04 21 */	bctrl 
/* 801E0D80  80 1E 03 54 */	lwz r0, 0x354(r30)
/* 801E0D84  90 01 00 10 */	stw r0, 0x10(r1)
/* 801E0D88  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 801E0D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E0D90  7F 5E E2 14 */	add r26, r30, r28
/* 801E0D94  80 7A 01 28 */	lwz r3, 0x128(r26)
/* 801E0D98  38 81 00 14 */	addi r4, r1, 0x14
/* 801E0D9C  38 A1 00 10 */	addi r5, r1, 0x10
/* 801E0DA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0DA4  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801E0DA8  7D 89 03 A6 */	mtctr r12
/* 801E0DAC  4E 80 04 21 */	bctrl 
/* 801E0DB0  80 1E 03 54 */	lwz r0, 0x354(r30)
/* 801E0DB4  90 01 00 08 */	stw r0, 8(r1)
/* 801E0DB8  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 801E0DBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E0DC0  80 7A 01 30 */	lwz r3, 0x130(r26)
/* 801E0DC4  38 81 00 0C */	addi r4, r1, 0xc
/* 801E0DC8  38 A1 00 08 */	addi r5, r1, 8
/* 801E0DCC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0DD0  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801E0DD4  7D 89 03 A6 */	mtctr r12
/* 801E0DD8  4E 80 04 21 */	bctrl 
/* 801E0DDC  C0 1E 03 64 */	lfs f0, 0x364(r30)
/* 801E0DE0  38 1D 02 C8 */	addi r0, r29, 0x2c8
/* 801E0DE4  7C 7E 00 2E */	lwzx r3, r30, r0
/* 801E0DE8  80 63 00 04 */	lwz r3, 4(r3)
/* 801E0DEC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E0DF0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E0DF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0DF8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E0DFC  7D 89 03 A6 */	mtctr r12
/* 801E0E00  4E 80 04 21 */	bctrl 
lbl_801E0E04:
/* 801E0E04  3B FF 00 01 */	addi r31, r31, 1
/* 801E0E08  2C 1F 00 06 */	cmpwi r31, 6
/* 801E0E0C  3B BD 00 04 */	addi r29, r29, 4
/* 801E0E10  3B 9C 00 10 */	addi r28, r28, 0x10
/* 801E0E14  3B 7B 00 14 */	addi r27, r27, 0x14
/* 801E0E18  41 80 FD C4 */	blt lbl_801E0BDC
/* 801E0E1C  39 61 00 70 */	addi r11, r1, 0x70
/* 801E0E20  48 18 13 FD */	bl _restgpr_26
/* 801E0E24  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801E0E28  7C 08 03 A6 */	mtlr r0
/* 801E0E2C  38 21 00 70 */	addi r1, r1, 0x70
/* 801E0E30  4E 80 00 20 */	blr 
