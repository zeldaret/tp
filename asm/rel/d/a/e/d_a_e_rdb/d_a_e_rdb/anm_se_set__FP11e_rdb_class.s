lbl_80768B90:
/* 80768B90  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80768B94  7C 08 02 A6 */	mflr r0
/* 80768B98  90 01 00 74 */	stw r0, 0x74(r1)
/* 80768B9C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80768BA0  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80768BA4  7C 7E 1B 78 */	mr r30, r3
/* 80768BA8  3C 60 80 77 */	lis r3, lit_4007@ha /* 0x8076B45C@ha */
/* 80768BAC  3B E3 B4 5C */	addi r31, r3, lit_4007@l /* 0x8076B45C@l */
/* 80768BB0  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 80768BB4  2C 00 00 46 */	cmpwi r0, 0x46
/* 80768BB8  40 82 00 64 */	bne lbl_80768C1C
/* 80768BBC  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768BC0  38 63 00 0C */	addi r3, r3, 0xc
/* 80768BC4  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 80768BC8  4B BB F8 65 */	bl checkPass__12J3DFrameCtrlFf
/* 80768BCC  2C 03 00 00 */	cmpwi r3, 0
/* 80768BD0  40 82 00 1C */	bne lbl_80768BEC
/* 80768BD4  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768BD8  38 63 00 0C */	addi r3, r3, 0xc
/* 80768BDC  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 80768BE0  4B BB F8 4D */	bl checkPass__12J3DFrameCtrlFf
/* 80768BE4  2C 03 00 00 */	cmpwi r3, 0
/* 80768BE8  41 82 07 24 */	beq lbl_8076930C
lbl_80768BEC:
/* 80768BEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070576@ha */
/* 80768BF0  38 03 05 76 */	addi r0, r3, 0x0576 /* 0x00070576@l */
/* 80768BF4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80768BF8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768BFC  38 81 00 5C */	addi r4, r1, 0x5c
/* 80768C00  38 A0 00 00 */	li r5, 0
/* 80768C04  38 C0 FF FF */	li r6, -1
/* 80768C08  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768C0C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80768C10  7D 89 03 A6 */	mtctr r12
/* 80768C14  4E 80 04 21 */	bctrl 
/* 80768C18  48 00 06 F4 */	b lbl_8076930C
lbl_80768C1C:
/* 80768C1C  2C 00 00 40 */	cmpwi r0, 0x40
/* 80768C20  40 82 00 64 */	bne lbl_80768C84
/* 80768C24  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768C28  38 63 00 0C */	addi r3, r3, 0xc
/* 80768C2C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80768C30  4B BB F7 FD */	bl checkPass__12J3DFrameCtrlFf
/* 80768C34  2C 03 00 00 */	cmpwi r3, 0
/* 80768C38  40 82 00 1C */	bne lbl_80768C54
/* 80768C3C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768C40  38 63 00 0C */	addi r3, r3, 0xc
/* 80768C44  C0 3F 01 7C */	lfs f1, 0x17c(r31)
/* 80768C48  4B BB F7 E5 */	bl checkPass__12J3DFrameCtrlFf
/* 80768C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80768C50  41 82 06 BC */	beq lbl_8076930C
lbl_80768C54:
/* 80768C54  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070576@ha */
/* 80768C58  38 03 05 76 */	addi r0, r3, 0x0576 /* 0x00070576@l */
/* 80768C5C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80768C60  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768C64  38 81 00 58 */	addi r4, r1, 0x58
/* 80768C68  38 A0 00 00 */	li r5, 0
/* 80768C6C  38 C0 FF FF */	li r6, -1
/* 80768C70  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768C74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80768C78  7D 89 03 A6 */	mtctr r12
/* 80768C7C  4E 80 04 21 */	bctrl 
/* 80768C80  48 00 06 8C */	b lbl_8076930C
lbl_80768C84:
/* 80768C84  2C 00 00 44 */	cmpwi r0, 0x44
/* 80768C88  40 82 00 64 */	bne lbl_80768CEC
/* 80768C8C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768C90  38 63 00 0C */	addi r3, r3, 0xc
/* 80768C94  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 80768C98  4B BB F7 95 */	bl checkPass__12J3DFrameCtrlFf
/* 80768C9C  2C 03 00 00 */	cmpwi r3, 0
/* 80768CA0  40 82 00 1C */	bne lbl_80768CBC
/* 80768CA4  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768CA8  38 63 00 0C */	addi r3, r3, 0xc
/* 80768CAC  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 80768CB0  4B BB F7 7D */	bl checkPass__12J3DFrameCtrlFf
/* 80768CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80768CB8  41 82 06 54 */	beq lbl_8076930C
lbl_80768CBC:
/* 80768CBC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070576@ha */
/* 80768CC0  38 03 05 76 */	addi r0, r3, 0x0576 /* 0x00070576@l */
/* 80768CC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80768CC8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768CCC  38 81 00 54 */	addi r4, r1, 0x54
/* 80768CD0  38 A0 00 00 */	li r5, 0
/* 80768CD4  38 C0 FF FF */	li r6, -1
/* 80768CD8  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768CDC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80768CE0  7D 89 03 A6 */	mtctr r12
/* 80768CE4  4E 80 04 21 */	bctrl 
/* 80768CE8  48 00 06 24 */	b lbl_8076930C
lbl_80768CEC:
/* 80768CEC  2C 00 00 07 */	cmpwi r0, 7
/* 80768CF0  40 82 00 90 */	bne lbl_80768D80
/* 80768CF4  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768CF8  38 63 00 0C */	addi r3, r3, 0xc
/* 80768CFC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80768D00  4B BB F7 2D */	bl checkPass__12J3DFrameCtrlFf
/* 80768D04  2C 03 00 00 */	cmpwi r3, 0
/* 80768D08  41 82 00 30 */	beq lbl_80768D38
/* 80768D0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070577@ha */
/* 80768D10  38 03 05 77 */	addi r0, r3, 0x0577 /* 0x00070577@l */
/* 80768D14  90 01 00 50 */	stw r0, 0x50(r1)
/* 80768D18  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768D1C  38 81 00 50 */	addi r4, r1, 0x50
/* 80768D20  38 A0 FF FF */	li r5, -1
/* 80768D24  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768D28  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80768D2C  7D 89 03 A6 */	mtctr r12
/* 80768D30  4E 80 04 21 */	bctrl 
/* 80768D34  48 00 05 D8 */	b lbl_8076930C
lbl_80768D38:
/* 80768D38  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768D3C  38 63 00 0C */	addi r3, r3, 0xc
/* 80768D40  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 80768D44  4B BB F6 E9 */	bl checkPass__12J3DFrameCtrlFf
/* 80768D48  2C 03 00 00 */	cmpwi r3, 0
/* 80768D4C  41 82 05 C0 */	beq lbl_8076930C
/* 80768D50  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070578@ha */
/* 80768D54  38 03 05 78 */	addi r0, r3, 0x0578 /* 0x00070578@l */
/* 80768D58  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80768D5C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768D60  38 81 00 4C */	addi r4, r1, 0x4c
/* 80768D64  38 A0 00 00 */	li r5, 0
/* 80768D68  38 C0 FF FF */	li r6, -1
/* 80768D6C  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768D70  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80768D74  7D 89 03 A6 */	mtctr r12
/* 80768D78  4E 80 04 21 */	bctrl 
/* 80768D7C  48 00 05 90 */	b lbl_8076930C
lbl_80768D80:
/* 80768D80  2C 00 00 08 */	cmpwi r0, 8
/* 80768D84  40 82 00 D8 */	bne lbl_80768E5C
/* 80768D88  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768D8C  38 63 00 0C */	addi r3, r3, 0xc
/* 80768D90  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80768D94  4B BB F6 99 */	bl checkPass__12J3DFrameCtrlFf
/* 80768D98  2C 03 00 00 */	cmpwi r3, 0
/* 80768D9C  41 82 00 30 */	beq lbl_80768DCC
/* 80768DA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070577@ha */
/* 80768DA4  38 03 05 77 */	addi r0, r3, 0x0577 /* 0x00070577@l */
/* 80768DA8  90 01 00 48 */	stw r0, 0x48(r1)
/* 80768DAC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768DB0  38 81 00 48 */	addi r4, r1, 0x48
/* 80768DB4  38 A0 FF FF */	li r5, -1
/* 80768DB8  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768DBC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80768DC0  7D 89 03 A6 */	mtctr r12
/* 80768DC4  4E 80 04 21 */	bctrl 
/* 80768DC8  48 00 05 44 */	b lbl_8076930C
lbl_80768DCC:
/* 80768DCC  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768DD0  38 63 00 0C */	addi r3, r3, 0xc
/* 80768DD4  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 80768DD8  4B BB F6 55 */	bl checkPass__12J3DFrameCtrlFf
/* 80768DDC  2C 03 00 00 */	cmpwi r3, 0
/* 80768DE0  41 82 00 34 */	beq lbl_80768E14
/* 80768DE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007057A@ha */
/* 80768DE8  38 03 05 7A */	addi r0, r3, 0x057A /* 0x0007057A@l */
/* 80768DEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80768DF0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768DF4  38 81 00 44 */	addi r4, r1, 0x44
/* 80768DF8  38 A0 00 00 */	li r5, 0
/* 80768DFC  38 C0 FF FF */	li r6, -1
/* 80768E00  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768E04  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80768E08  7D 89 03 A6 */	mtctr r12
/* 80768E0C  4E 80 04 21 */	bctrl 
/* 80768E10  48 00 04 FC */	b lbl_8076930C
lbl_80768E14:
/* 80768E14  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768E18  38 63 00 0C */	addi r3, r3, 0xc
/* 80768E1C  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 80768E20  4B BB F6 0D */	bl checkPass__12J3DFrameCtrlFf
/* 80768E24  2C 03 00 00 */	cmpwi r3, 0
/* 80768E28  41 82 04 E4 */	beq lbl_8076930C
/* 80768E2C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007057B@ha */
/* 80768E30  38 03 05 7B */	addi r0, r3, 0x057B /* 0x0007057B@l */
/* 80768E34  90 01 00 40 */	stw r0, 0x40(r1)
/* 80768E38  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768E3C  38 81 00 40 */	addi r4, r1, 0x40
/* 80768E40  38 A0 00 00 */	li r5, 0
/* 80768E44  38 C0 FF FF */	li r6, -1
/* 80768E48  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768E4C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80768E50  7D 89 03 A6 */	mtctr r12
/* 80768E54  4E 80 04 21 */	bctrl 
/* 80768E58  48 00 04 B4 */	b lbl_8076930C
lbl_80768E5C:
/* 80768E5C  2C 00 00 09 */	cmpwi r0, 9
/* 80768E60  40 82 00 64 */	bne lbl_80768EC4
/* 80768E64  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768E68  38 63 00 0C */	addi r3, r3, 0xc
/* 80768E6C  C0 3F 01 94 */	lfs f1, 0x194(r31)
/* 80768E70  4B BB F5 BD */	bl checkPass__12J3DFrameCtrlFf
/* 80768E74  2C 03 00 00 */	cmpwi r3, 0
/* 80768E78  40 82 00 1C */	bne lbl_80768E94
/* 80768E7C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768E80  38 63 00 0C */	addi r3, r3, 0xc
/* 80768E84  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 80768E88  4B BB F5 A5 */	bl checkPass__12J3DFrameCtrlFf
/* 80768E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80768E90  41 82 04 7C */	beq lbl_8076930C
lbl_80768E94:
/* 80768E94  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070576@ha */
/* 80768E98  38 03 05 76 */	addi r0, r3, 0x0576 /* 0x00070576@l */
/* 80768E9C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80768EA0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768EA4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80768EA8  38 A0 00 00 */	li r5, 0
/* 80768EAC  38 C0 FF FF */	li r6, -1
/* 80768EB0  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768EB4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80768EB8  7D 89 03 A6 */	mtctr r12
/* 80768EBC  4E 80 04 21 */	bctrl 
/* 80768EC0  48 00 04 4C */	b lbl_8076930C
lbl_80768EC4:
/* 80768EC4  2C 00 00 11 */	cmpwi r0, 0x11
/* 80768EC8  40 82 00 90 */	bne lbl_80768F58
/* 80768ECC  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768ED0  38 63 00 0C */	addi r3, r3, 0xc
/* 80768ED4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80768ED8  4B BB F5 55 */	bl checkPass__12J3DFrameCtrlFf
/* 80768EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80768EE0  41 82 00 30 */	beq lbl_80768F10
/* 80768EE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F6@ha */
/* 80768EE8  38 03 00 F6 */	addi r0, r3, 0x00F6 /* 0x000700F6@l */
/* 80768EEC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80768EF0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768EF4  38 81 00 38 */	addi r4, r1, 0x38
/* 80768EF8  38 A0 FF FF */	li r5, -1
/* 80768EFC  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768F00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80768F04  7D 89 03 A6 */	mtctr r12
/* 80768F08  4E 80 04 21 */	bctrl 
/* 80768F0C  48 00 04 00 */	b lbl_8076930C
lbl_80768F10:
/* 80768F10  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768F14  38 63 00 0C */	addi r3, r3, 0xc
/* 80768F18  C0 3F 01 9C */	lfs f1, 0x19c(r31)
/* 80768F1C  4B BB F5 11 */	bl checkPass__12J3DFrameCtrlFf
/* 80768F20  2C 03 00 00 */	cmpwi r3, 0
/* 80768F24  41 82 03 E8 */	beq lbl_8076930C
/* 80768F28  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 80768F2C  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 80768F30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80768F34  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768F38  38 81 00 34 */	addi r4, r1, 0x34
/* 80768F3C  38 A0 00 00 */	li r5, 0
/* 80768F40  38 C0 FF FF */	li r6, -1
/* 80768F44  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768F48  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80768F4C  7D 89 03 A6 */	mtctr r12
/* 80768F50  4E 80 04 21 */	bctrl 
/* 80768F54  48 00 03 B8 */	b lbl_8076930C
lbl_80768F58:
/* 80768F58  2C 00 00 12 */	cmpwi r0, 0x12
/* 80768F5C  40 82 01 20 */	bne lbl_8076907C
/* 80768F60  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768F64  38 63 00 0C */	addi r3, r3, 0xc
/* 80768F68  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80768F6C  4B BB F4 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 80768F70  2C 03 00 00 */	cmpwi r3, 0
/* 80768F74  41 82 00 30 */	beq lbl_80768FA4
/* 80768F78  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070573@ha */
/* 80768F7C  38 03 05 73 */	addi r0, r3, 0x0573 /* 0x00070573@l */
/* 80768F80  90 01 00 30 */	stw r0, 0x30(r1)
/* 80768F84  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768F88  38 81 00 30 */	addi r4, r1, 0x30
/* 80768F8C  38 A0 FF FF */	li r5, -1
/* 80768F90  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768F94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80768F98  7D 89 03 A6 */	mtctr r12
/* 80768F9C  4E 80 04 21 */	bctrl 
/* 80768FA0  48 00 03 6C */	b lbl_8076930C
lbl_80768FA4:
/* 80768FA4  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768FA8  38 63 00 0C */	addi r3, r3, 0xc
/* 80768FAC  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 80768FB0  4B BB F4 7D */	bl checkPass__12J3DFrameCtrlFf
/* 80768FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80768FB8  41 82 00 34 */	beq lbl_80768FEC
/* 80768FBC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007057A@ha */
/* 80768FC0  38 03 05 7A */	addi r0, r3, 0x057A /* 0x0007057A@l */
/* 80768FC4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80768FC8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80768FCC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80768FD0  38 A0 00 00 */	li r5, 0
/* 80768FD4  38 C0 FF FF */	li r6, -1
/* 80768FD8  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80768FDC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80768FE0  7D 89 03 A6 */	mtctr r12
/* 80768FE4  4E 80 04 21 */	bctrl 
/* 80768FE8  48 00 03 24 */	b lbl_8076930C
lbl_80768FEC:
/* 80768FEC  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80768FF0  38 63 00 0C */	addi r3, r3, 0xc
/* 80768FF4  C0 3F 01 A0 */	lfs f1, 0x1a0(r31)
/* 80768FF8  4B BB F4 35 */	bl checkPass__12J3DFrameCtrlFf
/* 80768FFC  2C 03 00 00 */	cmpwi r3, 0
/* 80769000  41 82 00 34 */	beq lbl_80769034
/* 80769004  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007057B@ha */
/* 80769008  38 03 05 7B */	addi r0, r3, 0x057B /* 0x0007057B@l */
/* 8076900C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80769010  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80769014  38 81 00 28 */	addi r4, r1, 0x28
/* 80769018  38 A0 00 00 */	li r5, 0
/* 8076901C  38 C0 FF FF */	li r6, -1
/* 80769020  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80769024  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80769028  7D 89 03 A6 */	mtctr r12
/* 8076902C  4E 80 04 21 */	bctrl 
/* 80769030  48 00 02 DC */	b lbl_8076930C
lbl_80769034:
/* 80769034  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80769038  38 63 00 0C */	addi r3, r3, 0xc
/* 8076903C  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 80769040  4B BB F3 ED */	bl checkPass__12J3DFrameCtrlFf
/* 80769044  2C 03 00 00 */	cmpwi r3, 0
/* 80769048  41 82 02 C4 */	beq lbl_8076930C
/* 8076904C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 80769050  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 80769054  90 01 00 24 */	stw r0, 0x24(r1)
/* 80769058  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8076905C  38 81 00 24 */	addi r4, r1, 0x24
/* 80769060  38 A0 00 00 */	li r5, 0
/* 80769064  38 C0 FF FF */	li r6, -1
/* 80769068  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 8076906C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80769070  7D 89 03 A6 */	mtctr r12
/* 80769074  4E 80 04 21 */	bctrl 
/* 80769078  48 00 02 94 */	b lbl_8076930C
lbl_8076907C:
/* 8076907C  2C 00 00 20 */	cmpwi r0, 0x20
/* 80769080  40 82 00 48 */	bne lbl_807690C8
/* 80769084  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80769088  38 63 00 0C */	addi r3, r3, 0xc
/* 8076908C  C0 3F 01 A8 */	lfs f1, 0x1a8(r31)
/* 80769090  4B BB F3 9D */	bl checkPass__12J3DFrameCtrlFf
/* 80769094  2C 03 00 00 */	cmpwi r3, 0
/* 80769098  41 82 02 74 */	beq lbl_8076930C
/* 8076909C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007057D@ha */
/* 807690A0  38 03 05 7D */	addi r0, r3, 0x057D /* 0x0007057D@l */
/* 807690A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 807690A8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807690AC  38 81 00 20 */	addi r4, r1, 0x20
/* 807690B0  38 A0 FF FF */	li r5, -1
/* 807690B4  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807690B8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807690BC  7D 89 03 A6 */	mtctr r12
/* 807690C0  4E 80 04 21 */	bctrl 
/* 807690C4  48 00 02 48 */	b lbl_8076930C
lbl_807690C8:
/* 807690C8  2C 00 00 1F */	cmpwi r0, 0x1f
/* 807690CC  40 82 01 04 */	bne lbl_807691D0
/* 807690D0  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 807690D4  38 63 00 0C */	addi r3, r3, 0xc
/* 807690D8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807690DC  4B BB F3 51 */	bl checkPass__12J3DFrameCtrlFf
/* 807690E0  2C 03 00 00 */	cmpwi r3, 0
/* 807690E4  41 82 00 5C */	beq lbl_80769140
/* 807690E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070570@ha */
/* 807690EC  38 03 05 70 */	addi r0, r3, 0x0570 /* 0x00070570@l */
/* 807690F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807690F4  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807690F8  38 81 00 1C */	addi r4, r1, 0x1c
/* 807690FC  38 A0 FF FF */	li r5, -1
/* 80769100  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80769104  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80769108  7D 89 03 A6 */	mtctr r12
/* 8076910C  4E 80 04 21 */	bctrl 
/* 80769110  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070571@ha */
/* 80769114  38 03 05 71 */	addi r0, r3, 0x0571 /* 0x00070571@l */
/* 80769118  90 01 00 18 */	stw r0, 0x18(r1)
/* 8076911C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80769120  38 81 00 18 */	addi r4, r1, 0x18
/* 80769124  38 A0 00 00 */	li r5, 0
/* 80769128  38 C0 FF FF */	li r6, -1
/* 8076912C  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80769130  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80769134  7D 89 03 A6 */	mtctr r12
/* 80769138  4E 80 04 21 */	bctrl 
/* 8076913C  48 00 01 D0 */	b lbl_8076930C
lbl_80769140:
/* 80769140  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80769144  38 63 00 0C */	addi r3, r3, 0xc
/* 80769148  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 8076914C  4B BB F2 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 80769150  2C 03 00 00 */	cmpwi r3, 0
/* 80769154  40 82 00 4C */	bne lbl_807691A0
/* 80769158  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8076915C  38 63 00 0C */	addi r3, r3, 0xc
/* 80769160  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 80769164  4B BB F2 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80769168  2C 03 00 00 */	cmpwi r3, 0
/* 8076916C  40 82 00 34 */	bne lbl_807691A0
/* 80769170  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80769174  38 63 00 0C */	addi r3, r3, 0xc
/* 80769178  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 8076917C  4B BB F2 B1 */	bl checkPass__12J3DFrameCtrlFf
/* 80769180  2C 03 00 00 */	cmpwi r3, 0
/* 80769184  40 82 00 1C */	bne lbl_807691A0
/* 80769188  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8076918C  38 63 00 0C */	addi r3, r3, 0xc
/* 80769190  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80769194  4B BB F2 99 */	bl checkPass__12J3DFrameCtrlFf
/* 80769198  2C 03 00 00 */	cmpwi r3, 0
/* 8076919C  41 82 01 70 */	beq lbl_8076930C
lbl_807691A0:
/* 807691A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070576@ha */
/* 807691A4  38 03 05 76 */	addi r0, r3, 0x0576 /* 0x00070576@l */
/* 807691A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807691AC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807691B0  38 81 00 14 */	addi r4, r1, 0x14
/* 807691B4  38 A0 00 00 */	li r5, 0
/* 807691B8  38 C0 FF FF */	li r6, -1
/* 807691BC  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807691C0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807691C4  7D 89 03 A6 */	mtctr r12
/* 807691C8  4E 80 04 21 */	bctrl 
/* 807691CC  48 00 01 40 */	b lbl_8076930C
lbl_807691D0:
/* 807691D0  2C 00 00 15 */	cmpwi r0, 0x15
/* 807691D4  40 82 00 48 */	bne lbl_8076921C
/* 807691D8  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 807691DC  38 63 00 0C */	addi r3, r3, 0xc
/* 807691E0  C0 3F 01 A8 */	lfs f1, 0x1a8(r31)
/* 807691E4  4B BB F2 49 */	bl checkPass__12J3DFrameCtrlFf
/* 807691E8  2C 03 00 00 */	cmpwi r3, 0
/* 807691EC  41 82 01 20 */	beq lbl_8076930C
/* 807691F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070573@ha */
/* 807691F4  38 03 05 73 */	addi r0, r3, 0x0573 /* 0x00070573@l */
/* 807691F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807691FC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80769200  38 81 00 10 */	addi r4, r1, 0x10
/* 80769204  38 A0 FF FF */	li r5, -1
/* 80769208  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 8076920C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80769210  7D 89 03 A6 */	mtctr r12
/* 80769214  4E 80 04 21 */	bctrl 
/* 80769218  48 00 00 F4 */	b lbl_8076930C
lbl_8076921C:
/* 8076921C  2C 00 00 17 */	cmpwi r0, 0x17
/* 80769220  40 82 00 EC */	bne lbl_8076930C
/* 80769224  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80769228  38 63 00 0C */	addi r3, r3, 0xc
/* 8076922C  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 80769230  4B BB F1 FD */	bl checkPass__12J3DFrameCtrlFf
/* 80769234  2C 03 00 00 */	cmpwi r3, 0
/* 80769238  40 82 00 1C */	bne lbl_80769254
/* 8076923C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80769240  38 63 00 0C */	addi r3, r3, 0xc
/* 80769244  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 80769248  4B BB F1 E5 */	bl checkPass__12J3DFrameCtrlFf
/* 8076924C  2C 03 00 00 */	cmpwi r3, 0
/* 80769250  41 82 00 30 */	beq lbl_80769280
lbl_80769254:
/* 80769254  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070574@ha */
/* 80769258  38 03 05 74 */	addi r0, r3, 0x0574 /* 0x00070574@l */
/* 8076925C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80769260  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80769264  38 81 00 0C */	addi r4, r1, 0xc
/* 80769268  38 A0 FF FF */	li r5, -1
/* 8076926C  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80769270  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80769274  7D 89 03 A6 */	mtctr r12
/* 80769278  4E 80 04 21 */	bctrl 
/* 8076927C  48 00 00 90 */	b lbl_8076930C
lbl_80769280:
/* 80769280  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80769284  38 63 00 0C */	addi r3, r3, 0xc
/* 80769288  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8076928C  4B BB F1 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 80769290  2C 03 00 00 */	cmpwi r3, 0
/* 80769294  40 82 00 4C */	bne lbl_807692E0
/* 80769298  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8076929C  38 63 00 0C */	addi r3, r3, 0xc
/* 807692A0  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 807692A4  4B BB F1 89 */	bl checkPass__12J3DFrameCtrlFf
/* 807692A8  2C 03 00 00 */	cmpwi r3, 0
/* 807692AC  40 82 00 34 */	bne lbl_807692E0
/* 807692B0  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 807692B4  38 63 00 0C */	addi r3, r3, 0xc
/* 807692B8  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 807692BC  4B BB F1 71 */	bl checkPass__12J3DFrameCtrlFf
/* 807692C0  2C 03 00 00 */	cmpwi r3, 0
/* 807692C4  40 82 00 1C */	bne lbl_807692E0
/* 807692C8  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 807692CC  38 63 00 0C */	addi r3, r3, 0xc
/* 807692D0  C0 3F 01 CC */	lfs f1, 0x1cc(r31)
/* 807692D4  4B BB F1 59 */	bl checkPass__12J3DFrameCtrlFf
/* 807692D8  2C 03 00 00 */	cmpwi r3, 0
/* 807692DC  41 82 00 30 */	beq lbl_8076930C
lbl_807692E0:
/* 807692E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070575@ha */
/* 807692E4  38 03 05 75 */	addi r0, r3, 0x0575 /* 0x00070575@l */
/* 807692E8  90 01 00 08 */	stw r0, 8(r1)
/* 807692EC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807692F0  38 81 00 08 */	addi r4, r1, 8
/* 807692F4  38 A0 00 00 */	li r5, 0
/* 807692F8  38 C0 FF FF */	li r6, -1
/* 807692FC  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 80769300  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80769304  7D 89 03 A6 */	mtctr r12
/* 80769308  4E 80 04 21 */	bctrl 
lbl_8076930C:
/* 8076930C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80769310  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80769314  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80769318  7C 08 03 A6 */	mtlr r0
/* 8076931C  38 21 00 70 */	addi r1, r1, 0x70
/* 80769320  4E 80 00 20 */	blr 
