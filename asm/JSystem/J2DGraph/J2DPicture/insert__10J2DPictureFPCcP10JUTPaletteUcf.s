lbl_802FD4B4:
/* 802FD4B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FD4B8  7C 08 02 A6 */	mflr r0
/* 802FD4BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FD4C0  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802FD4C4  39 61 00 18 */	addi r11, r1, 0x18
/* 802FD4C8  48 06 4D 15 */	bl _savegpr_29
/* 802FD4CC  7C 7D 1B 78 */	mr r29, r3
/* 802FD4D0  7C BE 2B 78 */	mr r30, r5
/* 802FD4D4  7C DF 33 78 */	mr r31, r6
/* 802FD4D8  FF E0 08 90 */	fmr f31, f1
/* 802FD4DC  7C 83 23 78 */	mr r3, r4
/* 802FD4E0  4B FF C1 61 */	bl getNameResource__9J2DScreenFPCc
/* 802FD4E4  7C 64 1B 78 */	mr r4, r3
/* 802FD4E8  7F A3 EB 78 */	mr r3, r29
/* 802FD4EC  7F C5 F3 78 */	mr r5, r30
/* 802FD4F0  7F E6 FB 78 */	mr r6, r31
/* 802FD4F4  FC 20 F8 90 */	fmr f1, f31
/* 802FD4F8  81 9D 00 00 */	lwz r12, 0(r29)
/* 802FD4FC  81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 802FD500  7D 89 03 A6 */	mtctr r12
/* 802FD504  4E 80 04 21 */	bctrl 
/* 802FD508  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 802FD50C  39 61 00 18 */	addi r11, r1, 0x18
/* 802FD510  48 06 4D 19 */	bl _restgpr_29
/* 802FD514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FD518  7C 08 03 A6 */	mtlr r0
/* 802FD51C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FD520  4E 80 00 20 */	blr 
