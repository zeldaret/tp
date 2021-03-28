lbl_801F1B38:
/* 801F1B38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F1B3C  7C 08 02 A6 */	mflr r0
/* 801F1B40  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F1B44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F1B48  7C 7F 1B 78 */	mr r31, r3
/* 801F1B4C  38 00 00 A2 */	li r0, 0xa2
/* 801F1B50  90 01 00 08 */	stw r0, 8(r1)
/* 801F1B54  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F1B58  38 81 00 08 */	addi r4, r1, 8
/* 801F1B5C  38 A0 00 00 */	li r5, 0
/* 801F1B60  38 C0 00 00 */	li r6, 0
/* 801F1B64  38 E0 00 00 */	li r7, 0
/* 801F1B68  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F1B6C  FC 40 08 90 */	fmr f2, f1
/* 801F1B70  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F1B74  FC 80 18 90 */	fmr f4, f3
/* 801F1B78  39 00 00 00 */	li r8, 0
/* 801F1B7C  48 0B 9E 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F1B80  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F1B84  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F1B88  4B FA 37 19 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F1B8C  88 1F 01 BC */	lbz r0, 0x1bc(r31)
/* 801F1B90  28 00 00 03 */	cmplwi r0, 3
/* 801F1B94  41 82 00 38 */	beq lbl_801F1BCC
/* 801F1B98  28 00 00 04 */	cmplwi r0, 4
/* 801F1B9C  41 82 00 30 */	beq lbl_801F1BCC
/* 801F1BA0  38 00 00 03 */	li r0, 3
/* 801F1BA4  98 1F 01 BA */	stb r0, 0x1ba(r31)
/* 801F1BA8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801F1BAC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801F1BB0  88 83 00 DD */	lbz r4, 0xdd(r3)
/* 801F1BB4  28 04 00 00 */	cmplwi r4, 0
/* 801F1BB8  41 82 00 08 */	beq lbl_801F1BC0
/* 801F1BBC  48 02 C2 5D */	bl setMiniGameItem__13dMeter2Info_cFUc
lbl_801F1BC0:
/* 801F1BC0  38 00 00 29 */	li r0, 0x29
/* 801F1BC4  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F1BC8  48 00 00 1C */	b lbl_801F1BE4
lbl_801F1BCC:
/* 801F1BCC  38 00 00 01 */	li r0, 1
/* 801F1BD0  98 1F 01 BF */	stb r0, 0x1bf(r31)
/* 801F1BD4  38 00 00 00 */	li r0, 0
/* 801F1BD8  98 1F 21 A2 */	stb r0, 0x21a2(r31)
/* 801F1BDC  38 00 00 07 */	li r0, 7
/* 801F1BE0  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F1BE4:
/* 801F1BE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F1BE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F1BEC  7C 08 03 A6 */	mtlr r0
/* 801F1BF0  38 21 00 20 */	addi r1, r1, 0x20
/* 801F1BF4  4E 80 00 20 */	blr 
