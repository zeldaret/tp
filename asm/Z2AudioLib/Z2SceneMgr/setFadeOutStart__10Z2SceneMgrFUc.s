lbl_802B697C:
/* 802B697C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B6980  7C 08 02 A6 */	mflr r0
/* 802B6984  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B6988  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B698C  7C 7F 1B 78 */	mr r31, r3
/* 802B6990  38 80 00 00 */	li r4, 0
/* 802B6994  4B FF FF 4D */	bl setSceneExist__10Z2SceneMgrFb
/* 802B6998  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B699C  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 802B69A0  38 00 00 21 */	li r0, 0x21
/* 802B69A4  90 03 00 80 */	stw r0, 0x80(r3)
/* 802B69A8  C0 62 C0 40 */	lfs f3, lit_3529(r2)
/* 802B69AC  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B69B0  80 03 00 80 */	lwz r0, 0x80(r3)
/* 802B69B4  C8 22 C0 48 */	lfd f1, lit_3531(r2)
/* 802B69B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B69BC  3C 00 43 30 */	lis r0, 0x4330
/* 802B69C0  90 01 00 08 */	stw r0, 8(r1)
/* 802B69C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 802B69C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B69CC  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B69D0  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 802B69D4  D0 63 00 7C */	stfs f3, 0x7c(r3)
/* 802B69D8  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B69DC  C0 22 C0 38 */	lfs f1, lit_3511(r2)
/* 802B69E0  38 80 00 21 */	li r4, 0x21
/* 802B69E4  4B FF 70 11 */	bl seMoveVolumeAll__7Z2SeMgrFfUl
/* 802B69E8  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B69EC  38 80 00 01 */	li r4, 1
/* 802B69F0  4B FF D7 75 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 802B69F4  38 00 00 28 */	li r0, 0x28
/* 802B69F8  98 1F 00 17 */	stb r0, 0x17(r31)
/* 802B69FC  38 00 FF FF */	li r0, -1
/* 802B6A00  90 1F 00 08 */	stw r0, 8(r31)
/* 802B6A04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B6A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B6A0C  7C 08 03 A6 */	mtlr r0
/* 802B6A10  38 21 00 20 */	addi r1, r1, 0x20
/* 802B6A14  4E 80 00 20 */	blr 
