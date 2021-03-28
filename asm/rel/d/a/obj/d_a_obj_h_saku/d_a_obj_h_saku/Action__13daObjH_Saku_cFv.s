lbl_80C15A4C:
/* 80C15A4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C15A50  7C 08 02 A6 */	mflr r0
/* 80C15A54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C15A58  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C15A5C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C15A60  7C 7E 1B 78 */	mr r30, r3
/* 80C15A64  3C 80 80 C1 */	lis r4, lit_3703@ha
/* 80C15A68  3B E4 64 C8 */	addi r31, r4, lit_3703@l
/* 80C15A6C  88 03 05 A0 */	lbz r0, 0x5a0(r3)
/* 80C15A70  2C 00 00 02 */	cmpwi r0, 2
/* 80C15A74  41 82 01 58 */	beq lbl_80C15BCC
/* 80C15A78  40 80 00 14 */	bge lbl_80C15A8C
/* 80C15A7C  2C 00 00 00 */	cmpwi r0, 0
/* 80C15A80  41 82 02 48 */	beq lbl_80C15CC8
/* 80C15A84  40 80 00 14 */	bge lbl_80C15A98
/* 80C15A88  48 00 02 40 */	b lbl_80C15CC8
lbl_80C15A8C:
/* 80C15A8C  2C 00 00 04 */	cmpwi r0, 4
/* 80C15A90  40 80 02 38 */	bge lbl_80C15CC8
/* 80C15A94  48 00 02 10 */	b lbl_80C15CA4
lbl_80C15A98:
/* 80C15A98  A8 7E 05 C8 */	lha r3, 0x5c8(r30)
/* 80C15A9C  38 03 FF FF */	addi r0, r3, -1
/* 80C15AA0  B0 1E 05 C8 */	sth r0, 0x5c8(r30)
/* 80C15AA4  A8 1E 05 C8 */	lha r0, 0x5c8(r30)
/* 80C15AA8  2C 00 00 00 */	cmpwi r0, 0
/* 80C15AAC  40 82 00 80 */	bne lbl_80C15B2C
/* 80C15AB0  88 7E 05 A1 */	lbz r3, 0x5a1(r30)
/* 80C15AB4  38 03 00 01 */	addi r0, r3, 1
/* 80C15AB8  98 1E 05 A1 */	stb r0, 0x5a1(r30)
/* 80C15ABC  88 7E 05 A0 */	lbz r3, 0x5a0(r30)
/* 80C15AC0  38 03 00 01 */	addi r0, r3, 1
/* 80C15AC4  98 1E 05 A0 */	stb r0, 0x5a0(r30)
/* 80C15AC8  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 80C15ACC  C8 5F 00 38 */	lfd f2, 0x38(r31)
/* 80C15AD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C15AD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C15AD8  3C 60 43 30 */	lis r3, 0x4330
/* 80C15ADC  90 61 00 08 */	stw r3, 8(r1)
/* 80C15AE0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C15AE4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C15AE8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80C15AEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C15AF0  FC 00 00 1E */	fctiwz f0, f0
/* 80C15AF4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C15AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C15AFC  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
/* 80C15B00  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 80C15B04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C15B08  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C15B0C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C15B10  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C15B14  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C15B18  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C15B1C  FC 00 00 1E */	fctiwz f0, f0
/* 80C15B20  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C15B24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C15B28  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
lbl_80C15B2C:
/* 80C15B2C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80C15B30  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 80C15B34  7C 03 02 14 */	add r0, r3, r0
/* 80C15B38  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C15B3C  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 80C15B40  A8 1E 05 D6 */	lha r0, 0x5d6(r30)
/* 80C15B44  7C 03 02 14 */	add r0, r3, r0
/* 80C15B48  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80C15B4C  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80C15B50  38 03 FF 00 */	addi r0, r3, -256
/* 80C15B54  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C15B58  A8 1E 05 BE */	lha r0, 0x5be(r30)
/* 80C15B5C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80C15B60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C15B64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C15B68  3C 60 43 30 */	lis r3, 0x4330
/* 80C15B6C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80C15B70  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C15B74  EC 40 18 28 */	fsubs f2, f0, f3
/* 80C15B78  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C15B7C  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 80C15B80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C15B84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C15B88  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C15B8C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C15B90  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C15B94  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C15B98  EC 02 00 2A */	fadds f0, f2, f0
/* 80C15B9C  FC 00 00 1E */	fctiwz f0, f0
/* 80C15BA0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C15BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C15BA8  B0 1E 05 BE */	sth r0, 0x5be(r30)
/* 80C15BAC  A8 7E 05 BC */	lha r3, 0x5bc(r30)
/* 80C15BB0  A8 1E 05 D0 */	lha r0, 0x5d0(r30)
/* 80C15BB4  7C 03 02 14 */	add r0, r3, r0
/* 80C15BB8  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 80C15BBC  A8 7E 05 C0 */	lha r3, 0x5c0(r30)
/* 80C15BC0  38 03 FF 00 */	addi r0, r3, -256
/* 80C15BC4  B0 1E 05 C0 */	sth r0, 0x5c0(r30)
/* 80C15BC8  48 00 01 00 */	b lbl_80C15CC8
lbl_80C15BCC:
/* 80C15BCC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C15BD0  38 BE 04 F8 */	addi r5, r30, 0x4f8
/* 80C15BD4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C15BD8  4B FF FC 39 */	bl SpeedSet__13daObjH_Saku_cFP4cXyzP4cXyzf
/* 80C15BDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C15BE0  41 82 00 48 */	beq lbl_80C15C28
/* 80C15BE4  88 7E 05 DD */	lbz r3, 0x5dd(r30)
/* 80C15BE8  38 03 00 01 */	addi r0, r3, 1
/* 80C15BEC  98 1E 05 DD */	stb r0, 0x5dd(r30)
/* 80C15BF0  88 1E 05 DD */	lbz r0, 0x5dd(r30)
/* 80C15BF4  28 00 00 02 */	cmplwi r0, 2
/* 80C15BF8  40 81 00 10 */	ble lbl_80C15C08
/* 80C15BFC  88 7E 05 A0 */	lbz r3, 0x5a0(r30)
/* 80C15C00  38 03 00 01 */	addi r0, r3, 1
/* 80C15C04  98 1E 05 A0 */	stb r0, 0x5a0(r30)
lbl_80C15C08:
/* 80C15C08  88 1E 05 DE */	lbz r0, 0x5de(r30)
/* 80C15C0C  60 00 00 01 */	ori r0, r0, 1
/* 80C15C10  98 1E 05 DE */	stb r0, 0x5de(r30)
/* 80C15C14  88 1E 05 DE */	lbz r0, 0x5de(r30)
/* 80C15C18  2C 00 00 11 */	cmpwi r0, 0x11
/* 80C15C1C  40 82 00 0C */	bne lbl_80C15C28
/* 80C15C20  7F C3 F3 78 */	mr r3, r30
/* 80C15C24  4B 40 40 58 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80C15C28:
/* 80C15C28  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 80C15C2C  38 80 00 00 */	li r4, 0
/* 80C15C30  38 A0 02 00 */	li r5, 0x200
/* 80C15C34  4B 65 AF 5C */	b cLib_chaseAngleS__FPsss
/* 80C15C38  88 1E 05 DD */	lbz r0, 0x5dd(r30)
/* 80C15C3C  28 00 00 00 */	cmplwi r0, 0
/* 80C15C40  41 82 00 54 */	beq lbl_80C15C94
/* 80C15C44  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C15C48  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C15C4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C15C50  40 81 00 14 */	ble lbl_80C15C64
/* 80C15C54  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80C15C58  38 03 04 00 */	addi r0, r3, 0x400
/* 80C15C5C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C15C60  48 00 00 10 */	b lbl_80C15C70
lbl_80C15C64:
/* 80C15C64  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80C15C68  38 03 FC 00 */	addi r0, r3, -1024
/* 80C15C6C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
lbl_80C15C70:
/* 80C15C70  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80C15C74  38 80 40 00 */	li r4, 0x4000
/* 80C15C78  A8 BE 05 D6 */	lha r5, 0x5d6(r30)
/* 80C15C7C  4B 65 AF 14 */	b cLib_chaseAngleS__FPsss
/* 80C15C80  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80C15C84  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 80C15C88  7C 03 02 14 */	add r0, r3, r0
/* 80C15C8C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C15C90  48 00 00 38 */	b lbl_80C15CC8
lbl_80C15C94:
/* 80C15C94  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80C15C98  38 9E 05 D6 */	addi r4, r30, 0x5d6
/* 80C15C9C  4B 65 17 C0 */	b __apl__5csXyzFR5csXyz
/* 80C15CA0  48 00 00 28 */	b lbl_80C15CC8
lbl_80C15CA4:
/* 80C15CA4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80C15CA8  38 80 40 00 */	li r4, 0x4000
/* 80C15CAC  A8 BE 05 D6 */	lha r5, 0x5d6(r30)
/* 80C15CB0  4B 65 AE E0 */	b cLib_chaseAngleS__FPsss
/* 80C15CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80C15CB8  41 82 00 10 */	beq lbl_80C15CC8
/* 80C15CBC  88 7E 05 A0 */	lbz r3, 0x5a0(r30)
/* 80C15CC0  38 03 00 01 */	addi r0, r3, 1
/* 80C15CC4  98 1E 05 A0 */	stb r0, 0x5a0(r30)
lbl_80C15CC8:
/* 80C15CC8  88 1E 05 A1 */	lbz r0, 0x5a1(r30)
/* 80C15CCC  2C 00 00 01 */	cmpwi r0, 1
/* 80C15CD0  41 82 00 18 */	beq lbl_80C15CE8
/* 80C15CD4  40 80 00 08 */	bge lbl_80C15CDC
/* 80C15CD8  48 00 01 10 */	b lbl_80C15DE8
lbl_80C15CDC:
/* 80C15CDC  2C 00 00 03 */	cmpwi r0, 3
/* 80C15CE0  40 80 01 08 */	bge lbl_80C15DE8
/* 80C15CE4  48 00 00 E0 */	b lbl_80C15DC4
lbl_80C15CE8:
/* 80C15CE8  7F C3 F3 78 */	mr r3, r30
/* 80C15CEC  38 9E 05 A4 */	addi r4, r30, 0x5a4
/* 80C15CF0  38 BE 05 B0 */	addi r5, r30, 0x5b0
/* 80C15CF4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C15CF8  4B FF FB 19 */	bl SpeedSet__13daObjH_Saku_cFP4cXyzP4cXyzf
/* 80C15CFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C15D00  41 82 00 48 */	beq lbl_80C15D48
/* 80C15D04  88 7E 05 DC */	lbz r3, 0x5dc(r30)
/* 80C15D08  38 03 00 01 */	addi r0, r3, 1
/* 80C15D0C  98 1E 05 DC */	stb r0, 0x5dc(r30)
/* 80C15D10  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C15D14  28 00 00 02 */	cmplwi r0, 2
/* 80C15D18  40 81 00 10 */	ble lbl_80C15D28
/* 80C15D1C  88 7E 05 A1 */	lbz r3, 0x5a1(r30)
/* 80C15D20  38 03 00 01 */	addi r0, r3, 1
/* 80C15D24  98 1E 05 A1 */	stb r0, 0x5a1(r30)
lbl_80C15D28:
/* 80C15D28  88 1E 05 DE */	lbz r0, 0x5de(r30)
/* 80C15D2C  60 00 00 11 */	ori r0, r0, 0x11
/* 80C15D30  98 1E 05 DE */	stb r0, 0x5de(r30)
/* 80C15D34  88 1E 05 DE */	lbz r0, 0x5de(r30)
/* 80C15D38  2C 00 00 01 */	cmpwi r0, 1
/* 80C15D3C  40 82 00 0C */	bne lbl_80C15D48
/* 80C15D40  7F C3 F3 78 */	mr r3, r30
/* 80C15D44  4B 40 3F 38 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80C15D48:
/* 80C15D48  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C15D4C  28 00 00 00 */	cmplwi r0, 0
/* 80C15D50  41 82 00 54 */	beq lbl_80C15DA4
/* 80C15D54  C0 3E 05 B4 */	lfs f1, 0x5b4(r30)
/* 80C15D58  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C15D5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C15D60  40 81 00 14 */	ble lbl_80C15D74
/* 80C15D64  A8 7E 05 C0 */	lha r3, 0x5c0(r30)
/* 80C15D68  38 03 04 00 */	addi r0, r3, 0x400
/* 80C15D6C  B0 1E 05 C0 */	sth r0, 0x5c0(r30)
/* 80C15D70  48 00 00 10 */	b lbl_80C15D80
lbl_80C15D74:
/* 80C15D74  A8 7E 05 C0 */	lha r3, 0x5c0(r30)
/* 80C15D78  38 03 FC 00 */	addi r0, r3, -1024
/* 80C15D7C  B0 1E 05 C0 */	sth r0, 0x5c0(r30)
lbl_80C15D80:
/* 80C15D80  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C15D84  38 80 C0 00 */	li r4, -16384
/* 80C15D88  A8 BE 05 D6 */	lha r5, 0x5d6(r30)
/* 80C15D8C  4B 65 AE 04 */	b cLib_chaseAngleS__FPsss
/* 80C15D90  A8 7E 05 BE */	lha r3, 0x5be(r30)
/* 80C15D94  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 80C15D98  7C 03 02 14 */	add r0, r3, r0
/* 80C15D9C  B0 1E 05 BE */	sth r0, 0x5be(r30)
/* 80C15DA0  48 00 00 10 */	b lbl_80C15DB0
lbl_80C15DA4:
/* 80C15DA4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C15DA8  38 9E 05 D0 */	addi r4, r30, 0x5d0
/* 80C15DAC  4B 65 16 B0 */	b __apl__5csXyzFR5csXyz
lbl_80C15DB0:
/* 80C15DB0  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C15DB4  38 80 00 00 */	li r4, 0
/* 80C15DB8  38 A0 02 00 */	li r5, 0x200
/* 80C15DBC  4B 65 AD D4 */	b cLib_chaseAngleS__FPsss
/* 80C15DC0  48 00 00 28 */	b lbl_80C15DE8
lbl_80C15DC4:
/* 80C15DC4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C15DC8  38 80 C0 00 */	li r4, -16384
/* 80C15DCC  A8 BE 05 D6 */	lha r5, 0x5d6(r30)
/* 80C15DD0  4B 65 AD C0 */	b cLib_chaseAngleS__FPsss
/* 80C15DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80C15DD8  41 82 00 10 */	beq lbl_80C15DE8
/* 80C15DDC  88 7E 05 A1 */	lbz r3, 0x5a1(r30)
/* 80C15DE0  38 03 00 01 */	addi r0, r3, 1
/* 80C15DE4  98 1E 05 A1 */	stb r0, 0x5a1(r30)
lbl_80C15DE8:
/* 80C15DE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C15DEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C15DF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C15DF4  7C 08 03 A6 */	mtlr r0
/* 80C15DF8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C15DFC  4E 80 00 20 */	blr 
