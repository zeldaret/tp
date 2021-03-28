lbl_80086D8C:
/* 80086D8C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80086D90  7C 08 02 A6 */	mflr r0
/* 80086D94  90 01 00 94 */	stw r0, 0x94(r1)
/* 80086D98  DB E1 00 88 */	stfd f31, 0x88(r1)
/* 80086D9C  39 61 00 88 */	addi r11, r1, 0x88
/* 80086DA0  48 2D B4 25 */	bl _savegpr_23
/* 80086DA4  7C 79 1B 78 */	mr r25, r3
/* 80086DA8  7C 97 23 78 */	mr r23, r4
/* 80086DAC  7C B8 2B 78 */	mr r24, r5
/* 80086DB0  FF E0 08 90 */	fmr f31, f1
/* 80086DB4  7C DA 33 78 */	mr r26, r6
/* 80086DB8  7C FB 3B 78 */	mr r27, r7
/* 80086DBC  7D 1C 43 78 */	mr r28, r8
/* 80086DC0  A0 03 28 04 */	lhz r0, 0x2804(r3)
/* 80086DC4  28 00 00 00 */	cmplwi r0, 0
/* 80086DC8  40 82 00 0C */	bne lbl_80086DD4
/* 80086DCC  38 60 00 00 */	li r3, 0
/* 80086DD0  48 00 01 D0 */	b lbl_80086FA0
lbl_80086DD4:
/* 80086DD4  54 03 13 BA */	rlwinm r3, r0, 2, 0xe, 0x1d
/* 80086DD8  3B A3 10 00 */	addi r29, r3, 0x1000
/* 80086DDC  7F B9 EA 14 */	add r29, r25, r29
/* 80086DE0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80086DE4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80086DE8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80086DEC  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 80086DF0  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80086DF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80086DF8  38 61 00 3C */	addi r3, r1, 0x3c
/* 80086DFC  48 1E 81 8D */	bl __ct__8cM3dGCpsFv
/* 80086E00  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80086E04  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 80086E08  90 61 00 38 */	stw r3, 0x38(r1)
/* 80086E0C  3B E3 00 58 */	addi r31, r3, 0x58
/* 80086E10  93 E1 00 54 */	stw r31, 0x54(r1)
/* 80086E14  3B C1 00 3C */	addi r30, r1, 0x3c
/* 80086E18  7F C3 F3 78 */	mr r3, r30
/* 80086E1C  7E E4 BB 78 */	mr r4, r23
/* 80086E20  7F 05 C3 78 */	mr r5, r24
/* 80086E24  FC 20 F8 90 */	fmr f1, f31
/* 80086E28  48 1E 81 D9 */	bl Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 80086E2C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80086E30  48 1D D1 95 */	bl CalcAabBox__12cCcD_CpsAttrFv
/* 80086E34  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 80086E38  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 80086E3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80086E40  38 79 28 08 */	addi r3, r25, 0x2808
/* 80086E44  38 81 00 0C */	addi r4, r1, 0xc
/* 80086E48  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80086E4C  48 1D C8 55 */	bl CalcDivideInfoOverArea__15cCcD_DivideAreaFP15cCcD_DivideInfoRC8cM3dGAab
/* 80086E50  3B 39 10 00 */	addi r25, r25, 0x1000
/* 80086E54  48 00 01 00 */	b lbl_80086F54
lbl_80086E58:
/* 80086E58  80 79 00 00 */	lwz r3, 0(r25)
/* 80086E5C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80086E60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80086E64  41 82 00 EC */	beq lbl_80086F50
/* 80086E68  48 1D CB E1 */	bl GetAc__8cCcD_ObjFv
/* 80086E6C  7C 03 D0 40 */	cmplw r3, r26
/* 80086E70  41 82 00 E0 */	beq lbl_80086F50
/* 80086E74  80 79 00 00 */	lwz r3, 0(r25)
/* 80086E78  48 1D CB D1 */	bl GetAc__8cCcD_ObjFv
/* 80086E7C  7C 03 D8 40 */	cmplw r3, r27
/* 80086E80  41 82 00 D0 */	beq lbl_80086F50
/* 80086E84  80 79 00 00 */	lwz r3, 0(r25)
/* 80086E88  48 1D CB C1 */	bl GetAc__8cCcD_ObjFv
/* 80086E8C  7C 03 E0 40 */	cmplw r3, r28
/* 80086E90  41 82 00 C0 */	beq lbl_80086F50
/* 80086E94  80 79 00 00 */	lwz r3, 0(r25)
/* 80086E98  38 63 00 48 */	addi r3, r3, 0x48
/* 80086E9C  38 81 00 0C */	addi r4, r1, 0xc
/* 80086EA0  48 1D C4 C9 */	bl Chk__15cCcD_DivideInfoCFRC15cCcD_DivideInfo
/* 80086EA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80086EA8  41 82 00 A8 */	beq lbl_80086F50
/* 80086EAC  80 79 00 00 */	lwz r3, 0(r25)
/* 80086EB0  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80086EB4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80086EB8  7D 89 03 A6 */	mtctr r12
/* 80086EBC  4E 80 04 21 */	bctrl 
/* 80086EC0  28 03 00 00 */	cmplwi r3, 0
/* 80086EC4  41 82 00 10 */	beq lbl_80086ED4
/* 80086EC8  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 80086ECC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80086ED0  40 82 00 80 */	bne lbl_80086F50
lbl_80086ED4:
/* 80086ED4  80 79 00 00 */	lwz r3, 0(r25)
/* 80086ED8  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80086EDC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80086EE0  7D 89 03 A6 */	mtctr r12
/* 80086EE4  4E 80 04 21 */	bctrl 
/* 80086EE8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80086EEC  38 A1 00 08 */	addi r5, r1, 8
/* 80086EF0  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 80086EF4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80086EF8  7D 89 03 A6 */	mtctr r12
/* 80086EFC  4E 80 04 21 */	bctrl 
/* 80086F00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80086F04  41 82 00 4C */	beq lbl_80086F50
/* 80086F08  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 80086F0C  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 80086F10  90 01 00 18 */	stw r0, 0x18(r1)
/* 80086F14  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80086F18  38 03 36 08 */	addi r0, r3, __vt__12cCcD_CpsAttr@l
/* 80086F1C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80086F20  93 E1 00 54 */	stw r31, 0x54(r1)
/* 80086F24  7F C3 F3 78 */	mr r3, r30
/* 80086F28  38 80 00 00 */	li r4, 0
/* 80086F2C  48 1E 80 79 */	bl __dt__8cM3dGCpsFv
/* 80086F30  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80086F34  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80086F38  90 01 00 38 */	stw r0, 0x38(r1)
/* 80086F3C  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 80086F40  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80086F44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80086F48  38 60 00 01 */	li r3, 1
/* 80086F4C  48 00 00 54 */	b lbl_80086FA0
lbl_80086F50:
/* 80086F50  3B 39 00 04 */	addi r25, r25, 4
lbl_80086F54:
/* 80086F54  7C 19 E8 40 */	cmplw r25, r29
/* 80086F58  41 80 FF 00 */	blt lbl_80086E58
/* 80086F5C  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 80086F60  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 80086F64  90 01 00 18 */	stw r0, 0x18(r1)
/* 80086F68  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80086F6C  38 03 36 08 */	addi r0, r3, __vt__12cCcD_CpsAttr@l
/* 80086F70  90 01 00 38 */	stw r0, 0x38(r1)
/* 80086F74  93 E1 00 54 */	stw r31, 0x54(r1)
/* 80086F78  7F C3 F3 78 */	mr r3, r30
/* 80086F7C  38 80 00 00 */	li r4, 0
/* 80086F80  48 1E 80 25 */	bl __dt__8cM3dGCpsFv
/* 80086F84  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80086F88  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80086F8C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80086F90  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 80086F94  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80086F98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80086F9C  38 60 00 00 */	li r3, 0
lbl_80086FA0:
/* 80086FA0  CB E1 00 88 */	lfd f31, 0x88(r1)
/* 80086FA4  39 61 00 88 */	addi r11, r1, 0x88
/* 80086FA8  48 2D B2 69 */	bl _restgpr_23
/* 80086FAC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80086FB0  7C 08 03 A6 */	mtlr r0
/* 80086FB4  38 21 00 90 */	addi r1, r1, 0x90
/* 80086FB8  4E 80 00 20 */	blr 
