lbl_802FBB90:
/* 802FBB90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802FBB94  7C 08 02 A6 */	mflr r0
/* 802FBB98  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FBB9C  39 61 00 30 */	addi r11, r1, 0x30
/* 802FBBA0  48 06 66 3D */	bl _savegpr_29
/* 802FBBA4  7C 9D 23 78 */	mr r29, r4
/* 802FBBA8  7C BE 2B 78 */	mr r30, r5
/* 802FBBAC  7C DF 33 78 */	mr r31, r6
/* 802FBBB0  80 05 00 00 */	lwz r0, 0(r5)
/* 802FBBB4  28 00 00 00 */	cmplwi r0, 0
/* 802FBBB8  40 82 00 F4 */	bne lbl_802FBCAC
/* 802FBBBC  80 7F 00 00 */	lwz r3, 0(r31)
/* 802FBBC0  3C 03 00 01 */	addis r0, r3, 1
/* 802FBBC4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802FBBC8  40 82 00 E4 */	bne lbl_802FBCAC
/* 802FBBCC  38 60 00 00 */	li r3, 0
/* 802FBBD0  38 80 00 00 */	li r4, 0
/* 802FBBD4  38 A0 00 00 */	li r5, 0
/* 802FBBD8  38 C0 00 04 */	li r6, 4
/* 802FBBDC  48 06 3B 19 */	bl GXSetTevOrder
/* 802FBBE0  38 60 00 00 */	li r3, 0
/* 802FBBE4  38 80 00 0F */	li r4, 0xf
/* 802FBBE8  38 A0 00 08 */	li r5, 8
/* 802FBBEC  38 C0 00 0A */	li r6, 0xa
/* 802FBBF0  38 E0 00 0F */	li r7, 0xf
/* 802FBBF4  48 06 36 31 */	bl GXSetTevColorIn
/* 802FBBF8  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802FBBFC  88 03 00 01 */	lbz r0, 1(r3)
/* 802FBC00  2C 00 00 00 */	cmpwi r0, 0
/* 802FBC04  41 82 00 20 */	beq lbl_802FBC24
/* 802FBC08  38 60 00 00 */	li r3, 0
/* 802FBC0C  38 80 00 07 */	li r4, 7
/* 802FBC10  38 A0 00 04 */	li r5, 4
/* 802FBC14  38 C0 00 05 */	li r6, 5
/* 802FBC18  38 E0 00 07 */	li r7, 7
/* 802FBC1C  48 06 36 4D */	bl GXSetTevAlphaIn
/* 802FBC20  48 00 00 34 */	b lbl_802FBC54
lbl_802FBC24:
/* 802FBC24  38 00 FF FF */	li r0, -1
/* 802FBC28  90 01 00 18 */	stw r0, 0x18(r1)
/* 802FBC2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FBC30  38 60 00 03 */	li r3, 3
/* 802FBC34  38 81 00 1C */	addi r4, r1, 0x1c
/* 802FBC38  48 06 37 45 */	bl GXSetTevColor
/* 802FBC3C  38 60 00 00 */	li r3, 0
/* 802FBC40  38 80 00 07 */	li r4, 7
/* 802FBC44  38 A0 00 03 */	li r5, 3
/* 802FBC48  38 C0 00 05 */	li r6, 5
/* 802FBC4C  38 E0 00 07 */	li r7, 7
/* 802FBC50  48 06 36 19 */	bl GXSetTevAlphaIn
lbl_802FBC54:
/* 802FBC54  38 60 00 00 */	li r3, 0
/* 802FBC58  38 80 00 00 */	li r4, 0
/* 802FBC5C  38 A0 00 00 */	li r5, 0
/* 802FBC60  38 C0 00 00 */	li r6, 0
/* 802FBC64  38 E0 00 01 */	li r7, 1
/* 802FBC68  39 00 00 00 */	li r8, 0
/* 802FBC6C  48 06 36 41 */	bl GXSetTevColorOp
/* 802FBC70  38 60 00 00 */	li r3, 0
/* 802FBC74  38 80 00 00 */	li r4, 0
/* 802FBC78  38 A0 00 00 */	li r5, 0
/* 802FBC7C  38 C0 00 00 */	li r6, 0
/* 802FBC80  38 E0 00 01 */	li r7, 1
/* 802FBC84  39 00 00 00 */	li r8, 0
/* 802FBC88  48 06 36 8D */	bl GXSetTevAlphaOp
/* 802FBC8C  38 60 00 01 */	li r3, 1
/* 802FBC90  48 06 3C 01 */	bl GXSetNumTevStages
/* 802FBC94  38 60 00 01 */	li r3, 1
/* 802FBC98  38 80 00 04 */	li r4, 4
/* 802FBC9C  38 A0 00 05 */	li r5, 5
/* 802FBCA0  38 C0 00 0F */	li r6, 0xf
/* 802FBCA4  48 06 3F 4D */	bl GXSetBlendMode
/* 802FBCA8  48 00 01 70 */	b lbl_802FBE18
lbl_802FBCAC:
/* 802FBCAC  38 60 00 00 */	li r3, 0
/* 802FBCB0  38 80 00 00 */	li r4, 0
/* 802FBCB4  38 A0 00 00 */	li r5, 0
/* 802FBCB8  38 C0 00 FF */	li r6, 0xff
/* 802FBCBC  48 06 3A 39 */	bl GXSetTevOrder
/* 802FBCC0  80 1E 00 00 */	lwz r0, 0(r30)
/* 802FBCC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FBCC8  38 60 00 01 */	li r3, 1
/* 802FBCCC  38 81 00 14 */	addi r4, r1, 0x14
/* 802FBCD0  48 06 36 AD */	bl GXSetTevColor
/* 802FBCD4  80 1F 00 00 */	lwz r0, 0(r31)
/* 802FBCD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FBCDC  38 60 00 02 */	li r3, 2
/* 802FBCE0  38 81 00 10 */	addi r4, r1, 0x10
/* 802FBCE4  48 06 36 99 */	bl GXSetTevColor
/* 802FBCE8  38 60 00 00 */	li r3, 0
/* 802FBCEC  38 80 00 02 */	li r4, 2
/* 802FBCF0  38 A0 00 04 */	li r5, 4
/* 802FBCF4  38 C0 00 08 */	li r6, 8
/* 802FBCF8  38 E0 00 0F */	li r7, 0xf
/* 802FBCFC  48 06 35 29 */	bl GXSetTevColorIn
/* 802FBD00  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802FBD04  88 03 00 01 */	lbz r0, 1(r3)
/* 802FBD08  2C 00 00 00 */	cmpwi r0, 0
/* 802FBD0C  41 82 00 20 */	beq lbl_802FBD2C
/* 802FBD10  38 60 00 00 */	li r3, 0
/* 802FBD14  38 80 00 01 */	li r4, 1
/* 802FBD18  38 A0 00 02 */	li r5, 2
/* 802FBD1C  38 C0 00 04 */	li r6, 4
/* 802FBD20  38 E0 00 07 */	li r7, 7
/* 802FBD24  48 06 35 45 */	bl GXSetTevAlphaIn
/* 802FBD28  48 00 00 34 */	b lbl_802FBD5C
lbl_802FBD2C:
/* 802FBD2C  38 00 FF FF */	li r0, -1
/* 802FBD30  90 01 00 08 */	stw r0, 8(r1)
/* 802FBD34  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FBD38  38 60 00 03 */	li r3, 3
/* 802FBD3C  38 81 00 0C */	addi r4, r1, 0xc
/* 802FBD40  48 06 36 3D */	bl GXSetTevColor
/* 802FBD44  38 60 00 00 */	li r3, 0
/* 802FBD48  38 80 00 01 */	li r4, 1
/* 802FBD4C  38 A0 00 02 */	li r5, 2
/* 802FBD50  38 C0 00 03 */	li r6, 3
/* 802FBD54  38 E0 00 07 */	li r7, 7
/* 802FBD58  48 06 35 11 */	bl GXSetTevAlphaIn
lbl_802FBD5C:
/* 802FBD5C  38 60 00 00 */	li r3, 0
/* 802FBD60  38 80 00 00 */	li r4, 0
/* 802FBD64  38 A0 00 00 */	li r5, 0
/* 802FBD68  38 C0 00 00 */	li r6, 0
/* 802FBD6C  38 E0 00 01 */	li r7, 1
/* 802FBD70  39 00 00 00 */	li r8, 0
/* 802FBD74  48 06 35 39 */	bl GXSetTevColorOp
/* 802FBD78  38 60 00 00 */	li r3, 0
/* 802FBD7C  38 80 00 00 */	li r4, 0
/* 802FBD80  38 A0 00 00 */	li r5, 0
/* 802FBD84  38 C0 00 00 */	li r6, 0
/* 802FBD88  38 E0 00 01 */	li r7, 1
/* 802FBD8C  39 00 00 00 */	li r8, 0
/* 802FBD90  48 06 35 85 */	bl GXSetTevAlphaOp
/* 802FBD94  38 60 00 01 */	li r3, 1
/* 802FBD98  38 80 00 FF */	li r4, 0xff
/* 802FBD9C  38 A0 00 FF */	li r5, 0xff
/* 802FBDA0  38 C0 00 04 */	li r6, 4
/* 802FBDA4  48 06 39 51 */	bl GXSetTevOrder
/* 802FBDA8  38 60 00 01 */	li r3, 1
/* 802FBDAC  38 80 00 0F */	li r4, 0xf
/* 802FBDB0  38 A0 00 00 */	li r5, 0
/* 802FBDB4  38 C0 00 0A */	li r6, 0xa
/* 802FBDB8  38 E0 00 0F */	li r7, 0xf
/* 802FBDBC  48 06 34 69 */	bl GXSetTevColorIn
/* 802FBDC0  38 60 00 01 */	li r3, 1
/* 802FBDC4  38 80 00 07 */	li r4, 7
/* 802FBDC8  38 A0 00 00 */	li r5, 0
/* 802FBDCC  38 C0 00 05 */	li r6, 5
/* 802FBDD0  38 E0 00 07 */	li r7, 7
/* 802FBDD4  48 06 34 95 */	bl GXSetTevAlphaIn
/* 802FBDD8  38 60 00 01 */	li r3, 1
/* 802FBDDC  38 80 00 00 */	li r4, 0
/* 802FBDE0  38 A0 00 00 */	li r5, 0
/* 802FBDE4  38 C0 00 00 */	li r6, 0
/* 802FBDE8  38 E0 00 01 */	li r7, 1
/* 802FBDEC  39 00 00 00 */	li r8, 0
/* 802FBDF0  48 06 34 BD */	bl GXSetTevColorOp
/* 802FBDF4  38 60 00 01 */	li r3, 1
/* 802FBDF8  38 80 00 00 */	li r4, 0
/* 802FBDFC  38 A0 00 00 */	li r5, 0
/* 802FBE00  38 C0 00 00 */	li r6, 0
/* 802FBE04  38 E0 00 01 */	li r7, 1
/* 802FBE08  39 00 00 00 */	li r8, 0
/* 802FBE0C  48 06 35 09 */	bl GXSetTevAlphaOp
/* 802FBE10  38 60 00 02 */	li r3, 2
/* 802FBE14  48 06 3A 7D */	bl GXSetNumTevStages
lbl_802FBE18:
/* 802FBE18  38 60 00 00 */	li r3, 0
/* 802FBE1C  38 80 00 01 */	li r4, 1
/* 802FBE20  38 A0 00 04 */	li r5, 4
/* 802FBE24  38 C0 00 3C */	li r6, 0x3c
/* 802FBE28  38 E0 00 00 */	li r7, 0
/* 802FBE2C  39 00 00 7D */	li r8, 0x7d
/* 802FBE30  48 05 FD 4D */	bl GXSetTexCoordGen2
/* 802FBE34  38 60 00 01 */	li r3, 1
/* 802FBE38  38 80 00 04 */	li r4, 4
/* 802FBE3C  38 A0 00 05 */	li r5, 5
/* 802FBE40  38 C0 00 0F */	li r6, 0xf
/* 802FBE44  48 06 3D AD */	bl GXSetBlendMode
/* 802FBE48  39 61 00 30 */	addi r11, r1, 0x30
/* 802FBE4C  48 06 63 DD */	bl _restgpr_29
/* 802FBE50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802FBE54  7C 08 03 A6 */	mtlr r0
/* 802FBE58  38 21 00 30 */	addi r1, r1, 0x30
/* 802FBE5C  4E 80 00 20 */	blr 
