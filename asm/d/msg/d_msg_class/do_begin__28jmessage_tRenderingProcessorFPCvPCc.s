lbl_8022CDCC:
/* 8022CDCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022CDD0  7C 08 02 A6 */	mflr r0
/* 8022CDD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022CDD8  39 61 00 30 */	addi r11, r1, 0x30
/* 8022CDDC  48 13 53 F5 */	bl _savegpr_26
/* 8022CDE0  7C 7E 1B 78 */	mr r30, r3
/* 8022CDE4  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022CDE8  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022CDEC  D0 03 01 28 */	stfs f0, 0x128(r3)
/* 8022CDF0  D0 03 01 2C */	stfs f0, 0x12c(r3)
/* 8022CDF4  D0 03 01 30 */	stfs f0, 0x130(r3)
/* 8022CDF8  D0 03 01 34 */	stfs f0, 0x134(r3)
/* 8022CDFC  38 80 00 00 */	li r4, 0
/* 8022CE00  98 83 01 4C */	stb r4, 0x14c(r3)
/* 8022CE04  B0 83 01 42 */	sth r4, 0x142(r3)
/* 8022CE08  B0 83 01 44 */	sth r4, 0x144(r3)
/* 8022CE0C  B0 83 01 46 */	sth r4, 0x146(r3)
/* 8022CE10  B0 83 01 48 */	sth r4, 0x148(r3)
/* 8022CE14  B0 83 01 4A */	sth r4, 0x14a(r3)
/* 8022CE18  B0 83 01 3C */	sth r4, 0x13c(r3)
/* 8022CE1C  B0 83 01 3E */	sth r4, 0x13e(r3)
/* 8022CE20  D0 03 01 38 */	stfs f0, 0x138(r3)
/* 8022CE24  98 83 01 86 */	stb r4, 0x186(r3)
/* 8022CE28  98 83 01 85 */	stb r4, 0x185(r3)
/* 8022CE2C  98 83 01 84 */	stb r4, 0x184(r3)
/* 8022CE30  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8022CE34  28 03 00 00 */	cmplwi r3, 0
/* 8022CE38  41 82 00 14 */	beq lbl_8022CE4C
/* 8022CE3C  38 03 10 68 */	addi r0, r3, 0x1068
/* 8022CE40  90 1E 00 40 */	stw r0, 0x40(r30)
/* 8022CE44  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 8022CE48  B0 83 00 00 */	sth r4, 0(r3)
lbl_8022CE4C:
/* 8022CE4C  38 60 00 00 */	li r3, 0
/* 8022CE50  98 7E 01 4D */	stb r3, 0x14d(r30)
/* 8022CE54  B0 7E 01 40 */	sth r3, 0x140(r30)
/* 8022CE58  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022CE5C  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 8022CE60  98 7E 01 4E */	stb r3, 0x14e(r30)
/* 8022CE64  38 00 FF FF */	li r0, -1
/* 8022CE68  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8022CE6C  90 1E 01 24 */	stw r0, 0x124(r30)
/* 8022CE70  88 1F 12 52 */	lbz r0, 0x1252(r31)
/* 8022CE74  98 1E 01 4F */	stb r0, 0x14f(r30)
/* 8022CE78  98 7E 01 87 */	stb r3, 0x187(r30)
/* 8022CE7C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8022CE80  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 8022CE84  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8022CE88  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 8022CE8C  98 7E 01 51 */	stb r3, 0x151(r30)
/* 8022CE90  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8022CE94  4B FF 9E 65 */	bl initialize__10COutFont_cFv
/* 8022CE98  38 60 00 00 */	li r3, 0
/* 8022CE9C  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022CEA0  38 00 00 28 */	li r0, 0x28
/* 8022CEA4  7C 09 03 A6 */	mtctr r0
lbl_8022CEA8:
/* 8022CEA8  38 03 00 7C */	addi r0, r3, 0x7c
/* 8022CEAC  7C 1E 05 2E */	stfsx f0, r30, r0
/* 8022CEB0  38 63 00 04 */	addi r3, r3, 4
/* 8022CEB4  42 00 FF F4 */	bdnz lbl_8022CEA8
/* 8022CEB8  38 00 00 00 */	li r0, 0
/* 8022CEBC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8022CEC0  38 7F 0A 1C */	addi r3, r31, 0xa1c
/* 8022CEC4  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha
/* 8022CEC8  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l
/* 8022CECC  38 84 00 07 */	addi r4, r4, 7
/* 8022CED0  48 13 BC 5D */	bl strcpy
/* 8022CED4  38 7F 0C 1C */	addi r3, r31, 0xc1c
/* 8022CED8  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha
/* 8022CEDC  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l
/* 8022CEE0  38 84 00 07 */	addi r4, r4, 7
/* 8022CEE4  48 13 BC 49 */	bl strcpy
/* 8022CEE8  38 7F 0E 1C */	addi r3, r31, 0xe1c
/* 8022CEEC  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha
/* 8022CEF0  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l
/* 8022CEF4  38 84 00 07 */	addi r4, r4, 7
/* 8022CEF8  48 13 BC 35 */	bl strcpy
/* 8022CEFC  3B 40 00 00 */	li r26, 0
/* 8022CF00  3B A0 00 00 */	li r29, 0
/* 8022CF04  3B 80 00 00 */	li r28, 0
/* 8022CF08  3C 60 80 3A */	lis r3, d_msg_d_msg_class__stringBase0@ha
/* 8022CF0C  3B 63 96 10 */	addi r27, r3, d_msg_d_msg_class__stringBase0@l
lbl_8022CF10:
/* 8022CF10  38 7C 10 1C */	addi r3, r28, 0x101c
/* 8022CF14  7C 7F 1A 14 */	add r3, r31, r3
/* 8022CF18  38 9B 00 07 */	addi r4, r27, 7
/* 8022CF1C  48 13 BC 11 */	bl strcpy
/* 8022CF20  38 7D 10 B2 */	addi r3, r29, 0x10b2
/* 8022CF24  7C 7F 1A 14 */	add r3, r31, r3
/* 8022CF28  38 9B 00 07 */	addi r4, r27, 7
/* 8022CF2C  48 13 BC 01 */	bl strcpy
/* 8022CF30  3B 5A 00 01 */	addi r26, r26, 1
/* 8022CF34  2C 1A 00 03 */	cmpwi r26, 3
/* 8022CF38  3B BD 00 50 */	addi r29, r29, 0x50
/* 8022CF3C  3B 9C 00 32 */	addi r28, r28, 0x32
/* 8022CF40  41 80 FF D0 */	blt lbl_8022CF10
/* 8022CF44  C0 22 B0 64 */	lfs f1, lit_4028(r2)
/* 8022CF48  C0 1F 04 54 */	lfs f0, 0x454(r31)
/* 8022CF4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8022CF50  41 82 00 10 */	beq lbl_8022CF60
/* 8022CF54  7F C3 F3 78 */	mr r3, r30
/* 8022CF58  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8022CF5C  48 00 19 05 */	bl do_scale__28jmessage_tRenderingProcessorFf
lbl_8022CF60:
/* 8022CF60  7F C3 F3 78 */	mr r3, r30
/* 8022CF64  88 9F 12 4A */	lbz r4, 0x124a(r31)
/* 8022CF68  48 00 18 65 */	bl do_color__28jmessage_tRenderingProcessorFUc
/* 8022CF6C  38 00 00 00 */	li r0, 0
/* 8022CF70  98 1F 05 DD */	stb r0, 0x5dd(r31)
/* 8022CF74  7F C3 F3 78 */	mr r3, r30
/* 8022CF78  48 00 12 05 */	bl do_widthcenter__28jmessage_tRenderingProcessorFv
/* 8022CF7C  7F C3 F3 78 */	mr r3, r30
/* 8022CF80  48 00 13 99 */	bl do_heightcenter__28jmessage_tRenderingProcessorFv
/* 8022CF84  A0 1F 06 30 */	lhz r0, 0x630(r31)
/* 8022CF88  B0 1E 01 3C */	sth r0, 0x13c(r30)
/* 8022CF8C  A0 1E 01 3C */	lhz r0, 0x13c(r30)
/* 8022CF90  28 00 00 00 */	cmplwi r0, 0
/* 8022CF94  41 82 00 2C */	beq lbl_8022CFC0
/* 8022CF98  7F C3 F3 78 */	mr r3, r30
/* 8022CF9C  C8 22 B0 80 */	lfd f1, lit_5154(r2)
/* 8022CFA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8022CFA4  3C 00 43 30 */	lis r0, 0x4330
/* 8022CFA8  90 01 00 08 */	stw r0, 8(r1)
/* 8022CFAC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8022CFB0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8022CFB4  C0 02 B0 7C */	lfs f0, lit_5151(r2)
/* 8022CFB8  EC 21 00 24 */	fdivs f1, f1, f0
/* 8022CFBC  48 00 18 A5 */	bl do_scale__28jmessage_tRenderingProcessorFf
lbl_8022CFC0:
/* 8022CFC0  39 61 00 30 */	addi r11, r1, 0x30
/* 8022CFC4  48 13 52 59 */	bl _restgpr_26
/* 8022CFC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8022CFCC  7C 08 03 A6 */	mtlr r0
/* 8022CFD0  38 21 00 30 */	addi r1, r1, 0x30
/* 8022CFD4  4E 80 00 20 */	blr 
