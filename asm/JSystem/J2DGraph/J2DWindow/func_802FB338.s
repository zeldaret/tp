lbl_802FB338:
/* 802FB338  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802FB33C  7C 08 02 A6 */	mflr r0
/* 802FB340  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FB344  39 61 00 30 */	addi r11, r1, 0x30
/* 802FB348  48 06 6E 95 */	bl _savegpr_29
/* 802FB34C  7C 7E 1B 78 */	mr r30, r3
/* 802FB350  7C 9F 23 78 */	mr r31, r4
/* 802FB354  38 00 00 00 */	li r0, 0
/* 802FB358  C0 24 00 08 */	lfs f1, 8(r4)
/* 802FB35C  C0 04 00 00 */	lfs f0, 0(r4)
/* 802FB360  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802FB364  4C 41 13 82 */	cror 2, 1, 2
/* 802FB368  40 82 00 1C */	bne lbl_802FB384
/* 802FB36C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802FB370  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802FB374  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802FB378  4C 41 13 82 */	cror 2, 1, 2
/* 802FB37C  40 82 00 08 */	bne lbl_802FB384
/* 802FB380  38 00 00 01 */	li r0, 1
lbl_802FB384:
/* 802FB384  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802FB388  41 82 02 94 */	beq lbl_802FB61C
/* 802FB38C  38 60 00 01 */	li r3, 1
/* 802FB390  48 06 27 A1 */	bl GXSetNumChans
/* 802FB394  38 60 00 00 */	li r3, 0
/* 802FB398  48 06 0A 65 */	bl GXSetNumTexGens
/* 802FB39C  38 60 00 01 */	li r3, 1
/* 802FB3A0  48 06 44 F1 */	bl GXSetNumTevStages
/* 802FB3A4  38 60 00 00 */	li r3, 0
/* 802FB3A8  38 80 00 04 */	li r4, 4
/* 802FB3AC  48 06 3D ED */	bl GXSetTevOp
/* 802FB3B0  38 60 00 00 */	li r3, 0
/* 802FB3B4  38 80 00 FF */	li r4, 0xff
/* 802FB3B8  38 A0 00 FF */	li r5, 0xff
/* 802FB3BC  38 C0 00 04 */	li r6, 4
/* 802FB3C0  48 06 43 35 */	bl GXSetTevOrder
/* 802FB3C4  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 802FB3C8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802FB3CC  28 00 00 FF */	cmplwi r0, 0xff
/* 802FB3D0  40 82 00 58 */	bne lbl_802FB428
/* 802FB3D4  80 1E 01 2C */	lwz r0, 0x12c(r30)
/* 802FB3D8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802FB3DC  28 00 00 FF */	cmplwi r0, 0xff
/* 802FB3E0  40 82 00 48 */	bne lbl_802FB428
/* 802FB3E4  80 1E 01 30 */	lwz r0, 0x130(r30)
/* 802FB3E8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802FB3EC  28 00 00 FF */	cmplwi r0, 0xff
/* 802FB3F0  40 82 00 38 */	bne lbl_802FB428
/* 802FB3F4  80 1E 01 34 */	lwz r0, 0x134(r30)
/* 802FB3F8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802FB3FC  28 00 00 FF */	cmplwi r0, 0xff
/* 802FB400  40 82 00 28 */	bne lbl_802FB428
/* 802FB404  88 1E 00 B3 */	lbz r0, 0xb3(r30)
/* 802FB408  28 00 00 FF */	cmplwi r0, 0xff
/* 802FB40C  40 82 00 1C */	bne lbl_802FB428
/* 802FB410  38 60 00 00 */	li r3, 0
/* 802FB414  38 80 00 01 */	li r4, 1
/* 802FB418  38 A0 00 00 */	li r5, 0
/* 802FB41C  38 C0 00 0F */	li r6, 0xf
/* 802FB420  48 06 47 D1 */	bl GXSetBlendMode
/* 802FB424  48 00 00 18 */	b lbl_802FB43C
lbl_802FB428:
/* 802FB428  38 60 00 01 */	li r3, 1
/* 802FB42C  38 80 00 04 */	li r4, 4
/* 802FB430  38 A0 00 05 */	li r5, 5
/* 802FB434  38 C0 00 0F */	li r6, 0xf
/* 802FB438  48 06 47 B9 */	bl GXSetBlendMode
lbl_802FB43C:
/* 802FB43C  48 06 01 51 */	bl GXClearVtxDesc
/* 802FB440  38 60 00 09 */	li r3, 9
/* 802FB444  38 80 00 01 */	li r4, 1
/* 802FB448  48 05 FA 71 */	bl GXSetVtxDesc
/* 802FB44C  38 60 00 0B */	li r3, 0xb
/* 802FB450  38 80 00 01 */	li r4, 1
/* 802FB454  48 05 FA 65 */	bl GXSetVtxDesc
/* 802FB458  38 60 00 04 */	li r3, 4
/* 802FB45C  38 80 00 00 */	li r4, 0
/* 802FB460  38 A0 00 00 */	li r5, 0
/* 802FB464  38 C0 00 01 */	li r6, 1
/* 802FB468  38 E0 00 00 */	li r7, 0
/* 802FB46C  39 00 00 00 */	li r8, 0
/* 802FB470  39 20 00 02 */	li r9, 2
/* 802FB474  48 06 26 F9 */	bl GXSetChanCtrl
/* 802FB478  38 60 00 00 */	li r3, 0
/* 802FB47C  48 06 3C 59 */	bl GXSetNumIndStages
/* 802FB480  3B A0 00 00 */	li r29, 0
lbl_802FB484:
/* 802FB484  7F A3 EB 78 */	mr r3, r29
/* 802FB488  48 06 3C 71 */	bl GXSetTevDirect
/* 802FB48C  3B BD 00 01 */	addi r29, r29, 1
/* 802FB490  2C 1D 00 10 */	cmpwi r29, 0x10
/* 802FB494  41 80 FF F0 */	blt lbl_802FB484
/* 802FB498  80 1E 01 10 */	lwz r0, 0x110(r30)
/* 802FB49C  28 00 00 00 */	cmplwi r0, 0
/* 802FB4A0  40 82 01 2C */	bne lbl_802FB5CC
/* 802FB4A4  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 802FB4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FB4AC  80 1E 01 30 */	lwz r0, 0x130(r30)
/* 802FB4B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FB4B4  80 1E 01 2C */	lwz r0, 0x12c(r30)
/* 802FB4B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FB4BC  80 1E 01 34 */	lwz r0, 0x134(r30)
/* 802FB4C0  90 01 00 08 */	stw r0, 8(r1)
/* 802FB4C4  88 9E 00 B3 */	lbz r4, 0xb3(r30)
/* 802FB4C8  28 04 00 FF */	cmplwi r4, 0xff
/* 802FB4CC  41 82 00 48 */	beq lbl_802FB514
/* 802FB4D0  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802FB4D4  7C 00 21 D6 */	mullw r0, r0, r4
/* 802FB4D8  38 60 00 FF */	li r3, 0xff
/* 802FB4DC  7C 00 1B D6 */	divw r0, r0, r3
/* 802FB4E0  98 01 00 17 */	stb r0, 0x17(r1)
/* 802FB4E4  88 01 00 13 */	lbz r0, 0x13(r1)
/* 802FB4E8  7C 00 21 D6 */	mullw r0, r0, r4
/* 802FB4EC  7C 00 1B D6 */	divw r0, r0, r3
/* 802FB4F0  98 01 00 13 */	stb r0, 0x13(r1)
/* 802FB4F4  88 01 00 0F */	lbz r0, 0xf(r1)
/* 802FB4F8  7C 00 21 D6 */	mullw r0, r0, r4
/* 802FB4FC  7C 00 1B D6 */	divw r0, r0, r3
/* 802FB500  98 01 00 0F */	stb r0, 0xf(r1)
/* 802FB504  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802FB508  7C 00 21 D6 */	mullw r0, r0, r4
/* 802FB50C  7C 00 1B D6 */	divw r0, r0, r3
/* 802FB510  98 01 00 0B */	stb r0, 0xb(r1)
lbl_802FB514:
/* 802FB514  38 60 00 00 */	li r3, 0
/* 802FB518  38 80 00 09 */	li r4, 9
/* 802FB51C  38 A0 00 01 */	li r5, 1
/* 802FB520  38 C0 00 04 */	li r6, 4
/* 802FB524  38 E0 00 00 */	li r7, 0
/* 802FB528  48 06 00 9D */	bl GXSetVtxAttrFmt
/* 802FB52C  38 60 00 80 */	li r3, 0x80
/* 802FB530  38 80 00 00 */	li r4, 0
/* 802FB534  38 A0 00 04 */	li r5, 4
/* 802FB538  48 06 12 2D */	bl GXBegin
/* 802FB53C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 802FB540  C0 5F 00 00 */	lfs f2, 0(r31)
/* 802FB544  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 802FB548  D0 43 80 00 */	stfs f2, 0x8000(r3)
/* 802FB54C  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 802FB550  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FB554  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FB558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FB55C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FB560  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802FB564  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 802FB568  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 802FB56C  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FB570  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FB574  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802FB578  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FB57C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 802FB580  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 802FB584  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 802FB588  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FB58C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FB590  80 01 00 08 */	lwz r0, 8(r1)
/* 802FB594  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FB598  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 802FB59C  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 802FB5A0  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FB5A4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FB5A8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802FB5AC  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FB5B0  38 60 00 00 */	li r3, 0
/* 802FB5B4  38 80 00 09 */	li r4, 9
/* 802FB5B8  38 A0 00 01 */	li r5, 1
/* 802FB5BC  38 C0 00 03 */	li r6, 3
/* 802FB5C0  38 E0 00 00 */	li r7, 0
/* 802FB5C4  48 06 00 01 */	bl GXSetVtxAttrFmt
/* 802FB5C8  48 00 00 54 */	b lbl_802FB61C
lbl_802FB5CC:
/* 802FB5CC  48 05 FF C1 */	bl GXClearVtxDesc
/* 802FB5D0  38 60 00 09 */	li r3, 9
/* 802FB5D4  38 80 00 01 */	li r4, 1
/* 802FB5D8  48 05 F8 E1 */	bl GXSetVtxDesc
/* 802FB5DC  38 60 00 0B */	li r3, 0xb
/* 802FB5E0  38 80 00 01 */	li r4, 1
/* 802FB5E4  48 05 F8 D5 */	bl GXSetVtxDesc
/* 802FB5E8  38 60 00 0D */	li r3, 0xd
/* 802FB5EC  38 80 00 01 */	li r4, 1
/* 802FB5F0  48 05 F8 C9 */	bl GXSetVtxDesc
/* 802FB5F4  38 60 00 01 */	li r3, 1
/* 802FB5F8  48 06 08 05 */	bl GXSetNumTexGens
/* 802FB5FC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 802FB600  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802FB604  7F C3 F3 78 */	mr r3, r30
/* 802FB608  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802FB60C  EC 60 08 28 */	fsubs f3, f0, f1
/* 802FB610  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 802FB614  EC 80 10 28 */	fsubs f4, f0, f2
/* 802FB618  48 00 02 51 */	bl drawContentsTexture__9J2DWindowFffff
lbl_802FB61C:
/* 802FB61C  39 61 00 30 */	addi r11, r1, 0x30
/* 802FB620  48 06 6C 09 */	bl _restgpr_29
/* 802FB624  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802FB628  7C 08 03 A6 */	mtlr r0
/* 802FB62C  38 21 00 30 */	addi r1, r1, 0x30
/* 802FB630  4E 80 00 20 */	blr 
