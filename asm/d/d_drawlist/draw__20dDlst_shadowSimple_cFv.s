lbl_8005520C:
/* 8005520C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80055210  7C 08 02 A6 */	mflr r0
/* 80055214  90 01 00 24 */	stw r0, 0x24(r1)
/* 80055218  39 61 00 20 */	addi r11, r1, 0x20
/* 8005521C  48 30 CF C1 */	bl _savegpr_29
/* 80055220  7C 7D 1B 78 */	mr r29, r3
/* 80055224  3C 60 80 3B */	lis r3, cNullVec__6Z2Calc@ha /* 0x803A87A0@ha */
/* 80055228  3B C3 87 A0 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x803A87A0@l */
/* 8005522C  88 1D 00 00 */	lbz r0, 0(r29)
/* 80055230  38 6D 80 D0 */	la r3, l_color_5326(r13) /* 80450650-_SDA_BASE_ */
/* 80055234  98 03 00 03 */	stb r0, 3(r3)
/* 80055238  80 0D 80 D0 */	lwz r0, l_color_5326(r13)
/* 8005523C  90 01 00 08 */	stw r0, 8(r1)
/* 80055240  38 60 00 01 */	li r3, 1
/* 80055244  38 81 00 08 */	addi r4, r1, 8
/* 80055248  48 30 A1 35 */	bl GXSetTevColor
/* 8005524C  48 30 63 41 */	bl GXClearVtxDesc
/* 80055250  38 60 00 09 */	li r3, 9
/* 80055254  38 80 00 02 */	li r4, 2
/* 80055258  48 30 5C 61 */	bl GXSetVtxDesc
/* 8005525C  38 7D 00 08 */	addi r3, r29, 8
/* 80055260  38 80 00 00 */	li r4, 0
/* 80055264  48 30 AF E9 */	bl GXLoadPosMtxImm
/* 80055268  38 60 00 00 */	li r3, 0
/* 8005526C  48 30 B0 81 */	bl GXSetCurrentMtx
/* 80055270  38 7E 02 60 */	addi r3, r30, 0x260
/* 80055274  38 80 00 40 */	li r4, 0x40
/* 80055278  48 30 AC 79 */	bl GXCallDisplayList
/* 8005527C  38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 80055280  38 80 00 40 */	li r4, 0x40
/* 80055284  48 30 AC 6D */	bl GXCallDisplayList
/* 80055288  38 7E 02 C0 */	addi r3, r30, 0x2c0
/* 8005528C  38 80 00 20 */	li r4, 0x20
/* 80055290  48 30 AC 61 */	bl GXCallDisplayList
/* 80055294  38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 80055298  38 80 00 40 */	li r4, 0x40
/* 8005529C  48 30 AC 55 */	bl GXCallDisplayList
/* 800552A0  38 7D 00 38 */	addi r3, r29, 0x38
/* 800552A4  38 80 00 03 */	li r4, 3
/* 800552A8  48 30 AF A5 */	bl GXLoadPosMtxImm
/* 800552AC  38 60 00 03 */	li r3, 3
/* 800552B0  48 30 B0 3D */	bl GXSetCurrentMtx
/* 800552B4  80 7D 00 04 */	lwz r3, 4(r29)
/* 800552B8  28 03 00 00 */	cmplwi r3, 0
/* 800552BC  41 82 00 CC */	beq lbl_80055388
/* 800552C0  38 80 00 00 */	li r4, 0
/* 800552C4  48 30 91 51 */	bl GXLoadTexObj
/* 800552C8  48 30 62 C5 */	bl GXClearVtxDesc
/* 800552CC  38 60 00 09 */	li r3, 9
/* 800552D0  38 80 00 02 */	li r4, 2
/* 800552D4  48 30 5B E5 */	bl GXSetVtxDesc
/* 800552D8  38 60 00 0D */	li r3, 0xd
/* 800552DC  38 80 00 01 */	li r4, 1
/* 800552E0  48 30 5B D9 */	bl GXSetVtxDesc
/* 800552E4  38 60 00 00 */	li r3, 0
/* 800552E8  38 80 00 0F */	li r4, 0xf
/* 800552EC  38 A0 00 0F */	li r5, 0xf
/* 800552F0  38 C0 00 0F */	li r6, 0xf
/* 800552F4  38 E0 00 0F */	li r7, 0xf
/* 800552F8  48 30 9F 2D */	bl GXSetTevColorIn
/* 800552FC  38 60 00 00 */	li r3, 0
/* 80055300  38 80 00 00 */	li r4, 0
/* 80055304  38 A0 00 00 */	li r5, 0
/* 80055308  38 C0 00 00 */	li r6, 0
/* 8005530C  38 E0 00 01 */	li r7, 1
/* 80055310  39 00 00 00 */	li r8, 0
/* 80055314  48 30 9F 99 */	bl GXSetTevColorOp
/* 80055318  38 60 00 00 */	li r3, 0
/* 8005531C  38 80 00 07 */	li r4, 7
/* 80055320  38 A0 00 04 */	li r5, 4
/* 80055324  38 C0 00 03 */	li r6, 3
/* 80055328  38 E0 00 07 */	li r7, 7
/* 8005532C  48 30 9F 3D */	bl GXSetTevAlphaIn
/* 80055330  38 60 00 00 */	li r3, 0
/* 80055334  38 80 00 00 */	li r4, 0
/* 80055338  38 A0 00 00 */	li r5, 0
/* 8005533C  38 C0 00 00 */	li r6, 0
/* 80055340  38 E0 00 01 */	li r7, 1
/* 80055344  39 00 00 00 */	li r8, 0
/* 80055348  48 30 9F CD */	bl GXSetTevAlphaOp
/* 8005534C  80 7D 00 04 */	lwz r3, 4(r29)
/* 80055350  48 30 8E F9 */	bl GXGetTexObjHeight
/* 80055354  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80055358  80 7D 00 04 */	lwz r3, 4(r29)
/* 8005535C  48 30 8E DD */	bl GXGetTexObjWidth
/* 80055360  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80055364  7C 00 F8 40 */	cmplw r0, r31
/* 80055368  40 82 00 14 */	bne lbl_8005537C
/* 8005536C  38 7E 04 20 */	addi r3, r30, 0x420
/* 80055370  38 80 00 40 */	li r4, 0x40
/* 80055374  48 30 AB 7D */	bl GXCallDisplayList
/* 80055378  48 00 00 10 */	b lbl_80055388
lbl_8005537C:
/* 8005537C  38 7E 04 80 */	addi r3, r30, 0x480
/* 80055380  38 80 00 40 */	li r4, 0x40
/* 80055384  48 30 AB 6D */	bl GXCallDisplayList
lbl_80055388:
/* 80055388  48 30 62 05 */	bl GXClearVtxDesc
/* 8005538C  38 60 00 09 */	li r3, 9
/* 80055390  38 80 00 02 */	li r4, 2
/* 80055394  48 30 5B 25 */	bl GXSetVtxDesc
/* 80055398  38 7E 04 E0 */	addi r3, r30, 0x4e0
/* 8005539C  38 80 00 60 */	li r4, 0x60
/* 800553A0  48 30 AB 51 */	bl GXCallDisplayList
/* 800553A4  48 30 61 E9 */	bl GXClearVtxDesc
/* 800553A8  38 60 00 09 */	li r3, 9
/* 800553AC  38 80 00 02 */	li r4, 2
/* 800553B0  48 30 5B 09 */	bl GXSetVtxDesc
/* 800553B4  38 60 00 00 */	li r3, 0
/* 800553B8  48 30 AF 35 */	bl GXSetCurrentMtx
/* 800553BC  38 7E 02 00 */	addi r3, r30, 0x200
/* 800553C0  38 80 00 40 */	li r4, 0x40
/* 800553C4  48 30 AB 2D */	bl GXCallDisplayList
/* 800553C8  38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 800553CC  38 80 00 40 */	li r4, 0x40
/* 800553D0  48 30 AB 21 */	bl GXCallDisplayList
/* 800553D4  39 61 00 20 */	addi r11, r1, 0x20
/* 800553D8  48 30 CE 51 */	bl _restgpr_29
/* 800553DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800553E0  7C 08 03 A6 */	mtlr r0
/* 800553E4  38 21 00 20 */	addi r1, r1, 0x20
/* 800553E8  4E 80 00 20 */	blr 
