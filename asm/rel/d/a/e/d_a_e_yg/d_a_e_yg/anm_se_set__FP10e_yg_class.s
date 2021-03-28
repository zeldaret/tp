lbl_807FB034:
/* 807FB034  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807FB038  7C 08 02 A6 */	mflr r0
/* 807FB03C  90 01 00 44 */	stw r0, 0x44(r1)
/* 807FB040  39 61 00 40 */	addi r11, r1, 0x40
/* 807FB044  4B B6 71 98 */	b _savegpr_29
/* 807FB048  7C 7D 1B 78 */	mr r29, r3
/* 807FB04C  3C 60 80 80 */	lis r3, lit_3801@ha
/* 807FB050  3B E3 CC B4 */	addi r31, r3, lit_3801@l
/* 807FB054  3B C0 00 00 */	li r30, 0
/* 807FB058  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 807FB05C  2C 00 00 0F */	cmpwi r0, 0xf
/* 807FB060  40 82 00 4C */	bne lbl_807FB0AC
/* 807FB064  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB068  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB06C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FB070  4B B2 D3 BC */	b checkPass__12J3DFrameCtrlFf
/* 807FB074  2C 03 00 00 */	cmpwi r3, 0
/* 807FB078  41 82 02 FC */	beq lbl_807FB374
/* 807FB07C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701D0@ha */
/* 807FB080  38 03 01 D0 */	addi r0, r3, 0x01D0 /* 0x000701D0@l */
/* 807FB084  90 01 00 24 */	stw r0, 0x24(r1)
/* 807FB088  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 807FB08C  38 81 00 24 */	addi r4, r1, 0x24
/* 807FB090  38 A0 FF FF */	li r5, -1
/* 807FB094  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 807FB098  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FB09C  7D 89 03 A6 */	mtctr r12
/* 807FB0A0  4E 80 04 21 */	bctrl 
/* 807FB0A4  3B C0 00 01 */	li r30, 1
/* 807FB0A8  48 00 02 CC */	b lbl_807FB374
lbl_807FB0AC:
/* 807FB0AC  2C 00 00 10 */	cmpwi r0, 0x10
/* 807FB0B0  40 82 00 7C */	bne lbl_807FB12C
/* 807FB0B4  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB0B8  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB0BC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FB0C0  4B B2 D3 6C */	b checkPass__12J3DFrameCtrlFf
/* 807FB0C4  2C 03 00 00 */	cmpwi r3, 0
/* 807FB0C8  41 82 00 2C */	beq lbl_807FB0F4
/* 807FB0CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701D0@ha */
/* 807FB0D0  38 03 01 D0 */	addi r0, r3, 0x01D0 /* 0x000701D0@l */
/* 807FB0D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 807FB0D8  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 807FB0DC  38 81 00 20 */	addi r4, r1, 0x20
/* 807FB0E0  38 A0 FF FF */	li r5, -1
/* 807FB0E4  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 807FB0E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FB0EC  7D 89 03 A6 */	mtctr r12
/* 807FB0F0  4E 80 04 21 */	bctrl 
lbl_807FB0F4:
/* 807FB0F4  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB0F8  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB0FC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FB100  4B B2 D3 2C */	b checkPass__12J3DFrameCtrlFf
/* 807FB104  2C 03 00 00 */	cmpwi r3, 0
/* 807FB108  40 82 00 1C */	bne lbl_807FB124
/* 807FB10C  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB110  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB114  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 807FB118  4B B2 D3 14 */	b checkPass__12J3DFrameCtrlFf
/* 807FB11C  2C 03 00 00 */	cmpwi r3, 0
/* 807FB120  41 82 02 54 */	beq lbl_807FB374
lbl_807FB124:
/* 807FB124  3B C0 00 01 */	li r30, 1
/* 807FB128  48 00 02 4C */	b lbl_807FB374
lbl_807FB12C:
/* 807FB12C  2C 00 00 0D */	cmpwi r0, 0xd
/* 807FB130  40 82 00 7C */	bne lbl_807FB1AC
/* 807FB134  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB138  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB13C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FB140  4B B2 D2 EC */	b checkPass__12J3DFrameCtrlFf
/* 807FB144  2C 03 00 00 */	cmpwi r3, 0
/* 807FB148  41 82 00 2C */	beq lbl_807FB174
/* 807FB14C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701D0@ha */
/* 807FB150  38 03 01 D0 */	addi r0, r3, 0x01D0 /* 0x000701D0@l */
/* 807FB154  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807FB158  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 807FB15C  38 81 00 1C */	addi r4, r1, 0x1c
/* 807FB160  38 A0 FF FF */	li r5, -1
/* 807FB164  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 807FB168  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FB16C  7D 89 03 A6 */	mtctr r12
/* 807FB170  4E 80 04 21 */	bctrl 
lbl_807FB174:
/* 807FB174  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB178  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB17C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FB180  4B B2 D2 AC */	b checkPass__12J3DFrameCtrlFf
/* 807FB184  2C 03 00 00 */	cmpwi r3, 0
/* 807FB188  40 82 00 1C */	bne lbl_807FB1A4
/* 807FB18C  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB190  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB194  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 807FB198  4B B2 D2 94 */	b checkPass__12J3DFrameCtrlFf
/* 807FB19C  2C 03 00 00 */	cmpwi r3, 0
/* 807FB1A0  41 82 01 D4 */	beq lbl_807FB374
lbl_807FB1A4:
/* 807FB1A4  3B C0 00 01 */	li r30, 1
/* 807FB1A8  48 00 01 CC */	b lbl_807FB374
lbl_807FB1AC:
/* 807FB1AC  2C 00 00 0C */	cmpwi r0, 0xc
/* 807FB1B0  40 82 00 3C */	bne lbl_807FB1EC
/* 807FB1B4  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB1B8  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB1BC  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 807FB1C0  4B B2 D2 6C */	b checkPass__12J3DFrameCtrlFf
/* 807FB1C4  2C 03 00 00 */	cmpwi r3, 0
/* 807FB1C8  40 82 00 1C */	bne lbl_807FB1E4
/* 807FB1CC  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB1D0  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB1D4  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807FB1D8  4B B2 D2 54 */	b checkPass__12J3DFrameCtrlFf
/* 807FB1DC  2C 03 00 00 */	cmpwi r3, 0
/* 807FB1E0  41 82 01 94 */	beq lbl_807FB374
lbl_807FB1E4:
/* 807FB1E4  3B C0 00 01 */	li r30, 1
/* 807FB1E8  48 00 01 8C */	b lbl_807FB374
lbl_807FB1EC:
/* 807FB1EC  2C 00 00 0A */	cmpwi r0, 0xa
/* 807FB1F0  40 82 00 3C */	bne lbl_807FB22C
/* 807FB1F4  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB1F8  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB1FC  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 807FB200  4B B2 D2 2C */	b checkPass__12J3DFrameCtrlFf
/* 807FB204  2C 03 00 00 */	cmpwi r3, 0
/* 807FB208  40 82 00 1C */	bne lbl_807FB224
/* 807FB20C  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB210  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB214  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 807FB218  4B B2 D2 14 */	b checkPass__12J3DFrameCtrlFf
/* 807FB21C  2C 03 00 00 */	cmpwi r3, 0
/* 807FB220  41 82 01 54 */	beq lbl_807FB374
lbl_807FB224:
/* 807FB224  3B C0 00 01 */	li r30, 1
/* 807FB228  48 00 01 4C */	b lbl_807FB374
lbl_807FB22C:
/* 807FB22C  2C 00 00 08 */	cmpwi r0, 8
/* 807FB230  40 82 00 48 */	bne lbl_807FB278
/* 807FB234  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB238  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB23C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FB240  4B B2 D1 EC */	b checkPass__12J3DFrameCtrlFf
/* 807FB244  2C 03 00 00 */	cmpwi r3, 0
/* 807FB248  41 82 01 2C */	beq lbl_807FB374
/* 807FB24C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701D1@ha */
/* 807FB250  38 03 01 D1 */	addi r0, r3, 0x01D1 /* 0x000701D1@l */
/* 807FB254  90 01 00 18 */	stw r0, 0x18(r1)
/* 807FB258  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 807FB25C  38 81 00 18 */	addi r4, r1, 0x18
/* 807FB260  38 A0 FF FF */	li r5, -1
/* 807FB264  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 807FB268  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FB26C  7D 89 03 A6 */	mtctr r12
/* 807FB270  4E 80 04 21 */	bctrl 
/* 807FB274  48 00 01 00 */	b lbl_807FB374
lbl_807FB278:
/* 807FB278  2C 00 00 09 */	cmpwi r0, 9
/* 807FB27C  40 82 00 94 */	bne lbl_807FB310
/* 807FB280  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB284  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB288  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FB28C  4B B2 D1 A0 */	b checkPass__12J3DFrameCtrlFf
/* 807FB290  2C 03 00 00 */	cmpwi r3, 0
/* 807FB294  40 82 00 4C */	bne lbl_807FB2E0
/* 807FB298  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB29C  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB2A0  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 807FB2A4  4B B2 D1 88 */	b checkPass__12J3DFrameCtrlFf
/* 807FB2A8  2C 03 00 00 */	cmpwi r3, 0
/* 807FB2AC  40 82 00 34 */	bne lbl_807FB2E0
/* 807FB2B0  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB2B4  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB2B8  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 807FB2BC  4B B2 D1 70 */	b checkPass__12J3DFrameCtrlFf
/* 807FB2C0  2C 03 00 00 */	cmpwi r3, 0
/* 807FB2C4  40 82 00 1C */	bne lbl_807FB2E0
/* 807FB2C8  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB2CC  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB2D0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807FB2D4  4B B2 D1 58 */	b checkPass__12J3DFrameCtrlFf
/* 807FB2D8  2C 03 00 00 */	cmpwi r3, 0
/* 807FB2DC  41 82 00 98 */	beq lbl_807FB374
lbl_807FB2E0:
/* 807FB2E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701D3@ha */
/* 807FB2E4  38 03 01 D3 */	addi r0, r3, 0x01D3 /* 0x000701D3@l */
/* 807FB2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FB2EC  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 807FB2F0  38 81 00 14 */	addi r4, r1, 0x14
/* 807FB2F4  38 A0 00 00 */	li r5, 0
/* 807FB2F8  38 C0 FF FF */	li r6, -1
/* 807FB2FC  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 807FB300  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FB304  7D 89 03 A6 */	mtctr r12
/* 807FB308  4E 80 04 21 */	bctrl 
/* 807FB30C  48 00 00 68 */	b lbl_807FB374
lbl_807FB310:
/* 807FB310  2C 00 00 0E */	cmpwi r0, 0xe
/* 807FB314  40 82 00 60 */	bne lbl_807FB374
/* 807FB318  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB31C  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB320  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FB324  4B B2 D1 08 */	b checkPass__12J3DFrameCtrlFf
/* 807FB328  2C 03 00 00 */	cmpwi r3, 0
/* 807FB32C  40 82 00 1C */	bne lbl_807FB348
/* 807FB330  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FB334  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB338  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 807FB33C  4B B2 D0 F0 */	b checkPass__12J3DFrameCtrlFf
/* 807FB340  2C 03 00 00 */	cmpwi r3, 0
/* 807FB344  41 82 00 30 */	beq lbl_807FB374
lbl_807FB348:
/* 807FB348  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701D4@ha */
/* 807FB34C  38 03 01 D4 */	addi r0, r3, 0x01D4 /* 0x000701D4@l */
/* 807FB350  90 01 00 10 */	stw r0, 0x10(r1)
/* 807FB354  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 807FB358  38 81 00 10 */	addi r4, r1, 0x10
/* 807FB35C  38 A0 00 00 */	li r5, 0
/* 807FB360  38 C0 FF FF */	li r6, -1
/* 807FB364  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 807FB368  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FB36C  7D 89 03 A6 */	mtctr r12
/* 807FB370  4E 80 04 21 */	bctrl 
lbl_807FB374:
/* 807FB374  7F C0 07 75 */	extsb. r0, r30
/* 807FB378  41 82 00 6C */	beq lbl_807FB3E4
/* 807FB37C  88 1D 08 B0 */	lbz r0, 0x8b0(r29)
/* 807FB380  7C 00 07 75 */	extsb. r0, r0
/* 807FB384  41 82 00 34 */	beq lbl_807FB3B8
/* 807FB388  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701D9@ha */
/* 807FB38C  38 03 01 D9 */	addi r0, r3, 0x01D9 /* 0x000701D9@l */
/* 807FB390  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FB394  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 807FB398  38 81 00 0C */	addi r4, r1, 0xc
/* 807FB39C  38 A0 00 00 */	li r5, 0
/* 807FB3A0  38 C0 FF FF */	li r6, -1
/* 807FB3A4  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 807FB3A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FB3AC  7D 89 03 A6 */	mtctr r12
/* 807FB3B0  4E 80 04 21 */	bctrl 
/* 807FB3B4  48 00 00 30 */	b lbl_807FB3E4
lbl_807FB3B8:
/* 807FB3B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701D8@ha */
/* 807FB3BC  38 03 01 D8 */	addi r0, r3, 0x01D8 /* 0x000701D8@l */
/* 807FB3C0  90 01 00 08 */	stw r0, 8(r1)
/* 807FB3C4  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 807FB3C8  38 81 00 08 */	addi r4, r1, 8
/* 807FB3CC  38 A0 00 00 */	li r5, 0
/* 807FB3D0  38 C0 FF FF */	li r6, -1
/* 807FB3D4  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 807FB3D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FB3DC  7D 89 03 A6 */	mtctr r12
/* 807FB3E0  4E 80 04 21 */	bctrl 
lbl_807FB3E4:
/* 807FB3E4  39 61 00 40 */	addi r11, r1, 0x40
/* 807FB3E8  4B B6 6E 40 */	b _restgpr_29
/* 807FB3EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807FB3F0  7C 08 03 A6 */	mtlr r0
/* 807FB3F4  38 21 00 40 */	addi r1, r1, 0x40
/* 807FB3F8  4E 80 00 20 */	blr 
