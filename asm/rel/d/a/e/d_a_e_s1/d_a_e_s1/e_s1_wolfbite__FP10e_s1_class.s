lbl_8077DC90:
/* 8077DC90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8077DC94  7C 08 02 A6 */	mflr r0
/* 8077DC98  90 01 00 34 */	stw r0, 0x34(r1)
/* 8077DC9C  39 61 00 30 */	addi r11, r1, 0x30
/* 8077DCA0  4B BE 45 3C */	b _savegpr_29
/* 8077DCA4  7C 7E 1B 78 */	mr r30, r3
/* 8077DCA8  3C 60 80 78 */	lis r3, lit_3903@ha
/* 8077DCAC  3B E3 0D C4 */	addi r31, r3, lit_3903@l
/* 8077DCB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077DCB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077DCB8  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8077DCBC  38 00 00 0A */	li r0, 0xa
/* 8077DCC0  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 8077DCC4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8077DCC8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8077DCCC  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 8077DCD0  4B AF 1D B0 */	b cLib_addCalc0__FPfff
/* 8077DCD4  38 7E 06 BC */	addi r3, r30, 0x6bc
/* 8077DCD8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8077DCDC  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 8077DCE0  4B 8F 82 78 */	b SetWall__12dBgS_AcchCirFff
/* 8077DCE4  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 8077DCE8  2C 00 00 02 */	cmpwi r0, 2
/* 8077DCEC  41 82 00 D8 */	beq lbl_8077DDC4
/* 8077DCF0  40 80 00 14 */	bge lbl_8077DD04
/* 8077DCF4  2C 00 00 00 */	cmpwi r0, 0
/* 8077DCF8  41 82 00 18 */	beq lbl_8077DD10
/* 8077DCFC  40 80 00 74 */	bge lbl_8077DD70
/* 8077DD00  48 00 03 58 */	b lbl_8077E058
lbl_8077DD04:
/* 8077DD04  2C 00 00 04 */	cmpwi r0, 4
/* 8077DD08  40 80 03 50 */	bge lbl_8077E058
/* 8077DD0C  48 00 03 0C */	b lbl_8077E018
lbl_8077DD10:
/* 8077DD10  7F C3 F3 78 */	mr r3, r30
/* 8077DD14  38 80 00 14 */	li r4, 0x14
/* 8077DD18  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8077DD1C  38 A0 00 00 */	li r5, 0
/* 8077DD20  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077DD24  4B FF CE D5 */	bl anm_init__FP10e_s1_classifUcf
/* 8077DD28  38 00 00 01 */	li r0, 1
/* 8077DD2C  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077DD30  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070222@ha */
/* 8077DD34  38 03 02 22 */	addi r0, r3, 0x0222 /* 0x00070222@l */
/* 8077DD38  90 01 00 18 */	stw r0, 0x18(r1)
/* 8077DD3C  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077DD40  38 81 00 18 */	addi r4, r1, 0x18
/* 8077DD44  38 A0 FF FF */	li r5, -1
/* 8077DD48  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077DD4C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077DD50  7D 89 03 A6 */	mtctr r12
/* 8077DD54  4E 80 04 21 */	bctrl 
/* 8077DD58  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 8077DD5C  38 03 FF FB */	addi r0, r3, -5
/* 8077DD60  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8077DD64  38 00 00 00 */	li r0, 0
/* 8077DD68  98 1E 06 BB */	stb r0, 0x6bb(r30)
/* 8077DD6C  48 00 02 EC */	b lbl_8077E058
lbl_8077DD70:
/* 8077DD70  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8077DD74  38 80 00 01 */	li r4, 1
/* 8077DD78  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077DD7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077DD80  40 82 00 18 */	bne lbl_8077DD98
/* 8077DD84  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077DD88  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077DD8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077DD90  41 82 00 08 */	beq lbl_8077DD98
/* 8077DD94  38 80 00 00 */	li r4, 0
lbl_8077DD98:
/* 8077DD98  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077DD9C  41 82 02 BC */	beq lbl_8077E058
/* 8077DDA0  7F C3 F3 78 */	mr r3, r30
/* 8077DDA4  38 80 00 18 */	li r4, 0x18
/* 8077DDA8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8077DDAC  38 A0 00 02 */	li r5, 2
/* 8077DDB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077DDB4  4B FF CE 45 */	bl anm_init__FP10e_s1_classifUcf
/* 8077DDB8  38 00 00 02 */	li r0, 2
/* 8077DDBC  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077DDC0  48 00 02 98 */	b lbl_8077E058
lbl_8077DDC4:
/* 8077DDC4  80 1E 05 D8 */	lwz r0, 0x5d8(r30)
/* 8077DDC8  2C 00 00 15 */	cmpwi r0, 0x15
/* 8077DDCC  40 82 00 4C */	bne lbl_8077DE18
/* 8077DDD0  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8077DDD4  38 80 00 01 */	li r4, 1
/* 8077DDD8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077DDDC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077DDE0  40 82 00 18 */	bne lbl_8077DDF8
/* 8077DDE4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077DDE8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077DDEC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077DDF0  41 82 00 08 */	beq lbl_8077DDF8
/* 8077DDF4  38 80 00 00 */	li r4, 0
lbl_8077DDF8:
/* 8077DDF8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077DDFC  41 82 00 1C */	beq lbl_8077DE18
/* 8077DE00  7F C3 F3 78 */	mr r3, r30
/* 8077DE04  38 80 00 18 */	li r4, 0x18
/* 8077DE08  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8077DE0C  38 A0 00 02 */	li r5, 2
/* 8077DE10  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077DE14  4B FF CD E5 */	bl anm_init__FP10e_s1_classifUcf
lbl_8077DE18:
/* 8077DE18  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8077DE1C  2C 00 00 00 */	cmpwi r0, 0
/* 8077DE20  40 81 00 10 */	ble lbl_8077DE30
/* 8077DE24  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8077DE28  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8077DE2C  41 82 01 80 */	beq lbl_8077DFAC
lbl_8077DE30:
/* 8077DE30  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8077DE34  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8077DE38  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 8077DE3C  7F C3 F3 78 */	mr r3, r30
/* 8077DE40  38 80 00 15 */	li r4, 0x15
/* 8077DE44  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8077DE48  38 A0 00 00 */	li r5, 0
/* 8077DE4C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077DE50  4B FF CD A9 */	bl anm_init__FP10e_s1_classifUcf
/* 8077DE54  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070223@ha */
/* 8077DE58  38 03 02 23 */	addi r0, r3, 0x0223 /* 0x00070223@l */
/* 8077DE5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077DE60  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077DE64  38 81 00 14 */	addi r4, r1, 0x14
/* 8077DE68  38 A0 FF FF */	li r5, -1
/* 8077DE6C  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077DE70  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077DE74  7D 89 03 A6 */	mtctr r12
/* 8077DE78  4E 80 04 21 */	bctrl 
/* 8077DE7C  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 8077DE80  38 03 FF FB */	addi r0, r3, -5
/* 8077DE84  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8077DE88  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8077DE8C  2C 00 00 00 */	cmpwi r0, 0
/* 8077DE90  41 81 00 8C */	bgt lbl_8077DF1C
/* 8077DE94  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8077DE98  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8077DE9C  90 1D 05 78 */	stw r0, 0x578(r29)
/* 8077DEA0  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 8077DEA4  28 00 00 FF */	cmplwi r0, 0xff
/* 8077DEA8  40 82 00 10 */	bne lbl_8077DEB8
/* 8077DEAC  38 00 00 0A */	li r0, 0xa
/* 8077DEB0  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 8077DEB4  48 00 00 0C */	b lbl_8077DEC0
lbl_8077DEB8:
/* 8077DEB8  38 00 00 09 */	li r0, 9
/* 8077DEBC  B0 1E 06 96 */	sth r0, 0x696(r30)
lbl_8077DEC0:
/* 8077DEC0  38 00 00 00 */	li r0, 0
/* 8077DEC4  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077DEC8  38 00 00 0A */	li r0, 0xa
/* 8077DECC  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 8077DED0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070011@ha */
/* 8077DED4  38 03 00 11 */	addi r0, r3, 0x0011 /* 0x00070011@l */
/* 8077DED8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8077DEDC  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077DEE0  38 81 00 10 */	addi r4, r1, 0x10
/* 8077DEE4  38 A0 FF FF */	li r5, -1
/* 8077DEE8  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077DEEC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077DEF0  7D 89 03 A6 */	mtctr r12
/* 8077DEF4  4E 80 04 21 */	bctrl 
/* 8077DEF8  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077DEFC  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8077DF00  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8077DF04  38 A0 00 20 */	li r5, 0x20
/* 8077DF08  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077DF0C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8077DF10  7D 89 03 A6 */	mtctr r12
/* 8077DF14  4E 80 04 21 */	bctrl 
/* 8077DF18  48 00 01 40 */	b lbl_8077E058
lbl_8077DF1C:
/* 8077DF1C  88 7E 06 BB */	lbz r3, 0x6bb(r30)
/* 8077DF20  38 03 00 01 */	addi r0, r3, 1
/* 8077DF24  98 1E 06 BB */	stb r0, 0x6bb(r30)
/* 8077DF28  88 1E 06 BB */	lbz r0, 0x6bb(r30)
/* 8077DF2C  7C 00 07 74 */	extsb r0, r0
/* 8077DF30  2C 00 00 05 */	cmpwi r0, 5
/* 8077DF34  41 80 00 58 */	blt lbl_8077DF8C
/* 8077DF38  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8077DF3C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8077DF40  90 1D 05 78 */	stw r0, 0x578(r29)
/* 8077DF44  7F C3 F3 78 */	mr r3, r30
/* 8077DF48  38 80 00 17 */	li r4, 0x17
/* 8077DF4C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8077DF50  38 A0 00 00 */	li r5, 0
/* 8077DF54  FC 40 08 90 */	fmr f2, f1
/* 8077DF58  4B FF CC A1 */	bl anm_init__FP10e_s1_classifUcf
/* 8077DF5C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070225@ha */
/* 8077DF60  38 03 02 25 */	addi r0, r3, 0x0225 /* 0x00070225@l */
/* 8077DF64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8077DF68  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077DF6C  38 81 00 0C */	addi r4, r1, 0xc
/* 8077DF70  38 A0 FF FF */	li r5, -1
/* 8077DF74  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077DF78  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077DF7C  7D 89 03 A6 */	mtctr r12
/* 8077DF80  4E 80 04 21 */	bctrl 
/* 8077DF84  38 00 00 03 */	li r0, 3
/* 8077DF88  B0 1E 06 98 */	sth r0, 0x698(r30)
lbl_8077DF8C:
/* 8077DF8C  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077DF90  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8077DF94  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8077DF98  38 A0 00 1E */	li r5, 0x1e
/* 8077DF9C  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077DFA0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8077DFA4  7D 89 03 A6 */	mtctr r12
/* 8077DFA8  4E 80 04 21 */	bctrl 
lbl_8077DFAC:
/* 8077DFAC  7F A3 EB 78 */	mr r3, r29
/* 8077DFB0  7F C4 F3 78 */	mr r4, r30
/* 8077DFB4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8077DFB8  81 8C 01 E0 */	lwz r12, 0x1e0(r12)
/* 8077DFBC  7D 89 03 A6 */	mtctr r12
/* 8077DFC0  4E 80 04 21 */	bctrl 
/* 8077DFC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8077DFC8  40 82 00 90 */	bne lbl_8077E058
/* 8077DFCC  7F C3 F3 78 */	mr r3, r30
/* 8077DFD0  38 80 00 16 */	li r4, 0x16
/* 8077DFD4  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8077DFD8  38 A0 00 00 */	li r5, 0
/* 8077DFDC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077DFE0  4B FF CC 19 */	bl anm_init__FP10e_s1_classifUcf
/* 8077DFE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070224@ha */
/* 8077DFE8  38 03 02 24 */	addi r0, r3, 0x0224 /* 0x00070224@l */
/* 8077DFEC  90 01 00 08 */	stw r0, 8(r1)
/* 8077DFF0  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077DFF4  38 81 00 08 */	addi r4, r1, 8
/* 8077DFF8  38 A0 FF FF */	li r5, -1
/* 8077DFFC  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077E000  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077E004  7D 89 03 A6 */	mtctr r12
/* 8077E008  4E 80 04 21 */	bctrl 
/* 8077E00C  38 00 00 03 */	li r0, 3
/* 8077E010  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077E014  48 00 00 44 */	b lbl_8077E058
lbl_8077E018:
/* 8077E018  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8077E01C  38 80 00 01 */	li r4, 1
/* 8077E020  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077E024  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077E028  40 82 00 18 */	bne lbl_8077E040
/* 8077E02C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077E030  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077E034  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077E038  41 82 00 08 */	beq lbl_8077E040
/* 8077E03C  38 80 00 00 */	li r4, 0
lbl_8077E040:
/* 8077E040  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077E044  41 82 00 14 */	beq lbl_8077E058
/* 8077E048  38 00 00 02 */	li r0, 2
/* 8077E04C  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 8077E050  38 00 00 00 */	li r0, 0
/* 8077E054  B0 1E 06 98 */	sth r0, 0x698(r30)
lbl_8077E058:
/* 8077E058  39 61 00 30 */	addi r11, r1, 0x30
/* 8077E05C  4B BE 41 CC */	b _restgpr_29
/* 8077E060  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8077E064  7C 08 03 A6 */	mtlr r0
/* 8077E068  38 21 00 30 */	addi r1, r1, 0x30
/* 8077E06C  4E 80 00 20 */	blr 
