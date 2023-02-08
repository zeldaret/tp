lbl_80AD9C0C:
/* 80AD9C0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AD9C10  7C 08 02 A6 */	mflr r0
/* 80AD9C14  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AD9C18  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80AD9C1C  7C 7F 1B 78 */	mr r31, r3
/* 80AD9C20  3C 60 80 AE */	lis r3, cNullVec__6Z2Calc@ha /* 0x80AE2620@ha */
/* 80AD9C24  38 83 26 20 */	addi r4, r3, cNullVec__6Z2Calc@l /* 0x80AE2620@l */
/* 80AD9C28  88 1F 0E 20 */	lbz r0, 0xe20(r31)
/* 80AD9C2C  2C 00 00 01 */	cmpwi r0, 1
/* 80AD9C30  41 82 00 AC */	beq lbl_80AD9CDC
/* 80AD9C34  40 80 00 10 */	bge lbl_80AD9C44
/* 80AD9C38  2C 00 00 00 */	cmpwi r0, 0
/* 80AD9C3C  40 80 00 14 */	bge lbl_80AD9C50
/* 80AD9C40  48 00 01 B0 */	b lbl_80AD9DF0
lbl_80AD9C44:
/* 80AD9C44  2C 00 00 03 */	cmpwi r0, 3
/* 80AD9C48  40 80 01 A8 */	bge lbl_80AD9DF0
/* 80AD9C4C  48 00 01 1C */	b lbl_80AD9D68
lbl_80AD9C50:
/* 80AD9C50  80 64 04 BC */	lwz r3, 0x4bc(r4)
/* 80AD9C54  80 04 04 C0 */	lwz r0, 0x4c0(r4)
/* 80AD9C58  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AD9C5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD9C60  80 04 04 C4 */	lwz r0, 0x4c4(r4)
/* 80AD9C64  90 01 00 28 */	stw r0, 0x28(r1)
/* 80AD9C68  38 00 00 03 */	li r0, 3
/* 80AD9C6C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AD9C70  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80AD9C74  4B 88 83 A5 */	bl __ptmf_test
/* 80AD9C78  2C 03 00 00 */	cmpwi r3, 0
/* 80AD9C7C  41 82 00 18 */	beq lbl_80AD9C94
/* 80AD9C80  7F E3 FB 78 */	mr r3, r31
/* 80AD9C84  38 80 00 00 */	li r4, 0
/* 80AD9C88  39 9F 0D EC */	addi r12, r31, 0xdec
/* 80AD9C8C  4B 88 83 F9 */	bl __ptmf_scall
/* 80AD9C90  60 00 00 00 */	nop 
lbl_80AD9C94:
/* 80AD9C94  38 00 00 00 */	li r0, 0
/* 80AD9C98  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AD9C9C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80AD9CA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD9CA4  90 7F 0D EC */	stw r3, 0xdec(r31)
/* 80AD9CA8  90 1F 0D F0 */	stw r0, 0xdf0(r31)
/* 80AD9CAC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AD9CB0  90 1F 0D F4 */	stw r0, 0xdf4(r31)
/* 80AD9CB4  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80AD9CB8  4B 88 83 61 */	bl __ptmf_test
/* 80AD9CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80AD9CC0  41 82 01 30 */	beq lbl_80AD9DF0
/* 80AD9CC4  7F E3 FB 78 */	mr r3, r31
/* 80AD9CC8  38 80 00 00 */	li r4, 0
/* 80AD9CCC  39 9F 0D EC */	addi r12, r31, 0xdec
/* 80AD9CD0  4B 88 83 B5 */	bl __ptmf_scall
/* 80AD9CD4  60 00 00 00 */	nop 
/* 80AD9CD8  48 00 01 18 */	b lbl_80AD9DF0
lbl_80AD9CDC:
/* 80AD9CDC  80 64 04 C8 */	lwz r3, 0x4c8(r4)
/* 80AD9CE0  80 04 04 CC */	lwz r0, 0x4cc(r4)
/* 80AD9CE4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80AD9CE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AD9CEC  80 04 04 D0 */	lwz r0, 0x4d0(r4)
/* 80AD9CF0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AD9CF4  38 00 00 03 */	li r0, 3
/* 80AD9CF8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AD9CFC  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80AD9D00  4B 88 83 19 */	bl __ptmf_test
/* 80AD9D04  2C 03 00 00 */	cmpwi r3, 0
/* 80AD9D08  41 82 00 18 */	beq lbl_80AD9D20
/* 80AD9D0C  7F E3 FB 78 */	mr r3, r31
/* 80AD9D10  38 80 00 00 */	li r4, 0
/* 80AD9D14  39 9F 0D EC */	addi r12, r31, 0xdec
/* 80AD9D18  4B 88 83 6D */	bl __ptmf_scall
/* 80AD9D1C  60 00 00 00 */	nop 
lbl_80AD9D20:
/* 80AD9D20  38 00 00 00 */	li r0, 0
/* 80AD9D24  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AD9D28  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80AD9D2C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80AD9D30  90 7F 0D EC */	stw r3, 0xdec(r31)
/* 80AD9D34  90 1F 0D F0 */	stw r0, 0xdf0(r31)
/* 80AD9D38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80AD9D3C  90 1F 0D F4 */	stw r0, 0xdf4(r31)
/* 80AD9D40  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80AD9D44  4B 88 82 D5 */	bl __ptmf_test
/* 80AD9D48  2C 03 00 00 */	cmpwi r3, 0
/* 80AD9D4C  41 82 00 A4 */	beq lbl_80AD9DF0
/* 80AD9D50  7F E3 FB 78 */	mr r3, r31
/* 80AD9D54  38 80 00 00 */	li r4, 0
/* 80AD9D58  39 9F 0D EC */	addi r12, r31, 0xdec
/* 80AD9D5C  4B 88 83 29 */	bl __ptmf_scall
/* 80AD9D60  60 00 00 00 */	nop 
/* 80AD9D64  48 00 00 8C */	b lbl_80AD9DF0
lbl_80AD9D68:
/* 80AD9D68  80 64 04 D4 */	lwz r3, 0x4d4(r4)
/* 80AD9D6C  80 04 04 D8 */	lwz r0, 0x4d8(r4)
/* 80AD9D70  90 61 00 08 */	stw r3, 8(r1)
/* 80AD9D74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AD9D78  80 04 04 DC */	lwz r0, 0x4dc(r4)
/* 80AD9D7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD9D80  38 00 00 03 */	li r0, 3
/* 80AD9D84  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AD9D88  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80AD9D8C  4B 88 82 8D */	bl __ptmf_test
/* 80AD9D90  2C 03 00 00 */	cmpwi r3, 0
/* 80AD9D94  41 82 00 18 */	beq lbl_80AD9DAC
/* 80AD9D98  7F E3 FB 78 */	mr r3, r31
/* 80AD9D9C  38 80 00 00 */	li r4, 0
/* 80AD9DA0  39 9F 0D EC */	addi r12, r31, 0xdec
/* 80AD9DA4  4B 88 82 E1 */	bl __ptmf_scall
/* 80AD9DA8  60 00 00 00 */	nop 
lbl_80AD9DAC:
/* 80AD9DAC  38 00 00 00 */	li r0, 0
/* 80AD9DB0  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AD9DB4  80 61 00 08 */	lwz r3, 8(r1)
/* 80AD9DB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AD9DBC  90 7F 0D EC */	stw r3, 0xdec(r31)
/* 80AD9DC0  90 1F 0D F0 */	stw r0, 0xdf0(r31)
/* 80AD9DC4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80AD9DC8  90 1F 0D F4 */	stw r0, 0xdf4(r31)
/* 80AD9DCC  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80AD9DD0  4B 88 82 49 */	bl __ptmf_test
/* 80AD9DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80AD9DD8  41 82 00 18 */	beq lbl_80AD9DF0
/* 80AD9DDC  7F E3 FB 78 */	mr r3, r31
/* 80AD9DE0  38 80 00 00 */	li r4, 0
/* 80AD9DE4  39 9F 0D EC */	addi r12, r31, 0xdec
/* 80AD9DE8  4B 88 82 9D */	bl __ptmf_scall
/* 80AD9DEC  60 00 00 00 */	nop 
lbl_80AD9DF0:
/* 80AD9DF0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80AD9DF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AD9DF8  7C 08 03 A6 */	mtlr r0
/* 80AD9DFC  38 21 00 40 */	addi r1, r1, 0x40
/* 80AD9E00  4E 80 00 20 */	blr 
