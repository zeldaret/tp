/* 802B697C 002B38BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B6980 002B38C0  7C 08 02 A6 */	mflr r0
/* 802B6984 002B38C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B6988 002B38C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B698C 002B38CC  7C 7F 1B 78 */	mr r31, r3
/* 802B6990 002B38D0  38 80 00 00 */	li r4, 0
/* 802B6994 002B38D4  4B FF FF 4D */	bl setSceneExist__10Z2SceneMgrFb
/* 802B6998 002B38D8  80 6D 86 04 */	lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 802B699C 002B38DC  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 802B69A0 002B38E0  38 00 00 21 */	li r0, 0x21
/* 802B69A4 002B38E4  90 03 00 80 */	stw r0, 0x80(r3)
/* 802B69A8 002B38E8  C0 62 C0 40 */	lfs f3, lbl_80455A40-_SDA2_BASE_(r2)
/* 802B69AC 002B38EC  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B69B0 002B38F0  80 03 00 80 */	lwz r0, 0x80(r3)
/* 802B69B4 002B38F4  C8 22 C0 48 */	lfd f1, lbl_80455A48-_SDA2_BASE_(r2)
/* 802B69B8 002B38F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B69BC 002B38FC  3C 00 43 30 */	lis r0, 0x4330
/* 802B69C0 002B3900  90 01 00 08 */	stw r0, 8(r1)
/* 802B69C4 002B3904  C8 01 00 08 */	lfd f0, 8(r1)
/* 802B69C8 002B3908  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B69CC 002B390C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B69D0 002B3910  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 802B69D4 002B3914  D0 63 00 7C */	stfs f3, 0x7c(r3)
/* 802B69D8 002B3918  80 6D 86 08 */	lwz r3, lbl_80450B88-_SDA_BASE_(r13)
/* 802B69DC 002B391C  C0 22 C0 38 */	lfs f1, lbl_80455A38-_SDA2_BASE_(r2)
/* 802B69E0 002B3920  38 80 00 21 */	li r4, 0x21
/* 802B69E4 002B3924  4B FF 70 11 */	bl seMoveVolumeAll__7Z2SeMgrFfUl
/* 802B69E8 002B3928  80 6D 86 04 */	lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 802B69EC 002B392C  38 80 00 01 */	li r4, 1
/* 802B69F0 002B3930  4B FF D7 75 */	bl Z2SeqMgr_NS_setBattleBgmOff
/* 802B69F4 002B3934  38 00 00 28 */	li r0, 0x28
/* 802B69F8 002B3938  98 1F 00 17 */	stb r0, 0x17(r31)
/* 802B69FC 002B393C  38 00 FF FF */	li r0, -1
/* 802B6A00 002B3940  90 1F 00 08 */	stw r0, 8(r31)
/* 802B6A04 002B3944  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B6A08 002B3948  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B6A0C 002B394C  7C 08 03 A6 */	mtlr r0
/* 802B6A10 002B3950  38 21 00 20 */	addi r1, r1, 0x20
/* 802B6A14 002B3954  4E 80 00 20 */	blr 