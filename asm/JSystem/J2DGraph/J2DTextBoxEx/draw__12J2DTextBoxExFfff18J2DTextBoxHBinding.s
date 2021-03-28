lbl_80307AF0:
/* 80307AF0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80307AF4  7C 08 02 A6 */	mflr r0
/* 80307AF8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80307AFC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80307B00  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80307B04  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80307B08  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80307B0C  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80307B10  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80307B14  93 E1 00 AC */	stw r31, 0xac(r1)
/* 80307B18  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 80307B1C  7C 7E 1B 78 */	mr r30, r3
/* 80307B20  FF A0 08 90 */	fmr f29, f1
/* 80307B24  FF C0 10 90 */	fmr f30, f2
/* 80307B28  FF E0 18 90 */	fmr f31, f3
/* 80307B2C  7C 9F 23 78 */	mr r31, r4
/* 80307B30  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80307B34  28 00 00 00 */	cmplwi r0, 0
/* 80307B38  41 82 01 F4 */	beq lbl_80307D2C
/* 80307B3C  38 80 00 00 */	li r4, 0
/* 80307B40  80 7E 01 38 */	lwz r3, 0x138(r30)
/* 80307B44  28 03 00 00 */	cmplwi r3, 0
/* 80307B48  41 82 00 24 */	beq lbl_80307B6C
/* 80307B4C  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80307B50  28 03 00 00 */	cmplwi r3, 0
/* 80307B54  41 82 00 18 */	beq lbl_80307B6C
/* 80307B58  81 83 00 00 */	lwz r12, 0(r3)
/* 80307B5C  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 80307B60  7D 89 03 A6 */	mtctr r12
/* 80307B64  4E 80 04 21 */	bctrl 
/* 80307B68  7C 64 1B 78 */	mr r4, r3
lbl_80307B6C:
/* 80307B6C  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 80307B70  90 01 00 08 */	stw r0, 8(r1)
/* 80307B74  80 1E 01 2C */	lwz r0, 0x12c(r30)
/* 80307B78  90 01 00 0C */	stw r0, 0xc(r1)
/* 80307B7C  80 1E 01 08 */	lwz r0, 0x108(r30)
/* 80307B80  90 01 00 10 */	stw r0, 0x10(r1)
/* 80307B84  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 80307B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80307B8C  38 61 00 48 */	addi r3, r1, 0x48
/* 80307B90  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 80307B94  C0 5E 01 18 */	lfs f2, 0x118(r30)
/* 80307B98  38 A1 00 14 */	addi r5, r1, 0x14
/* 80307B9C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80307BA0  38 E1 00 0C */	addi r7, r1, 0xc
/* 80307BA4  39 01 00 08 */	addi r8, r1, 8
/* 80307BA8  4B FE C7 ED */	bl __ct__8J2DPrintFP7JUTFontffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 80307BAC  C0 5E 01 20 */	lfs f2, 0x120(r30)
/* 80307BB0  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80307BB4  C0 02 C8 D8 */	lfs f0, lit_1534(r2)
/* 80307BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80307BBC  40 81 00 08 */	ble lbl_80307BC4
/* 80307BC0  48 00 00 08 */	b lbl_80307BC8
lbl_80307BC4:
/* 80307BC4  FC 20 00 90 */	fmr f1, f0
lbl_80307BC8:
/* 80307BC8  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 80307BCC  C0 02 C8 D8 */	lfs f0, lit_1534(r2)
/* 80307BD0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80307BD4  40 81 00 08 */	ble lbl_80307BDC
/* 80307BD8  48 00 00 08 */	b lbl_80307BE0
lbl_80307BDC:
/* 80307BDC  FC 40 00 90 */	fmr f2, f0
lbl_80307BE0:
/* 80307BE0  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 80307BE4  88 1E 00 B2 */	lbz r0, 0xb2(r30)
/* 80307BE8  98 1E 00 B3 */	stb r0, 0xb3(r30)
/* 80307BEC  80 7E 01 38 */	lwz r3, 0x138(r30)
/* 80307BF0  28 03 00 00 */	cmplwi r3, 0
/* 80307BF4  41 82 01 2C */	beq lbl_80307D20
/* 80307BF8  4B FE 27 95 */	bl setGX__11J2DMaterialFv
/* 80307BFC  7F C3 F3 78 */	mr r3, r30
/* 80307C00  FC 20 E8 90 */	fmr f1, f29
/* 80307C04  FC 40 F0 90 */	fmr f2, f30
/* 80307C08  C0 62 C8 D8 */	lfs f3, lit_1534(r2)
/* 80307C0C  FC 80 18 90 */	fmr f4, f3
/* 80307C10  81 9E 00 00 */	lwz r12, 0(r30)
/* 80307C14  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80307C18  7D 89 03 A6 */	mtctr r12
/* 80307C1C  4E 80 04 21 */	bctrl 
/* 80307C20  38 7E 00 50 */	addi r3, r30, 0x50
/* 80307C24  38 80 00 00 */	li r4, 0
/* 80307C28  48 05 86 25 */	bl GXLoadPosMtxImm
/* 80307C2C  38 60 00 00 */	li r3, 0
/* 80307C30  48 05 86 BD */	bl GXSetCurrentMtx
/* 80307C34  80 7E 01 38 */	lwz r3, 0x138(r30)
/* 80307C38  88 03 00 0E */	lbz r0, 0xe(r3)
/* 80307C3C  28 00 00 00 */	cmplwi r0, 0
/* 80307C40  40 82 00 14 */	bne lbl_80307C54
/* 80307C44  38 61 00 48 */	addi r3, r1, 0x48
/* 80307C48  38 80 FF FF */	li r4, -1
/* 80307C4C  4B FE C7 D5 */	bl __dt__8J2DPrintFv
/* 80307C50  48 00 00 DC */	b lbl_80307D2C
lbl_80307C54:
/* 80307C54  48 05 39 39 */	bl GXClearVtxDesc
/* 80307C58  38 60 00 09 */	li r3, 9
/* 80307C5C  38 80 00 01 */	li r4, 1
/* 80307C60  48 05 32 59 */	bl GXSetVtxDesc
/* 80307C64  38 60 00 0B */	li r3, 0xb
/* 80307C68  38 80 00 01 */	li r4, 1
/* 80307C6C  48 05 32 4D */	bl GXSetVtxDesc
/* 80307C70  38 60 00 0D */	li r3, 0xd
/* 80307C74  38 80 00 01 */	li r4, 1
/* 80307C78  48 05 32 41 */	bl GXSetVtxDesc
/* 80307C7C  80 9E 01 24 */	lwz r4, 0x124(r30)
/* 80307C80  28 04 00 00 */	cmplwi r4, 0
/* 80307C84  41 82 00 40 */	beq lbl_80307CC4
/* 80307C88  38 E0 00 FF */	li r7, 0xff
/* 80307C8C  80 7E 01 38 */	lwz r3, 0x138(r30)
/* 80307C90  88 03 00 0F */	lbz r0, 0xf(r3)
/* 80307C94  2C 00 00 01 */	cmpwi r0, 1
/* 80307C98  40 82 00 08 */	bne lbl_80307CA0
/* 80307C9C  88 FE 00 B3 */	lbz r7, 0xb3(r30)
lbl_80307CA0:
/* 80307CA0  38 61 00 48 */	addi r3, r1, 0x48
/* 80307CA4  FC 20 F8 90 */	fmr f1, f31
/* 80307CA8  C0 42 C8 D8 */	lfs f2, lit_1534(r2)
/* 80307CAC  7F E5 FB 78 */	mr r5, r31
/* 80307CB0  38 C0 00 02 */	li r6, 2
/* 80307CB4  FC 60 10 90 */	fmr f3, f2
/* 80307CB8  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80307CBC  FC 80 00 50 */	fneg f4, f0
/* 80307CC0  4B FE CB 69 */	bl printReturn__8J2DPrintFPCcff18J2DTextBoxHBinding18J2DTextBoxVBindingffUc
lbl_80307CC4:
/* 80307CC4  3B C0 00 00 */	li r30, 0
lbl_80307CC8:
/* 80307CC8  7F C3 F3 78 */	mr r3, r30
/* 80307CCC  38 80 00 00 */	li r4, 0
/* 80307CD0  38 A0 00 01 */	li r5, 1
/* 80307CD4  38 C0 00 02 */	li r6, 2
/* 80307CD8  38 E0 00 03 */	li r7, 3
/* 80307CDC  48 05 78 C9 */	bl GXSetTevSwapModeTable
/* 80307CE0  3B DE 00 01 */	addi r30, r30, 1
/* 80307CE4  2C 1E 00 04 */	cmpwi r30, 4
/* 80307CE8  41 80 FF E0 */	blt lbl_80307CC8
/* 80307CEC  38 60 00 00 */	li r3, 0
/* 80307CF0  48 05 73 E5 */	bl GXSetNumIndStages
/* 80307CF4  3B C0 00 00 */	li r30, 0
lbl_80307CF8:
/* 80307CF8  7F C3 F3 78 */	mr r3, r30
/* 80307CFC  48 05 73 FD */	bl GXSetTevDirect
/* 80307D00  3B DE 00 01 */	addi r30, r30, 1
/* 80307D04  2C 1E 00 10 */	cmpwi r30, 0x10
/* 80307D08  41 80 FF F0 */	blt lbl_80307CF8
/* 80307D0C  38 61 00 18 */	addi r3, r1, 0x18
/* 80307D10  48 03 E7 75 */	bl PSMTXIdentity
/* 80307D14  38 61 00 18 */	addi r3, r1, 0x18
/* 80307D18  38 80 00 00 */	li r4, 0
/* 80307D1C  48 05 85 31 */	bl GXLoadPosMtxImm
lbl_80307D20:
/* 80307D20  38 61 00 48 */	addi r3, r1, 0x48
/* 80307D24  38 80 FF FF */	li r4, -1
/* 80307D28  4B FE C6 F9 */	bl __dt__8J2DPrintFv
lbl_80307D2C:
/* 80307D2C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80307D30  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80307D34  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80307D38  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80307D3C  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80307D40  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80307D44  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80307D48  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 80307D4C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80307D50  7C 08 03 A6 */	mtlr r0
/* 80307D54  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80307D58  4E 80 00 20 */	blr 
