lbl_80075B84:
/* 80075B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80075B88  7C 08 02 A6 */	mflr r0
/* 80075B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80075B90  39 61 00 20 */	addi r11, r1, 0x20
/* 80075B94  48 2E C6 45 */	bl _savegpr_28
/* 80075B98  7C 7C 1B 78 */	mr r28, r3
/* 80075B9C  7C BD 2B 78 */	mr r29, r5
/* 80075BA0  A0 04 00 02 */	lhz r0, 2(r4)
/* 80075BA4  1F E0 00 14 */	mulli r31, r0, 0x14
/* 80075BA8  7F DC F8 2E */	lwzx r30, r28, r31
/* 80075BAC  7F C3 F3 78 */	mr r3, r30
/* 80075BB0  48 1F 26 25 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80075BB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80075BB8  41 82 00 24 */	beq lbl_80075BDC
/* 80075BBC  7F C3 F3 78 */	mr r3, r30
/* 80075BC0  7C 9C FA 14 */	add r4, r28, r31
/* 80075BC4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80075BC8  7F A5 EB 78 */	mr r5, r29
/* 80075BCC  81 9E 00 04 */	lwz r12, 4(r30)
/* 80075BD0  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 80075BD4  7D 89 03 A6 */	mtctr r12
/* 80075BD8  4E 80 04 21 */	bctrl 
lbl_80075BDC:
/* 80075BDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80075BE0  48 2E C6 45 */	bl _restgpr_28
/* 80075BE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80075BE8  7C 08 03 A6 */	mtlr r0
/* 80075BEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80075BF0  4E 80 00 20 */	blr 
