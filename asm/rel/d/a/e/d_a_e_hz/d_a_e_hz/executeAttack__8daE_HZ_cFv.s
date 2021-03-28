lbl_806EBD44:
/* 806EBD44  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806EBD48  7C 08 02 A6 */	mflr r0
/* 806EBD4C  90 01 00 64 */	stw r0, 0x64(r1)
/* 806EBD50  39 61 00 60 */	addi r11, r1, 0x60
/* 806EBD54  4B C7 64 74 */	b _savegpr_24
/* 806EBD58  7C 7E 1B 78 */	mr r30, r3
/* 806EBD5C  3C 80 80 6F */	lis r4, lit_3966@ha
/* 806EBD60  3B E4 08 60 */	addi r31, r4, lit_3966@l
/* 806EBD64  80 03 06 C8 */	lwz r0, 0x6c8(r3)
/* 806EBD68  2C 00 00 01 */	cmpwi r0, 1
/* 806EBD6C  41 82 00 D8 */	beq lbl_806EBE44
/* 806EBD70  40 80 02 88 */	bge lbl_806EBFF8
/* 806EBD74  2C 00 00 00 */	cmpwi r0, 0
/* 806EBD78  40 80 00 08 */	bge lbl_806EBD80
/* 806EBD7C  48 00 02 7C */	b lbl_806EBFF8
lbl_806EBD80:
/* 806EBD80  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 806EBD84  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 806EBD88  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806EBD8C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806EBD90  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 806EBD94  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 806EBD98  38 80 00 01 */	li r4, 1
/* 806EBD9C  4B FF F3 09 */	bl setTgSetBit__8daE_HZ_cFi
/* 806EBDA0  80 1E 0E E0 */	lwz r0, 0xee0(r30)
/* 806EBDA4  60 00 00 01 */	ori r0, r0, 1
/* 806EBDA8  90 1E 0E E0 */	stw r0, 0xee0(r30)
/* 806EBDAC  80 1E 10 18 */	lwz r0, 0x1018(r30)
/* 806EBDB0  60 00 00 01 */	ori r0, r0, 1
/* 806EBDB4  90 1E 10 18 */	stw r0, 0x1018(r30)
/* 806EBDB8  38 00 00 02 */	li r0, 2
/* 806EBDBC  98 1E 0E FE */	stb r0, 0xefe(r30)
/* 806EBDC0  98 1E 10 36 */	stb r0, 0x1036(r30)
/* 806EBDC4  38 00 00 01 */	li r0, 1
/* 806EBDC8  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EBDCC  7F C3 F3 78 */	mr r3, r30
/* 806EBDD0  38 80 00 0D */	li r4, 0xd
/* 806EBDD4  38 A0 00 00 */	li r5, 0
/* 806EBDD8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806EBDDC  3C C0 80 6F */	lis r6, l_HIO@ha
/* 806EBDE0  38 C6 0B 7C */	addi r6, r6, l_HIO@l
/* 806EBDE4  C0 46 00 24 */	lfs f2, 0x24(r6)
/* 806EBDE8  4B FF E8 A9 */	bl setBck__8daE_HZ_cFiUcff
/* 806EBDEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007020C@ha */
/* 806EBDF0  38 03 02 0C */	addi r0, r3, 0x020C /* 0x0007020C@l */
/* 806EBDF4  90 01 00 28 */	stw r0, 0x28(r1)
/* 806EBDF8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EBDFC  38 81 00 28 */	addi r4, r1, 0x28
/* 806EBE00  38 A0 FF FF */	li r5, -1
/* 806EBE04  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EBE08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EBE0C  7D 89 03 A6 */	mtctr r12
/* 806EBE10  4E 80 04 21 */	bctrl 
/* 806EBE14  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007020D@ha */
/* 806EBE18  38 03 02 0D */	addi r0, r3, 0x020D /* 0x0007020D@l */
/* 806EBE1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806EBE20  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EBE24  38 81 00 24 */	addi r4, r1, 0x24
/* 806EBE28  38 A0 00 00 */	li r5, 0
/* 806EBE2C  38 C0 FF FF */	li r6, -1
/* 806EBE30  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EBE34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EBE38  7D 89 03 A6 */	mtctr r12
/* 806EBE3C  4E 80 04 21 */	bctrl 
/* 806EBE40  48 00 01 B8 */	b lbl_806EBFF8
lbl_806EBE44:
/* 806EBE44  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EBE48  80 63 00 04 */	lwz r3, 4(r3)
/* 806EBE4C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806EBE50  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806EBE54  C0 43 00 5C */	lfs f2, 0x5c(r3)
/* 806EBE58  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 806EBE5C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 806EBE60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806EBE64  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806EBE68  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 806EBE6C  3B 00 00 00 */	li r24, 0
/* 806EBE70  3B A0 00 00 */	li r29, 0
/* 806EBE74  3B 80 00 00 */	li r28, 0
/* 806EBE78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806EBE7C  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 806EBE80  3C 60 80 6F */	lis r3, d_HZ_JUMP_EFFECT_ID@ha
/* 806EBE84  3B 63 09 AC */	addi r27, r3, d_HZ_JUMP_EFFECT_ID@l
lbl_806EBE88:
/* 806EBE88  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 806EBE8C  38 00 00 FF */	li r0, 0xff
/* 806EBE90  90 01 00 08 */	stw r0, 8(r1)
/* 806EBE94  38 80 00 00 */	li r4, 0
/* 806EBE98  90 81 00 0C */	stw r4, 0xc(r1)
/* 806EBE9C  38 00 FF FF */	li r0, -1
/* 806EBEA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806EBEA4  90 81 00 14 */	stw r4, 0x14(r1)
/* 806EBEA8  90 81 00 18 */	stw r4, 0x18(r1)
/* 806EBEAC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806EBEB0  3B 3C 12 18 */	addi r25, r28, 0x1218
/* 806EBEB4  7C 9E C8 2E */	lwzx r4, r30, r25
/* 806EBEB8  38 A0 00 00 */	li r5, 0
/* 806EBEBC  7C DB EA 2E */	lhzx r6, r27, r29
/* 806EBEC0  38 E1 00 2C */	addi r7, r1, 0x2c
/* 806EBEC4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806EBEC8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806EBECC  39 40 00 00 */	li r10, 0
/* 806EBED0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806EBED4  4B 96 15 F8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806EBED8  7C 7E C9 2E */	stwx r3, r30, r25
/* 806EBEDC  3B 18 00 01 */	addi r24, r24, 1
/* 806EBEE0  2C 18 00 02 */	cmpwi r24, 2
/* 806EBEE4  3B BD 00 02 */	addi r29, r29, 2
/* 806EBEE8  3B 9C 00 04 */	addi r28, r28, 4
/* 806EBEEC  41 80 FF 9C */	blt lbl_806EBE88
/* 806EBEF0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EBEF4  38 63 00 0C */	addi r3, r3, 0xc
/* 806EBEF8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 806EBEFC  4B C3 C5 30 */	b checkPass__12J3DFrameCtrlFf
/* 806EBF00  2C 03 00 00 */	cmpwi r3, 0
/* 806EBF04  41 82 00 14 */	beq lbl_806EBF18
/* 806EBF08  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806EBF0C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EBF10  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806EBF14  48 00 00 44 */	b lbl_806EBF58
lbl_806EBF18:
/* 806EBF18  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EBF1C  38 63 00 0C */	addi r3, r3, 0xc
/* 806EBF20  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806EBF24  4B C3 C5 08 */	b checkPass__12J3DFrameCtrlFf
/* 806EBF28  2C 03 00 00 */	cmpwi r3, 0
/* 806EBF2C  41 82 00 2C */	beq lbl_806EBF58
/* 806EBF30  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007020E@ha */
/* 806EBF34  38 03 02 0E */	addi r0, r3, 0x020E /* 0x0007020E@l */
/* 806EBF38  90 01 00 20 */	stw r0, 0x20(r1)
/* 806EBF3C  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EBF40  38 81 00 20 */	addi r4, r1, 0x20
/* 806EBF44  38 A0 FF FF */	li r5, -1
/* 806EBF48  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EBF4C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EBF50  7D 89 03 A6 */	mtctr r12
/* 806EBF54  4E 80 04 21 */	bctrl 
lbl_806EBF58:
/* 806EBF58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806EBF5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806EBF60  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806EBF64  80 03 05 74 */	lwz r0, 0x574(r3)
/* 806EBF68  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 806EBF6C  40 82 00 40 */	bne lbl_806EBFAC
/* 806EBF70  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EBF74  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806EBF78  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806EBF7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EBF80  40 81 00 2C */	ble lbl_806EBFAC
/* 806EBF84  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806EBF88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EBF8C  40 80 00 20 */	bge lbl_806EBFAC
/* 806EBF90  7F C3 F3 78 */	mr r3, r30
/* 806EBF94  4B FF EB D5 */	bl checkHideStart__8daE_HZ_cFv
/* 806EBF98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EBF9C  41 82 00 10 */	beq lbl_806EBFAC
/* 806EBFA0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806EBFA4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EBFA8  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_806EBFAC:
/* 806EBFAC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EBFB0  38 80 00 01 */	li r4, 1
/* 806EBFB4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806EBFB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806EBFBC  40 82 00 18 */	bne lbl_806EBFD4
/* 806EBFC0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EBFC4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806EBFC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806EBFCC  41 82 00 08 */	beq lbl_806EBFD4
/* 806EBFD0  38 80 00 00 */	li r4, 0
lbl_806EBFD4:
/* 806EBFD4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806EBFD8  41 82 00 20 */	beq lbl_806EBFF8
/* 806EBFDC  7F C3 F3 78 */	mr r3, r30
/* 806EBFE0  4B FF F3 09 */	bl setCloseSmokeEffect__8daE_HZ_cFv
/* 806EBFE4  38 00 00 14 */	li r0, 0x14
/* 806EBFE8  B0 1E 06 DE */	sth r0, 0x6de(r30)
/* 806EBFEC  7F C3 F3 78 */	mr r3, r30
/* 806EBFF0  38 80 00 01 */	li r4, 1
/* 806EBFF4  4B FF EA E9 */	bl setActionMode__8daE_HZ_cFi
lbl_806EBFF8:
/* 806EBFF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806EBFFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806EC000  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806EC004  80 03 05 74 */	lwz r0, 0x574(r3)
/* 806EC008  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 806EC00C  40 82 00 44 */	bne lbl_806EC050
/* 806EC010  4B A9 56 30 */	b dCam_getBody__Fv
/* 806EC014  4B A9 54 EC */	b GetForceLockOnActor__9dCamera_cFv
/* 806EC018  7C 03 F0 40 */	cmplw r3, r30
/* 806EC01C  40 82 00 34 */	bne lbl_806EC050
/* 806EC020  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 806EC024  2C 00 00 00 */	cmpwi r0, 0
/* 806EC028  40 82 00 28 */	bne lbl_806EC050
/* 806EC02C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806EC030  3C 60 80 6F */	lis r3, l_HIO@ha
/* 806EC034  38 63 0B 7C */	addi r3, r3, l_HIO@l
/* 806EC038  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 806EC03C  EC 01 00 2A */	fadds f0, f1, f0
/* 806EC040  FC 00 00 1E */	fctiwz f0, f0
/* 806EC044  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806EC048  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806EC04C  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
lbl_806EC050:
/* 806EC050  39 61 00 60 */	addi r11, r1, 0x60
/* 806EC054  4B C7 61 C0 */	b _restgpr_24
/* 806EC058  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806EC05C  7C 08 03 A6 */	mtlr r0
/* 806EC060  38 21 00 60 */	addi r1, r1, 0x60
/* 806EC064  4E 80 00 20 */	blr 
