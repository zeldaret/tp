lbl_80606AEC:
/* 80606AEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80606AF0  7C 08 02 A6 */	mflr r0
/* 80606AF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80606AF8  39 61 00 30 */	addi r11, r1, 0x30
/* 80606AFC  4B D5 B6 E0 */	b _savegpr_29
/* 80606B00  7C 7E 1B 78 */	mr r30, r3
/* 80606B04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80606B08  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80606B0C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80606B10  38 00 00 FF */	li r0, 0xff
/* 80606B14  90 01 00 08 */	stw r0, 8(r1)
/* 80606B18  38 80 00 00 */	li r4, 0
/* 80606B1C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80606B20  38 00 FF FF */	li r0, -1
/* 80606B24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80606B28  90 81 00 14 */	stw r4, 0x14(r1)
/* 80606B2C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80606B30  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80606B34  80 9E 26 1C */	lwz r4, 0x261c(r30)
/* 80606B38  38 A0 00 00 */	li r5, 0
/* 80606B3C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008C1D@ha */
/* 80606B40  38 C6 8C 1D */	addi r6, r6, 0x8C1D /* 0x00008C1D@l */
/* 80606B44  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80606B48  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80606B4C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80606B50  39 40 00 00 */	li r10, 0
/* 80606B54  3D 60 80 61 */	lis r11, lit_3930@ha
/* 80606B58  C0 2B FD E8 */	lfs f1, lit_3930@l(r11)
/* 80606B5C  4B A4 69 70 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80606B60  90 7E 26 1C */	stw r3, 0x261c(r30)
/* 80606B64  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80606B68  38 63 02 10 */	addi r3, r3, 0x210
/* 80606B6C  80 9E 26 1C */	lwz r4, 0x261c(r30)
/* 80606B70  4B A4 4D A8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80606B74  7C 7D 1B 79 */	or. r29, r3, r3
/* 80606B78  41 82 00 38 */	beq lbl_80606BB0
/* 80606B7C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80606B80  80 63 00 04 */	lwz r3, 4(r3)
/* 80606B84  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80606B88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80606B8C  38 63 05 10 */	addi r3, r3, 0x510
/* 80606B90  38 9D 00 68 */	addi r4, r29, 0x68
/* 80606B94  38 BD 00 98 */	addi r5, r29, 0x98
/* 80606B98  38 DD 00 A4 */	addi r6, r29, 0xa4
/* 80606B9C  4B C7 9C 6C */	b func_80280808
/* 80606BA0  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 80606BA4  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 80606BA8  D0 1D 00 B0 */	stfs f0, 0xb0(r29)
/* 80606BAC  D0 3D 00 B4 */	stfs f1, 0xb4(r29)
lbl_80606BB0:
/* 80606BB0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80606BB4  38 00 00 FF */	li r0, 0xff
/* 80606BB8  90 01 00 08 */	stw r0, 8(r1)
/* 80606BBC  38 80 00 00 */	li r4, 0
/* 80606BC0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80606BC4  38 00 FF FF */	li r0, -1
/* 80606BC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80606BCC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80606BD0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80606BD4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80606BD8  80 9E 26 20 */	lwz r4, 0x2620(r30)
/* 80606BDC  38 A0 00 00 */	li r5, 0
/* 80606BE0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008C1E@ha */
/* 80606BE4  38 C6 8C 1E */	addi r6, r6, 0x8C1E /* 0x00008C1E@l */
/* 80606BE8  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80606BEC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80606BF0  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80606BF4  39 40 00 00 */	li r10, 0
/* 80606BF8  3D 60 80 61 */	lis r11, lit_3930@ha
/* 80606BFC  C0 2B FD E8 */	lfs f1, lit_3930@l(r11)
/* 80606C00  4B A4 68 CC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80606C04  90 7E 26 20 */	stw r3, 0x2620(r30)
/* 80606C08  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80606C0C  38 63 02 10 */	addi r3, r3, 0x210
/* 80606C10  80 9E 26 20 */	lwz r4, 0x2620(r30)
/* 80606C14  4B A4 4D 04 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80606C18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80606C1C  41 82 00 38 */	beq lbl_80606C54
/* 80606C20  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80606C24  80 63 00 04 */	lwz r3, 4(r3)
/* 80606C28  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80606C2C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80606C30  38 63 05 10 */	addi r3, r3, 0x510
/* 80606C34  38 9F 00 68 */	addi r4, r31, 0x68
/* 80606C38  38 BF 00 98 */	addi r5, r31, 0x98
/* 80606C3C  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 80606C40  4B C7 9B C8 */	b func_80280808
/* 80606C44  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80606C48  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80606C4C  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 80606C50  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_80606C54:
/* 80606C54  39 61 00 30 */	addi r11, r1, 0x30
/* 80606C58  4B D5 B5 D0 */	b _restgpr_29
/* 80606C5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80606C60  7C 08 03 A6 */	mtlr r0
/* 80606C64  38 21 00 30 */	addi r1, r1, 0x30
/* 80606C68  4E 80 00 20 */	blr 
