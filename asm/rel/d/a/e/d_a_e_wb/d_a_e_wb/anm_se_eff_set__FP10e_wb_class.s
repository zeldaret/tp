lbl_807DFB18:
/* 807DFB18  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807DFB1C  7C 08 02 A6 */	mflr r0
/* 807DFB20  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807DFB24  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807DFB28  4B B8 26 AC */	b _savegpr_27
/* 807DFB2C  7C 7E 1B 78 */	mr r30, r3
/* 807DFB30  3C 60 80 7E */	lis r3, lit_3882@ha
/* 807DFB34  3B E3 29 8C */	addi r31, r3, lit_3882@l
/* 807DFB38  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807DFB3C  83 63 00 04 */	lwz r27, 4(r3)
/* 807DFB40  80 1E 05 E8 */	lwz r0, 0x5e8(r30)
/* 807DFB44  2C 00 00 0C */	cmpwi r0, 0xc
/* 807DFB48  41 82 00 0C */	beq lbl_807DFB54
/* 807DFB4C  2C 00 00 0D */	cmpwi r0, 0xd
/* 807DFB50  40 82 00 50 */	bne lbl_807DFBA0
lbl_807DFB54:
/* 807DFB54  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFB58  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 807DFB5C  4B B4 88 D0 */	b checkPass__12J3DFrameCtrlFf
/* 807DFB60  2C 03 00 00 */	cmpwi r3, 0
/* 807DFB64  41 82 06 C8 */	beq lbl_807E022C
/* 807DFB68  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002D@ha */
/* 807DFB6C  38 03 00 2D */	addi r0, r3, 0x002D /* 0x0006002D@l */
/* 807DFB70  90 01 00 78 */	stw r0, 0x78(r1)
/* 807DFB74  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFB78  38 81 00 78 */	addi r4, r1, 0x78
/* 807DFB7C  38 A0 00 00 */	li r5, 0
/* 807DFB80  38 C0 FF FF */	li r6, -1
/* 807DFB84  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807DFB88  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807DFB8C  7D 89 03 A6 */	mtctr r12
/* 807DFB90  4E 80 04 21 */	bctrl 
/* 807DFB94  38 00 00 01 */	li r0, 1
/* 807DFB98  98 1E 17 21 */	stb r0, 0x1721(r30)
/* 807DFB9C  48 00 06 90 */	b lbl_807E022C
lbl_807DFBA0:
/* 807DFBA0  2C 00 00 26 */	cmpwi r0, 0x26
/* 807DFBA4  40 82 01 60 */	bne lbl_807DFD04
/* 807DFBA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807DFBAC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 807DFBB0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807DFBB4  38 00 00 FF */	li r0, 0xff
/* 807DFBB8  90 01 00 08 */	stw r0, 8(r1)
/* 807DFBBC  38 80 00 00 */	li r4, 0
/* 807DFBC0  90 81 00 0C */	stw r4, 0xc(r1)
/* 807DFBC4  38 00 FF FF */	li r0, -1
/* 807DFBC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807DFBCC  90 81 00 14 */	stw r4, 0x14(r1)
/* 807DFBD0  90 81 00 18 */	stw r4, 0x18(r1)
/* 807DFBD4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807DFBD8  80 9E 17 C4 */	lwz r4, 0x17c4(r30)
/* 807DFBDC  38 A0 00 00 */	li r5, 0
/* 807DFBE0  3C C0 00 01 */	lis r6, 0x0001 /* 0x000082C6@ha */
/* 807DFBE4  38 C6 82 C6 */	addi r6, r6, 0x82C6 /* 0x000082C6@l */
/* 807DFBE8  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 807DFBEC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807DFBF0  39 20 00 00 */	li r9, 0
/* 807DFBF4  39 40 00 00 */	li r10, 0
/* 807DFBF8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807DFBFC  4B 86 D8 D0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807DFC00  90 7E 17 C4 */	stw r3, 0x17c4(r30)
/* 807DFC04  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807DFC08  38 63 02 10 */	addi r3, r3, 0x210
/* 807DFC0C  80 9E 17 C4 */	lwz r4, 0x17c4(r30)
/* 807DFC10  4B 86 BD 08 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 807DFC14  7C 7D 1B 79 */	or. r29, r3, r3
/* 807DFC18  41 82 00 30 */	beq lbl_807DFC48
/* 807DFC1C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 807DFC20  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807DFC24  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 807DFC28  38 9D 00 68 */	addi r4, r29, 0x68
/* 807DFC2C  38 BD 00 98 */	addi r5, r29, 0x98
/* 807DFC30  38 DD 00 A4 */	addi r6, r29, 0xa4
/* 807DFC34  4B AA 0B D4 */	b func_80280808
/* 807DFC38  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 807DFC3C  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 807DFC40  D0 1D 00 B0 */	stfs f0, 0xb0(r29)
/* 807DFC44  D0 3D 00 B4 */	stfs f1, 0xb4(r29)
lbl_807DFC48:
/* 807DFC48  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807DFC4C  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFC50  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807DFC54  4B B4 87 D8 */	b checkPass__12J3DFrameCtrlFf
/* 807DFC58  2C 03 00 00 */	cmpwi r3, 0
/* 807DFC5C  41 82 05 D0 */	beq lbl_807E022C
/* 807DFC60  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 807DFC64  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807DFC68  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807DFC6C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807DFC70  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807DFC74  38 80 00 00 */	li r4, 0
/* 807DFC78  90 81 00 08 */	stw r4, 8(r1)
/* 807DFC7C  38 00 FF FF */	li r0, -1
/* 807DFC80  90 01 00 0C */	stw r0, 0xc(r1)
/* 807DFC84  90 81 00 10 */	stw r4, 0x10(r1)
/* 807DFC88  90 81 00 14 */	stw r4, 0x14(r1)
/* 807DFC8C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807DFC90  38 80 00 00 */	li r4, 0
/* 807DFC94  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082C4@ha */
/* 807DFC98  38 A5 82 C4 */	addi r5, r5, 0x82C4 /* 0x000082C4@l */
/* 807DFC9C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 807DFCA0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807DFCA4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807DFCA8  39 21 00 7C */	addi r9, r1, 0x7c
/* 807DFCAC  39 40 00 FF */	li r10, 0xff
/* 807DFCB0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807DFCB4  4B 86 CD DC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807DFCB8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807DFCBC  38 80 00 00 */	li r4, 0
/* 807DFCC0  90 81 00 08 */	stw r4, 8(r1)
/* 807DFCC4  38 00 FF FF */	li r0, -1
/* 807DFCC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807DFCCC  90 81 00 10 */	stw r4, 0x10(r1)
/* 807DFCD0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807DFCD4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807DFCD8  38 80 00 00 */	li r4, 0
/* 807DFCDC  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082C5@ha */
/* 807DFCE0  38 A5 82 C5 */	addi r5, r5, 0x82C5 /* 0x000082C5@l */
/* 807DFCE4  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 807DFCE8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807DFCEC  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807DFCF0  39 21 00 7C */	addi r9, r1, 0x7c
/* 807DFCF4  39 40 00 FF */	li r10, 0xff
/* 807DFCF8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807DFCFC  4B 86 CD 94 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807DFD00  48 00 05 2C */	b lbl_807E022C
lbl_807DFD04:
/* 807DFD04  2C 00 00 05 */	cmpwi r0, 5
/* 807DFD08  40 82 00 B8 */	bne lbl_807DFDC0
/* 807DFD0C  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFD10  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807DFD14  4B B4 87 18 */	b checkPass__12J3DFrameCtrlFf
/* 807DFD18  2C 03 00 00 */	cmpwi r3, 0
/* 807DFD1C  41 82 00 5C */	beq lbl_807DFD78
/* 807DFD20  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050080@ha */
/* 807DFD24  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00050080@l */
/* 807DFD28  90 01 00 74 */	stw r0, 0x74(r1)
/* 807DFD2C  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFD30  38 81 00 74 */	addi r4, r1, 0x74
/* 807DFD34  38 A0 FF FF */	li r5, -1
/* 807DFD38  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807DFD3C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807DFD40  7D 89 03 A6 */	mtctr r12
/* 807DFD44  4E 80 04 21 */	bctrl 
/* 807DFD48  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070170@ha */
/* 807DFD4C  38 03 01 70 */	addi r0, r3, 0x0170 /* 0x00070170@l */
/* 807DFD50  90 01 00 70 */	stw r0, 0x70(r1)
/* 807DFD54  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFD58  38 81 00 70 */	addi r4, r1, 0x70
/* 807DFD5C  38 A0 00 00 */	li r5, 0
/* 807DFD60  38 C0 FF FF */	li r6, -1
/* 807DFD64  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807DFD68  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807DFD6C  7D 89 03 A6 */	mtctr r12
/* 807DFD70  4E 80 04 21 */	bctrl 
/* 807DFD74  48 00 04 B8 */	b lbl_807E022C
lbl_807DFD78:
/* 807DFD78  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807DFD7C  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFD80  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807DFD84  4B B4 86 A8 */	b checkPass__12J3DFrameCtrlFf
/* 807DFD88  2C 03 00 00 */	cmpwi r3, 0
/* 807DFD8C  41 82 04 A0 */	beq lbl_807E022C
/* 807DFD90  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002D@ha */
/* 807DFD94  38 03 00 2D */	addi r0, r3, 0x002D /* 0x0006002D@l */
/* 807DFD98  90 01 00 6C */	stw r0, 0x6c(r1)
/* 807DFD9C  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFDA0  38 81 00 6C */	addi r4, r1, 0x6c
/* 807DFDA4  38 A0 00 00 */	li r5, 0
/* 807DFDA8  38 C0 FF FF */	li r6, -1
/* 807DFDAC  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807DFDB0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807DFDB4  7D 89 03 A6 */	mtctr r12
/* 807DFDB8  4E 80 04 21 */	bctrl 
/* 807DFDBC  48 00 04 70 */	b lbl_807E022C
lbl_807DFDC0:
/* 807DFDC0  2C 00 00 06 */	cmpwi r0, 6
/* 807DFDC4  40 82 00 44 */	bne lbl_807DFE08
/* 807DFDC8  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFDCC  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807DFDD0  4B B4 86 5C */	b checkPass__12J3DFrameCtrlFf
/* 807DFDD4  2C 03 00 00 */	cmpwi r3, 0
/* 807DFDD8  41 82 04 54 */	beq lbl_807E022C
/* 807DFDDC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050082@ha */
/* 807DFDE0  38 03 00 82 */	addi r0, r3, 0x0082 /* 0x00050082@l */
/* 807DFDE4  90 01 00 68 */	stw r0, 0x68(r1)
/* 807DFDE8  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFDEC  38 81 00 68 */	addi r4, r1, 0x68
/* 807DFDF0  38 A0 FF FF */	li r5, -1
/* 807DFDF4  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807DFDF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807DFDFC  7D 89 03 A6 */	mtctr r12
/* 807DFE00  4E 80 04 21 */	bctrl 
/* 807DFE04  48 00 04 28 */	b lbl_807E022C
lbl_807DFE08:
/* 807DFE08  2C 00 00 07 */	cmpwi r0, 7
/* 807DFE0C  40 82 00 5C */	bne lbl_807DFE68
/* 807DFE10  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFE14  C0 3F 02 F0 */	lfs f1, 0x2f0(r31)
/* 807DFE18  4B B4 86 14 */	b checkPass__12J3DFrameCtrlFf
/* 807DFE1C  2C 03 00 00 */	cmpwi r3, 0
/* 807DFE20  40 82 00 1C */	bne lbl_807DFE3C
/* 807DFE24  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807DFE28  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFE2C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 807DFE30  4B B4 85 FC */	b checkPass__12J3DFrameCtrlFf
/* 807DFE34  2C 03 00 00 */	cmpwi r3, 0
/* 807DFE38  41 82 03 F4 */	beq lbl_807E022C
lbl_807DFE3C:
/* 807DFE3C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007F@ha */
/* 807DFE40  38 03 00 7F */	addi r0, r3, 0x007F /* 0x0005007F@l */
/* 807DFE44  90 01 00 64 */	stw r0, 0x64(r1)
/* 807DFE48  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFE4C  38 81 00 64 */	addi r4, r1, 0x64
/* 807DFE50  38 A0 FF FF */	li r5, -1
/* 807DFE54  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807DFE58  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807DFE5C  7D 89 03 A6 */	mtctr r12
/* 807DFE60  4E 80 04 21 */	bctrl 
/* 807DFE64  48 00 03 C8 */	b lbl_807E022C
lbl_807DFE68:
/* 807DFE68  2C 00 00 08 */	cmpwi r0, 8
/* 807DFE6C  40 82 00 44 */	bne lbl_807DFEB0
/* 807DFE70  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFE74  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 807DFE78  4B B4 85 B4 */	b checkPass__12J3DFrameCtrlFf
/* 807DFE7C  2C 03 00 00 */	cmpwi r3, 0
/* 807DFE80  41 82 03 AC */	beq lbl_807E022C
/* 807DFE84  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007E@ha */
/* 807DFE88  38 03 00 7E */	addi r0, r3, 0x007E /* 0x0005007E@l */
/* 807DFE8C  90 01 00 60 */	stw r0, 0x60(r1)
/* 807DFE90  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFE94  38 81 00 60 */	addi r4, r1, 0x60
/* 807DFE98  38 A0 FF FF */	li r5, -1
/* 807DFE9C  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807DFEA0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807DFEA4  7D 89 03 A6 */	mtctr r12
/* 807DFEA8  4E 80 04 21 */	bctrl 
/* 807DFEAC  48 00 03 80 */	b lbl_807E022C
lbl_807DFEB0:
/* 807DFEB0  2C 00 00 0C */	cmpwi r0, 0xc
/* 807DFEB4  40 82 00 44 */	bne lbl_807DFEF8
/* 807DFEB8  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFEBC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807DFEC0  4B B4 85 6C */	b checkPass__12J3DFrameCtrlFf
/* 807DFEC4  2C 03 00 00 */	cmpwi r3, 0
/* 807DFEC8  41 82 03 64 */	beq lbl_807E022C
/* 807DFECC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050081@ha */
/* 807DFED0  38 03 00 81 */	addi r0, r3, 0x0081 /* 0x00050081@l */
/* 807DFED4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 807DFED8  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFEDC  38 81 00 5C */	addi r4, r1, 0x5c
/* 807DFEE0  38 A0 FF FF */	li r5, -1
/* 807DFEE4  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807DFEE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807DFEEC  7D 89 03 A6 */	mtctr r12
/* 807DFEF0  4E 80 04 21 */	bctrl 
/* 807DFEF4  48 00 03 38 */	b lbl_807E022C
lbl_807DFEF8:
/* 807DFEF8  2C 00 00 0D */	cmpwi r0, 0xd
/* 807DFEFC  40 82 00 44 */	bne lbl_807DFF40
/* 807DFF00  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFF04  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807DFF08  4B B4 85 24 */	b checkPass__12J3DFrameCtrlFf
/* 807DFF0C  2C 03 00 00 */	cmpwi r3, 0
/* 807DFF10  41 82 03 1C */	beq lbl_807E022C
/* 807DFF14  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050081@ha */
/* 807DFF18  38 03 00 81 */	addi r0, r3, 0x0081 /* 0x00050081@l */
/* 807DFF1C  90 01 00 58 */	stw r0, 0x58(r1)
/* 807DFF20  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFF24  38 81 00 58 */	addi r4, r1, 0x58
/* 807DFF28  38 A0 FF FF */	li r5, -1
/* 807DFF2C  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807DFF30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807DFF34  7D 89 03 A6 */	mtctr r12
/* 807DFF38  4E 80 04 21 */	bctrl 
/* 807DFF3C  48 00 02 F0 */	b lbl_807E022C
lbl_807DFF40:
/* 807DFF40  2C 00 00 10 */	cmpwi r0, 0x10
/* 807DFF44  40 82 00 44 */	bne lbl_807DFF88
/* 807DFF48  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFF4C  C0 3F 02 68 */	lfs f1, 0x268(r31)
/* 807DFF50  4B B4 84 DC */	b checkPass__12J3DFrameCtrlFf
/* 807DFF54  2C 03 00 00 */	cmpwi r3, 0
/* 807DFF58  41 82 02 D4 */	beq lbl_807E022C
/* 807DFF5C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007F@ha */
/* 807DFF60  38 03 00 7F */	addi r0, r3, 0x007F /* 0x0005007F@l */
/* 807DFF64  90 01 00 54 */	stw r0, 0x54(r1)
/* 807DFF68  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFF6C  38 81 00 54 */	addi r4, r1, 0x54
/* 807DFF70  38 A0 FF FF */	li r5, -1
/* 807DFF74  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807DFF78  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807DFF7C  7D 89 03 A6 */	mtctr r12
/* 807DFF80  4E 80 04 21 */	bctrl 
/* 807DFF84  48 00 02 A8 */	b lbl_807E022C
lbl_807DFF88:
/* 807DFF88  2C 00 00 11 */	cmpwi r0, 0x11
/* 807DFF8C  40 82 00 44 */	bne lbl_807DFFD0
/* 807DFF90  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFF94  C0 3F 05 44 */	lfs f1, 0x544(r31)
/* 807DFF98  4B B4 84 94 */	b checkPass__12J3DFrameCtrlFf
/* 807DFF9C  2C 03 00 00 */	cmpwi r3, 0
/* 807DFFA0  41 82 02 8C */	beq lbl_807E022C
/* 807DFFA4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007F@ha */
/* 807DFFA8  38 03 00 7F */	addi r0, r3, 0x007F /* 0x0005007F@l */
/* 807DFFAC  90 01 00 50 */	stw r0, 0x50(r1)
/* 807DFFB0  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFFB4  38 81 00 50 */	addi r4, r1, 0x50
/* 807DFFB8  38 A0 FF FF */	li r5, -1
/* 807DFFBC  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807DFFC0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807DFFC4  7D 89 03 A6 */	mtctr r12
/* 807DFFC8  4E 80 04 21 */	bctrl 
/* 807DFFCC  48 00 02 60 */	b lbl_807E022C
lbl_807DFFD0:
/* 807DFFD0  2C 00 00 09 */	cmpwi r0, 9
/* 807DFFD4  40 82 00 44 */	bne lbl_807E0018
/* 807DFFD8  38 63 00 0C */	addi r3, r3, 0xc
/* 807DFFDC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807DFFE0  4B B4 84 4C */	b checkPass__12J3DFrameCtrlFf
/* 807DFFE4  2C 03 00 00 */	cmpwi r3, 0
/* 807DFFE8  41 82 02 44 */	beq lbl_807E022C
/* 807DFFEC  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007D@ha */
/* 807DFFF0  38 03 00 7D */	addi r0, r3, 0x007D /* 0x0005007D@l */
/* 807DFFF4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 807DFFF8  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807DFFFC  38 81 00 4C */	addi r4, r1, 0x4c
/* 807E0000  38 A0 FF FF */	li r5, -1
/* 807E0004  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E0008  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E000C  7D 89 03 A6 */	mtctr r12
/* 807E0010  4E 80 04 21 */	bctrl 
/* 807E0014  48 00 02 18 */	b lbl_807E022C
lbl_807E0018:
/* 807E0018  2C 00 00 1B */	cmpwi r0, 0x1b
/* 807E001C  40 82 00 44 */	bne lbl_807E0060
/* 807E0020  38 63 00 0C */	addi r3, r3, 0xc
/* 807E0024  C0 3F 05 48 */	lfs f1, 0x548(r31)
/* 807E0028  4B B4 84 04 */	b checkPass__12J3DFrameCtrlFf
/* 807E002C  2C 03 00 00 */	cmpwi r3, 0
/* 807E0030  41 82 01 FC */	beq lbl_807E022C
/* 807E0034  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007C@ha */
/* 807E0038  38 03 00 7C */	addi r0, r3, 0x007C /* 0x0005007C@l */
/* 807E003C  90 01 00 48 */	stw r0, 0x48(r1)
/* 807E0040  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807E0044  38 81 00 48 */	addi r4, r1, 0x48
/* 807E0048  38 A0 FF FF */	li r5, -1
/* 807E004C  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E0050  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E0054  7D 89 03 A6 */	mtctr r12
/* 807E0058  4E 80 04 21 */	bctrl 
/* 807E005C  48 00 01 D0 */	b lbl_807E022C
lbl_807E0060:
/* 807E0060  2C 00 00 1F */	cmpwi r0, 0x1f
/* 807E0064  40 82 00 44 */	bne lbl_807E00A8
/* 807E0068  38 63 00 0C */	addi r3, r3, 0xc
/* 807E006C  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807E0070  4B B4 83 BC */	b checkPass__12J3DFrameCtrlFf
/* 807E0074  2C 03 00 00 */	cmpwi r3, 0
/* 807E0078  41 82 01 B4 */	beq lbl_807E022C
/* 807E007C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050083@ha */
/* 807E0080  38 03 00 83 */	addi r0, r3, 0x0083 /* 0x00050083@l */
/* 807E0084  90 01 00 44 */	stw r0, 0x44(r1)
/* 807E0088  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807E008C  38 81 00 44 */	addi r4, r1, 0x44
/* 807E0090  38 A0 FF FF */	li r5, -1
/* 807E0094  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E0098  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E009C  7D 89 03 A6 */	mtctr r12
/* 807E00A0  4E 80 04 21 */	bctrl 
/* 807E00A4  48 00 01 88 */	b lbl_807E022C
lbl_807E00A8:
/* 807E00A8  2C 00 00 20 */	cmpwi r0, 0x20
/* 807E00AC  41 82 00 0C */	beq lbl_807E00B8
/* 807E00B0  2C 00 00 21 */	cmpwi r0, 0x21
/* 807E00B4  40 82 00 5C */	bne lbl_807E0110
lbl_807E00B8:
/* 807E00B8  38 63 00 0C */	addi r3, r3, 0xc
/* 807E00BC  C0 3F 05 4C */	lfs f1, 0x54c(r31)
/* 807E00C0  4B B4 83 6C */	b checkPass__12J3DFrameCtrlFf
/* 807E00C4  2C 03 00 00 */	cmpwi r3, 0
/* 807E00C8  40 82 00 1C */	bne lbl_807E00E4
/* 807E00CC  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807E00D0  38 63 00 0C */	addi r3, r3, 0xc
/* 807E00D4  C0 3F 05 50 */	lfs f1, 0x550(r31)
/* 807E00D8  4B B4 83 54 */	b checkPass__12J3DFrameCtrlFf
/* 807E00DC  2C 03 00 00 */	cmpwi r3, 0
/* 807E00E0  41 82 01 4C */	beq lbl_807E022C
lbl_807E00E4:
/* 807E00E4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007F@ha */
/* 807E00E8  38 03 00 7F */	addi r0, r3, 0x007F /* 0x0005007F@l */
/* 807E00EC  90 01 00 40 */	stw r0, 0x40(r1)
/* 807E00F0  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807E00F4  38 81 00 40 */	addi r4, r1, 0x40
/* 807E00F8  38 A0 FF FF */	li r5, -1
/* 807E00FC  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E0100  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E0104  7D 89 03 A6 */	mtctr r12
/* 807E0108  4E 80 04 21 */	bctrl 
/* 807E010C  48 00 01 20 */	b lbl_807E022C
lbl_807E0110:
/* 807E0110  2C 00 00 22 */	cmpwi r0, 0x22
/* 807E0114  40 82 00 44 */	bne lbl_807E0158
/* 807E0118  38 63 00 0C */	addi r3, r3, 0xc
/* 807E011C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807E0120  4B B4 83 0C */	b checkPass__12J3DFrameCtrlFf
/* 807E0124  2C 03 00 00 */	cmpwi r3, 0
/* 807E0128  41 82 01 04 */	beq lbl_807E022C
/* 807E012C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007D@ha */
/* 807E0130  38 03 00 7D */	addi r0, r3, 0x007D /* 0x0005007D@l */
/* 807E0134  90 01 00 3C */	stw r0, 0x3c(r1)
/* 807E0138  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807E013C  38 81 00 3C */	addi r4, r1, 0x3c
/* 807E0140  38 A0 FF FF */	li r5, -1
/* 807E0144  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E0148  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E014C  7D 89 03 A6 */	mtctr r12
/* 807E0150  4E 80 04 21 */	bctrl 
/* 807E0154  48 00 00 D8 */	b lbl_807E022C
lbl_807E0158:
/* 807E0158  2C 00 00 28 */	cmpwi r0, 0x28
/* 807E015C  40 82 00 44 */	bne lbl_807E01A0
/* 807E0160  38 63 00 0C */	addi r3, r3, 0xc
/* 807E0164  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 807E0168  4B B4 82 C4 */	b checkPass__12J3DFrameCtrlFf
/* 807E016C  2C 03 00 00 */	cmpwi r3, 0
/* 807E0170  41 82 00 BC */	beq lbl_807E022C
/* 807E0174  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007F@ha */
/* 807E0178  38 03 00 7F */	addi r0, r3, 0x007F /* 0x0005007F@l */
/* 807E017C  90 01 00 38 */	stw r0, 0x38(r1)
/* 807E0180  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807E0184  38 81 00 38 */	addi r4, r1, 0x38
/* 807E0188  38 A0 FF FF */	li r5, -1
/* 807E018C  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E0190  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E0194  7D 89 03 A6 */	mtctr r12
/* 807E0198  4E 80 04 21 */	bctrl 
/* 807E019C  48 00 00 90 */	b lbl_807E022C
lbl_807E01A0:
/* 807E01A0  2C 00 00 2A */	cmpwi r0, 0x2a
/* 807E01A4  40 82 00 44 */	bne lbl_807E01E8
/* 807E01A8  38 63 00 0C */	addi r3, r3, 0xc
/* 807E01AC  C0 3F 01 F4 */	lfs f1, 0x1f4(r31)
/* 807E01B0  4B B4 82 7C */	b checkPass__12J3DFrameCtrlFf
/* 807E01B4  2C 03 00 00 */	cmpwi r3, 0
/* 807E01B8  41 82 00 74 */	beq lbl_807E022C
/* 807E01BC  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007F@ha */
/* 807E01C0  38 03 00 7F */	addi r0, r3, 0x007F /* 0x0005007F@l */
/* 807E01C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E01C8  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807E01CC  38 81 00 34 */	addi r4, r1, 0x34
/* 807E01D0  38 A0 FF FF */	li r5, -1
/* 807E01D4  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E01D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E01DC  7D 89 03 A6 */	mtctr r12
/* 807E01E0  4E 80 04 21 */	bctrl 
/* 807E01E4  48 00 00 48 */	b lbl_807E022C
lbl_807E01E8:
/* 807E01E8  2C 00 00 2B */	cmpwi r0, 0x2b
/* 807E01EC  40 82 00 40 */	bne lbl_807E022C
/* 807E01F0  38 63 00 0C */	addi r3, r3, 0xc
/* 807E01F4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807E01F8  4B B4 82 34 */	b checkPass__12J3DFrameCtrlFf
/* 807E01FC  2C 03 00 00 */	cmpwi r3, 0
/* 807E0200  41 82 00 2C */	beq lbl_807E022C
/* 807E0204  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007F@ha */
/* 807E0208  38 03 00 7F */	addi r0, r3, 0x007F /* 0x0005007F@l */
/* 807E020C  90 01 00 30 */	stw r0, 0x30(r1)
/* 807E0210  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807E0214  38 81 00 30 */	addi r4, r1, 0x30
/* 807E0218  38 A0 FF FF */	li r5, -1
/* 807E021C  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E0220  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E0224  7D 89 03 A6 */	mtctr r12
/* 807E0228  4E 80 04 21 */	bctrl 
lbl_807E022C:
/* 807E022C  88 1E 07 9D */	lbz r0, 0x79d(r30)
/* 807E0230  7C 00 07 75 */	extsb. r0, r0
/* 807E0234  41 82 01 3C */	beq lbl_807E0370
/* 807E0238  80 1E 05 E8 */	lwz r0, 0x5e8(r30)
/* 807E023C  2C 00 00 20 */	cmpwi r0, 0x20
/* 807E0240  41 82 00 0C */	beq lbl_807E024C
/* 807E0244  2C 00 00 21 */	cmpwi r0, 0x21
/* 807E0248  40 82 00 48 */	bne lbl_807E0290
lbl_807E024C:
/* 807E024C  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807E0250  38 63 00 0C */	addi r3, r3, 0xc
/* 807E0254  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 807E0258  4B B4 81 D4 */	b checkPass__12J3DFrameCtrlFf
/* 807E025C  2C 03 00 00 */	cmpwi r3, 0
/* 807E0260  41 82 01 10 */	beq lbl_807E0370
/* 807E0264  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070130@ha */
/* 807E0268  38 03 01 30 */	addi r0, r3, 0x0130 /* 0x00070130@l */
/* 807E026C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807E0270  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807E0274  38 81 00 2C */	addi r4, r1, 0x2c
/* 807E0278  38 A0 FF FF */	li r5, -1
/* 807E027C  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E0280  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E0284  7D 89 03 A6 */	mtctr r12
/* 807E0288  4E 80 04 21 */	bctrl 
/* 807E028C  48 00 00 E4 */	b lbl_807E0370
lbl_807E0290:
/* 807E0290  2C 00 00 2B */	cmpwi r0, 0x2b
/* 807E0294  40 82 00 48 */	bne lbl_807E02DC
/* 807E0298  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807E029C  38 63 00 0C */	addi r3, r3, 0xc
/* 807E02A0  C0 3F 05 48 */	lfs f1, 0x548(r31)
/* 807E02A4  4B B4 81 88 */	b checkPass__12J3DFrameCtrlFf
/* 807E02A8  2C 03 00 00 */	cmpwi r3, 0
/* 807E02AC  41 82 00 C4 */	beq lbl_807E0370
/* 807E02B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070130@ha */
/* 807E02B4  38 03 01 30 */	addi r0, r3, 0x0130 /* 0x00070130@l */
/* 807E02B8  90 01 00 28 */	stw r0, 0x28(r1)
/* 807E02BC  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807E02C0  38 81 00 28 */	addi r4, r1, 0x28
/* 807E02C4  38 A0 FF FF */	li r5, -1
/* 807E02C8  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E02CC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E02D0  7D 89 03 A6 */	mtctr r12
/* 807E02D4  4E 80 04 21 */	bctrl 
/* 807E02D8  48 00 00 98 */	b lbl_807E0370
lbl_807E02DC:
/* 807E02DC  2C 00 00 2A */	cmpwi r0, 0x2a
/* 807E02E0  40 82 00 48 */	bne lbl_807E0328
/* 807E02E4  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807E02E8  38 63 00 0C */	addi r3, r3, 0xc
/* 807E02EC  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 807E02F0  4B B4 81 3C */	b checkPass__12J3DFrameCtrlFf
/* 807E02F4  2C 03 00 00 */	cmpwi r3, 0
/* 807E02F8  41 82 00 78 */	beq lbl_807E0370
/* 807E02FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070130@ha */
/* 807E0300  38 03 01 30 */	addi r0, r3, 0x0130 /* 0x00070130@l */
/* 807E0304  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E0308  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807E030C  38 81 00 24 */	addi r4, r1, 0x24
/* 807E0310  38 A0 FF FF */	li r5, -1
/* 807E0314  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E0318  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E031C  7D 89 03 A6 */	mtctr r12
/* 807E0320  4E 80 04 21 */	bctrl 
/* 807E0324  48 00 00 4C */	b lbl_807E0370
lbl_807E0328:
/* 807E0328  2C 00 00 1B */	cmpwi r0, 0x1b
/* 807E032C  40 82 00 44 */	bne lbl_807E0370
/* 807E0330  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807E0334  38 63 00 0C */	addi r3, r3, 0xc
/* 807E0338  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 807E033C  4B B4 80 F0 */	b checkPass__12J3DFrameCtrlFf
/* 807E0340  2C 03 00 00 */	cmpwi r3, 0
/* 807E0344  41 82 00 2C */	beq lbl_807E0370
/* 807E0348  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070122@ha */
/* 807E034C  38 03 01 22 */	addi r0, r3, 0x0122 /* 0x00070122@l */
/* 807E0350  90 01 00 20 */	stw r0, 0x20(r1)
/* 807E0354  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807E0358  38 81 00 20 */	addi r4, r1, 0x20
/* 807E035C  38 A0 FF FF */	li r5, -1
/* 807E0360  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807E0364  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E0368  7D 89 03 A6 */	mtctr r12
/* 807E036C  4E 80 04 21 */	bctrl 
lbl_807E0370:
/* 807E0370  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807E0374  4B B8 1E AC */	b _restgpr_27
/* 807E0378  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807E037C  7C 08 03 A6 */	mtlr r0
/* 807E0380  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807E0384  4E 80 00 20 */	blr 
