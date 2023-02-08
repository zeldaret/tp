lbl_80282858:
/* 80282858  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8028285C  7C 08 02 A6 */	mflr r0
/* 80282860  90 01 00 54 */	stw r0, 0x54(r1)
/* 80282864  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80282868  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8028286C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80282870  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80282874  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80282878  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8028287C  7C 7F 1B 78 */	mr r31, r3
/* 80282880  C8 63 00 28 */	lfd f3, 0x28(r3)
/* 80282884  C8 43 00 30 */	lfd f2, 0x30(r3)
/* 80282888  FC 01 18 28 */	fsub f0, f1, f3
/* 8028288C  FC 02 00 32 */	fmul f0, f2, f0
/* 80282890  FC 43 00 2A */	fadd f2, f3, f0
/* 80282894  80 63 00 48 */	lwz r3, 0x48(r3)
/* 80282898  3B C3 FF FF */	addi r30, r3, -1
/* 8028289C  88 7F 00 21 */	lbz r3, 0x21(r31)
/* 802828A0  7C 63 07 74 */	extsb r3, r3
/* 802828A4  C8 22 BA 48 */	lfd f1, lit_1517(r2)
/* 802828A8  93 C1 00 24 */	stw r30, 0x24(r1)
/* 802828AC  3C 00 43 30 */	lis r0, 0x4330
/* 802828B0  90 01 00 20 */	stw r0, 0x20(r1)
/* 802828B4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802828B8  FF E0 08 28 */	fsub f31, f0, f1
/* 802828BC  2C 03 00 02 */	cmpwi r3, 2
/* 802828C0  41 82 01 2C */	beq lbl_802829EC
/* 802828C4  40 80 00 14 */	bge lbl_802828D8
/* 802828C8  2C 03 00 00 */	cmpwi r3, 0
/* 802828CC  41 82 00 1C */	beq lbl_802828E8
/* 802828D0  40 80 00 98 */	bge lbl_80282968
/* 802828D4  48 00 00 14 */	b lbl_802828E8
lbl_802828D8:
/* 802828D8  2C 03 00 04 */	cmpwi r3, 4
/* 802828DC  41 82 02 2C */	beq lbl_80282B08
/* 802828E0  40 80 00 08 */	bge lbl_802828E8
/* 802828E4  48 00 01 90 */	b lbl_80282A74
lbl_802828E8:
/* 802828E8  C8 1F 00 08 */	lfd f0, 8(r31)
/* 802828EC  FF C2 00 28 */	fsub f30, f2, f0
/* 802828F0  C8 02 BA 00 */	lfd f0, lit_652(r2)
/* 802828F4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802828F8  40 80 00 28 */	bge lbl_80282920
/* 802828FC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80282900  4B FF ED 49 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80282904  FC 20 F0 90 */	fmr f1, f30
/* 80282908  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 8028290C  7C 6C 1B 78 */	mr r12, r3
/* 80282910  7D 89 03 A6 */	mtctr r12
/* 80282914  4E 80 04 21 */	bctrl 
/* 80282918  FF C0 08 90 */	fmr f30, f1
/* 8028291C  48 00 00 34 */	b lbl_80282950
lbl_80282920:
/* 80282920  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 80282924  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80282928  4C 41 13 82 */	cror 2, 1, 2
/* 8028292C  40 82 00 24 */	bne lbl_80282950
/* 80282930  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80282934  4B FF ED 15 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80282938  FC 20 F0 90 */	fmr f1, f30
/* 8028293C  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 80282940  7C 6C 1B 78 */	mr r12, r3
/* 80282944  7D 89 03 A6 */	mtctr r12
/* 80282948  4E 80 04 21 */	bctrl 
/* 8028294C  FF C0 08 90 */	fmr f30, f1
lbl_80282950:
/* 80282950  C8 1F 00 08 */	lfd f0, 8(r31)
/* 80282954  FF DE 00 2A */	fadd f30, f30, f0
/* 80282958  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 8028295C  FC 1E 00 24 */	fdiv f0, f30, f0
/* 80282960  D8 01 00 08 */	stfd f0, 8(r1)
/* 80282964  48 00 02 28 */	b lbl_80282B8C
lbl_80282968:
/* 80282968  C8 1F 00 08 */	lfd f0, 8(r31)
/* 8028296C  FF C2 00 2A */	fadd f30, f2, f0
/* 80282970  FF DE 00 28 */	fsub f30, f30, f0
/* 80282974  C8 02 BA 00 */	lfd f0, lit_652(r2)
/* 80282978  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8028297C  40 80 00 28 */	bge lbl_802829A4
/* 80282980  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80282984  4B FF EC C5 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80282988  FC 20 F0 90 */	fmr f1, f30
/* 8028298C  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 80282990  7C 6C 1B 78 */	mr r12, r3
/* 80282994  7D 89 03 A6 */	mtctr r12
/* 80282998  4E 80 04 21 */	bctrl 
/* 8028299C  FF C0 08 90 */	fmr f30, f1
/* 802829A0  48 00 00 34 */	b lbl_802829D4
lbl_802829A4:
/* 802829A4  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 802829A8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802829AC  4C 41 13 82 */	cror 2, 1, 2
/* 802829B0  40 82 00 24 */	bne lbl_802829D4
/* 802829B4  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 802829B8  4B FF EC 91 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 802829BC  FC 20 F0 90 */	fmr f1, f30
/* 802829C0  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 802829C4  7C 6C 1B 78 */	mr r12, r3
/* 802829C8  7D 89 03 A6 */	mtctr r12
/* 802829CC  4E 80 04 21 */	bctrl 
/* 802829D0  FF C0 08 90 */	fmr f30, f1
lbl_802829D4:
/* 802829D4  C8 1F 00 08 */	lfd f0, 8(r31)
/* 802829D8  FF DE 00 2A */	fadd f30, f30, f0
/* 802829DC  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 802829E0  FC 1E 00 24 */	fdiv f0, f30, f0
/* 802829E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 802829E8  48 00 01 A4 */	b lbl_80282B8C
lbl_802829EC:
/* 802829EC  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 802829F0  FF C2 00 2A */	fadd f30, f2, f0
/* 802829F4  C8 1F 00 08 */	lfd f0, 8(r31)
/* 802829F8  FF DE 00 28 */	fsub f30, f30, f0
/* 802829FC  C8 02 BA 00 */	lfd f0, lit_652(r2)
/* 80282A00  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80282A04  40 80 00 28 */	bge lbl_80282A2C
/* 80282A08  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80282A0C  4B FF EC 3D */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80282A10  FC 20 F0 90 */	fmr f1, f30
/* 80282A14  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 80282A18  7C 6C 1B 78 */	mr r12, r3
/* 80282A1C  7D 89 03 A6 */	mtctr r12
/* 80282A20  4E 80 04 21 */	bctrl 
/* 80282A24  FF C0 08 90 */	fmr f30, f1
/* 80282A28  48 00 00 34 */	b lbl_80282A5C
lbl_80282A2C:
/* 80282A2C  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 80282A30  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80282A34  4C 41 13 82 */	cror 2, 1, 2
/* 80282A38  40 82 00 24 */	bne lbl_80282A5C
/* 80282A3C  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80282A40  4B FF EC 09 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80282A44  FC 20 F0 90 */	fmr f1, f30
/* 80282A48  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 80282A4C  7C 6C 1B 78 */	mr r12, r3
/* 80282A50  7D 89 03 A6 */	mtctr r12
/* 80282A54  4E 80 04 21 */	bctrl 
/* 80282A58  FF C0 08 90 */	fmr f30, f1
lbl_80282A5C:
/* 80282A5C  C8 1F 00 08 */	lfd f0, 8(r31)
/* 80282A60  FF DE 00 2A */	fadd f30, f30, f0
/* 80282A64  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80282A68  FC 1E 00 24 */	fdiv f0, f30, f0
/* 80282A6C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80282A70  48 00 01 1C */	b lbl_80282B8C
lbl_80282A74:
/* 80282A74  C8 22 BA 28 */	lfd f1, lit_800(r2)
/* 80282A78  C8 7F 00 08 */	lfd f3, 8(r31)
/* 80282A7C  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 80282A80  FC 03 00 2A */	fadd f0, f3, f0
/* 80282A84  FC 01 00 32 */	fmul f0, f1, f0
/* 80282A88  FF C2 00 2A */	fadd f30, f2, f0
/* 80282A8C  FF DE 18 28 */	fsub f30, f30, f3
/* 80282A90  C8 02 BA 00 */	lfd f0, lit_652(r2)
/* 80282A94  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80282A98  40 80 00 28 */	bge lbl_80282AC0
/* 80282A9C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80282AA0  4B FF EB A9 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80282AA4  FC 20 F0 90 */	fmr f1, f30
/* 80282AA8  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 80282AAC  7C 6C 1B 78 */	mr r12, r3
/* 80282AB0  7D 89 03 A6 */	mtctr r12
/* 80282AB4  4E 80 04 21 */	bctrl 
/* 80282AB8  FF C0 08 90 */	fmr f30, f1
/* 80282ABC  48 00 00 34 */	b lbl_80282AF0
lbl_80282AC0:
/* 80282AC0  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 80282AC4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80282AC8  4C 41 13 82 */	cror 2, 1, 2
/* 80282ACC  40 82 00 24 */	bne lbl_80282AF0
/* 80282AD0  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80282AD4  4B FF EB 75 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80282AD8  FC 20 F0 90 */	fmr f1, f30
/* 80282ADC  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 80282AE0  7C 6C 1B 78 */	mr r12, r3
/* 80282AE4  7D 89 03 A6 */	mtctr r12
/* 80282AE8  4E 80 04 21 */	bctrl 
/* 80282AEC  FF C0 08 90 */	fmr f30, f1
lbl_80282AF0:
/* 80282AF0  C8 1F 00 08 */	lfd f0, 8(r31)
/* 80282AF4  FF DE 00 2A */	fadd f30, f30, f0
/* 80282AF8  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80282AFC  FC 1E 00 24 */	fdiv f0, f30, f0
/* 80282B00  D8 01 00 08 */	stfd f0, 8(r1)
/* 80282B04  48 00 00 88 */	b lbl_80282B8C
lbl_80282B08:
/* 80282B08  C8 1F 00 08 */	lfd f0, 8(r31)
/* 80282B0C  FF C2 00 28 */	fsub f30, f2, f0
/* 80282B10  C8 02 BA 00 */	lfd f0, lit_652(r2)
/* 80282B14  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80282B18  40 80 00 28 */	bge lbl_80282B40
/* 80282B1C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80282B20  4B FF EB 29 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80282B24  FC 20 F0 90 */	fmr f1, f30
/* 80282B28  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 80282B2C  7C 6C 1B 78 */	mr r12, r3
/* 80282B30  7D 89 03 A6 */	mtctr r12
/* 80282B34  4E 80 04 21 */	bctrl 
/* 80282B38  FF C0 08 90 */	fmr f30, f1
/* 80282B3C  48 00 00 34 */	b lbl_80282B70
lbl_80282B40:
/* 80282B40  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 80282B44  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80282B48  4C 41 13 82 */	cror 2, 1, 2
/* 80282B4C  40 82 00 24 */	bne lbl_80282B70
/* 80282B50  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80282B54  4B FF EA F5 */	bl toFunction_outside__Q27JStudio14TFunctionValueFi
/* 80282B58  FC 20 F0 90 */	fmr f1, f30
/* 80282B5C  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 80282B60  7C 6C 1B 78 */	mr r12, r3
/* 80282B64  7D 89 03 A6 */	mtctr r12
/* 80282B68  4E 80 04 21 */	bctrl 
/* 80282B6C  FF C0 08 90 */	fmr f30, f1
lbl_80282B70:
/* 80282B70  C8 1F 00 08 */	lfd f0, 8(r31)
/* 80282B74  FF DE 00 2A */	fadd f30, f30, f0
/* 80282B78  FC 1E 00 28 */	fsub f0, f30, f0
/* 80282B7C  FC 3F 00 32 */	fmul f1, f31, f0
/* 80282B80  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 80282B84  FC 01 00 24 */	fdiv f0, f1, f0
/* 80282B88  D8 01 00 08 */	stfd f0, 8(r1)
lbl_80282B8C:
/* 80282B8C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80282B90  C8 02 BA 00 */	lfd f0, lit_652(r2)
/* 80282B94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80282B98  40 80 00 10 */	bge lbl_80282BA8
/* 80282B9C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80282BA0  C0 23 00 00 */	lfs f1, 0(r3)
/* 80282BA4  48 00 00 44 */	b lbl_80282BE8
lbl_80282BA8:
/* 80282BA8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80282BAC  4C 41 13 82 */	cror 2, 1, 2
/* 80282BB0  40 82 00 14 */	bne lbl_80282BC4
/* 80282BB4  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80282BB8  57 C0 10 3A */	slwi r0, r30, 2
/* 80282BBC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80282BC0  48 00 00 28 */	b lbl_80282BE8
lbl_80282BC4:
/* 80282BC4  48 0E 95 39 */	bl floor
/* 80282BC8  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 80282BCC  48 0D F4 E1 */	bl __cvt_fp2unsigned
/* 80282BD0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80282BD4  7F E3 FB 78 */	mr r3, r31
/* 80282BD8  38 81 00 08 */	addi r4, r1, 8
/* 80282BDC  81 9F 00 58 */	lwz r12, 0x58(r31)
/* 80282BE0  7D 89 03 A6 */	mtctr r12
/* 80282BE4  4E 80 04 21 */	bctrl 
lbl_80282BE8:
/* 80282BE8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80282BEC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80282BF0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80282BF4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80282BF8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80282BFC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80282C00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80282C04  7C 08 03 A6 */	mtlr r0
/* 80282C08  38 21 00 50 */	addi r1, r1, 0x50
/* 80282C0C  4E 80 00 20 */	blr 
