lbl_80326258:
/* 80326258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032625C  7C 08 02 A6 */	mflr r0
/* 80326260  90 01 00 24 */	stw r0, 0x24(r1)
/* 80326264  39 61 00 20 */	addi r11, r1, 0x20
/* 80326268  48 03 BF 71 */	bl _savegpr_28
/* 8032626C  7C 7C 1B 78 */	mr r28, r3
/* 80326270  7C 9D 23 78 */	mr r29, r4
/* 80326274  7C BE 2B 78 */	mr r30, r5
/* 80326278  93 C3 00 2C */	stw r30, 0x2c(r3)
/* 8032627C  38 1D 00 10 */	addi r0, r29, 0x10
/* 80326280  90 03 00 00 */	stw r0, 0(r3)
/* 80326284  48 00 00 E1 */	bl createAnmMtx__12J3DMtxBufferFP12J3DModelData
/* 80326288  2C 03 00 00 */	cmpwi r3, 0
/* 8032628C  41 82 00 08 */	beq lbl_80326294
/* 80326290  48 00 00 BC */	b lbl_8032634C
lbl_80326294:
/* 80326294  7F 83 E3 78 */	mr r3, r28
/* 80326298  7F A4 EB 78 */	mr r4, r29
/* 8032629C  48 00 01 55 */	bl createWeightEnvelopeMtx__12J3DMtxBufferFP12J3DModelData
/* 803262A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803262A4  41 82 00 08 */	beq lbl_803262AC
/* 803262A8  48 00 00 A4 */	b lbl_8032634C
lbl_803262AC:
/* 803262AC  80 7D 00 08 */	lwz r3, 8(r29)
/* 803262B0  54 60 C7 FF */	rlwinm. r0, r3, 0x18, 0x1f, 0x1f
/* 803262B4  41 82 00 10 */	beq lbl_803262C4
/* 803262B8  7F 83 E3 78 */	mr r3, r28
/* 803262BC  48 00 01 D1 */	bl setNoUseDrawMtx__12J3DMtxBufferFv
/* 803262C0  48 00 00 44 */	b lbl_80326304
lbl_803262C4:
/* 803262C4  54 60 06 F6 */	rlwinm r0, r3, 0, 0x1b, 0x1b
/* 803262C8  2C 00 00 10 */	cmpwi r0, 0x10
/* 803262CC  41 82 00 14 */	beq lbl_803262E0
/* 803262D0  40 80 00 20 */	bge lbl_803262F0
/* 803262D4  2C 00 00 00 */	cmpwi r0, 0
/* 803262D8  41 82 00 18 */	beq lbl_803262F0
/* 803262DC  48 00 00 14 */	b lbl_803262F0
lbl_803262E0:
/* 803262E0  7F 83 E3 78 */	mr r3, r28
/* 803262E4  48 00 01 A9 */	bl setNoUseDrawMtx__12J3DMtxBufferFv
/* 803262E8  7C 7F 1B 78 */	mr r31, r3
/* 803262EC  48 00 00 18 */	b lbl_80326304
lbl_803262F0:
/* 803262F0  7F 83 E3 78 */	mr r3, r28
/* 803262F4  7F A4 EB 78 */	mr r4, r29
/* 803262F8  7F C5 F3 78 */	mr r5, r30
/* 803262FC  48 00 01 BD */	bl createDoubleDrawMtx__12J3DMtxBufferFP12J3DModelDataUl
/* 80326300  7C 7F 1B 78 */	mr r31, r3
lbl_80326304:
/* 80326304  2C 1F 00 00 */	cmpwi r31, 0
/* 80326308  41 82 00 0C */	beq lbl_80326314
/* 8032630C  7F E3 FB 78 */	mr r3, r31
/* 80326310  48 00 00 3C */	b lbl_8032634C
lbl_80326314:
/* 80326314  80 1D 00 08 */	lwz r0, 8(r29)
/* 80326318  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8032631C  41 82 00 10 */	beq lbl_8032632C
/* 80326320  38 00 00 00 */	li r0, 0
/* 80326324  B0 1D 00 0C */	sth r0, 0xc(r29)
/* 80326328  48 00 00 20 */	b lbl_80326348
lbl_8032632C:
/* 8032632C  7F 83 E3 78 */	mr r3, r28
/* 80326330  7F A4 EB 78 */	mr r4, r29
/* 80326334  7F C5 F3 78 */	mr r5, r30
/* 80326338  48 00 03 2D */	bl createBumpMtxArray__12J3DMtxBufferFP12J3DModelDataUl
/* 8032633C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80326340  41 82 00 08 */	beq lbl_80326348
/* 80326344  48 00 00 08 */	b lbl_8032634C
lbl_80326348:
/* 80326348  7F E3 FB 78 */	mr r3, r31
lbl_8032634C:
/* 8032634C  39 61 00 20 */	addi r11, r1, 0x20
/* 80326350  48 03 BE D5 */	bl _restgpr_28
/* 80326354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80326358  7C 08 03 A6 */	mtlr r0
/* 8032635C  38 21 00 20 */	addi r1, r1, 0x20
/* 80326360  4E 80 00 20 */	blr 
