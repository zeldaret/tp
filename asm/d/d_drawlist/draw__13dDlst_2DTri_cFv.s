lbl_80051AF0:
/* 80051AF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80051AF4  7C 08 02 A6 */	mflr r0
/* 80051AF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80051AFC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80051B00  7C 7F 1B 78 */	mr r31, r3
/* 80051B04  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80051B08  38 E3 9A 20 */	addi r7, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80051B0C  A8 1F 00 0C */	lha r0, 0xc(r31)
/* 80051B10  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80051B14  7C 67 02 14 */	add r3, r7, r0
/* 80051B18  C0 43 00 04 */	lfs f2, 4(r3)
/* 80051B1C  7C 67 04 2E */	lfsx f3, r7, r0
/* 80051B20  39 00 00 00 */	li r8, 0
/* 80051B24  38 60 00 00 */	li r3, 0
/* 80051B28  38 C1 00 14 */	addi r6, r1, 0x14
/* 80051B2C  38 81 00 0C */	addi r4, r1, 0xc
/* 80051B30  38 00 00 03 */	li r0, 3
/* 80051B34  7C 09 03 A6 */	mtctr r0
lbl_80051B38:
/* 80051B38  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80051B3C  55 00 04 38 */	rlwinm r0, r8, 0, 0x10, 0x1c
/* 80051B40  7C A7 02 14 */	add r5, r7, r0
/* 80051B44  C0 05 00 00 */	lfs f0, 0(r5)
/* 80051B48  EC 81 00 32 */	fmuls f4, f1, f0
/* 80051B4C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80051B50  C0 05 00 04 */	lfs f0, 4(r5)
/* 80051B54  EC A1 00 32 */	fmuls f5, f1, f0
/* 80051B58  A8 BF 00 04 */	lha r5, 4(r31)
/* 80051B5C  EC 24 00 B2 */	fmuls f1, f4, f2
/* 80051B60  EC 05 00 F2 */	fmuls f0, f5, f3
/* 80051B64  EC 01 00 2A */	fadds f0, f1, f0
/* 80051B68  FC 00 00 1E */	fctiwz f0, f0
/* 80051B6C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80051B70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80051B74  7C 05 02 14 */	add r0, r5, r0
/* 80051B78  7C 06 1B 2E */	sthx r0, r6, r3
/* 80051B7C  A8 BF 00 06 */	lha r5, 6(r31)
/* 80051B80  EC 25 00 B2 */	fmuls f1, f5, f2
/* 80051B84  EC 04 00 F2 */	fmuls f0, f4, f3
/* 80051B88  EC 01 00 28 */	fsubs f0, f1, f0
/* 80051B8C  FC 00 00 1E */	fctiwz f0, f0
/* 80051B90  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80051B94  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80051B98  7C 05 02 14 */	add r0, r5, r0
/* 80051B9C  7C 04 1B 2E */	sthx r0, r4, r3
/* 80051BA0  39 08 AA AB */	addi r8, r8, -21845
/* 80051BA4  38 63 00 02 */	addi r3, r3, 2
/* 80051BA8  42 00 FF 90 */	bdnz lbl_80051B38
/* 80051BAC  48 30 99 E1 */	bl GXClearVtxDesc
/* 80051BB0  38 60 00 09 */	li r3, 9
/* 80051BB4  38 80 00 01 */	li r4, 1
/* 80051BB8  48 30 93 01 */	bl GXSetVtxDesc
/* 80051BBC  38 60 00 00 */	li r3, 0
/* 80051BC0  38 80 00 09 */	li r4, 9
/* 80051BC4  38 A0 00 01 */	li r5, 1
/* 80051BC8  38 C0 00 03 */	li r6, 3
/* 80051BCC  38 E0 00 00 */	li r7, 0
/* 80051BD0  48 30 99 F5 */	bl GXSetVtxAttrFmt
/* 80051BD4  38 60 00 01 */	li r3, 1
/* 80051BD8  48 30 BF 59 */	bl GXSetNumChans
/* 80051BDC  38 60 00 04 */	li r3, 4
/* 80051BE0  38 80 00 00 */	li r4, 0
/* 80051BE4  38 A0 00 00 */	li r5, 0
/* 80051BE8  38 C0 00 00 */	li r6, 0
/* 80051BEC  38 E0 00 00 */	li r7, 0
/* 80051BF0  39 00 00 00 */	li r8, 0
/* 80051BF4  39 20 00 02 */	li r9, 2
/* 80051BF8  48 30 BF 75 */	bl GXSetChanCtrl
/* 80051BFC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80051C00  90 01 00 08 */	stw r0, 8(r1)
/* 80051C04  38 60 00 04 */	li r3, 4
/* 80051C08  38 81 00 08 */	addi r4, r1, 8
/* 80051C0C  48 30 BE 3D */	bl GXSetChanMatColor
/* 80051C10  38 60 00 00 */	li r3, 0
/* 80051C14  48 30 A1 E9 */	bl GXSetNumTexGens
/* 80051C18  38 60 00 01 */	li r3, 1
/* 80051C1C  48 30 DC 75 */	bl GXSetNumTevStages
/* 80051C20  38 60 00 00 */	li r3, 0
/* 80051C24  38 80 00 FF */	li r4, 0xff
/* 80051C28  38 A0 00 FF */	li r5, 0xff
/* 80051C2C  38 C0 00 04 */	li r6, 4
/* 80051C30  48 30 DA C5 */	bl GXSetTevOrder
/* 80051C34  38 60 00 00 */	li r3, 0
/* 80051C38  38 80 00 04 */	li r4, 4
/* 80051C3C  48 30 D5 5D */	bl GXSetTevOp
/* 80051C40  38 60 00 01 */	li r3, 1
/* 80051C44  38 80 00 04 */	li r4, 4
/* 80051C48  38 A0 00 05 */	li r5, 5
/* 80051C4C  38 C0 00 0F */	li r6, 0xf
/* 80051C50  48 30 DF A1 */	bl GXSetBlendMode
/* 80051C54  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 80051C58  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 80051C5C  38 80 00 00 */	li r4, 0
/* 80051C60  48 30 E5 ED */	bl GXLoadPosMtxImm
/* 80051C64  38 60 00 00 */	li r3, 0
/* 80051C68  48 30 E6 85 */	bl GXSetCurrentMtx
/* 80051C6C  38 60 00 90 */	li r3, 0x90
/* 80051C70  38 80 00 00 */	li r4, 0
/* 80051C74  38 A0 00 03 */	li r5, 3
/* 80051C78  48 30 AA ED */	bl GXBegin
/* 80051C7C  A8 01 00 14 */	lha r0, 0x14(r1)
/* 80051C80  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80051C84  B0 04 80 00 */	sth r0, 0x8000(r4)  /* 0xCC008000@l */
/* 80051C88  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80051C8C  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 80051C90  38 60 00 00 */	li r3, 0
/* 80051C94  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 80051C98  A8 01 00 16 */	lha r0, 0x16(r1)
/* 80051C9C  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 80051CA0  A8 01 00 0E */	lha r0, 0xe(r1)
/* 80051CA4  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 80051CA8  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 80051CAC  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80051CB0  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 80051CB4  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80051CB8  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 80051CBC  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 80051CC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80051CC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80051CC8  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 80051CCC  81 83 00 00 */	lwz r12, 0(r3)
/* 80051CD0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80051CD4  7D 89 03 A6 */	mtctr r12
/* 80051CD8  4E 80 04 21 */	bctrl 
/* 80051CDC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80051CE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80051CE4  7C 08 03 A6 */	mtlr r0
/* 80051CE8  38 21 00 40 */	addi r1, r1, 0x40
/* 80051CEC  4E 80 00 20 */	blr 
