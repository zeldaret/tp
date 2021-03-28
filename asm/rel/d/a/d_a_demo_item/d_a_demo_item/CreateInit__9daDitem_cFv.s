lbl_804DFBD4:
/* 804DFBD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFBD8  7C 08 02 A6 */	mflr r0
/* 804DFBDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFBE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DFBE4  7C 7F 1B 78 */	mr r31, r3
/* 804DFBE8  80 83 05 74 */	lwz r4, 0x574(r3)
/* 804DFBEC  38 04 00 24 */	addi r0, r4, 0x24
/* 804DFBF0  90 03 05 04 */	stw r0, 0x504(r3)
/* 804DFBF4  80 83 05 74 */	lwz r4, 0x574(r3)
/* 804DFBF8  80 84 00 04 */	lwz r4, 4(r4)
/* 804DFBFC  4B B3 A9 7C */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 804DFC00  7F E3 FB 78 */	mr r3, r31
/* 804DFC04  4B B5 7E 60 */	b hide__12daItemBase_cFv
/* 804DFC08  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804DFC0C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 804DFC10  98 1F 09 3D */	stb r0, 0x93d(r31)
/* 804DFC14  38 00 00 01 */	li r0, 1
/* 804DFC18  98 1F 09 3E */	stb r0, 0x93e(r31)
/* 804DFC1C  7F E3 FB 78 */	mr r3, r31
/* 804DFC20  48 00 14 79 */	bl initEffectLight__9daDitem_cFv
/* 804DFC24  88 1F 09 3D */	lbz r0, 0x93d(r31)
/* 804DFC28  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804DFC2C  41 82 00 1C */	beq lbl_804DFC48
/* 804DFC30  3C 60 80 4E */	lis r3, lit_3812@ha
/* 804DFC34  C0 03 19 D8 */	lfs f0, lit_3812@l(r3)
/* 804DFC38  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 804DFC3C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 804DFC40  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 804DFC44  48 00 00 18 */	b lbl_804DFC5C
lbl_804DFC48:
/* 804DFC48  3C 60 80 4E */	lis r3, lit_3813@ha
/* 804DFC4C  C0 03 19 DC */	lfs f0, lit_3813@l(r3)
/* 804DFC50  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 804DFC54  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 804DFC58  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
lbl_804DFC5C:
/* 804DFC5C  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 804DFC60  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804DFC64  38 A0 00 01 */	li r5, 1
/* 804DFC68  81 9F 09 B8 */	lwz r12, 0x9b8(r31)
/* 804DFC6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804DFC70  7D 89 03 A6 */	mtctr r12
/* 804DFC74  4E 80 04 21 */	bctrl 
/* 804DFC78  7F E3 FB 78 */	mr r3, r31
/* 804DFC7C  48 00 14 A1 */	bl set_mtx__9daDitem_cFv
/* 804DFC80  38 60 00 01 */	li r3, 1
/* 804DFC84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DFC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFC8C  7C 08 03 A6 */	mtlr r0
/* 804DFC90  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFC94  4E 80 00 20 */	blr 
