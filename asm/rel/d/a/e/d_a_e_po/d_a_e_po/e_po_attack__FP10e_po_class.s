lbl_8074DC40:
/* 8074DC40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8074DC44  7C 08 02 A6 */	mflr r0
/* 8074DC48  90 01 00 64 */	stw r0, 0x64(r1)
/* 8074DC4C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8074DC50  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8074DC54  39 61 00 50 */	addi r11, r1, 0x50
/* 8074DC58  4B C1 45 7D */	bl _savegpr_27
/* 8074DC5C  7C 7D 1B 78 */	mr r29, r3
/* 8074DC60  3C 80 80 75 */	lis r4, lit_3917@ha /* 0x807576FC@ha */
/* 8074DC64  3B C4 76 FC */	addi r30, r4, lit_3917@l /* 0x807576FC@l */
/* 8074DC68  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074DC6C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074DC70  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 8074DC74  80 83 05 D4 */	lwz r4, 0x5d4(r3)
/* 8074DC78  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8074DC7C  FC 00 00 1E */	fctiwz f0, f0
/* 8074DC80  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8074DC84  83 61 00 34 */	lwz r27, 0x34(r1)
/* 8074DC88  C3 FE 00 04 */	lfs f31, 4(r30)
/* 8074DC8C  38 80 00 00 */	li r4, 0
/* 8074DC90  4B FF E9 5D */	bl mArg0Check__FP10e_po_classs
/* 8074DC94  2C 03 00 00 */	cmpwi r3, 0
/* 8074DC98  41 82 00 44 */	beq lbl_8074DCDC
/* 8074DC9C  88 1D 05 C1 */	lbz r0, 0x5c1(r29)
/* 8074DCA0  28 00 00 00 */	cmplwi r0, 0
/* 8074DCA4  41 82 00 38 */	beq lbl_8074DCDC
/* 8074DCA8  38 00 00 02 */	li r0, 2
/* 8074DCAC  B0 1D 07 42 */	sth r0, 0x742(r29)
/* 8074DCB0  38 00 00 00 */	li r0, 0
/* 8074DCB4  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074DCB8  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 8074DCBC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8074DCC0  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 8074DCC4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8074DCC8  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 8074DCCC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8074DCD0  7F A3 EB 78 */	mr r3, r29
/* 8074DCD4  4B FF EF F9 */	bl e_po_opening__FP10e_po_class
/* 8074DCD8  48 00 04 70 */	b lbl_8074E148
lbl_8074DCDC:
/* 8074DCDC  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 8074DCE0  2C 00 00 02 */	cmpwi r0, 2
/* 8074DCE4  41 82 01 90 */	beq lbl_8074DE74
/* 8074DCE8  40 80 00 14 */	bge lbl_8074DCFC
/* 8074DCEC  2C 00 00 00 */	cmpwi r0, 0
/* 8074DCF0  41 82 00 68 */	beq lbl_8074DD58
/* 8074DCF4  40 80 00 88 */	bge lbl_8074DD7C
/* 8074DCF8  48 00 02 68 */	b lbl_8074DF60
lbl_8074DCFC:
/* 8074DCFC  2C 00 00 0B */	cmpwi r0, 0xb
/* 8074DD00  41 82 00 4C */	beq lbl_8074DD4C
/* 8074DD04  40 80 02 5C */	bge lbl_8074DF60
/* 8074DD08  2C 00 00 0A */	cmpwi r0, 0xa
/* 8074DD0C  40 80 00 08 */	bge lbl_8074DD14
/* 8074DD10  48 00 02 50 */	b lbl_8074DF60
lbl_8074DD14:
/* 8074DD14  7F A3 EB 78 */	mr r3, r29
/* 8074DD18  38 80 00 16 */	li r4, 0x16
/* 8074DD1C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8074DD20  38 A0 00 02 */	li r5, 2
/* 8074DD24  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074DD28  4B FF E9 39 */	bl anm_init__FP10e_po_classifUcf
/* 8074DD2C  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x80757E5C@ha */
/* 8074DD30  38 63 7E 5C */	addi r3, r3, l_HIO@l /* 0x80757E5C@l */
/* 8074DD34  A8 03 00 34 */	lha r0, 0x34(r3)
/* 8074DD38  B0 1D 07 4A */	sth r0, 0x74a(r29)
/* 8074DD3C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8074DD40  38 03 00 01 */	addi r0, r3, 1
/* 8074DD44  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074DD48  48 00 02 18 */	b lbl_8074DF60
lbl_8074DD4C:
/* 8074DD4C  A8 1D 07 4A */	lha r0, 0x74a(r29)
/* 8074DD50  2C 00 00 00 */	cmpwi r0, 0
/* 8074DD54  40 82 02 0C */	bne lbl_8074DF60
lbl_8074DD58:
/* 8074DD58  7F A3 EB 78 */	mr r3, r29
/* 8074DD5C  38 80 00 05 */	li r4, 5
/* 8074DD60  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8074DD64  38 A0 00 00 */	li r5, 0
/* 8074DD68  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074DD6C  4B FF E8 F5 */	bl anm_init__FP10e_po_classifUcf
/* 8074DD70  38 00 00 01 */	li r0, 1
/* 8074DD74  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074DD78  48 00 01 E8 */	b lbl_8074DF60
lbl_8074DD7C:
/* 8074DD7C  2C 1B 00 06 */	cmpwi r27, 6
/* 8074DD80  40 82 00 2C */	bne lbl_8074DDAC
/* 8074DD84  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700CA@ha */
/* 8074DD88  38 03 00 CA */	addi r0, r3, 0x00CA /* 0x000700CA@l */
/* 8074DD8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8074DD90  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 8074DD94  38 81 00 10 */	addi r4, r1, 0x10
/* 8074DD98  38 A0 FF FF */	li r5, -1
/* 8074DD9C  81 9D 05 F8 */	lwz r12, 0x5f8(r29)
/* 8074DDA0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074DDA4  7D 89 03 A6 */	mtctr r12
/* 8074DDA8  4E 80 04 21 */	bctrl 
lbl_8074DDAC:
/* 8074DDAC  7F A3 EB 78 */	mr r3, r29
/* 8074DDB0  38 80 00 FF */	li r4, 0xff
/* 8074DDB4  4B FF E8 39 */	bl mArg0Check__FP10e_po_classs
/* 8074DDB8  2C 03 00 02 */	cmpwi r3, 2
/* 8074DDBC  40 82 00 08 */	bne lbl_8074DDC4
/* 8074DDC0  C3 FE 00 38 */	lfs f31, 0x38(r30)
lbl_8074DDC4:
/* 8074DDC4  2C 1B 00 17 */	cmpwi r27, 0x17
/* 8074DDC8  41 80 00 58 */	blt lbl_8074DE20
/* 8074DDCC  2C 1B 00 21 */	cmpwi r27, 0x21
/* 8074DDD0  41 81 00 50 */	bgt lbl_8074DE20
/* 8074DDD4  2C 1B 00 17 */	cmpwi r27, 0x17
/* 8074DDD8  40 82 00 3C */	bne lbl_8074DE14
/* 8074DDDC  38 00 00 02 */	li r0, 2
/* 8074DDE0  98 1D 0A 68 */	stb r0, 0xa68(r29)
/* 8074DDE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700C9@ha */
/* 8074DDE8  38 03 00 C9 */	addi r0, r3, 0x00C9 /* 0x000700C9@l */
/* 8074DDEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8074DDF0  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 8074DDF4  38 81 00 0C */	addi r4, r1, 0xc
/* 8074DDF8  38 A0 00 00 */	li r5, 0
/* 8074DDFC  38 C0 FF FF */	li r6, -1
/* 8074DE00  81 9D 05 F8 */	lwz r12, 0x5f8(r29)
/* 8074DE04  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8074DE08  7D 89 03 A6 */	mtctr r12
/* 8074DE0C  4E 80 04 21 */	bctrl 
/* 8074DE10  48 00 00 28 */	b lbl_8074DE38
lbl_8074DE14:
/* 8074DE14  38 00 00 03 */	li r0, 3
/* 8074DE18  98 1D 0A 68 */	stb r0, 0xa68(r29)
/* 8074DE1C  48 00 00 1C */	b lbl_8074DE38
lbl_8074DE20:
/* 8074DE20  2C 1B 00 0D */	cmpwi r27, 0xd
/* 8074DE24  41 80 00 14 */	blt lbl_8074DE38
/* 8074DE28  2C 1B 00 2B */	cmpwi r27, 0x2b
/* 8074DE2C  41 81 00 0C */	bgt lbl_8074DE38
/* 8074DE30  38 00 00 01 */	li r0, 1
/* 8074DE34  98 1D 0A 68 */	stb r0, 0xa68(r29)
lbl_8074DE38:
/* 8074DE38  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8074DE3C  38 80 00 01 */	li r4, 1
/* 8074DE40  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8074DE44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8074DE48  40 82 00 18 */	bne lbl_8074DE60
/* 8074DE4C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8074DE50  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074DE54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074DE58  41 82 00 08 */	beq lbl_8074DE60
/* 8074DE5C  38 80 00 00 */	li r4, 0
lbl_8074DE60:
/* 8074DE60  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8074DE64  41 82 00 FC */	beq lbl_8074DF60
/* 8074DE68  38 00 00 02 */	li r0, 2
/* 8074DE6C  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074DE70  48 00 00 F0 */	b lbl_8074DF60
lbl_8074DE74:
/* 8074DE74  7F A3 EB 78 */	mr r3, r29
/* 8074DE78  38 80 00 13 */	li r4, 0x13
/* 8074DE7C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8074DE80  38 A0 00 02 */	li r5, 2
/* 8074DE84  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074DE88  4B FF E7 D9 */	bl anm_init__FP10e_po_classifUcf
/* 8074DE8C  7F A3 EB 78 */	mr r3, r29
/* 8074DE90  38 80 00 FF */	li r4, 0xff
/* 8074DE94  4B FF E7 59 */	bl mArg0Check__FP10e_po_classs
/* 8074DE98  2C 03 00 02 */	cmpwi r3, 2
/* 8074DE9C  41 82 00 68 */	beq lbl_8074DF04
/* 8074DEA0  7F A3 EB 78 */	mr r3, r29
/* 8074DEA4  38 80 00 00 */	li r4, 0
/* 8074DEA8  4B FF E7 45 */	bl mArg0Check__FP10e_po_classs
/* 8074DEAC  2C 03 00 00 */	cmpwi r3, 0
/* 8074DEB0  41 82 00 20 */	beq lbl_8074DED0
/* 8074DEB4  88 1D 05 C1 */	lbz r0, 0x5c1(r29)
/* 8074DEB8  28 00 00 00 */	cmplwi r0, 0
/* 8074DEBC  41 82 00 14 */	beq lbl_8074DED0
/* 8074DEC0  38 00 00 00 */	li r0, 0
/* 8074DEC4  B0 1D 07 42 */	sth r0, 0x742(r29)
/* 8074DEC8  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074DECC  48 00 02 7C */	b lbl_8074E148
lbl_8074DED0:
/* 8074DED0  38 00 00 03 */	li r0, 3
/* 8074DED4  B0 1D 07 42 */	sth r0, 0x742(r29)
/* 8074DED8  38 00 00 14 */	li r0, 0x14
/* 8074DEDC  B0 1D 07 4A */	sth r0, 0x74a(r29)
/* 8074DEE0  38 00 00 02 */	li r0, 2
/* 8074DEE4  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074DEE8  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 8074DEEC  4B B1 9A 69 */	bl cM_rndF__Ff
/* 8074DEF0  FC 00 08 1E */	fctiwz f0, f1
/* 8074DEF4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8074DEF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8074DEFC  B0 1D 07 40 */	sth r0, 0x740(r29)
/* 8074DF00  48 00 02 48 */	b lbl_8074E148
lbl_8074DF04:
/* 8074DF04  38 00 00 00 */	li r0, 0
/* 8074DF08  B0 1D 07 4E */	sth r0, 0x74e(r29)
/* 8074DF0C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074DF10  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8074DF14  7F A3 EB 78 */	mr r3, r29
/* 8074DF18  38 80 00 16 */	li r4, 0x16
/* 8074DF1C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8074DF20  38 A0 00 02 */	li r5, 2
/* 8074DF24  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074DF28  4B FF E7 39 */	bl anm_init__FP10e_po_classifUcf
/* 8074DF2C  38 00 00 06 */	li r0, 6
/* 8074DF30  B0 1D 07 42 */	sth r0, 0x742(r29)
/* 8074DF34  38 00 00 01 */	li r0, 1
/* 8074DF38  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074DF3C  88 9D 05 BF */	lbz r4, 0x5bf(r29)
/* 8074DF40  28 04 00 FF */	cmplwi r4, 0xff
/* 8074DF44  41 82 02 04 */	beq lbl_8074E148
/* 8074DF48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074DF4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074DF50  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8074DF54  7C 05 07 74 */	extsb r5, r0
/* 8074DF58  4B 8E 72 A9 */	bl onSwitch__10dSv_info_cFii
/* 8074DF5C  48 00 01 EC */	b lbl_8074E148
lbl_8074DF60:
/* 8074DF60  7F A3 EB 78 */	mr r3, r29
/* 8074DF64  38 80 00 FF */	li r4, 0xff
/* 8074DF68  4B FF E6 85 */	bl mArg0Check__FP10e_po_classs
/* 8074DF6C  2C 03 00 02 */	cmpwi r3, 2
/* 8074DF70  40 82 00 28 */	bne lbl_8074DF98
/* 8074DF74  3C 60 80 75 */	lis r3, mAttackNo@ha /* 0x80757ADA@ha */
/* 8074DF78  A8 03 7A DA */	lha r0, mAttackNo@l(r3)  /* 0x80757ADA@l */
/* 8074DF7C  2C 00 00 00 */	cmpwi r0, 0
/* 8074DF80  40 82 00 18 */	bne lbl_8074DF98
/* 8074DF84  38 00 00 01 */	li r0, 1
/* 8074DF88  98 1D 07 58 */	stb r0, 0x758(r29)
/* 8074DF8C  7F A3 EB 78 */	mr r3, r29
/* 8074DF90  4B 8C BC ED */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8074DF94  48 00 01 B4 */	b lbl_8074E148
lbl_8074DF98:
/* 8074DF98  7F A3 EB 78 */	mr r3, r29
/* 8074DF9C  38 80 00 00 */	li r4, 0
/* 8074DFA0  4B FF E6 4D */	bl mArg0Check__FP10e_po_classs
/* 8074DFA4  2C 03 00 00 */	cmpwi r3, 0
/* 8074DFA8  41 82 01 3C */	beq lbl_8074E0E4
/* 8074DFAC  38 61 00 14 */	addi r3, r1, 0x14
/* 8074DFB0  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 8074DFB4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8074DFB8  4B B1 8B 7D */	bl __mi__4cXyzCFRC3Vec
/* 8074DFBC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8074DFC0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8074DFC4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8074DFC8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8074DFCC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8074DFD0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8074DFD4  38 61 00 20 */	addi r3, r1, 0x20
/* 8074DFD8  4B BF 91 61 */	bl PSVECSquareMag
/* 8074DFDC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074DFE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074DFE4  40 81 00 58 */	ble lbl_8074E03C
/* 8074DFE8  FC 00 08 34 */	frsqrte f0, f1
/* 8074DFEC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8074DFF0  FC 44 00 32 */	fmul f2, f4, f0
/* 8074DFF4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8074DFF8  FC 00 00 32 */	fmul f0, f0, f0
/* 8074DFFC  FC 01 00 32 */	fmul f0, f1, f0
/* 8074E000  FC 03 00 28 */	fsub f0, f3, f0
/* 8074E004  FC 02 00 32 */	fmul f0, f2, f0
/* 8074E008  FC 44 00 32 */	fmul f2, f4, f0
/* 8074E00C  FC 00 00 32 */	fmul f0, f0, f0
/* 8074E010  FC 01 00 32 */	fmul f0, f1, f0
/* 8074E014  FC 03 00 28 */	fsub f0, f3, f0
/* 8074E018  FC 02 00 32 */	fmul f0, f2, f0
/* 8074E01C  FC 44 00 32 */	fmul f2, f4, f0
/* 8074E020  FC 00 00 32 */	fmul f0, f0, f0
/* 8074E024  FC 01 00 32 */	fmul f0, f1, f0
/* 8074E028  FC 03 00 28 */	fsub f0, f3, f0
/* 8074E02C  FC 02 00 32 */	fmul f0, f2, f0
/* 8074E030  FC 21 00 32 */	fmul f1, f1, f0
/* 8074E034  FC 20 08 18 */	frsp f1, f1
/* 8074E038  48 00 00 88 */	b lbl_8074E0C0
lbl_8074E03C:
/* 8074E03C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8074E040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074E044  40 80 00 10 */	bge lbl_8074E054
/* 8074E048  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8074E04C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8074E050  48 00 00 70 */	b lbl_8074E0C0
lbl_8074E054:
/* 8074E054  D0 21 00 08 */	stfs f1, 8(r1)
/* 8074E058  80 81 00 08 */	lwz r4, 8(r1)
/* 8074E05C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8074E060  3C 00 7F 80 */	lis r0, 0x7f80
/* 8074E064  7C 03 00 00 */	cmpw r3, r0
/* 8074E068  41 82 00 14 */	beq lbl_8074E07C
/* 8074E06C  40 80 00 40 */	bge lbl_8074E0AC
/* 8074E070  2C 03 00 00 */	cmpwi r3, 0
/* 8074E074  41 82 00 20 */	beq lbl_8074E094
/* 8074E078  48 00 00 34 */	b lbl_8074E0AC
lbl_8074E07C:
/* 8074E07C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8074E080  41 82 00 0C */	beq lbl_8074E08C
/* 8074E084  38 00 00 01 */	li r0, 1
/* 8074E088  48 00 00 28 */	b lbl_8074E0B0
lbl_8074E08C:
/* 8074E08C  38 00 00 02 */	li r0, 2
/* 8074E090  48 00 00 20 */	b lbl_8074E0B0
lbl_8074E094:
/* 8074E094  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8074E098  41 82 00 0C */	beq lbl_8074E0A4
/* 8074E09C  38 00 00 05 */	li r0, 5
/* 8074E0A0  48 00 00 10 */	b lbl_8074E0B0
lbl_8074E0A4:
/* 8074E0A4  38 00 00 03 */	li r0, 3
/* 8074E0A8  48 00 00 08 */	b lbl_8074E0B0
lbl_8074E0AC:
/* 8074E0AC  38 00 00 04 */	li r0, 4
lbl_8074E0B0:
/* 8074E0B0  2C 00 00 01 */	cmpwi r0, 1
/* 8074E0B4  40 82 00 0C */	bne lbl_8074E0C0
/* 8074E0B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8074E0BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8074E0C0:
/* 8074E0C0  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x80757E5C@ha */
/* 8074E0C4  38 63 7E 5C */	addi r3, r3, l_HIO@l /* 0x80757E5C@l */
/* 8074E0C8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074E0CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074E0D0  41 81 00 10 */	bgt lbl_8074E0E0
/* 8074E0D4  88 1D 05 C1 */	lbz r0, 0x5c1(r29)
/* 8074E0D8  28 00 00 00 */	cmplwi r0, 0
/* 8074E0DC  41 82 00 08 */	beq lbl_8074E0E4
lbl_8074E0E0:
/* 8074E0E0  C3 FE 00 04 */	lfs f31, 4(r30)
lbl_8074E0E4:
/* 8074E0E4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8074E0E8  FC 20 F8 90 */	fmr f1, f31
/* 8074E0EC  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 8074E0F0  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 8074E0F4  4B B2 19 49 */	bl cLib_addCalc2__FPffff
/* 8074E0F8  7F A3 EB 78 */	mr r3, r29
/* 8074E0FC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8074E100  4B 8C C6 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8074E104  7C 64 1B 78 */	mr r4, r3
/* 8074E108  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8074E10C  38 A0 00 10 */	li r5, 0x10
/* 8074E110  38 C0 10 00 */	li r6, 0x1000
/* 8074E114  4B B2 24 F5 */	bl cLib_addCalcAngleS2__FPssss
/* 8074E118  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8074E11C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8074E120  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 8074E124  C0 7D 07 D4 */	lfs f3, 0x7d4(r29)
/* 8074E128  4B B2 19 15 */	bl cLib_addCalc2__FPffff
/* 8074E12C  38 7D 07 D4 */	addi r3, r29, 0x7d4
/* 8074E130  3C 80 80 75 */	lis r4, l_HIO@ha /* 0x80757E5C@ha */
/* 8074E134  38 84 7E 5C */	addi r4, r4, l_HIO@l /* 0x80757E5C@l */
/* 8074E138  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8074E13C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074E140  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 8074E144  4B B2 18 F9 */	bl cLib_addCalc2__FPffff
lbl_8074E148:
/* 8074E148  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8074E14C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8074E150  39 61 00 50 */	addi r11, r1, 0x50
/* 8074E154  4B C1 40 CD */	bl _restgpr_27
/* 8074E158  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8074E15C  7C 08 03 A6 */	mtlr r0
/* 8074E160  38 21 00 60 */	addi r1, r1, 0x60
/* 8074E164  4E 80 00 20 */	blr 
