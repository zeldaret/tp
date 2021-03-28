lbl_805E9B48:
/* 805E9B48  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805E9B4C  7C 08 02 A6 */	mflr r0
/* 805E9B50  90 01 00 84 */	stw r0, 0x84(r1)
/* 805E9B54  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 805E9B58  93 C1 00 78 */	stw r30, 0x78(r1)
/* 805E9B5C  7C 7E 1B 78 */	mr r30, r3
/* 805E9B60  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805E9B64  3B E3 D0 60 */	addi r31, r3, lit_3911@l
/* 805E9B68  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 805E9B6C  38 03 FF FC */	addi r0, r3, -4
/* 805E9B70  28 00 00 1B */	cmplwi r0, 0x1b
/* 805E9B74  41 81 07 B8 */	bgt lbl_805EA32C
/* 805E9B78  3C 60 80 5F */	lis r3, lit_8743@ha
/* 805E9B7C  38 63 D4 FC */	addi r3, r3, lit_8743@l
/* 805E9B80  54 00 10 3A */	slwi r0, r0, 2
/* 805E9B84  7C 03 00 2E */	lwzx r0, r3, r0
/* 805E9B88  7C 09 03 A6 */	mtctr r0
/* 805E9B8C  4E 80 04 20 */	bctr 
lbl_805E9B90:
/* 805E9B90  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9B94  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9B98  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E9B9C  4B D3 E8 90 */	b checkPass__12J3DFrameCtrlFf
/* 805E9BA0  2C 03 00 00 */	cmpwi r3, 0
/* 805E9BA4  41 82 00 5C */	beq lbl_805E9C00
/* 805E9BA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A0@ha */
/* 805E9BAC  38 03 04 A0 */	addi r0, r3, 0x04A0 /* 0x000704A0@l */
/* 805E9BB0  90 01 00 70 */	stw r0, 0x70(r1)
/* 805E9BB4  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9BB8  38 81 00 70 */	addi r4, r1, 0x70
/* 805E9BBC  38 A0 00 00 */	li r5, 0
/* 805E9BC0  38 C0 FF FF */	li r6, -1
/* 805E9BC4  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9BC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E9BCC  7D 89 03 A6 */	mtctr r12
/* 805E9BD0  4E 80 04 21 */	bctrl 
/* 805E9BD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007049E@ha */
/* 805E9BD8  38 03 04 9E */	addi r0, r3, 0x049E /* 0x0007049E@l */
/* 805E9BDC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 805E9BE0  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9BE4  38 81 00 6C */	addi r4, r1, 0x6c
/* 805E9BE8  38 A0 FF FF */	li r5, -1
/* 805E9BEC  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9BF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805E9BF4  7D 89 03 A6 */	mtctr r12
/* 805E9BF8  4E 80 04 21 */	bctrl 
/* 805E9BFC  48 00 07 30 */	b lbl_805EA32C
lbl_805E9C00:
/* 805E9C00  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9C04  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9C08  C0 3F 03 04 */	lfs f1, 0x304(r31)
/* 805E9C0C  4B D3 E8 20 */	b checkPass__12J3DFrameCtrlFf
/* 805E9C10  2C 03 00 00 */	cmpwi r3, 0
/* 805E9C14  41 82 07 18 */	beq lbl_805EA32C
/* 805E9C18  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A0@ha */
/* 805E9C1C  38 03 04 A0 */	addi r0, r3, 0x04A0 /* 0x000704A0@l */
/* 805E9C20  90 01 00 68 */	stw r0, 0x68(r1)
/* 805E9C24  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9C28  38 81 00 68 */	addi r4, r1, 0x68
/* 805E9C2C  38 A0 00 00 */	li r5, 0
/* 805E9C30  38 C0 FF FF */	li r6, -1
/* 805E9C34  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9C38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E9C3C  7D 89 03 A6 */	mtctr r12
/* 805E9C40  4E 80 04 21 */	bctrl 
/* 805E9C44  48 00 06 E8 */	b lbl_805EA32C
lbl_805E9C48:
/* 805E9C48  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9C4C  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9C50  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805E9C54  4B D3 E7 D8 */	b checkPass__12J3DFrameCtrlFf
/* 805E9C58  2C 03 00 00 */	cmpwi r3, 0
/* 805E9C5C  40 82 00 1C */	bne lbl_805E9C78
/* 805E9C60  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9C64  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9C68  C0 3F 03 08 */	lfs f1, 0x308(r31)
/* 805E9C6C  4B D3 E7 C0 */	b checkPass__12J3DFrameCtrlFf
/* 805E9C70  2C 03 00 00 */	cmpwi r3, 0
/* 805E9C74  41 82 00 34 */	beq lbl_805E9CA8
lbl_805E9C78:
/* 805E9C78  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A0@ha */
/* 805E9C7C  38 03 04 A0 */	addi r0, r3, 0x04A0 /* 0x000704A0@l */
/* 805E9C80  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E9C84  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9C88  38 81 00 64 */	addi r4, r1, 0x64
/* 805E9C8C  38 A0 00 00 */	li r5, 0
/* 805E9C90  38 C0 FF FF */	li r6, -1
/* 805E9C94  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9C98  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E9C9C  7D 89 03 A6 */	mtctr r12
/* 805E9CA0  4E 80 04 21 */	bctrl 
/* 805E9CA4  48 00 06 88 */	b lbl_805EA32C
lbl_805E9CA8:
/* 805E9CA8  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9CAC  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9CB0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E9CB4  4B D3 E7 78 */	b checkPass__12J3DFrameCtrlFf
/* 805E9CB8  2C 03 00 00 */	cmpwi r3, 0
/* 805E9CBC  41 82 06 70 */	beq lbl_805EA32C
/* 805E9CC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007049F@ha */
/* 805E9CC4  38 03 04 9F */	addi r0, r3, 0x049F /* 0x0007049F@l */
/* 805E9CC8  90 01 00 60 */	stw r0, 0x60(r1)
/* 805E9CCC  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9CD0  38 81 00 60 */	addi r4, r1, 0x60
/* 805E9CD4  38 A0 00 00 */	li r5, 0
/* 805E9CD8  38 C0 FF FF */	li r6, -1
/* 805E9CDC  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9CE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E9CE4  7D 89 03 A6 */	mtctr r12
/* 805E9CE8  4E 80 04 21 */	bctrl 
/* 805E9CEC  48 00 06 40 */	b lbl_805EA32C
lbl_805E9CF0:
/* 805E9CF0  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9CF4  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9CF8  C0 3F 03 0C */	lfs f1, 0x30c(r31)
/* 805E9CFC  4B D3 E7 30 */	b checkPass__12J3DFrameCtrlFf
/* 805E9D00  2C 03 00 00 */	cmpwi r3, 0
/* 805E9D04  41 82 06 28 */	beq lbl_805EA32C
/* 805E9D08  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A0@ha */
/* 805E9D0C  38 03 04 A0 */	addi r0, r3, 0x04A0 /* 0x000704A0@l */
/* 805E9D10  90 01 00 5C */	stw r0, 0x5c(r1)
/* 805E9D14  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9D18  38 81 00 5C */	addi r4, r1, 0x5c
/* 805E9D1C  38 A0 00 00 */	li r5, 0
/* 805E9D20  38 C0 FF FF */	li r6, -1
/* 805E9D24  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9D28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E9D2C  7D 89 03 A6 */	mtctr r12
/* 805E9D30  4E 80 04 21 */	bctrl 
/* 805E9D34  48 00 05 F8 */	b lbl_805EA32C
lbl_805E9D38:
/* 805E9D38  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9D3C  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9D40  C0 3F 03 10 */	lfs f1, 0x310(r31)
/* 805E9D44  4B D3 E6 E8 */	b checkPass__12J3DFrameCtrlFf
/* 805E9D48  2C 03 00 00 */	cmpwi r3, 0
/* 805E9D4C  41 82 05 E0 */	beq lbl_805EA32C
/* 805E9D50  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A0@ha */
/* 805E9D54  38 03 04 A0 */	addi r0, r3, 0x04A0 /* 0x000704A0@l */
/* 805E9D58  90 01 00 58 */	stw r0, 0x58(r1)
/* 805E9D5C  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9D60  38 81 00 58 */	addi r4, r1, 0x58
/* 805E9D64  38 A0 00 00 */	li r5, 0
/* 805E9D68  38 C0 FF FF */	li r6, -1
/* 805E9D6C  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9D70  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E9D74  7D 89 03 A6 */	mtctr r12
/* 805E9D78  4E 80 04 21 */	bctrl 
/* 805E9D7C  48 00 05 B0 */	b lbl_805EA32C
lbl_805E9D80:
/* 805E9D80  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9D84  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9D88  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E9D8C  4B D3 E6 A0 */	b checkPass__12J3DFrameCtrlFf
/* 805E9D90  2C 03 00 00 */	cmpwi r3, 0
/* 805E9D94  40 82 00 1C */	bne lbl_805E9DB0
/* 805E9D98  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9D9C  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9DA0  C0 3F 02 C8 */	lfs f1, 0x2c8(r31)
/* 805E9DA4  4B D3 E6 88 */	b checkPass__12J3DFrameCtrlFf
/* 805E9DA8  2C 03 00 00 */	cmpwi r3, 0
/* 805E9DAC  41 82 05 80 */	beq lbl_805EA32C
lbl_805E9DB0:
/* 805E9DB0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A0@ha */
/* 805E9DB4  38 03 04 A0 */	addi r0, r3, 0x04A0 /* 0x000704A0@l */
/* 805E9DB8  90 01 00 54 */	stw r0, 0x54(r1)
/* 805E9DBC  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9DC0  38 81 00 54 */	addi r4, r1, 0x54
/* 805E9DC4  38 A0 00 00 */	li r5, 0
/* 805E9DC8  38 C0 FF FF */	li r6, -1
/* 805E9DCC  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9DD0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E9DD4  7D 89 03 A6 */	mtctr r12
/* 805E9DD8  4E 80 04 21 */	bctrl 
/* 805E9DDC  48 00 05 50 */	b lbl_805EA32C
lbl_805E9DE0:
/* 805E9DE0  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9DE4  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9DE8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E9DEC  4B D3 E6 40 */	b checkPass__12J3DFrameCtrlFf
/* 805E9DF0  2C 03 00 00 */	cmpwi r3, 0
/* 805E9DF4  41 82 05 38 */	beq lbl_805EA32C
/* 805E9DF8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A1@ha */
/* 805E9DFC  38 03 04 A1 */	addi r0, r3, 0x04A1 /* 0x000704A1@l */
/* 805E9E00  90 01 00 50 */	stw r0, 0x50(r1)
/* 805E9E04  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9E08  38 81 00 50 */	addi r4, r1, 0x50
/* 805E9E0C  38 A0 FF FF */	li r5, -1
/* 805E9E10  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9E14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805E9E18  7D 89 03 A6 */	mtctr r12
/* 805E9E1C  4E 80 04 21 */	bctrl 
/* 805E9E20  48 00 05 0C */	b lbl_805EA32C
lbl_805E9E24:
/* 805E9E24  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9E28  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9E2C  C0 3F 02 70 */	lfs f1, 0x270(r31)
/* 805E9E30  4B D3 E5 FC */	b checkPass__12J3DFrameCtrlFf
/* 805E9E34  2C 03 00 00 */	cmpwi r3, 0
/* 805E9E38  41 82 04 F4 */	beq lbl_805EA32C
/* 805E9E3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A0@ha */
/* 805E9E40  38 03 04 A0 */	addi r0, r3, 0x04A0 /* 0x000704A0@l */
/* 805E9E44  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805E9E48  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9E4C  38 81 00 4C */	addi r4, r1, 0x4c
/* 805E9E50  38 A0 00 00 */	li r5, 0
/* 805E9E54  38 C0 FF FF */	li r6, -1
/* 805E9E58  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9E5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E9E60  7D 89 03 A6 */	mtctr r12
/* 805E9E64  4E 80 04 21 */	bctrl 
/* 805E9E68  48 00 04 C4 */	b lbl_805EA32C
lbl_805E9E6C:
/* 805E9E6C  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9E70  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9E74  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E9E78  4B D3 E5 B4 */	b checkPass__12J3DFrameCtrlFf
/* 805E9E7C  2C 03 00 00 */	cmpwi r3, 0
/* 805E9E80  41 82 00 30 */	beq lbl_805E9EB0
/* 805E9E84  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A2@ha */
/* 805E9E88  38 03 04 A2 */	addi r0, r3, 0x04A2 /* 0x000704A2@l */
/* 805E9E8C  90 01 00 48 */	stw r0, 0x48(r1)
/* 805E9E90  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9E94  38 81 00 48 */	addi r4, r1, 0x48
/* 805E9E98  38 A0 FF FF */	li r5, -1
/* 805E9E9C  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9EA0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805E9EA4  7D 89 03 A6 */	mtctr r12
/* 805E9EA8  4E 80 04 21 */	bctrl 
/* 805E9EAC  48 00 04 80 */	b lbl_805EA32C
lbl_805E9EB0:
/* 805E9EB0  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9EB4  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9EB8  C0 3F 03 14 */	lfs f1, 0x314(r31)
/* 805E9EBC  4B D3 E5 70 */	b checkPass__12J3DFrameCtrlFf
/* 805E9EC0  2C 03 00 00 */	cmpwi r3, 0
/* 805E9EC4  41 82 04 68 */	beq lbl_805EA32C
/* 805E9EC8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A3@ha */
/* 805E9ECC  38 03 04 A3 */	addi r0, r3, 0x04A3 /* 0x000704A3@l */
/* 805E9ED0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E9ED4  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9ED8  38 81 00 44 */	addi r4, r1, 0x44
/* 805E9EDC  38 A0 00 00 */	li r5, 0
/* 805E9EE0  38 C0 FF FF */	li r6, -1
/* 805E9EE4  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9EE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E9EEC  7D 89 03 A6 */	mtctr r12
/* 805E9EF0  4E 80 04 21 */	bctrl 
/* 805E9EF4  48 00 04 38 */	b lbl_805EA32C
lbl_805E9EF8:
/* 805E9EF8  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9EFC  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9F00  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E9F04  4B D3 E5 28 */	b checkPass__12J3DFrameCtrlFf
/* 805E9F08  2C 03 00 00 */	cmpwi r3, 0
/* 805E9F0C  41 82 00 30 */	beq lbl_805E9F3C
/* 805E9F10  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A4@ha */
/* 805E9F14  38 03 04 A4 */	addi r0, r3, 0x04A4 /* 0x000704A4@l */
/* 805E9F18  90 01 00 40 */	stw r0, 0x40(r1)
/* 805E9F1C  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9F20  38 81 00 40 */	addi r4, r1, 0x40
/* 805E9F24  38 A0 FF FF */	li r5, -1
/* 805E9F28  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9F2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805E9F30  7D 89 03 A6 */	mtctr r12
/* 805E9F34  4E 80 04 21 */	bctrl 
/* 805E9F38  48 00 03 F4 */	b lbl_805EA32C
lbl_805E9F3C:
/* 805E9F3C  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9F40  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9F44  C0 3F 03 18 */	lfs f1, 0x318(r31)
/* 805E9F48  4B D3 E4 E4 */	b checkPass__12J3DFrameCtrlFf
/* 805E9F4C  2C 03 00 00 */	cmpwi r3, 0
/* 805E9F50  41 82 03 DC */	beq lbl_805EA32C
/* 805E9F54  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A5@ha */
/* 805E9F58  38 03 04 A5 */	addi r0, r3, 0x04A5 /* 0x000704A5@l */
/* 805E9F5C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805E9F60  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9F64  38 81 00 3C */	addi r4, r1, 0x3c
/* 805E9F68  38 A0 00 00 */	li r5, 0
/* 805E9F6C  38 C0 FF FF */	li r6, -1
/* 805E9F70  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9F74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E9F78  7D 89 03 A6 */	mtctr r12
/* 805E9F7C  4E 80 04 21 */	bctrl 
/* 805E9F80  48 00 03 AC */	b lbl_805EA32C
lbl_805E9F84:
/* 805E9F84  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9F88  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9F8C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E9F90  4B D3 E4 9C */	b checkPass__12J3DFrameCtrlFf
/* 805E9F94  2C 03 00 00 */	cmpwi r3, 0
/* 805E9F98  41 82 00 30 */	beq lbl_805E9FC8
/* 805E9F9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A6@ha */
/* 805E9FA0  38 03 04 A6 */	addi r0, r3, 0x04A6 /* 0x000704A6@l */
/* 805E9FA4  90 01 00 38 */	stw r0, 0x38(r1)
/* 805E9FA8  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9FAC  38 81 00 38 */	addi r4, r1, 0x38
/* 805E9FB0  38 A0 FF FF */	li r5, -1
/* 805E9FB4  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805E9FB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805E9FBC  7D 89 03 A6 */	mtctr r12
/* 805E9FC0  4E 80 04 21 */	bctrl 
/* 805E9FC4  48 00 03 68 */	b lbl_805EA32C
lbl_805E9FC8:
/* 805E9FC8  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E9FCC  38 63 00 0C */	addi r3, r3, 0xc
/* 805E9FD0  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E9FD4  4B D3 E4 58 */	b checkPass__12J3DFrameCtrlFf
/* 805E9FD8  2C 03 00 00 */	cmpwi r3, 0
/* 805E9FDC  41 82 03 50 */	beq lbl_805EA32C
/* 805E9FE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A7@ha */
/* 805E9FE4  38 03 04 A7 */	addi r0, r3, 0x04A7 /* 0x000704A7@l */
/* 805E9FE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805E9FEC  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805E9FF0  38 81 00 34 */	addi r4, r1, 0x34
/* 805E9FF4  38 A0 00 00 */	li r5, 0
/* 805E9FF8  38 C0 FF FF */	li r6, -1
/* 805E9FFC  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA000  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805EA004  7D 89 03 A6 */	mtctr r12
/* 805EA008  4E 80 04 21 */	bctrl 
/* 805EA00C  48 00 03 20 */	b lbl_805EA32C
lbl_805EA010:
/* 805EA010  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA014  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA018  C0 3F 02 D4 */	lfs f1, 0x2d4(r31)
/* 805EA01C  4B D3 E4 10 */	b checkPass__12J3DFrameCtrlFf
/* 805EA020  2C 03 00 00 */	cmpwi r3, 0
/* 805EA024  41 82 03 08 */	beq lbl_805EA32C
/* 805EA028  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A0@ha */
/* 805EA02C  38 03 04 A0 */	addi r0, r3, 0x04A0 /* 0x000704A0@l */
/* 805EA030  90 01 00 30 */	stw r0, 0x30(r1)
/* 805EA034  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805EA038  38 81 00 30 */	addi r4, r1, 0x30
/* 805EA03C  38 A0 00 00 */	li r5, 0
/* 805EA040  38 C0 FF FF */	li r6, -1
/* 805EA044  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA048  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805EA04C  7D 89 03 A6 */	mtctr r12
/* 805EA050  4E 80 04 21 */	bctrl 
/* 805EA054  48 00 02 D8 */	b lbl_805EA32C
lbl_805EA058:
/* 805EA058  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA05C  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA060  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805EA064  4B D3 E3 C8 */	b checkPass__12J3DFrameCtrlFf
/* 805EA068  2C 03 00 00 */	cmpwi r3, 0
/* 805EA06C  41 82 00 30 */	beq lbl_805EA09C
/* 805EA070  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A9@ha */
/* 805EA074  38 03 04 A9 */	addi r0, r3, 0x04A9 /* 0x000704A9@l */
/* 805EA078  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805EA07C  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805EA080  38 81 00 2C */	addi r4, r1, 0x2c
/* 805EA084  38 A0 FF FF */	li r5, -1
/* 805EA088  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA08C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805EA090  7D 89 03 A6 */	mtctr r12
/* 805EA094  4E 80 04 21 */	bctrl 
/* 805EA098  48 00 02 94 */	b lbl_805EA32C
lbl_805EA09C:
/* 805EA09C  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA0A0  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA0A4  C0 3F 03 1C */	lfs f1, 0x31c(r31)
/* 805EA0A8  4B D3 E3 84 */	b checkPass__12J3DFrameCtrlFf
/* 805EA0AC  2C 03 00 00 */	cmpwi r3, 0
/* 805EA0B0  41 82 00 34 */	beq lbl_805EA0E4
/* 805EA0B4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 805EA0B8  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 805EA0BC  90 01 00 28 */	stw r0, 0x28(r1)
/* 805EA0C0  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805EA0C4  38 81 00 28 */	addi r4, r1, 0x28
/* 805EA0C8  38 A0 00 00 */	li r5, 0
/* 805EA0CC  38 C0 FF FF */	li r6, -1
/* 805EA0D0  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA0D4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805EA0D8  7D 89 03 A6 */	mtctr r12
/* 805EA0DC  4E 80 04 21 */	bctrl 
/* 805EA0E0  48 00 02 4C */	b lbl_805EA32C
lbl_805EA0E4:
/* 805EA0E4  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA0E8  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA0EC  C0 3F 03 20 */	lfs f1, 0x320(r31)
/* 805EA0F0  4B D3 E3 3C */	b checkPass__12J3DFrameCtrlFf
/* 805EA0F4  2C 03 00 00 */	cmpwi r3, 0
/* 805EA0F8  41 82 02 34 */	beq lbl_805EA32C
/* 805EA0FC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 805EA100  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 805EA104  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EA108  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805EA10C  38 81 00 24 */	addi r4, r1, 0x24
/* 805EA110  38 A0 00 00 */	li r5, 0
/* 805EA114  38 C0 FF FF */	li r6, -1
/* 805EA118  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA11C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805EA120  7D 89 03 A6 */	mtctr r12
/* 805EA124  4E 80 04 21 */	bctrl 
/* 805EA128  48 00 02 04 */	b lbl_805EA32C
lbl_805EA12C:
/* 805EA12C  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA130  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA134  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805EA138  4B D3 E2 F4 */	b checkPass__12J3DFrameCtrlFf
/* 805EA13C  2C 03 00 00 */	cmpwi r3, 0
/* 805EA140  41 82 01 EC */	beq lbl_805EA32C
/* 805EA144  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704AB@ha */
/* 805EA148  38 03 04 AB */	addi r0, r3, 0x04AB /* 0x000704AB@l */
/* 805EA14C  90 01 00 20 */	stw r0, 0x20(r1)
/* 805EA150  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805EA154  38 81 00 20 */	addi r4, r1, 0x20
/* 805EA158  38 A0 FF FF */	li r5, -1
/* 805EA15C  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA160  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805EA164  7D 89 03 A6 */	mtctr r12
/* 805EA168  4E 80 04 21 */	bctrl 
/* 805EA16C  48 00 01 C0 */	b lbl_805EA32C
lbl_805EA170:
/* 805EA170  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA174  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA178  C0 3F 03 24 */	lfs f1, 0x324(r31)
/* 805EA17C  4B D3 E2 B0 */	b checkPass__12J3DFrameCtrlFf
/* 805EA180  2C 03 00 00 */	cmpwi r3, 0
/* 805EA184  41 82 01 A8 */	beq lbl_805EA32C
/* 805EA188  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A0@ha */
/* 805EA18C  38 03 04 A0 */	addi r0, r3, 0x04A0 /* 0x000704A0@l */
/* 805EA190  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805EA194  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805EA198  38 81 00 1C */	addi r4, r1, 0x1c
/* 805EA19C  38 A0 00 00 */	li r5, 0
/* 805EA1A0  38 C0 FF FF */	li r6, -1
/* 805EA1A4  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA1A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805EA1AC  7D 89 03 A6 */	mtctr r12
/* 805EA1B0  4E 80 04 21 */	bctrl 
/* 805EA1B4  48 00 01 78 */	b lbl_805EA32C
lbl_805EA1B8:
/* 805EA1B8  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA1BC  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA1C0  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805EA1C4  4B D3 E2 68 */	b checkPass__12J3DFrameCtrlFf
/* 805EA1C8  2C 03 00 00 */	cmpwi r3, 0
/* 805EA1CC  41 82 01 60 */	beq lbl_805EA32C
/* 805EA1D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704AC@ha */
/* 805EA1D4  38 03 04 AC */	addi r0, r3, 0x04AC /* 0x000704AC@l */
/* 805EA1D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 805EA1DC  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805EA1E0  38 81 00 18 */	addi r4, r1, 0x18
/* 805EA1E4  38 A0 FF FF */	li r5, -1
/* 805EA1E8  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA1EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805EA1F0  7D 89 03 A6 */	mtctr r12
/* 805EA1F4  4E 80 04 21 */	bctrl 
/* 805EA1F8  48 00 01 34 */	b lbl_805EA32C
lbl_805EA1FC:
/* 805EA1FC  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA200  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA204  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 805EA208  4B D3 E2 24 */	b checkPass__12J3DFrameCtrlFf
/* 805EA20C  2C 03 00 00 */	cmpwi r3, 0
/* 805EA210  40 82 00 1C */	bne lbl_805EA22C
/* 805EA214  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA218  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA21C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805EA220  4B D3 E2 0C */	b checkPass__12J3DFrameCtrlFf
/* 805EA224  2C 03 00 00 */	cmpwi r3, 0
/* 805EA228  41 82 01 04 */	beq lbl_805EA32C
lbl_805EA22C:
/* 805EA22C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704AD@ha */
/* 805EA230  38 03 04 AD */	addi r0, r3, 0x04AD /* 0x000704AD@l */
/* 805EA234  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EA238  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805EA23C  38 81 00 14 */	addi r4, r1, 0x14
/* 805EA240  38 A0 00 00 */	li r5, 0
/* 805EA244  38 C0 FF FF */	li r6, -1
/* 805EA248  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA24C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805EA250  7D 89 03 A6 */	mtctr r12
/* 805EA254  4E 80 04 21 */	bctrl 
/* 805EA258  48 00 00 D4 */	b lbl_805EA32C
lbl_805EA25C:
/* 805EA25C  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA260  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA264  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805EA268  4B D3 E1 C4 */	b checkPass__12J3DFrameCtrlFf
/* 805EA26C  2C 03 00 00 */	cmpwi r3, 0
/* 805EA270  41 82 00 30 */	beq lbl_805EA2A0
/* 805EA274  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704AA@ha */
/* 805EA278  38 03 04 AA */	addi r0, r3, 0x04AA /* 0x000704AA@l */
/* 805EA27C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805EA280  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805EA284  38 81 00 10 */	addi r4, r1, 0x10
/* 805EA288  38 A0 FF FF */	li r5, -1
/* 805EA28C  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA290  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805EA294  7D 89 03 A6 */	mtctr r12
/* 805EA298  4E 80 04 21 */	bctrl 
/* 805EA29C  48 00 00 90 */	b lbl_805EA32C
lbl_805EA2A0:
/* 805EA2A0  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA2A4  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA2A8  C0 3F 03 28 */	lfs f1, 0x328(r31)
/* 805EA2AC  4B D3 E1 80 */	b checkPass__12J3DFrameCtrlFf
/* 805EA2B0  2C 03 00 00 */	cmpwi r3, 0
/* 805EA2B4  41 82 00 34 */	beq lbl_805EA2E8
/* 805EA2B8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 805EA2BC  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 805EA2C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EA2C4  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805EA2C8  38 81 00 0C */	addi r4, r1, 0xc
/* 805EA2CC  38 A0 00 00 */	li r5, 0
/* 805EA2D0  38 C0 FF FF */	li r6, -1
/* 805EA2D4  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA2D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805EA2DC  7D 89 03 A6 */	mtctr r12
/* 805EA2E0  4E 80 04 21 */	bctrl 
/* 805EA2E4  48 00 00 48 */	b lbl_805EA32C
lbl_805EA2E8:
/* 805EA2E8  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805EA2EC  38 63 00 0C */	addi r3, r3, 0xc
/* 805EA2F0  C0 3F 03 2C */	lfs f1, 0x32c(r31)
/* 805EA2F4  4B D3 E1 38 */	b checkPass__12J3DFrameCtrlFf
/* 805EA2F8  2C 03 00 00 */	cmpwi r3, 0
/* 805EA2FC  41 82 00 30 */	beq lbl_805EA32C
/* 805EA300  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 805EA304  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 805EA308  90 01 00 08 */	stw r0, 8(r1)
/* 805EA30C  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 805EA310  38 81 00 08 */	addi r4, r1, 8
/* 805EA314  38 A0 00 00 */	li r5, 0
/* 805EA318  38 C0 FF FF */	li r6, -1
/* 805EA31C  81 9E 0E 4C */	lwz r12, 0xe4c(r30)
/* 805EA320  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805EA324  7D 89 03 A6 */	mtctr r12
/* 805EA328  4E 80 04 21 */	bctrl 
lbl_805EA32C:
/* 805EA32C  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 805EA330  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 805EA334  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805EA338  7C 08 03 A6 */	mtlr r0
/* 805EA33C  38 21 00 80 */	addi r1, r1, 0x80
/* 805EA340  4E 80 00 20 */	blr 
