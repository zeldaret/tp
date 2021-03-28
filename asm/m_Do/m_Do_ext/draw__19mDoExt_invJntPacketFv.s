lbl_80012220:
/* 80012220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80012224  7C 08 02 A6 */	mflr r0
/* 80012228  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001222C  39 61 00 20 */	addi r11, r1, 0x20
/* 80012230  48 34 FF AD */	bl _savegpr_29
/* 80012234  7C 7F 1B 78 */	mr r31, r3
/* 80012238  38 00 00 00 */	li r0, 0
/* 8001223C  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 80012240  88 03 00 16 */	lbz r0, 0x16(r3)
/* 80012244  28 00 00 00 */	cmplwi r0, 0
/* 80012248  41 82 00 D8 */	beq lbl_80012320
/* 8001224C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80012250  80 63 00 04 */	lwz r3, 4(r3)
/* 80012254  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80012258  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 8001225C  54 00 10 3A */	slwi r0, r0, 2
/* 80012260  7C 63 00 2E */	lwzx r3, r3, r0
/* 80012264  83 A3 00 58 */	lwz r29, 0x58(r3)
/* 80012268  48 00 00 AC */	b lbl_80012314
lbl_8001226C:
/* 8001226C  7F A3 EB 78 */	mr r3, r29
/* 80012270  81 9D 00 00 */	lwz r12, 0(r29)
/* 80012274  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80012278  7D 89 03 A6 */	mtctr r12
/* 8001227C  4E 80 04 21 */	bctrl 
/* 80012280  A0 1D 00 14 */	lhz r0, 0x14(r29)
/* 80012284  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80012288  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 8001228C  54 00 32 B2 */	rlwinm r0, r0, 6, 0xa, 0x19
/* 80012290  7F C3 02 14 */	add r30, r3, r0
/* 80012294  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80012298  48 30 03 81 */	bl callDL__17J3DDisplayListObjCFv
/* 8001229C  38 60 00 01 */	li r3, 1
/* 800122A0  38 80 00 03 */	li r4, 3
/* 800122A4  38 A0 00 01 */	li r5, 1
/* 800122A8  48 2B BD FD */	bl GFSetZMode__FUc10_GXCompareUc
/* 800122AC  38 60 00 00 */	li r3, 0
/* 800122B0  38 80 00 00 */	li r4, 0
/* 800122B4  38 A0 00 00 */	li r5, 0
/* 800122B8  38 C0 00 00 */	li r6, 0
/* 800122BC  38 E0 00 00 */	li r7, 0
/* 800122C0  39 00 00 00 */	li r8, 0
/* 800122C4  39 20 00 01 */	li r9, 1
/* 800122C8  48 2B BD 3D */	bl GFSetBlendModeEtc__F12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOpUcUcUc
/* 800122CC  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 800122D0  7C 7E 1B 78 */	mr r30, r3
/* 800122D4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 800122D8  48 30 30 29 */	bl loadPreDrawSetting__8J3DShapeCFv
lbl_800122DC:
/* 800122DC  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 800122E0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800122E4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800122E8  40 82 00 1C */	bne lbl_80012304
/* 800122EC  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 800122F0  28 03 00 00 */	cmplwi r3, 0
/* 800122F4  41 82 00 08 */	beq lbl_800122FC
/* 800122F8  48 30 03 21 */	bl callDL__17J3DDisplayListObjCFv
lbl_800122FC:
/* 800122FC  7F C3 F3 78 */	mr r3, r30
/* 80012300  48 30 0C BD */	bl drawFast__14J3DShapePacketFv
lbl_80012304:
/* 80012304  83 DE 00 04 */	lwz r30, 4(r30)
/* 80012308  28 1E 00 00 */	cmplwi r30, 0
/* 8001230C  40 82 FF D0 */	bne lbl_800122DC
/* 80012310  83 BD 00 04 */	lwz r29, 4(r29)
lbl_80012314:
/* 80012314  28 1D 00 00 */	cmplwi r29, 0
/* 80012318  40 82 FF 54 */	bne lbl_8001226C
/* 8001231C  48 00 00 74 */	b lbl_80012390
lbl_80012320:
/* 80012320  3C 60 80 3A */	lis r3, l_invisibleMat@ha
/* 80012324  38 63 30 20 */	addi r3, r3, l_invisibleMat@l
/* 80012328  38 80 00 80 */	li r4, 0x80
/* 8001232C  48 34 DB C5 */	bl GXCallDisplayList
/* 80012330  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80012334  80 83 00 04 */	lwz r4, 4(r3)
/* 80012338  80 64 00 28 */	lwz r3, 0x28(r4)
/* 8001233C  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 80012340  54 00 10 3A */	slwi r0, r0, 2
/* 80012344  7C 63 00 2E */	lwzx r3, r3, r0
/* 80012348  83 A3 00 58 */	lwz r29, 0x58(r3)
/* 8001234C  80 64 00 80 */	lwz r3, 0x80(r4)
/* 80012350  80 63 00 00 */	lwz r3, 0(r3)
/* 80012354  48 30 2F AD */	bl loadPreDrawSetting__8J3DShapeCFv
/* 80012358  48 00 00 30 */	b lbl_80012388
lbl_8001235C:
/* 8001235C  80 7D 00 08 */	lwz r3, 8(r29)
/* 80012360  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80012364  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80012368  40 82 00 1C */	bne lbl_80012384
/* 8001236C  A0 03 00 08 */	lhz r0, 8(r3)
/* 80012370  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80012374  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 80012378  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 8001237C  7C 63 02 14 */	add r3, r3, r0
/* 80012380  48 30 0C 3D */	bl drawFast__14J3DShapePacketFv
lbl_80012384:
/* 80012384  83 BD 00 04 */	lwz r29, 4(r29)
lbl_80012388:
/* 80012388  28 1D 00 00 */	cmplwi r29, 0
/* 8001238C  40 82 FF D0 */	bne lbl_8001235C
lbl_80012390:
/* 80012390  38 00 00 00 */	li r0, 0
/* 80012394  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 80012398  38 60 00 00 */	li r3, 0
/* 8001239C  38 80 00 00 */	li r4, 0
/* 800123A0  38 A0 00 00 */	li r5, 0
/* 800123A4  38 C0 00 00 */	li r6, 0
/* 800123A8  38 E0 00 01 */	li r7, 1
/* 800123AC  39 00 00 00 */	li r8, 0
/* 800123B0  39 20 00 01 */	li r9, 1
/* 800123B4  48 2B BC 51 */	bl GFSetBlendModeEtc__F12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOpUcUcUc
/* 800123B8  39 61 00 20 */	addi r11, r1, 0x20
/* 800123BC  48 34 FE 6D */	bl _restgpr_29
/* 800123C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800123C4  7C 08 03 A6 */	mtlr r0
/* 800123C8  38 21 00 20 */	addi r1, r1, 0x20
/* 800123CC  4E 80 00 20 */	blr 
