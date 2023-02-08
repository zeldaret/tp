lbl_80281A08:
/* 80281A08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80281A0C  7C 08 02 A6 */	mflr r0
/* 80281A10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80281A14  39 61 00 30 */	addi r11, r1, 0x30
/* 80281A18  48 0E 07 2D */	bl _savefpr_29
/* 80281A1C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80281A20  7C 7F 1B 78 */	mr r31, r3
/* 80281A24  FF E0 10 90 */	fmr f31, f2
/* 80281A28  FF A0 18 90 */	fmr f29, f3
/* 80281A2C  C8 63 00 20 */	lfd f3, 0x20(r3)
/* 80281A30  C8 43 00 28 */	lfd f2, 0x28(r3)
/* 80281A34  FC 01 18 28 */	fsub f0, f1, f3
/* 80281A38  FC 02 00 32 */	fmul f0, f2, f0
/* 80281A3C  FC 43 00 2A */	fadd f2, f3, f0
/* 80281A40  88 03 00 19 */	lbz r0, 0x19(r3)
/* 80281A44  7C 00 07 74 */	extsb r0, r0
/* 80281A48  2C 00 00 02 */	cmpwi r0, 2
/* 80281A4C  41 82 01 1C */	beq lbl_80281B68
/* 80281A50  40 80 00 14 */	bge lbl_80281A64
/* 80281A54  2C 00 00 00 */	cmpwi r0, 0
/* 80281A58  41 82 00 1C */	beq lbl_80281A74
/* 80281A5C  40 80 00 90 */	bge lbl_80281AEC
/* 80281A60  48 00 00 14 */	b lbl_80281A74
lbl_80281A64:
/* 80281A64  2C 00 00 04 */	cmpwi r0, 4
/* 80281A68  41 82 02 0C */	beq lbl_80281C74
/* 80281A6C  40 80 00 08 */	bge lbl_80281A74
/* 80281A70  48 00 01 78 */	b lbl_80281BE8
lbl_80281A74:
/* 80281A74  C8 1F 00 00 */	lfd f0, 0(r31)
/* 80281A78  FF E2 00 28 */	fsub f31, f2, f0
/* 80281A7C  C8 02 BA 00 */	lfd f0, lit_652(r2)
/* 80281A80  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80281A84  40 80 00 28 */	bge lbl_80281AAC
/* 80281A88  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80281A8C  4B FF FB BD */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80281A90  FC 20 F8 90 */	fmr f1, f31
/* 80281A94  C8 5F 00 10 */	lfd f2, 0x10(r31)
/* 80281A98  7C 6C 1B 78 */	mr r12, r3
/* 80281A9C  7D 89 03 A6 */	mtctr r12
/* 80281AA0  4E 80 04 21 */	bctrl 
/* 80281AA4  FF E0 08 90 */	fmr f31, f1
/* 80281AA8  48 00 00 34 */	b lbl_80281ADC
lbl_80281AAC:
/* 80281AAC  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 80281AB0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80281AB4  4C 41 13 82 */	cror 2, 1, 2
/* 80281AB8  40 82 00 24 */	bne lbl_80281ADC
/* 80281ABC  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80281AC0  4B FF FB 89 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80281AC4  FC 20 F8 90 */	fmr f1, f31
/* 80281AC8  C8 5F 00 10 */	lfd f2, 0x10(r31)
/* 80281ACC  7C 6C 1B 78 */	mr r12, r3
/* 80281AD0  7D 89 03 A6 */	mtctr r12
/* 80281AD4  4E 80 04 21 */	bctrl 
/* 80281AD8  FF E0 08 90 */	fmr f31, f1
lbl_80281ADC:
/* 80281ADC  C8 1F 00 00 */	lfd f0, 0(r31)
/* 80281AE0  FF FF 00 2A */	fadd f31, f31, f0
/* 80281AE4  FC 20 F8 90 */	fmr f1, f31
/* 80281AE8  48 00 02 14 */	b lbl_80281CFC
lbl_80281AEC:
/* 80281AEC  C8 1F 00 00 */	lfd f0, 0(r31)
/* 80281AF0  FF E2 00 2A */	fadd f31, f2, f0
/* 80281AF4  FF FF 00 28 */	fsub f31, f31, f0
/* 80281AF8  C8 02 BA 00 */	lfd f0, lit_652(r2)
/* 80281AFC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80281B00  40 80 00 28 */	bge lbl_80281B28
/* 80281B04  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80281B08  4B FF FB 41 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80281B0C  FC 20 F8 90 */	fmr f1, f31
/* 80281B10  C8 5F 00 10 */	lfd f2, 0x10(r31)
/* 80281B14  7C 6C 1B 78 */	mr r12, r3
/* 80281B18  7D 89 03 A6 */	mtctr r12
/* 80281B1C  4E 80 04 21 */	bctrl 
/* 80281B20  FF E0 08 90 */	fmr f31, f1
/* 80281B24  48 00 00 34 */	b lbl_80281B58
lbl_80281B28:
/* 80281B28  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 80281B2C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80281B30  4C 41 13 82 */	cror 2, 1, 2
/* 80281B34  40 82 00 24 */	bne lbl_80281B58
/* 80281B38  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80281B3C  4B FF FB 0D */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80281B40  FC 20 F8 90 */	fmr f1, f31
/* 80281B44  C8 5F 00 10 */	lfd f2, 0x10(r31)
/* 80281B48  7C 6C 1B 78 */	mr r12, r3
/* 80281B4C  7D 89 03 A6 */	mtctr r12
/* 80281B50  4E 80 04 21 */	bctrl 
/* 80281B54  FF E0 08 90 */	fmr f31, f1
lbl_80281B58:
/* 80281B58  C8 1F 00 00 */	lfd f0, 0(r31)
/* 80281B5C  FF FF 00 2A */	fadd f31, f31, f0
/* 80281B60  FC 20 F8 90 */	fmr f1, f31
/* 80281B64  48 00 01 98 */	b lbl_80281CFC
lbl_80281B68:
/* 80281B68  C8 1F 00 08 */	lfd f0, 8(r31)
/* 80281B6C  FF E2 00 2A */	fadd f31, f2, f0
/* 80281B70  C8 1F 00 00 */	lfd f0, 0(r31)
/* 80281B74  FF FF 00 28 */	fsub f31, f31, f0
/* 80281B78  C8 02 BA 00 */	lfd f0, lit_652(r2)
/* 80281B7C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80281B80  40 80 00 28 */	bge lbl_80281BA8
/* 80281B84  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80281B88  4B FF FA C1 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80281B8C  FC 20 F8 90 */	fmr f1, f31
/* 80281B90  C8 5F 00 10 */	lfd f2, 0x10(r31)
/* 80281B94  7C 6C 1B 78 */	mr r12, r3
/* 80281B98  7D 89 03 A6 */	mtctr r12
/* 80281B9C  4E 80 04 21 */	bctrl 
/* 80281BA0  FF E0 08 90 */	fmr f31, f1
/* 80281BA4  48 00 00 34 */	b lbl_80281BD8
lbl_80281BA8:
/* 80281BA8  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 80281BAC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80281BB0  4C 41 13 82 */	cror 2, 1, 2
/* 80281BB4  40 82 00 24 */	bne lbl_80281BD8
/* 80281BB8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80281BBC  4B FF FA 8D */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80281BC0  FC 20 F8 90 */	fmr f1, f31
/* 80281BC4  C8 5F 00 10 */	lfd f2, 0x10(r31)
/* 80281BC8  7C 6C 1B 78 */	mr r12, r3
/* 80281BCC  7D 89 03 A6 */	mtctr r12
/* 80281BD0  4E 80 04 21 */	bctrl 
/* 80281BD4  FF E0 08 90 */	fmr f31, f1
lbl_80281BD8:
/* 80281BD8  C8 1F 00 00 */	lfd f0, 0(r31)
/* 80281BDC  FF FF 00 2A */	fadd f31, f31, f0
/* 80281BE0  FC 20 F8 90 */	fmr f1, f31
/* 80281BE4  48 00 01 18 */	b lbl_80281CFC
lbl_80281BE8:
/* 80281BE8  C8 22 BA 28 */	lfd f1, lit_800(r2)
/* 80281BEC  C8 7F 00 00 */	lfd f3, 0(r31)
/* 80281BF0  C8 1F 00 08 */	lfd f0, 8(r31)
/* 80281BF4  FC 03 00 2A */	fadd f0, f3, f0
/* 80281BF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80281BFC  FF E2 00 2A */	fadd f31, f2, f0
/* 80281C00  FF FF 18 28 */	fsub f31, f31, f3
/* 80281C04  C8 02 BA 00 */	lfd f0, lit_652(r2)
/* 80281C08  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80281C0C  40 80 00 28 */	bge lbl_80281C34
/* 80281C10  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80281C14  4B FF FA 35 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80281C18  FC 20 F8 90 */	fmr f1, f31
/* 80281C1C  C8 5F 00 10 */	lfd f2, 0x10(r31)
/* 80281C20  7C 6C 1B 78 */	mr r12, r3
/* 80281C24  7D 89 03 A6 */	mtctr r12
/* 80281C28  4E 80 04 21 */	bctrl 
/* 80281C2C  FF E0 08 90 */	fmr f31, f1
/* 80281C30  48 00 00 34 */	b lbl_80281C64
lbl_80281C34:
/* 80281C34  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 80281C38  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80281C3C  4C 41 13 82 */	cror 2, 1, 2
/* 80281C40  40 82 00 24 */	bne lbl_80281C64
/* 80281C44  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80281C48  4B FF FA 01 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80281C4C  FC 20 F8 90 */	fmr f1, f31
/* 80281C50  C8 5F 00 10 */	lfd f2, 0x10(r31)
/* 80281C54  7C 6C 1B 78 */	mr r12, r3
/* 80281C58  7D 89 03 A6 */	mtctr r12
/* 80281C5C  4E 80 04 21 */	bctrl 
/* 80281C60  FF E0 08 90 */	fmr f31, f1
lbl_80281C64:
/* 80281C64  C8 1F 00 00 */	lfd f0, 0(r31)
/* 80281C68  FF FF 00 2A */	fadd f31, f31, f0
/* 80281C6C  FC 20 F8 90 */	fmr f1, f31
/* 80281C70  48 00 00 8C */	b lbl_80281CFC
lbl_80281C74:
/* 80281C74  C8 1F 00 00 */	lfd f0, 0(r31)
/* 80281C78  FF C2 00 28 */	fsub f30, f2, f0
/* 80281C7C  C8 02 BA 00 */	lfd f0, lit_652(r2)
/* 80281C80  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80281C84  40 80 00 28 */	bge lbl_80281CAC
/* 80281C88  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80281C8C  4B FF F9 BD */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80281C90  FC 20 F0 90 */	fmr f1, f30
/* 80281C94  C8 5F 00 10 */	lfd f2, 0x10(r31)
/* 80281C98  7C 6C 1B 78 */	mr r12, r3
/* 80281C9C  7D 89 03 A6 */	mtctr r12
/* 80281CA0  4E 80 04 21 */	bctrl 
/* 80281CA4  FF C0 08 90 */	fmr f30, f1
/* 80281CA8  48 00 00 34 */	b lbl_80281CDC
lbl_80281CAC:
/* 80281CAC  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 80281CB0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80281CB4  4C 41 13 82 */	cror 2, 1, 2
/* 80281CB8  40 82 00 24 */	bne lbl_80281CDC
/* 80281CBC  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80281CC0  4B FF F9 89 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80281CC4  FC 20 F0 90 */	fmr f1, f30
/* 80281CC8  C8 5F 00 10 */	lfd f2, 0x10(r31)
/* 80281CCC  7C 6C 1B 78 */	mr r12, r3
/* 80281CD0  7D 89 03 A6 */	mtctr r12
/* 80281CD4  4E 80 04 21 */	bctrl 
/* 80281CD8  FF C0 08 90 */	fmr f30, f1
lbl_80281CDC:
/* 80281CDC  C8 1F 00 00 */	lfd f0, 0(r31)
/* 80281CE0  FF DE 00 2A */	fadd f30, f30, f0
/* 80281CE4  FC 3E 00 28 */	fsub f1, f30, f0
/* 80281CE8  FC 1D F8 28 */	fsub f0, f29, f31
/* 80281CEC  FC 21 00 32 */	fmul f1, f1, f0
/* 80281CF0  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 80281CF4  FC 01 00 24 */	fdiv f0, f1, f0
/* 80281CF8  FC 3F 00 2A */	fadd f1, f31, f0
lbl_80281CFC:
/* 80281CFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80281D00  48 0E 04 91 */	bl _restfpr_29
/* 80281D04  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80281D08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80281D0C  7C 08 03 A6 */	mtlr r0
/* 80281D10  38 21 00 30 */	addi r1, r1, 0x30
/* 80281D14  4E 80 00 20 */	blr 
