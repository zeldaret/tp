lbl_8032F3F8:
/* 8032F3F8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8032F3FC  7C 08 02 A6 */	mflr r0
/* 8032F400  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8032F404  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8032F408  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 8032F40C  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8032F410  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 8032F414  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8032F418  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 8032F41C  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 8032F420  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 8032F424  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 8032F428  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 8032F42C  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 8032F430  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 8032F434  39 61 00 50 */	addi r11, r1, 0x50
/* 8032F438  48 03 2D 9D */	bl _savegpr_27
/* 8032F43C  7C 7E 1B 78 */	mr r30, r3
/* 8032F440  3B E0 00 00 */	li r31, 0
/* 8032F444  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8032F448  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8032F44C  38 81 00 08 */	addi r4, r1, 8
/* 8032F450  48 01 70 61 */	bl PSMTXCopy
/* 8032F454  3C 60 80 43 */	lis r3, mCurrentS__6J3DSys@ha
/* 8032F458  3B 83 4C 14 */	addi r28, r3, mCurrentS__6J3DSys@l
/* 8032F45C  C3 FC 00 00 */	lfs f31, 0(r28)
/* 8032F460  C3 DC 00 04 */	lfs f30, 4(r28)
/* 8032F464  C3 BC 00 08 */	lfs f29, 8(r28)
/* 8032F468  3C 60 80 43 */	lis r3, mParentS__6J3DSys@ha
/* 8032F46C  3B A3 4C 20 */	addi r29, r3, mParentS__6J3DSys@l
/* 8032F470  C3 9D 00 00 */	lfs f28, 0(r29)
/* 8032F474  C3 7D 00 04 */	lfs f27, 4(r29)
/* 8032F478  C3 5D 00 08 */	lfs f26, 8(r29)
/* 8032F47C  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 8032F480  28 03 00 00 */	cmplwi r3, 0
/* 8032F484  41 82 00 24 */	beq lbl_8032F4A8
/* 8032F488  83 ED 90 78 */	lwz r31, mCurrentMtxCalc__8J3DJoint(r13)
/* 8032F48C  90 6D 90 78 */	stw r3, mCurrentMtxCalc__8J3DJoint(r13)
/* 8032F490  93 CD 90 74 */	stw r30, mJoint__10J3DMtxCalc(r13)
/* 8032F494  81 83 00 00 */	lwz r12, 0(r3)
/* 8032F498  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8032F49C  7D 89 03 A6 */	mtctr r12
/* 8032F4A0  4E 80 04 21 */	bctrl 
/* 8032F4A4  48 00 00 24 */	b lbl_8032F4C8
lbl_8032F4A8:
/* 8032F4A8  80 6D 90 78 */	lwz r3, mCurrentMtxCalc__8J3DJoint(r13)
/* 8032F4AC  28 03 00 00 */	cmplwi r3, 0
/* 8032F4B0  41 82 00 18 */	beq lbl_8032F4C8
/* 8032F4B4  93 CD 90 74 */	stw r30, mJoint__10J3DMtxCalc(r13)
/* 8032F4B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8032F4BC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8032F4C0  7D 89 03 A6 */	mtctr r12
/* 8032F4C4  4E 80 04 21 */	bctrl 
lbl_8032F4C8:
/* 8032F4C8  83 7E 00 04 */	lwz r27, 4(r30)
/* 8032F4CC  28 1B 00 00 */	cmplwi r27, 0
/* 8032F4D0  41 82 00 18 */	beq lbl_8032F4E8
/* 8032F4D4  7F C3 F3 78 */	mr r3, r30
/* 8032F4D8  38 80 00 00 */	li r4, 0
/* 8032F4DC  7F 6C DB 78 */	mr r12, r27
/* 8032F4E0  7D 89 03 A6 */	mtctr r12
/* 8032F4E4  4E 80 04 21 */	bctrl 
lbl_8032F4E8:
/* 8032F4E8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8032F4EC  28 03 00 00 */	cmplwi r3, 0
/* 8032F4F0  41 82 00 08 */	beq lbl_8032F4F8
/* 8032F4F4  4B FF FF 05 */	bl recursiveCalc__8J3DJointFv
lbl_8032F4F8:
/* 8032F4F8  38 61 00 08 */	addi r3, r1, 8
/* 8032F4FC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8032F500  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8032F504  48 01 6F AD */	bl PSMTXCopy
/* 8032F508  3C 60 80 43 */	lis r3, mCurrentS__6J3DSys@ha
/* 8032F50C  D3 E3 4C 14 */	stfs f31, mCurrentS__6J3DSys@l(r3)
/* 8032F510  D3 DC 00 04 */	stfs f30, 4(r28)
/* 8032F514  D3 BC 00 08 */	stfs f29, 8(r28)
/* 8032F518  3C 60 80 43 */	lis r3, mParentS__6J3DSys@ha
/* 8032F51C  D3 83 4C 20 */	stfs f28, mParentS__6J3DSys@l(r3)
/* 8032F520  D3 7D 00 04 */	stfs f27, 4(r29)
/* 8032F524  D3 5D 00 08 */	stfs f26, 8(r29)
/* 8032F528  28 1F 00 00 */	cmplwi r31, 0
/* 8032F52C  41 82 00 08 */	beq lbl_8032F534
/* 8032F530  93 ED 90 78 */	stw r31, mCurrentMtxCalc__8J3DJoint(r13)
lbl_8032F534:
/* 8032F534  28 1B 00 00 */	cmplwi r27, 0
/* 8032F538  41 82 00 18 */	beq lbl_8032F550
/* 8032F53C  7F C3 F3 78 */	mr r3, r30
/* 8032F540  38 80 00 01 */	li r4, 1
/* 8032F544  7F 6C DB 78 */	mr r12, r27
/* 8032F548  7D 89 03 A6 */	mtctr r12
/* 8032F54C  4E 80 04 21 */	bctrl 
lbl_8032F550:
/* 8032F550  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8032F554  28 03 00 00 */	cmplwi r3, 0
/* 8032F558  41 82 00 08 */	beq lbl_8032F560
/* 8032F55C  4B FF FE 9D */	bl recursiveCalc__8J3DJointFv
lbl_8032F560:
/* 8032F560  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 8032F564  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8032F568  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8032F56C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8032F570  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 8032F574  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8032F578  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 8032F57C  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8032F580  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 8032F584  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 8032F588  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 8032F58C  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 8032F590  39 61 00 50 */	addi r11, r1, 0x50
/* 8032F594  48 03 2C 8D */	bl _restgpr_27
/* 8032F598  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8032F59C  7C 08 03 A6 */	mtlr r0
/* 8032F5A0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8032F5A4  4E 80 00 20 */	blr 
