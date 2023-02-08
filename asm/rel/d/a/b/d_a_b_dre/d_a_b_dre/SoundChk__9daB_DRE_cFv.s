lbl_805C9B40:
/* 805C9B40  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C9B44  7C 08 02 A6 */	mflr r0
/* 805C9B48  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C9B4C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 805C9B50  93 C1 00 48 */	stw r30, 0x48(r1)
/* 805C9B54  7C 7E 1B 78 */	mr r30, r3
/* 805C9B58  3C 60 80 5D */	lis r3, lit_3844@ha /* 0x805CAD5C@ha */
/* 805C9B5C  3B E3 AD 5C */	addi r31, r3, lit_3844@l /* 0x805CAD5C@l */
/* 805C9B60  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 805C9B64  38 03 FF E9 */	addi r0, r3, -23
/* 805C9B68  28 00 00 21 */	cmplwi r0, 0x21
/* 805C9B6C  41 81 05 D4 */	bgt lbl_805CA140
/* 805C9B70  3C 60 80 5D */	lis r3, lit_4782@ha /* 0x805CAF24@ha */
/* 805C9B74  38 63 AF 24 */	addi r3, r3, lit_4782@l /* 0x805CAF24@l */
/* 805C9B78  54 00 10 3A */	slwi r0, r0, 2
/* 805C9B7C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805C9B80  7C 09 03 A6 */	mtctr r0
/* 805C9B84  4E 80 04 20 */	bctr 
lbl_805C9B88:
/* 805C9B88  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070482@ha */
/* 805C9B8C  38 03 04 82 */	addi r0, r3, 0x0482 /* 0x00070482@l */
/* 805C9B90  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805C9B94  38 7E 06 44 */	addi r3, r30, 0x644
/* 805C9B98  38 81 00 2C */	addi r4, r1, 0x2c
/* 805C9B9C  38 A0 00 00 */	li r5, 0
/* 805C9BA0  38 C0 FF FF */	li r6, -1
/* 805C9BA4  81 9E 06 44 */	lwz r12, 0x644(r30)
/* 805C9BA8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805C9BAC  7D 89 03 A6 */	mtctr r12
/* 805C9BB0  4E 80 04 21 */	bctrl 
/* 805C9BB4  48 00 05 8C */	b lbl_805CA140
lbl_805C9BB8:
/* 805C9BB8  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9BBC  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9BC0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C9BC4  4B D5 E8 69 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9BC8  2C 03 00 00 */	cmpwi r3, 0
/* 805C9BCC  41 82 00 30 */	beq lbl_805C9BFC
/* 805C9BD0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070481@ha */
/* 805C9BD4  38 03 04 81 */	addi r0, r3, 0x0481 /* 0x00070481@l */
/* 805C9BD8  90 01 00 28 */	stw r0, 0x28(r1)
/* 805C9BDC  38 7E 06 44 */	addi r3, r30, 0x644
/* 805C9BE0  38 81 00 28 */	addi r4, r1, 0x28
/* 805C9BE4  38 A0 00 00 */	li r5, 0
/* 805C9BE8  38 C0 FF FF */	li r6, -1
/* 805C9BEC  81 9E 06 44 */	lwz r12, 0x644(r30)
/* 805C9BF0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805C9BF4  7D 89 03 A6 */	mtctr r12
/* 805C9BF8  4E 80 04 21 */	bctrl 
lbl_805C9BFC:
/* 805C9BFC  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9C00  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9C04  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 805C9C08  4B D5 E8 25 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9C0C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9C10  40 82 00 F4 */	bne lbl_805C9D04
/* 805C9C14  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9C18  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9C1C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 805C9C20  4B D5 E8 0D */	bl checkPass__12J3DFrameCtrlFf
/* 805C9C24  2C 03 00 00 */	cmpwi r3, 0
/* 805C9C28  40 82 00 DC */	bne lbl_805C9D04
/* 805C9C2C  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9C30  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9C34  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 805C9C38  4B D5 E7 F5 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9C3C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9C40  40 82 00 C4 */	bne lbl_805C9D04
/* 805C9C44  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9C48  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9C4C  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 805C9C50  4B D5 E7 DD */	bl checkPass__12J3DFrameCtrlFf
/* 805C9C54  2C 03 00 00 */	cmpwi r3, 0
/* 805C9C58  40 82 00 AC */	bne lbl_805C9D04
/* 805C9C5C  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9C60  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9C64  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 805C9C68  4B D5 E7 C5 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9C6C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9C70  40 82 00 94 */	bne lbl_805C9D04
/* 805C9C74  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9C78  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9C7C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 805C9C80  4B D5 E7 AD */	bl checkPass__12J3DFrameCtrlFf
/* 805C9C84  2C 03 00 00 */	cmpwi r3, 0
/* 805C9C88  40 82 00 7C */	bne lbl_805C9D04
/* 805C9C8C  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9C90  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9C94  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 805C9C98  4B D5 E7 95 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9C9C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9CA0  40 82 00 64 */	bne lbl_805C9D04
/* 805C9CA4  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9CA8  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9CAC  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 805C9CB0  4B D5 E7 7D */	bl checkPass__12J3DFrameCtrlFf
/* 805C9CB4  2C 03 00 00 */	cmpwi r3, 0
/* 805C9CB8  40 82 00 4C */	bne lbl_805C9D04
/* 805C9CBC  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9CC0  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9CC4  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 805C9CC8  4B D5 E7 65 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9CCC  2C 03 00 00 */	cmpwi r3, 0
/* 805C9CD0  40 82 00 34 */	bne lbl_805C9D04
/* 805C9CD4  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9CD8  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9CDC  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 805C9CE0  4B D5 E7 4D */	bl checkPass__12J3DFrameCtrlFf
/* 805C9CE4  2C 03 00 00 */	cmpwi r3, 0
/* 805C9CE8  40 82 00 1C */	bne lbl_805C9D04
/* 805C9CEC  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9CF0  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9CF4  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 805C9CF8  4B D5 E7 35 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9CFC  2C 03 00 00 */	cmpwi r3, 0
/* 805C9D00  41 82 04 40 */	beq lbl_805CA140
lbl_805C9D04:
/* 805C9D04  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805C9D08  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805C9D0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C9D10  38 7E 06 44 */	addi r3, r30, 0x644
/* 805C9D14  38 81 00 24 */	addi r4, r1, 0x24
/* 805C9D18  38 A0 00 00 */	li r5, 0
/* 805C9D1C  38 C0 FF FF */	li r6, -1
/* 805C9D20  81 9E 06 44 */	lwz r12, 0x644(r30)
/* 805C9D24  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805C9D28  7D 89 03 A6 */	mtctr r12
/* 805C9D2C  4E 80 04 21 */	bctrl 
/* 805C9D30  48 00 04 10 */	b lbl_805CA140
lbl_805C9D34:
/* 805C9D34  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9D38  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9D3C  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 805C9D40  4B D5 E6 ED */	bl checkPass__12J3DFrameCtrlFf
/* 805C9D44  2C 03 00 00 */	cmpwi r3, 0
/* 805C9D48  41 82 03 F8 */	beq lbl_805CA140
/* 805C9D4C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805C9D50  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805C9D54  90 01 00 20 */	stw r0, 0x20(r1)
/* 805C9D58  38 7E 06 44 */	addi r3, r30, 0x644
/* 805C9D5C  38 81 00 20 */	addi r4, r1, 0x20
/* 805C9D60  38 A0 00 00 */	li r5, 0
/* 805C9D64  38 C0 FF FF */	li r6, -1
/* 805C9D68  81 9E 06 44 */	lwz r12, 0x644(r30)
/* 805C9D6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805C9D70  7D 89 03 A6 */	mtctr r12
/* 805C9D74  4E 80 04 21 */	bctrl 
/* 805C9D78  48 00 03 C8 */	b lbl_805CA140
lbl_805C9D7C:
/* 805C9D7C  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9D80  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9D84  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 805C9D88  4B D5 E6 A5 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9D8C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9D90  40 82 00 C4 */	bne lbl_805C9E54
/* 805C9D94  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9D98  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9D9C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 805C9DA0  4B D5 E6 8D */	bl checkPass__12J3DFrameCtrlFf
/* 805C9DA4  2C 03 00 00 */	cmpwi r3, 0
/* 805C9DA8  40 82 00 AC */	bne lbl_805C9E54
/* 805C9DAC  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9DB0  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9DB4  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 805C9DB8  4B D5 E6 75 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9DBC  2C 03 00 00 */	cmpwi r3, 0
/* 805C9DC0  40 82 00 94 */	bne lbl_805C9E54
/* 805C9DC4  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9DC8  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9DCC  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 805C9DD0  4B D5 E6 5D */	bl checkPass__12J3DFrameCtrlFf
/* 805C9DD4  2C 03 00 00 */	cmpwi r3, 0
/* 805C9DD8  40 82 00 7C */	bne lbl_805C9E54
/* 805C9DDC  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9DE0  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9DE4  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 805C9DE8  4B D5 E6 45 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9DEC  2C 03 00 00 */	cmpwi r3, 0
/* 805C9DF0  40 82 00 64 */	bne lbl_805C9E54
/* 805C9DF4  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9DF8  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9DFC  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 805C9E00  4B D5 E6 2D */	bl checkPass__12J3DFrameCtrlFf
/* 805C9E04  2C 03 00 00 */	cmpwi r3, 0
/* 805C9E08  40 82 00 4C */	bne lbl_805C9E54
/* 805C9E0C  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9E10  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9E14  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 805C9E18  4B D5 E6 15 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9E1C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9E20  40 82 00 34 */	bne lbl_805C9E54
/* 805C9E24  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9E28  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9E2C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 805C9E30  4B D5 E5 FD */	bl checkPass__12J3DFrameCtrlFf
/* 805C9E34  2C 03 00 00 */	cmpwi r3, 0
/* 805C9E38  40 82 00 1C */	bne lbl_805C9E54
/* 805C9E3C  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9E40  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9E44  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 805C9E48  4B D5 E5 E5 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9E4C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9E50  41 82 00 30 */	beq lbl_805C9E80
lbl_805C9E54:
/* 805C9E54  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805C9E58  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805C9E5C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805C9E60  38 7E 06 44 */	addi r3, r30, 0x644
/* 805C9E64  38 81 00 1C */	addi r4, r1, 0x1c
/* 805C9E68  38 A0 00 00 */	li r5, 0
/* 805C9E6C  38 C0 FF FF */	li r6, -1
/* 805C9E70  81 9E 06 44 */	lwz r12, 0x644(r30)
/* 805C9E74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805C9E78  7D 89 03 A6 */	mtctr r12
/* 805C9E7C  4E 80 04 21 */	bctrl 
lbl_805C9E80:
/* 805C9E80  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9E84  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9E88  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C9E8C  4B D5 E5 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9E90  2C 03 00 00 */	cmpwi r3, 0
/* 805C9E94  41 82 00 30 */	beq lbl_805C9EC4
/* 805C9E98  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047D@ha */
/* 805C9E9C  38 03 04 7D */	addi r0, r3, 0x047D /* 0x0007047D@l */
/* 805C9EA0  90 01 00 18 */	stw r0, 0x18(r1)
/* 805C9EA4  38 7E 06 44 */	addi r3, r30, 0x644
/* 805C9EA8  38 81 00 18 */	addi r4, r1, 0x18
/* 805C9EAC  38 A0 00 00 */	li r5, 0
/* 805C9EB0  38 C0 FF FF */	li r6, -1
/* 805C9EB4  81 9E 06 44 */	lwz r12, 0x644(r30)
/* 805C9EB8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805C9EBC  7D 89 03 A6 */	mtctr r12
/* 805C9EC0  4E 80 04 21 */	bctrl 
lbl_805C9EC4:
/* 805C9EC4  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9EC8  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9ECC  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 805C9ED0  4B D5 E5 5D */	bl checkPass__12J3DFrameCtrlFf
/* 805C9ED4  2C 03 00 00 */	cmpwi r3, 0
/* 805C9ED8  41 82 00 2C */	beq lbl_805C9F04
/* 805C9EDC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047E@ha */
/* 805C9EE0  38 03 04 7E */	addi r0, r3, 0x047E /* 0x0007047E@l */
/* 805C9EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C9EE8  38 7E 06 44 */	addi r3, r30, 0x644
/* 805C9EEC  38 81 00 14 */	addi r4, r1, 0x14
/* 805C9EF0  38 A0 FF FF */	li r5, -1
/* 805C9EF4  81 9E 06 44 */	lwz r12, 0x644(r30)
/* 805C9EF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805C9EFC  7D 89 03 A6 */	mtctr r12
/* 805C9F00  4E 80 04 21 */	bctrl 
lbl_805C9F04:
/* 805C9F04  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9F08  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9F0C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 805C9F10  4B D5 E5 1D */	bl checkPass__12J3DFrameCtrlFf
/* 805C9F14  2C 03 00 00 */	cmpwi r3, 0
/* 805C9F18  41 82 00 38 */	beq lbl_805C9F50
/* 805C9F1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C9F20  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805C9F24  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805C9F28  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805C9F2C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805C9F30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C9F34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C9F38  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805C9F3C  38 80 00 08 */	li r4, 8
/* 805C9F40  38 A0 00 1F */	li r5, 0x1f
/* 805C9F44  38 C1 00 3C */	addi r6, r1, 0x3c
/* 805C9F48  4B AA 5B C9 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805C9F4C  48 00 01 F4 */	b lbl_805CA140
lbl_805C9F50:
/* 805C9F50  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9F54  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9F58  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 805C9F5C  4B D5 E4 D1 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9F60  2C 03 00 00 */	cmpwi r3, 0
/* 805C9F64  41 82 00 1C */	beq lbl_805C9F80
/* 805C9F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C9F6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C9F70  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805C9F74  38 80 00 1F */	li r4, 0x1f
/* 805C9F78  4B AA 5E 1D */	bl StopQuake__12dVibration_cFi
/* 805C9F7C  48 00 01 C4 */	b lbl_805CA140
lbl_805C9F80:
/* 805C9F80  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9F84  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9F88  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 805C9F8C  4B D5 E4 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9F90  2C 03 00 00 */	cmpwi r3, 0
/* 805C9F94  41 82 01 AC */	beq lbl_805CA140
/* 805C9F98  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C9F9C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805C9FA0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805C9FA4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805C9FA8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805C9FAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C9FB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C9FB4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805C9FB8  38 80 00 05 */	li r4, 5
/* 805C9FBC  38 A0 00 1F */	li r5, 0x1f
/* 805C9FC0  38 C1 00 30 */	addi r6, r1, 0x30
/* 805C9FC4  4B AA 5B 4D */	bl StartQuake__12dVibration_cFii4cXyz
/* 805C9FC8  48 00 01 78 */	b lbl_805CA140
lbl_805C9FCC:
/* 805C9FCC  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9FD0  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9FD4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 805C9FD8  4B D5 E4 55 */	bl checkPass__12J3DFrameCtrlFf
/* 805C9FDC  2C 03 00 00 */	cmpwi r3, 0
/* 805C9FE0  40 82 00 64 */	bne lbl_805CA044
/* 805C9FE4  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C9FE8  38 63 00 0C */	addi r3, r3, 0xc
/* 805C9FEC  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 805C9FF0  4B D5 E4 3D */	bl checkPass__12J3DFrameCtrlFf
/* 805C9FF4  2C 03 00 00 */	cmpwi r3, 0
/* 805C9FF8  40 82 00 4C */	bne lbl_805CA044
/* 805C9FFC  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805CA000  38 63 00 0C */	addi r3, r3, 0xc
/* 805CA004  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 805CA008  4B D5 E4 25 */	bl checkPass__12J3DFrameCtrlFf
/* 805CA00C  2C 03 00 00 */	cmpwi r3, 0
/* 805CA010  40 82 00 34 */	bne lbl_805CA044
/* 805CA014  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805CA018  38 63 00 0C */	addi r3, r3, 0xc
/* 805CA01C  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 805CA020  4B D5 E4 0D */	bl checkPass__12J3DFrameCtrlFf
/* 805CA024  2C 03 00 00 */	cmpwi r3, 0
/* 805CA028  40 82 00 1C */	bne lbl_805CA044
/* 805CA02C  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805CA030  38 63 00 0C */	addi r3, r3, 0xc
/* 805CA034  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 805CA038  4B D5 E3 F5 */	bl checkPass__12J3DFrameCtrlFf
/* 805CA03C  2C 03 00 00 */	cmpwi r3, 0
/* 805CA040  41 82 01 00 */	beq lbl_805CA140
lbl_805CA044:
/* 805CA044  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805CA048  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805CA04C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805CA050  38 7E 06 44 */	addi r3, r30, 0x644
/* 805CA054  38 81 00 10 */	addi r4, r1, 0x10
/* 805CA058  38 A0 00 00 */	li r5, 0
/* 805CA05C  38 C0 FF FF */	li r6, -1
/* 805CA060  81 9E 06 44 */	lwz r12, 0x644(r30)
/* 805CA064  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805CA068  7D 89 03 A6 */	mtctr r12
/* 805CA06C  4E 80 04 21 */	bctrl 
/* 805CA070  48 00 00 D0 */	b lbl_805CA140
lbl_805CA074:
/* 805CA074  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805CA078  38 63 00 0C */	addi r3, r3, 0xc
/* 805CA07C  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 805CA080  4B D5 E3 AD */	bl checkPass__12J3DFrameCtrlFf
/* 805CA084  2C 03 00 00 */	cmpwi r3, 0
/* 805CA088  40 82 00 4C */	bne lbl_805CA0D4
/* 805CA08C  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805CA090  38 63 00 0C */	addi r3, r3, 0xc
/* 805CA094  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 805CA098  4B D5 E3 95 */	bl checkPass__12J3DFrameCtrlFf
/* 805CA09C  2C 03 00 00 */	cmpwi r3, 0
/* 805CA0A0  40 82 00 34 */	bne lbl_805CA0D4
/* 805CA0A4  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805CA0A8  38 63 00 0C */	addi r3, r3, 0xc
/* 805CA0AC  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 805CA0B0  4B D5 E3 7D */	bl checkPass__12J3DFrameCtrlFf
/* 805CA0B4  2C 03 00 00 */	cmpwi r3, 0
/* 805CA0B8  40 82 00 1C */	bne lbl_805CA0D4
/* 805CA0BC  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805CA0C0  38 63 00 0C */	addi r3, r3, 0xc
/* 805CA0C4  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 805CA0C8  4B D5 E3 65 */	bl checkPass__12J3DFrameCtrlFf
/* 805CA0CC  2C 03 00 00 */	cmpwi r3, 0
/* 805CA0D0  41 82 00 30 */	beq lbl_805CA100
lbl_805CA0D4:
/* 805CA0D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805CA0D8  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805CA0DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CA0E0  38 7E 06 44 */	addi r3, r30, 0x644
/* 805CA0E4  38 81 00 0C */	addi r4, r1, 0xc
/* 805CA0E8  38 A0 00 00 */	li r5, 0
/* 805CA0EC  38 C0 FF FF */	li r6, -1
/* 805CA0F0  81 9E 06 44 */	lwz r12, 0x644(r30)
/* 805CA0F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805CA0F8  7D 89 03 A6 */	mtctr r12
/* 805CA0FC  4E 80 04 21 */	bctrl 
lbl_805CA100:
/* 805CA100  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805CA104  38 63 00 0C */	addi r3, r3, 0xc
/* 805CA108  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805CA10C  4B D5 E3 21 */	bl checkPass__12J3DFrameCtrlFf
/* 805CA110  2C 03 00 00 */	cmpwi r3, 0
/* 805CA114  41 82 00 2C */	beq lbl_805CA140
/* 805CA118  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070486@ha */
/* 805CA11C  38 03 04 86 */	addi r0, r3, 0x0486 /* 0x00070486@l */
/* 805CA120  90 01 00 08 */	stw r0, 8(r1)
/* 805CA124  38 7E 06 44 */	addi r3, r30, 0x644
/* 805CA128  38 81 00 08 */	addi r4, r1, 8
/* 805CA12C  38 A0 FF FF */	li r5, -1
/* 805CA130  81 9E 06 44 */	lwz r12, 0x644(r30)
/* 805CA134  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805CA138  7D 89 03 A6 */	mtctr r12
/* 805CA13C  4E 80 04 21 */	bctrl 
lbl_805CA140:
/* 805CA140  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 805CA144  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 805CA148  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805CA14C  7C 08 03 A6 */	mtlr r0
/* 805CA150  38 21 00 50 */	addi r1, r1, 0x50
/* 805CA154  4E 80 00 20 */	blr 
