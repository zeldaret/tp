lbl_80A59A90:
/* 80A59A90  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80A59A94  7C 08 02 A6 */	mflr r0
/* 80A59A98  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80A59A9C  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 80A59AA0  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 80A59AA4  7C 7E 1B 78 */	mr r30, r3
/* 80A59AA8  3C 60 80 A6 */	lis r3, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A59AAC  3B E3 DE FC */	addi r31, r3, lit_4030@l /* 0x80A5DEFC@l */
/* 80A59AB0  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A59AB4  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A59AB8  40 82 00 A4 */	bne lbl_80A59B5C
/* 80A59ABC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59AC0  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59AC4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A59AC8  4B 8C E9 65 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59ACC  2C 03 00 00 */	cmpwi r3, 0
/* 80A59AD0  41 82 00 2C */	beq lbl_80A59AFC
/* 80A59AD4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050014@ha */
/* 80A59AD8  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00050014@l */
/* 80A59ADC  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80A59AE0  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59AE4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80A59AE8  38 A0 FF FF */	li r5, -1
/* 80A59AEC  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59AF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A59AF4  7D 89 03 A6 */	mtctr r12
/* 80A59AF8  4E 80 04 21 */	bctrl 
lbl_80A59AFC:
/* 80A59AFC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59B00  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59B04  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A59B08  4B 8C E9 25 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59B0C  2C 03 00 00 */	cmpwi r3, 0
/* 80A59B10  40 82 00 1C */	bne lbl_80A59B2C
/* 80A59B14  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59B18  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59B1C  C0 3F 04 88 */	lfs f1, 0x488(r31)
/* 80A59B20  4B 8C E9 0D */	bl checkPass__12J3DFrameCtrlFf
/* 80A59B24  2C 03 00 00 */	cmpwi r3, 0
/* 80A59B28  41 82 0C 98 */	beq lbl_80A5A7C0
lbl_80A59B2C:
/* 80A59B2C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060022@ha */
/* 80A59B30  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00060022@l */
/* 80A59B34  90 01 00 AC */	stw r0, 0xac(r1)
/* 80A59B38  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59B3C  38 81 00 AC */	addi r4, r1, 0xac
/* 80A59B40  38 A0 00 00 */	li r5, 0
/* 80A59B44  38 C0 FF FF */	li r6, -1
/* 80A59B48  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59B4C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A59B50  7D 89 03 A6 */	mtctr r12
/* 80A59B54  4E 80 04 21 */	bctrl 
/* 80A59B58  48 00 0C 68 */	b lbl_80A5A7C0
lbl_80A59B5C:
/* 80A59B5C  2C 00 00 37 */	cmpwi r0, 0x37
/* 80A59B60  40 82 00 4C */	bne lbl_80A59BAC
/* 80A59B64  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59B68  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59B6C  C0 3F 04 8C */	lfs f1, 0x48c(r31)
/* 80A59B70  4B 8C E8 BD */	bl checkPass__12J3DFrameCtrlFf
/* 80A59B74  2C 03 00 00 */	cmpwi r3, 0
/* 80A59B78  41 82 0C 48 */	beq lbl_80A5A7C0
/* 80A59B7C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060022@ha */
/* 80A59B80  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00060022@l */
/* 80A59B84  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80A59B88  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59B8C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80A59B90  38 A0 00 00 */	li r5, 0
/* 80A59B94  38 C0 FF FF */	li r6, -1
/* 80A59B98  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59B9C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A59BA0  7D 89 03 A6 */	mtctr r12
/* 80A59BA4  4E 80 04 21 */	bctrl 
/* 80A59BA8  48 00 0C 18 */	b lbl_80A5A7C0
lbl_80A59BAC:
/* 80A59BAC  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A59BB0  40 82 00 4C */	bne lbl_80A59BFC
/* 80A59BB4  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59BB8  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59BBC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80A59BC0  4B 8C E8 6D */	bl checkPass__12J3DFrameCtrlFf
/* 80A59BC4  2C 03 00 00 */	cmpwi r3, 0
/* 80A59BC8  41 82 0B F8 */	beq lbl_80A5A7C0
/* 80A59BCC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060022@ha */
/* 80A59BD0  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00060022@l */
/* 80A59BD4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80A59BD8  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59BDC  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80A59BE0  38 A0 00 00 */	li r5, 0
/* 80A59BE4  38 C0 FF FF */	li r6, -1
/* 80A59BE8  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59BEC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A59BF0  7D 89 03 A6 */	mtctr r12
/* 80A59BF4  4E 80 04 21 */	bctrl 
/* 80A59BF8  48 00 0B C8 */	b lbl_80A5A7C0
lbl_80A59BFC:
/* 80A59BFC  2C 00 00 38 */	cmpwi r0, 0x38
/* 80A59C00  40 82 00 A4 */	bne lbl_80A59CA4
/* 80A59C04  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59C08  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59C0C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A59C10  4B 8C E8 1D */	bl checkPass__12J3DFrameCtrlFf
/* 80A59C14  2C 03 00 00 */	cmpwi r3, 0
/* 80A59C18  41 82 00 2C */	beq lbl_80A59C44
/* 80A59C1C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007B@ha */
/* 80A59C20  38 03 00 7B */	addi r0, r3, 0x007B /* 0x0005007B@l */
/* 80A59C24  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80A59C28  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59C2C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80A59C30  38 A0 FF FF */	li r5, -1
/* 80A59C34  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59C38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A59C3C  7D 89 03 A6 */	mtctr r12
/* 80A59C40  4E 80 04 21 */	bctrl 
lbl_80A59C44:
/* 80A59C44  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59C48  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59C4C  C0 3F 04 90 */	lfs f1, 0x490(r31)
/* 80A59C50  4B 8C E7 DD */	bl checkPass__12J3DFrameCtrlFf
/* 80A59C54  2C 03 00 00 */	cmpwi r3, 0
/* 80A59C58  40 82 00 1C */	bne lbl_80A59C74
/* 80A59C5C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59C60  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59C64  C0 3F 04 94 */	lfs f1, 0x494(r31)
/* 80A59C68  4B 8C E7 C5 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80A59C70  41 82 0B 50 */	beq lbl_80A5A7C0
lbl_80A59C74:
/* 80A59C74  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060022@ha */
/* 80A59C78  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00060022@l */
/* 80A59C7C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80A59C80  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59C84  38 81 00 9C */	addi r4, r1, 0x9c
/* 80A59C88  38 A0 00 00 */	li r5, 0
/* 80A59C8C  38 C0 FF FF */	li r6, -1
/* 80A59C90  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59C94  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A59C98  7D 89 03 A6 */	mtctr r12
/* 80A59C9C  4E 80 04 21 */	bctrl 
/* 80A59CA0  48 00 0B 20 */	b lbl_80A5A7C0
lbl_80A59CA4:
/* 80A59CA4  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A59CA8  40 82 00 A0 */	bne lbl_80A59D48
/* 80A59CAC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59CB0  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59CB4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A59CB8  4B 8C E7 75 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80A59CC0  40 82 00 1C */	bne lbl_80A59CDC
/* 80A59CC4  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59CC8  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59CCC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80A59CD0  4B 8C E7 5D */	bl checkPass__12J3DFrameCtrlFf
/* 80A59CD4  2C 03 00 00 */	cmpwi r3, 0
/* 80A59CD8  41 82 0A E8 */	beq lbl_80A5A7C0
lbl_80A59CDC:
/* 80A59CDC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A59CE0  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A59CE4  40 82 00 34 */	bne lbl_80A59D18
/* 80A59CE8  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A9@ha */
/* 80A59CEC  38 03 00 A9 */	addi r0, r3, 0x00A9 /* 0x000600A9@l */
/* 80A59CF0  90 01 00 98 */	stw r0, 0x98(r1)
/* 80A59CF4  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59CF8  38 81 00 98 */	addi r4, r1, 0x98
/* 80A59CFC  38 A0 00 00 */	li r5, 0
/* 80A59D00  38 C0 FF FF */	li r6, -1
/* 80A59D04  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59D08  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A59D0C  7D 89 03 A6 */	mtctr r12
/* 80A59D10  4E 80 04 21 */	bctrl 
/* 80A59D14  48 00 0A AC */	b lbl_80A5A7C0
lbl_80A59D18:
/* 80A59D18  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060027@ha */
/* 80A59D1C  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00060027@l */
/* 80A59D20  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A59D24  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59D28  38 81 00 94 */	addi r4, r1, 0x94
/* 80A59D2C  38 A0 00 00 */	li r5, 0
/* 80A59D30  38 C0 FF FF */	li r6, -1
/* 80A59D34  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59D38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A59D3C  7D 89 03 A6 */	mtctr r12
/* 80A59D40  4E 80 04 21 */	bctrl 
/* 80A59D44  48 00 0A 7C */	b lbl_80A5A7C0
lbl_80A59D48:
/* 80A59D48  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A59D4C  40 82 00 64 */	bne lbl_80A59DB0
/* 80A59D50  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59D54  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59D58  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A59D5C  4B 8C E6 D1 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59D60  2C 03 00 00 */	cmpwi r3, 0
/* 80A59D64  40 82 00 1C */	bne lbl_80A59D80
/* 80A59D68  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59D6C  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59D70  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80A59D74  4B 8C E6 B9 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59D78  2C 03 00 00 */	cmpwi r3, 0
/* 80A59D7C  41 82 0A 44 */	beq lbl_80A5A7C0
lbl_80A59D80:
/* 80A59D80  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060027@ha */
/* 80A59D84  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00060027@l */
/* 80A59D88  90 01 00 90 */	stw r0, 0x90(r1)
/* 80A59D8C  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59D90  38 81 00 90 */	addi r4, r1, 0x90
/* 80A59D94  38 A0 00 00 */	li r5, 0
/* 80A59D98  38 C0 FF FF */	li r6, -1
/* 80A59D9C  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59DA0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A59DA4  7D 89 03 A6 */	mtctr r12
/* 80A59DA8  4E 80 04 21 */	bctrl 
/* 80A59DAC  48 00 0A 14 */	b lbl_80A5A7C0
lbl_80A59DB0:
/* 80A59DB0  2C 00 00 19 */	cmpwi r0, 0x19
/* 80A59DB4  40 82 00 78 */	bne lbl_80A59E2C
/* 80A59DB8  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59DBC  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59DC0  C0 3F 04 98 */	lfs f1, 0x498(r31)
/* 80A59DC4  4B 8C E6 69 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59DC8  2C 03 00 00 */	cmpwi r3, 0
/* 80A59DCC  40 82 00 34 */	bne lbl_80A59E00
/* 80A59DD0  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59DD4  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59DD8  C0 3F 04 9C */	lfs f1, 0x49c(r31)
/* 80A59DDC  4B 8C E6 51 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80A59DE4  40 82 00 1C */	bne lbl_80A59E00
/* 80A59DE8  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59DEC  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59DF0  C0 3F 04 A0 */	lfs f1, 0x4a0(r31)
/* 80A59DF4  4B 8C E6 39 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59DF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A59DFC  41 82 09 C4 */	beq lbl_80A5A7C0
lbl_80A59E00:
/* 80A59E00  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001B@ha */
/* 80A59E04  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0005001B@l */
/* 80A59E08  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80A59E0C  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59E10  38 81 00 8C */	addi r4, r1, 0x8c
/* 80A59E14  38 A0 FF FF */	li r5, -1
/* 80A59E18  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59E1C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A59E20  7D 89 03 A6 */	mtctr r12
/* 80A59E24  4E 80 04 21 */	bctrl 
/* 80A59E28  48 00 09 98 */	b lbl_80A5A7C0
lbl_80A59E2C:
/* 80A59E2C  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A59E30  40 82 01 2C */	bne lbl_80A59F5C
/* 80A59E34  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59E38  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59E3C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A59E40  4B 8C E5 ED */	bl checkPass__12J3DFrameCtrlFf
/* 80A59E44  2C 03 00 00 */	cmpwi r3, 0
/* 80A59E48  41 82 00 38 */	beq lbl_80A59E80
/* 80A59E4C  88 1E 0C 17 */	lbz r0, 0xc17(r30)
/* 80A59E50  2C 00 00 02 */	cmpwi r0, 2
/* 80A59E54  40 82 00 2C */	bne lbl_80A59E80
/* 80A59E58  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050015@ha */
/* 80A59E5C  38 03 00 15 */	addi r0, r3, 0x0015 /* 0x00050015@l */
/* 80A59E60  90 01 00 88 */	stw r0, 0x88(r1)
/* 80A59E64  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59E68  38 81 00 88 */	addi r4, r1, 0x88
/* 80A59E6C  38 A0 FF FF */	li r5, -1
/* 80A59E70  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59E74  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A59E78  7D 89 03 A6 */	mtctr r12
/* 80A59E7C  4E 80 04 21 */	bctrl 
lbl_80A59E80:
/* 80A59E80  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59E84  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59E88  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A59E8C  4B 8C E5 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59E90  2C 03 00 00 */	cmpwi r3, 0
/* 80A59E94  41 82 09 2C */	beq lbl_80A5A7C0
/* 80A59E98  A8 1E 05 E8 */	lha r0, 0x5e8(r30)
/* 80A59E9C  2C 00 00 CB */	cmpwi r0, 0xcb
/* 80A59EA0  40 82 00 40 */	bne lbl_80A59EE0
/* 80A59EA4  A8 1E 05 EA */	lha r0, 0x5ea(r30)
/* 80A59EA8  2C 00 00 03 */	cmpwi r0, 3
/* 80A59EAC  41 81 00 34 */	bgt lbl_80A59EE0
/* 80A59EB0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060041@ha */
/* 80A59EB4  38 03 00 41 */	addi r0, r3, 0x0041 /* 0x00060041@l */
/* 80A59EB8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A59EBC  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59EC0  38 81 00 84 */	addi r4, r1, 0x84
/* 80A59EC4  38 A0 00 00 */	li r5, 0
/* 80A59EC8  38 C0 FF FF */	li r6, -1
/* 80A59ECC  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59ED0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A59ED4  7D 89 03 A6 */	mtctr r12
/* 80A59ED8  4E 80 04 21 */	bctrl 
/* 80A59EDC  48 00 08 E4 */	b lbl_80A5A7C0
lbl_80A59EE0:
/* 80A59EE0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006001F@ha */
/* 80A59EE4  38 03 00 1F */	addi r0, r3, 0x001F /* 0x0006001F@l */
/* 80A59EE8  90 01 00 80 */	stw r0, 0x80(r1)
/* 80A59EEC  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59EF0  38 81 00 80 */	addi r4, r1, 0x80
/* 80A59EF4  38 A0 00 00 */	li r5, 0
/* 80A59EF8  38 C0 FF FF */	li r6, -1
/* 80A59EFC  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59F00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A59F04  7D 89 03 A6 */	mtctr r12
/* 80A59F08  4E 80 04 21 */	bctrl 
/* 80A59F0C  88 1E 0C 17 */	lbz r0, 0xc17(r30)
/* 80A59F10  2C 00 00 02 */	cmpwi r0, 2
/* 80A59F14  40 82 08 AC */	bne lbl_80A5A7C0
/* 80A59F18  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600AA@ha */
/* 80A59F1C  38 03 00 AA */	addi r0, r3, 0x00AA /* 0x000600AA@l */
/* 80A59F20  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A59F24  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A59F28  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A59F2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A59F30  38 81 00 18 */	addi r4, r1, 0x18
/* 80A59F34  38 BE 0C 04 */	addi r5, r30, 0xc04
/* 80A59F38  38 C0 00 00 */	li r6, 0
/* 80A59F3C  38 E0 00 00 */	li r7, 0
/* 80A59F40  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A59F44  FC 40 08 90 */	fmr f2, f1
/* 80A59F48  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80A59F4C  FC 80 18 90 */	fmr f4, f3
/* 80A59F50  39 00 00 00 */	li r8, 0
/* 80A59F54  4B 85 1A 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80A59F58  48 00 08 68 */	b lbl_80A5A7C0
lbl_80A59F5C:
/* 80A59F5C  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80A59F60  40 82 01 0C */	bne lbl_80A5A06C
/* 80A59F64  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59F68  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59F6C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A59F70  4B 8C E4 BD */	bl checkPass__12J3DFrameCtrlFf
/* 80A59F74  2C 03 00 00 */	cmpwi r3, 0
/* 80A59F78  41 82 00 38 */	beq lbl_80A59FB0
/* 80A59F7C  88 1E 0C 17 */	lbz r0, 0xc17(r30)
/* 80A59F80  2C 00 00 02 */	cmpwi r0, 2
/* 80A59F84  40 82 00 2C */	bne lbl_80A59FB0
/* 80A59F88  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050015@ha */
/* 80A59F8C  38 03 00 15 */	addi r0, r3, 0x0015 /* 0x00050015@l */
/* 80A59F90  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80A59F94  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59F98  38 81 00 7C */	addi r4, r1, 0x7c
/* 80A59F9C  38 A0 FF FF */	li r5, -1
/* 80A59FA0  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59FA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A59FA8  7D 89 03 A6 */	mtctr r12
/* 80A59FAC  4E 80 04 21 */	bctrl 
lbl_80A59FB0:
/* 80A59FB0  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59FB4  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59FB8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A59FBC  4B 8C E4 71 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59FC0  2C 03 00 00 */	cmpwi r3, 0
/* 80A59FC4  41 82 07 FC */	beq lbl_80A5A7C0
/* 80A59FC8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006001F@ha */
/* 80A59FCC  38 03 00 1F */	addi r0, r3, 0x001F /* 0x0006001F@l */
/* 80A59FD0  90 01 00 78 */	stw r0, 0x78(r1)
/* 80A59FD4  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59FD8  38 81 00 78 */	addi r4, r1, 0x78
/* 80A59FDC  38 A0 00 00 */	li r5, 0
/* 80A59FE0  38 C0 FF FF */	li r6, -1
/* 80A59FE4  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59FE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A59FEC  7D 89 03 A6 */	mtctr r12
/* 80A59FF0  4E 80 04 21 */	bctrl 
/* 80A59FF4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050015@ha */
/* 80A59FF8  38 03 00 15 */	addi r0, r3, 0x0015 /* 0x00050015@l */
/* 80A59FFC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A5A000  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A004  38 81 00 74 */	addi r4, r1, 0x74
/* 80A5A008  38 A0 FF FF */	li r5, -1
/* 80A5A00C  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A010  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A014  7D 89 03 A6 */	mtctr r12
/* 80A5A018  4E 80 04 21 */	bctrl 
/* 80A5A01C  88 1E 0C 17 */	lbz r0, 0xc17(r30)
/* 80A5A020  2C 00 00 02 */	cmpwi r0, 2
/* 80A5A024  40 82 07 9C */	bne lbl_80A5A7C0
/* 80A5A028  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600AA@ha */
/* 80A5A02C  38 03 00 AA */	addi r0, r3, 0x00AA /* 0x000600AA@l */
/* 80A5A030  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5A034  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A5A038  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A5A03C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5A040  38 81 00 14 */	addi r4, r1, 0x14
/* 80A5A044  38 BE 0C 04 */	addi r5, r30, 0xc04
/* 80A5A048  38 C0 00 00 */	li r6, 0
/* 80A5A04C  38 E0 00 00 */	li r7, 0
/* 80A5A050  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A5A054  FC 40 08 90 */	fmr f2, f1
/* 80A5A058  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80A5A05C  FC 80 18 90 */	fmr f4, f3
/* 80A5A060  39 00 00 00 */	li r8, 0
/* 80A5A064  4B 85 19 21 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80A5A068  48 00 07 58 */	b lbl_80A5A7C0
lbl_80A5A06C:
/* 80A5A06C  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A5A070  40 82 00 60 */	bne lbl_80A5A0D0
/* 80A5A074  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A078  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A07C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A5A080  4B 8C E3 AD */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A084  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A088  40 82 00 1C */	bne lbl_80A5A0A4
/* 80A5A08C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A090  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A094  C0 3F 04 A4 */	lfs f1, 0x4a4(r31)
/* 80A5A098  4B 8C E3 95 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A09C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A0A0  41 82 07 20 */	beq lbl_80A5A7C0
lbl_80A5A0A4:
/* 80A5A0A4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001D@ha */
/* 80A5A0A8  38 03 00 1D */	addi r0, r3, 0x001D /* 0x0005001D@l */
/* 80A5A0AC  90 01 00 70 */	stw r0, 0x70(r1)
/* 80A5A0B0  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A0B4  38 81 00 70 */	addi r4, r1, 0x70
/* 80A5A0B8  38 A0 FF FF */	li r5, -1
/* 80A5A0BC  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A0C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A0C4  7D 89 03 A6 */	mtctr r12
/* 80A5A0C8  4E 80 04 21 */	bctrl 
/* 80A5A0CC  48 00 06 F4 */	b lbl_80A5A7C0
lbl_80A5A0D0:
/* 80A5A0D0  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A5A0D4  40 82 00 48 */	bne lbl_80A5A11C
/* 80A5A0D8  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A0DC  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A0E0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A5A0E4  4B 8C E3 49 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A0E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A0EC  41 82 06 D4 */	beq lbl_80A5A7C0
/* 80A5A0F0  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001D@ha */
/* 80A5A0F4  38 03 00 1D */	addi r0, r3, 0x001D /* 0x0005001D@l */
/* 80A5A0F8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80A5A0FC  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A100  38 81 00 6C */	addi r4, r1, 0x6c
/* 80A5A104  38 A0 FF FF */	li r5, -1
/* 80A5A108  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A10C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A110  7D 89 03 A6 */	mtctr r12
/* 80A5A114  4E 80 04 21 */	bctrl 
/* 80A5A118  48 00 06 A8 */	b lbl_80A5A7C0
lbl_80A5A11C:
/* 80A5A11C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A5A120  40 82 00 BC */	bne lbl_80A5A1DC
/* 80A5A124  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A128  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A12C  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80A5A130  4B 8C E2 FD */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A134  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A138  41 82 00 5C */	beq lbl_80A5A194
/* 80A5A13C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A5A140  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A5A144  90 01 00 68 */	stw r0, 0x68(r1)
/* 80A5A148  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A14C  38 81 00 68 */	addi r4, r1, 0x68
/* 80A5A150  38 A0 FF FF */	li r5, -1
/* 80A5A154  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A158  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A15C  7D 89 03 A6 */	mtctr r12
/* 80A5A160  4E 80 04 21 */	bctrl 
/* 80A5A164  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A5A168  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A5A16C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A5A170  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A174  38 81 00 64 */	addi r4, r1, 0x64
/* 80A5A178  38 A0 00 00 */	li r5, 0
/* 80A5A17C  38 C0 FF FF */	li r6, -1
/* 80A5A180  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A184  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A5A188  7D 89 03 A6 */	mtctr r12
/* 80A5A18C  4E 80 04 21 */	bctrl 
/* 80A5A190  48 00 06 30 */	b lbl_80A5A7C0
lbl_80A5A194:
/* 80A5A194  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A198  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A19C  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 80A5A1A0  4B 8C E2 8D */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A1A4  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A1A8  41 82 06 18 */	beq lbl_80A5A7C0
/* 80A5A1AC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060021@ha */
/* 80A5A1B0  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00060021@l */
/* 80A5A1B4  90 01 00 60 */	stw r0, 0x60(r1)
/* 80A5A1B8  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A1BC  38 81 00 60 */	addi r4, r1, 0x60
/* 80A5A1C0  38 A0 00 00 */	li r5, 0
/* 80A5A1C4  38 C0 FF FF */	li r6, -1
/* 80A5A1C8  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A1CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A5A1D0  7D 89 03 A6 */	mtctr r12
/* 80A5A1D4  4E 80 04 21 */	bctrl 
/* 80A5A1D8  48 00 05 E8 */	b lbl_80A5A7C0
lbl_80A5A1DC:
/* 80A5A1DC  2C 00 00 05 */	cmpwi r0, 5
/* 80A5A1E0  40 82 00 BC */	bne lbl_80A5A29C
/* 80A5A1E4  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A1E8  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A1EC  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80A5A1F0  4B 8C E2 3D */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A1F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A1F8  41 82 00 5C */	beq lbl_80A5A254
/* 80A5A1FC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A5A200  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A5A204  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80A5A208  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A20C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A5A210  38 A0 FF FF */	li r5, -1
/* 80A5A214  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A218  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A21C  7D 89 03 A6 */	mtctr r12
/* 80A5A220  4E 80 04 21 */	bctrl 
/* 80A5A224  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A5A228  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A5A22C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80A5A230  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A234  38 81 00 58 */	addi r4, r1, 0x58
/* 80A5A238  38 A0 00 00 */	li r5, 0
/* 80A5A23C  38 C0 FF FF */	li r6, -1
/* 80A5A240  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A244  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A5A248  7D 89 03 A6 */	mtctr r12
/* 80A5A24C  4E 80 04 21 */	bctrl 
/* 80A5A250  48 00 05 70 */	b lbl_80A5A7C0
lbl_80A5A254:
/* 80A5A254  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A258  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A25C  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 80A5A260  4B 8C E1 CD */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A264  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A268  41 82 05 58 */	beq lbl_80A5A7C0
/* 80A5A26C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060021@ha */
/* 80A5A270  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00060021@l */
/* 80A5A274  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A5A278  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A27C  38 81 00 54 */	addi r4, r1, 0x54
/* 80A5A280  38 A0 00 00 */	li r5, 0
/* 80A5A284  38 C0 FF FF */	li r6, -1
/* 80A5A288  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A28C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A5A290  7D 89 03 A6 */	mtctr r12
/* 80A5A294  4E 80 04 21 */	bctrl 
/* 80A5A298  48 00 05 28 */	b lbl_80A5A7C0
lbl_80A5A29C:
/* 80A5A29C  2C 00 00 07 */	cmpwi r0, 7
/* 80A5A2A0  40 82 01 08 */	bne lbl_80A5A3A8
/* 80A5A2A4  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A2A8  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A2AC  C0 3F 04 10 */	lfs f1, 0x410(r31)
/* 80A5A2B0  4B 8C E1 7D */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A2B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A2B8  41 82 00 5C */	beq lbl_80A5A314
/* 80A5A2BC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A5A2C0  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A5A2C4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80A5A2C8  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A2CC  38 81 00 50 */	addi r4, r1, 0x50
/* 80A5A2D0  38 A0 FF FF */	li r5, -1
/* 80A5A2D4  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A2D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A2DC  7D 89 03 A6 */	mtctr r12
/* 80A5A2E0  4E 80 04 21 */	bctrl 
/* 80A5A2E4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A5A2E8  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A5A2EC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80A5A2F0  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A2F4  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A5A2F8  38 A0 00 00 */	li r5, 0
/* 80A5A2FC  38 C0 FF FF */	li r6, -1
/* 80A5A300  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A304  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A5A308  7D 89 03 A6 */	mtctr r12
/* 80A5A30C  4E 80 04 21 */	bctrl 
/* 80A5A310  48 00 04 B0 */	b lbl_80A5A7C0
lbl_80A5A314:
/* 80A5A314  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A318  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A31C  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80A5A320  4B 8C E1 0D */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A324  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A328  41 82 04 98 */	beq lbl_80A5A7C0
/* 80A5A32C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060021@ha */
/* 80A5A330  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00060021@l */
/* 80A5A334  90 01 00 48 */	stw r0, 0x48(r1)
/* 80A5A338  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A33C  38 81 00 48 */	addi r4, r1, 0x48
/* 80A5A340  38 A0 00 00 */	li r5, 0
/* 80A5A344  38 C0 FF FF */	li r6, -1
/* 80A5A348  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A34C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A5A350  7D 89 03 A6 */	mtctr r12
/* 80A5A354  4E 80 04 21 */	bctrl 
/* 80A5A358  88 1E 0C 17 */	lbz r0, 0xc17(r30)
/* 80A5A35C  2C 00 00 02 */	cmpwi r0, 2
/* 80A5A360  40 82 04 60 */	bne lbl_80A5A7C0
/* 80A5A364  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600AB@ha */
/* 80A5A368  38 03 00 AB */	addi r0, r3, 0x00AB /* 0x000600AB@l */
/* 80A5A36C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A5A370  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A5A374  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A5A378  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5A37C  38 81 00 10 */	addi r4, r1, 0x10
/* 80A5A380  38 BE 0C 04 */	addi r5, r30, 0xc04
/* 80A5A384  38 C0 00 00 */	li r6, 0
/* 80A5A388  38 E0 00 00 */	li r7, 0
/* 80A5A38C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A5A390  FC 40 08 90 */	fmr f2, f1
/* 80A5A394  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80A5A398  FC 80 18 90 */	fmr f4, f3
/* 80A5A39C  39 00 00 00 */	li r8, 0
/* 80A5A3A0  4B 85 15 E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80A5A3A4  48 00 04 1C */	b lbl_80A5A7C0
lbl_80A5A3A8:
/* 80A5A3A8  2C 00 00 08 */	cmpwi r0, 8
/* 80A5A3AC  40 82 00 48 */	bne lbl_80A5A3F4
/* 80A5A3B0  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A3B4  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A3B8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A5A3BC  4B 8C E0 71 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A3C0  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A3C4  41 82 03 FC */	beq lbl_80A5A7C0
/* 80A5A3C8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050017@ha */
/* 80A5A3CC  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00050017@l */
/* 80A5A3D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A5A3D4  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A3D8  38 81 00 44 */	addi r4, r1, 0x44
/* 80A5A3DC  38 A0 FF FF */	li r5, -1
/* 80A5A3E0  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A3E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A3E8  7D 89 03 A6 */	mtctr r12
/* 80A5A3EC  4E 80 04 21 */	bctrl 
/* 80A5A3F0  48 00 03 D0 */	b lbl_80A5A7C0
lbl_80A5A3F4:
/* 80A5A3F4  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80A5A3F8  40 82 00 A0 */	bne lbl_80A5A498
/* 80A5A3FC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A400  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A404  C0 3F 04 8C */	lfs f1, 0x48c(r31)
/* 80A5A408  4B 8C E0 25 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A40C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A410  40 82 00 1C */	bne lbl_80A5A42C
/* 80A5A414  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A418  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A41C  C0 3F 04 98 */	lfs f1, 0x498(r31)
/* 80A5A420  4B 8C E0 0D */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A424  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A428  41 82 03 98 */	beq lbl_80A5A7C0
lbl_80A5A42C:
/* 80A5A42C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600AA@ha */
/* 80A5A430  38 03 00 AA */	addi r0, r3, 0x00AA /* 0x000600AA@l */
/* 80A5A434  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A5A438  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A5A43C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A5A440  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5A444  38 81 00 0C */	addi r4, r1, 0xc
/* 80A5A448  38 BE 0C 04 */	addi r5, r30, 0xc04
/* 80A5A44C  38 C0 00 00 */	li r6, 0
/* 80A5A450  38 E0 00 00 */	li r7, 0
/* 80A5A454  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A5A458  FC 40 08 90 */	fmr f2, f1
/* 80A5A45C  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80A5A460  FC 80 18 90 */	fmr f4, f3
/* 80A5A464  39 00 00 00 */	li r8, 0
/* 80A5A468  4B 85 15 1D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80A5A46C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050043@ha */
/* 80A5A470  38 03 00 43 */	addi r0, r3, 0x0043 /* 0x00050043@l */
/* 80A5A474  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A5A478  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A47C  38 81 00 40 */	addi r4, r1, 0x40
/* 80A5A480  38 A0 FF FF */	li r5, -1
/* 80A5A484  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A488  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A48C  7D 89 03 A6 */	mtctr r12
/* 80A5A490  4E 80 04 21 */	bctrl 
/* 80A5A494  48 00 03 2C */	b lbl_80A5A7C0
lbl_80A5A498:
/* 80A5A498  2C 00 00 23 */	cmpwi r0, 0x23
/* 80A5A49C  40 82 00 48 */	bne lbl_80A5A4E4
/* 80A5A4A0  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A4A4  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A4A8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80A5A4AC  4B 8C DF 81 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A4B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A4B4  41 82 03 0C */	beq lbl_80A5A7C0
/* 80A5A4B8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001E@ha */
/* 80A5A4BC  38 03 00 1E */	addi r0, r3, 0x001E /* 0x0005001E@l */
/* 80A5A4C0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A5A4C4  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A4C8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80A5A4CC  38 A0 FF FF */	li r5, -1
/* 80A5A4D0  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A4D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A4D8  7D 89 03 A6 */	mtctr r12
/* 80A5A4DC  4E 80 04 21 */	bctrl 
/* 80A5A4E0  48 00 02 E0 */	b lbl_80A5A7C0
lbl_80A5A4E4:
/* 80A5A4E4  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A5A4E8  40 82 00 48 */	bne lbl_80A5A530
/* 80A5A4EC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A4F0  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A4F4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A5A4F8  4B 8C DF 35 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A4FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A500  41 82 02 C0 */	beq lbl_80A5A7C0
/* 80A5A504  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050017@ha */
/* 80A5A508  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00050017@l */
/* 80A5A50C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A5A510  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A514  38 81 00 38 */	addi r4, r1, 0x38
/* 80A5A518  38 A0 FF FF */	li r5, -1
/* 80A5A51C  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A520  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A524  7D 89 03 A6 */	mtctr r12
/* 80A5A528  4E 80 04 21 */	bctrl 
/* 80A5A52C  48 00 02 94 */	b lbl_80A5A7C0
lbl_80A5A530:
/* 80A5A530  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80A5A534  40 82 01 44 */	bne lbl_80A5A678
/* 80A5A538  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A53C  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A540  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80A5A544  4B 8C DE E9 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A548  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A54C  41 82 00 30 */	beq lbl_80A5A57C
/* 80A5A550  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050044@ha */
/* 80A5A554  38 03 00 44 */	addi r0, r3, 0x0044 /* 0x00050044@l */
/* 80A5A558  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A5A55C  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A560  38 81 00 34 */	addi r4, r1, 0x34
/* 80A5A564  38 A0 FF FF */	li r5, -1
/* 80A5A568  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A56C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A570  7D 89 03 A6 */	mtctr r12
/* 80A5A574  4E 80 04 21 */	bctrl 
/* 80A5A578  48 00 02 48 */	b lbl_80A5A7C0
lbl_80A5A57C:
/* 80A5A57C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A580  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A584  C0 3F 04 B0 */	lfs f1, 0x4b0(r31)
/* 80A5A588  4B 8C DE A5 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A58C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A590  41 82 00 34 */	beq lbl_80A5A5C4
/* 80A5A594  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060021@ha */
/* 80A5A598  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00060021@l */
/* 80A5A59C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A5A5A0  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A5A4  38 81 00 30 */	addi r4, r1, 0x30
/* 80A5A5A8  38 A0 00 00 */	li r5, 0
/* 80A5A5AC  38 C0 FF FF */	li r6, -1
/* 80A5A5B0  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A5B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A5A5B8  7D 89 03 A6 */	mtctr r12
/* 80A5A5BC  4E 80 04 21 */	bctrl 
/* 80A5A5C0  48 00 02 00 */	b lbl_80A5A7C0
lbl_80A5A5C4:
/* 80A5A5C4  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A5C8  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A5CC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A5A5D0  4B 8C DE 5D */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A5D4  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A5D8  40 82 00 34 */	bne lbl_80A5A60C
/* 80A5A5DC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A5E0  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A5E4  C0 3F 04 B4 */	lfs f1, 0x4b4(r31)
/* 80A5A5E8  4B 8C DE 45 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A5EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A5F0  40 82 00 1C */	bne lbl_80A5A60C
/* 80A5A5F4  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A5F8  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A5FC  C0 3F 04 B8 */	lfs f1, 0x4b8(r31)
/* 80A5A600  4B 8C DE 2D */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A604  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A608  41 82 01 B8 */	beq lbl_80A5A7C0
lbl_80A5A60C:
/* 80A5A60C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001B@ha */
/* 80A5A610  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0005001B@l */
/* 80A5A614  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A5A618  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A61C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A5A620  38 A0 FF FF */	li r5, -1
/* 80A5A624  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A628  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A62C  7D 89 03 A6 */	mtctr r12
/* 80A5A630  4E 80 04 21 */	bctrl 
/* 80A5A634  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600AA@ha */
/* 80A5A638  38 03 00 AA */	addi r0, r3, 0x00AA /* 0x000600AA@l */
/* 80A5A63C  90 01 00 08 */	stw r0, 8(r1)
/* 80A5A640  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A5A644  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A5A648  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5A64C  38 81 00 08 */	addi r4, r1, 8
/* 80A5A650  38 BE 0C 04 */	addi r5, r30, 0xc04
/* 80A5A654  38 C0 00 00 */	li r6, 0
/* 80A5A658  38 E0 00 00 */	li r7, 0
/* 80A5A65C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A5A660  FC 40 08 90 */	fmr f2, f1
/* 80A5A664  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80A5A668  FC 80 18 90 */	fmr f4, f3
/* 80A5A66C  39 00 00 00 */	li r8, 0
/* 80A5A670  4B 85 13 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80A5A674  48 00 01 4C */	b lbl_80A5A7C0
lbl_80A5A678:
/* 80A5A678  2C 00 00 22 */	cmpwi r0, 0x22
/* 80A5A67C  40 82 00 B4 */	bne lbl_80A5A730
/* 80A5A680  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A684  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A688  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A5A68C  4B 8C DD A1 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A690  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A694  41 82 00 54 */	beq lbl_80A5A6E8
/* 80A5A698  C0 3F 04 BC */	lfs f1, 0x4bc(r31)
/* 80A5A69C  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 80A5A6A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A5A6A4  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80A5A6A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5A6AC  40 81 00 08 */	ble lbl_80A5A6B4
/* 80A5A6B0  FC 20 00 90 */	fmr f1, f0
lbl_80A5A6B4:
/* 80A5A6B4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050046@ha */
/* 80A5A6B8  38 03 00 46 */	addi r0, r3, 0x0046 /* 0x00050046@l */
/* 80A5A6BC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A5A6C0  4B 90 79 ED */	bl __cvt_fp2unsigned
/* 80A5A6C4  7C 65 1B 78 */	mr r5, r3
/* 80A5A6C8  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A6CC  38 81 00 28 */	addi r4, r1, 0x28
/* 80A5A6D0  38 C0 FF FF */	li r6, -1
/* 80A5A6D4  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A6D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A5A6DC  7D 89 03 A6 */	mtctr r12
/* 80A5A6E0  4E 80 04 21 */	bctrl 
/* 80A5A6E4  48 00 00 DC */	b lbl_80A5A7C0
lbl_80A5A6E8:
/* 80A5A6E8  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A6EC  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A6F0  C0 3F 04 88 */	lfs f1, 0x488(r31)
/* 80A5A6F4  4B 8C DD 39 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A6F8  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A6FC  41 82 00 C4 */	beq lbl_80A5A7C0
/* 80A5A700  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060021@ha */
/* 80A5A704  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00060021@l */
/* 80A5A708  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A5A70C  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A710  38 81 00 24 */	addi r4, r1, 0x24
/* 80A5A714  38 A0 00 00 */	li r5, 0
/* 80A5A718  38 C0 FF FF */	li r6, -1
/* 80A5A71C  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A720  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A5A724  7D 89 03 A6 */	mtctr r12
/* 80A5A728  4E 80 04 21 */	bctrl 
/* 80A5A72C  48 00 00 94 */	b lbl_80A5A7C0
lbl_80A5A730:
/* 80A5A730  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80A5A734  40 82 00 8C */	bne lbl_80A5A7C0
/* 80A5A738  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A73C  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A740  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80A5A744  4B 8C DC E9 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A748  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A74C  41 82 00 30 */	beq lbl_80A5A77C
/* 80A5A750  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050044@ha */
/* 80A5A754  38 03 00 44 */	addi r0, r3, 0x0044 /* 0x00050044@l */
/* 80A5A758  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A5A75C  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A760  38 81 00 20 */	addi r4, r1, 0x20
/* 80A5A764  38 A0 FF FF */	li r5, -1
/* 80A5A768  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A76C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5A770  7D 89 03 A6 */	mtctr r12
/* 80A5A774  4E 80 04 21 */	bctrl 
/* 80A5A778  48 00 00 48 */	b lbl_80A5A7C0
lbl_80A5A77C:
/* 80A5A77C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5A780  38 63 00 0C */	addi r3, r3, 0xc
/* 80A5A784  C0 3F 04 88 */	lfs f1, 0x488(r31)
/* 80A5A788  4B 8C DC A5 */	bl checkPass__12J3DFrameCtrlFf
/* 80A5A78C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A790  41 82 00 30 */	beq lbl_80A5A7C0
/* 80A5A794  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060021@ha */
/* 80A5A798  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00060021@l */
/* 80A5A79C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A5A7A0  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A5A7A4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A5A7A8  38 A0 00 00 */	li r5, 0
/* 80A5A7AC  38 C0 FF FF */	li r6, -1
/* 80A5A7B0  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5A7B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A5A7B8  7D 89 03 A6 */	mtctr r12
/* 80A5A7BC  4E 80 04 21 */	bctrl 
lbl_80A5A7C0:
/* 80A5A7C0  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 80A5A7C4  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 80A5A7C8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80A5A7CC  7C 08 03 A6 */	mtlr r0
/* 80A5A7D0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80A5A7D4  4E 80 00 20 */	blr 
