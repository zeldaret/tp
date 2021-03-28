lbl_80540884:
/* 80540884  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80540888  7C 08 02 A6 */	mflr r0
/* 8054088C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80540890  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80540894  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80540898  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054089C  7C 7F 1B 78 */	mr r31, r3
/* 805408A0  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 805408A4  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 805408A8  38 A0 00 1F */	li r5, 0x1f
/* 805408AC  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 805408B0  28 00 00 00 */	cmplwi r0, 0
/* 805408B4  40 82 00 90 */	bne lbl_80540944
/* 805408B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805408BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805408C0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805408C4  28 00 00 00 */	cmplwi r0, 0
/* 805408C8  41 82 00 0C */	beq lbl_805408D4
/* 805408CC  38 80 00 00 */	li r4, 0
/* 805408D0  38 A0 00 00 */	li r5, 0
lbl_805408D4:
/* 805408D4  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 805408D8  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 805408DC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805408E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 805408E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805408E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805408EC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805408F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805408F4  38 00 00 79 */	li r0, 0x79
/* 805408F8  90 1F 0E 74 */	stw r0, 0xe74(r31)
/* 805408FC  90 9F 0E 70 */	stw r4, 0xe70(r31)
/* 80540900  90 BF 0E 60 */	stw r5, 0xe60(r31)
/* 80540904  80 1F 0E E4 */	lwz r0, 0xee4(r31)
/* 80540908  60 00 00 04 */	ori r0, r0, 4
/* 8054090C  90 1F 0E E4 */	stw r0, 0xee4(r31)
/* 80540910  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80540914  4B D2 E8 E4 */	b SetH__8cM3dGCylFf
/* 80540918  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 8054091C  FC 20 F8 90 */	fmr f1, f31
/* 80540920  4B D2 E8 E0 */	b SetR__8cM3dGCylFf
/* 80540924  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80540928  38 81 00 08 */	addi r4, r1, 8
/* 8054092C  4B D2 E8 B0 */	b SetC__8cM3dGCylFRC4cXyz
/* 80540930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80540934  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80540938  38 63 23 3C */	addi r3, r3, 0x233c
/* 8054093C  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80540940  4B D2 42 68 */	b Set__4cCcSFP8cCcD_Obj
lbl_80540944:
/* 80540944  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80540948  81 9F 0E 84 */	lwz r12, 0xe84(r31)
/* 8054094C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80540950  7D 89 03 A6 */	mtctr r12
/* 80540954  4E 80 04 21 */	bctrl 
/* 80540958  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 8054095C  81 9F 0E 84 */	lwz r12, 0xe84(r31)
/* 80540960  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80540964  7D 89 03 A6 */	mtctr r12
/* 80540968  4E 80 04 21 */	bctrl 
/* 8054096C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80540970  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80540974  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80540978  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054097C  7C 08 03 A6 */	mtlr r0
/* 80540980  38 21 00 30 */	addi r1, r1, 0x30
/* 80540984  4E 80 00 20 */	blr 
