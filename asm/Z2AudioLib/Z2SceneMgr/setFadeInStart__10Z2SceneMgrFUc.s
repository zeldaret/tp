lbl_802B6A18:
/* 802B6A18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B6A1C  7C 08 02 A6 */	mflr r0
/* 802B6A20  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B6A24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B6A28  7C 7F 1B 78 */	mr r31, r3
/* 802B6A2C  88 03 00 15 */	lbz r0, 0x15(r3)
/* 802B6A30  28 00 00 7F */	cmplwi r0, 0x7f
/* 802B6A34  40 82 00 18 */	bne lbl_802B6A4C
/* 802B6A38  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B6A3C  C0 22 C0 38 */	lfs f1, lit_3511(r2)
/* 802B6A40  38 80 00 00 */	li r4, 0
/* 802B6A44  4B FF 6F B1 */	bl seMoveVolumeAll__7Z2SeMgrFfUl
/* 802B6A48  48 00 00 34 */	b lbl_802B6A7C
lbl_802B6A4C:
/* 802B6A4C  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B6A50  C0 22 C0 3C */	lfs f1, lit_3512(r2)
/* 802B6A54  38 80 00 21 */	li r4, 0x21
/* 802B6A58  4B FF 6F 9D */	bl seMoveVolumeAll__7Z2SeMgrFfUl
/* 802B6A5C  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 802B6A60  28 00 00 85 */	cmplwi r0, 0x85
/* 802B6A64  40 82 00 18 */	bne lbl_802B6A7C
/* 802B6A68  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802B6A6C  38 63 03 EC */	addi r3, r3, 0x3ec
/* 802B6A70  C0 22 C0 38 */	lfs f1, lit_3511(r2)
/* 802B6A74  38 80 00 00 */	li r4, 0
/* 802B6A78  4B FE C3 3D */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802B6A7C:
/* 802B6A7C  C0 02 C0 3C */	lfs f0, lit_3512(r2)
/* 802B6A80  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6A84  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 802B6A88  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B6A8C  4B FF F6 F1 */	bl menuOut__11Z2StatusMgrFv
/* 802B6A90  88 1F 00 1A */	lbz r0, 0x1a(r31)
/* 802B6A94  28 00 00 00 */	cmplwi r0, 0
/* 802B6A98  40 82 00 44 */	bne lbl_802B6ADC
/* 802B6A9C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6AA0  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 802B6AA4  38 00 00 21 */	li r0, 0x21
/* 802B6AA8  90 03 00 80 */	stw r0, 0x80(r3)
/* 802B6AAC  C0 62 C0 3C */	lfs f3, lit_3512(r2)
/* 802B6AB0  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B6AB4  80 03 00 80 */	lwz r0, 0x80(r3)
/* 802B6AB8  C8 22 C0 48 */	lfd f1, lit_3531(r2)
/* 802B6ABC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B6AC0  3C 00 43 30 */	lis r0, 0x4330
/* 802B6AC4  90 01 00 08 */	stw r0, 8(r1)
/* 802B6AC8  C8 01 00 08 */	lfd f0, 8(r1)
/* 802B6ACC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B6AD0  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B6AD4  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 802B6AD8  D0 63 00 7C */	stfs f3, 0x7c(r3)
lbl_802B6ADC:
/* 802B6ADC  38 00 00 01 */	li r0, 1
/* 802B6AE0  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 802B6AE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B6AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B6AEC  7C 08 03 A6 */	mtlr r0
/* 802B6AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 802B6AF4  4E 80 00 20 */	blr 
