lbl_80327AA0:
/* 80327AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80327AA4  7C 08 02 A6 */	mflr r0
/* 80327AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80327AAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80327AB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80327AB4  7C 7F 1B 78 */	mr r31, r3
/* 80327AB8  7C BE 2B 78 */	mr r30, r5
/* 80327ABC  90 83 00 CC */	stw r4, 0xcc(r3)
/* 80327AC0  28 04 00 00 */	cmplwi r4, 0
/* 80327AC4  40 82 00 24 */	bne lbl_80327AE8
/* 80327AC8  80 1F 00 08 */	lwz r0, 8(r31)
/* 80327ACC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80327AD0  90 1F 00 08 */	stw r0, 8(r31)
/* 80327AD4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80327AD8  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80327ADC  90 1F 00 08 */	stw r0, 8(r31)
/* 80327AE0  38 60 00 05 */	li r3, 5
/* 80327AE4  48 00 00 D8 */	b lbl_80327BBC
lbl_80327AE8:
/* 80327AE8  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 80327AEC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80327AF0  48 00 54 55 */	bl initMtxIndexArray__13J3DSkinDeformFP12J3DModelData
/* 80327AF4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80327AF8  80 04 00 08 */	lwz r0, 8(r4)
/* 80327AFC  54 00 C7 FF */	rlwinm. r0, r0, 0x18, 0x1f, 0x1f
/* 80327B00  41 82 00 28 */	beq lbl_80327B28
/* 80327B04  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 80327B08  48 00 58 71 */	bl changeFastSkinDL__13J3DSkinDeformFP12J3DModelData
/* 80327B0C  57 DE 07 F8 */	rlwinm r30, r30, 0, 0x1f, 0x1c
/* 80327B10  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 80327B14  80 9F 00 04 */	lwz r4, 4(r31)
/* 80327B18  48 00 5C 21 */	bl transformVtxPosNrm__13J3DSkinDeformFP12J3DModelData
/* 80327B1C  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 80327B20  80 9F 00 04 */	lwz r4, 4(r31)
/* 80327B24  48 00 4E 8D */	bl initSkinInfo__13J3DSkinDeformFP12J3DModelData
lbl_80327B28:
/* 80327B28  38 80 00 00 */	li r4, 0
/* 80327B2C  7F DE F0 F8 */	nor r30, r30, r30
/* 80327B30  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 80327B34  41 82 00 34 */	beq lbl_80327B68
/* 80327B38  38 7F 00 88 */	addi r3, r31, 0x88
/* 80327B3C  4B FE 99 3D */	bl allocTransformedVtxPosArray__15J3DVertexBufferFv
/* 80327B40  7C 64 1B 79 */	or. r4, r3, r3
/* 80327B44  41 82 00 14 */	beq lbl_80327B58
/* 80327B48  80 1F 00 08 */	lwz r0, 8(r31)
/* 80327B4C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80327B50  90 1F 00 08 */	stw r0, 8(r31)
/* 80327B54  48 00 00 68 */	b lbl_80327BBC
lbl_80327B58:
/* 80327B58  80 1F 00 08 */	lwz r0, 8(r31)
/* 80327B5C  60 00 00 04 */	ori r0, r0, 4
/* 80327B60  90 1F 00 08 */	stw r0, 8(r31)
/* 80327B64  48 00 00 10 */	b lbl_80327B74
lbl_80327B68:
/* 80327B68  80 1F 00 08 */	lwz r0, 8(r31)
/* 80327B6C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80327B70  90 1F 00 08 */	stw r0, 8(r31)
lbl_80327B74:
/* 80327B74  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 80327B78  41 82 00 34 */	beq lbl_80327BAC
/* 80327B7C  38 7F 00 88 */	addi r3, r31, 0x88
/* 80327B80  4B FE 99 AD */	bl allocTransformedVtxNrmArray__15J3DVertexBufferFv
/* 80327B84  7C 64 1B 79 */	or. r4, r3, r3
/* 80327B88  41 82 00 14 */	beq lbl_80327B9C
/* 80327B8C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80327B90  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80327B94  90 1F 00 08 */	stw r0, 8(r31)
/* 80327B98  48 00 00 24 */	b lbl_80327BBC
lbl_80327B9C:
/* 80327B9C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80327BA0  60 00 00 08 */	ori r0, r0, 8
/* 80327BA4  90 1F 00 08 */	stw r0, 8(r31)
/* 80327BA8  48 00 00 10 */	b lbl_80327BB8
lbl_80327BAC:
/* 80327BAC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80327BB0  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80327BB4  90 1F 00 08 */	stw r0, 8(r31)
lbl_80327BB8:
/* 80327BB8  7C 83 23 78 */	mr r3, r4
lbl_80327BBC:
/* 80327BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80327BC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80327BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80327BC8  7C 08 03 A6 */	mtlr r0
/* 80327BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80327BD0  4E 80 00 20 */	blr 
