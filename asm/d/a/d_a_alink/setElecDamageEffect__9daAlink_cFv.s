lbl_80122BBC:
/* 80122BBC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80122BC0  7C 08 02 A6 */	mflr r0
/* 80122BC4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80122BC8  39 61 00 90 */	addi r11, r1, 0x90
/* 80122BCC  48 23 F6 09 */	bl _savegpr_27
/* 80122BD0  7C 7E 1B 78 */	mr r30, r3
/* 80122BD4  3C 60 80 39 */	lis r3, lit_3757@ha
/* 80122BD8  3B 83 D6 58 */	addi r28, r3, lit_3757@l
/* 80122BDC  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 80122BE0  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 80122BE4  38 63 01 2C */	addi r3, r3, 0x12c
/* 80122BE8  4B F7 AE 79 */	bl checkStageName__9daAlink_cFPCc
/* 80122BEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80122BF0  38 02 96 9C */	la r0, effName0(r2) /* 8045309C-_SDA2_BASE_ */
/* 80122BF4  41 82 00 08 */	beq lbl_80122BFC
/* 80122BF8  38 02 96 A4 */	la r0, effName1(r2) /* 804530A4-_SDA2_BASE_ */
lbl_80122BFC:
/* 80122BFC  7C 1F 03 78 */	mr r31, r0
/* 80122C00  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80122C04  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80122C08  41 82 00 C0 */	beq lbl_80122CC8
/* 80122C0C  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 80122C10  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80122C14  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80122C18  38 63 00 60 */	addi r3, r3, 0x60
/* 80122C1C  38 9C 45 FC */	addi r4, r28, 0x45fc
/* 80122C20  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80122C24  48 22 41 49 */	bl PSMTXMultVec
/* 80122C28  3B 60 00 00 */	li r27, 0
/* 80122C2C  3B A0 00 00 */	li r29, 0
lbl_80122C30:
/* 80122C30  7F C3 F3 78 */	mr r3, r30
/* 80122C34  38 9D 31 D8 */	addi r4, r29, 0x31d8
/* 80122C38  7C 9E 22 14 */	add r4, r30, r4
/* 80122C3C  A0 BF 00 00 */	lhz r5, 0(r31)
/* 80122C40  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80122C44  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 80122C48  4B FF D9 39 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80122C4C  28 03 00 00 */	cmplwi r3, 0
/* 80122C50  41 82 00 60 */	beq lbl_80122CB0
/* 80122C54  2C 1B 00 02 */	cmpwi r27, 2
/* 80122C58  40 82 00 30 */	bne lbl_80122C88
/* 80122C5C  38 9C 46 14 */	addi r4, r28, 0x4614
/* 80122C60  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 80122C64  C0 24 00 08 */	lfs f1, 8(r4)
/* 80122C68  F0 01 00 44 */	psq_st f0, 68(r1), 0, 0 /* qr0 */
/* 80122C6C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80122C70  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80122C74  D0 03 00 00 */	stfs f0, 0(r3)
/* 80122C78  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80122C7C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80122C80  D0 23 00 08 */	stfs f1, 8(r3)
/* 80122C84  48 00 00 2C */	b lbl_80122CB0
lbl_80122C88:
/* 80122C88  38 9C 46 08 */	addi r4, r28, 0x4608
/* 80122C8C  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 80122C90  C0 24 00 08 */	lfs f1, 8(r4)
/* 80122C94  F0 01 00 38 */	psq_st f0, 56(r1), 0, 0 /* qr0 */
/* 80122C98  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80122C9C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80122CA0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80122CA4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80122CA8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80122CAC  D0 23 00 08 */	stfs f1, 8(r3)
lbl_80122CB0:
/* 80122CB0  3B 7B 00 01 */	addi r27, r27, 1
/* 80122CB4  2C 1B 00 03 */	cmpwi r27, 3
/* 80122CB8  3B BD 00 04 */	addi r29, r29, 4
/* 80122CBC  3B FF 00 02 */	addi r31, r31, 2
/* 80122CC0  41 80 FF 70 */	blt lbl_80122C30
/* 80122CC4  48 00 02 3C */	b lbl_80122F00
lbl_80122CC8:
/* 80122CC8  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 80122CCC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80122CD0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80122CD4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80122CD8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80122CDC  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 80122CE0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80122CE4  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 80122CE8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80122CEC  3B 80 00 00 */	li r28, 0
/* 80122CF0  3B A0 00 00 */	li r29, 0
lbl_80122CF4:
/* 80122CF4  7F C3 F3 78 */	mr r3, r30
/* 80122CF8  38 9D 31 D8 */	addi r4, r29, 0x31d8
/* 80122CFC  7C 9E 22 14 */	add r4, r30, r4
/* 80122D00  A0 BF 00 00 */	lhz r5, 0(r31)
/* 80122D04  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80122D08  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 80122D0C  4B FF D8 75 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80122D10  3B 9C 00 01 */	addi r28, r28, 1
/* 80122D14  2C 1C 00 03 */	cmpwi r28, 3
/* 80122D18  3B BD 00 04 */	addi r29, r29, 4
/* 80122D1C  3B FF 00 02 */	addi r31, r31, 2
/* 80122D20  41 80 FF D4 */	blt lbl_80122CF4
/* 80122D24  A0 7E 2F DC */	lhz r3, 0x2fdc(r30)
/* 80122D28  48 03 BE 91 */	bl checkHookshotItem__9daPy_py_cFi
/* 80122D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80122D30  41 82 01 D0 */	beq lbl_80122F00
/* 80122D34  A8 1E 30 1A */	lha r0, 0x301a(r30)
/* 80122D38  2C 00 00 06 */	cmpwi r0, 6
/* 80122D3C  40 82 01 C4 */	bne lbl_80122F00
/* 80122D40  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 80122D44  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 80122D48  38 63 00 BB */	addi r3, r3, 0xbb
/* 80122D4C  4B F7 AD 15 */	bl checkStageName__9daAlink_cFPCc
/* 80122D50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80122D54  41 82 01 AC */	beq lbl_80122F00
/* 80122D58  38 61 00 2C */	addi r3, r1, 0x2c
/* 80122D5C  38 9E 37 E0 */	addi r4, r30, 0x37e0
/* 80122D60  38 BE 37 EC */	addi r5, r30, 0x37ec
/* 80122D64  48 14 3D 81 */	bl __pl__4cXyzCFRC3Vec
/* 80122D68  38 61 00 20 */	addi r3, r1, 0x20
/* 80122D6C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80122D70  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 80122D74  48 14 3E 11 */	bl __ml__4cXyzCFf
/* 80122D78  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80122D7C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80122D80  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80122D84  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80122D88  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80122D8C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80122D90  38 61 00 14 */	addi r3, r1, 0x14
/* 80122D94  38 9E 37 EC */	addi r4, r30, 0x37ec
/* 80122D98  38 BE 37 E0 */	addi r5, r30, 0x37e0
/* 80122D9C  48 14 3D 99 */	bl __mi__4cXyzCFRC3Vec
/* 80122DA0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80122DA4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80122DA8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80122DAC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80122DB0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80122DB4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80122DB8  38 61 00 50 */	addi r3, r1, 0x50
/* 80122DBC  48 14 43 6D */	bl atan2sX_Z__4cXyzCFv
/* 80122DC0  7C 7D 1B 78 */	mr r29, r3
/* 80122DC4  38 61 00 50 */	addi r3, r1, 0x50
/* 80122DC8  48 14 43 89 */	bl atan2sY_XZ__4cXyzCFv
/* 80122DCC  7C 64 1B 78 */	mr r4, r3
/* 80122DD0  38 61 00 0C */	addi r3, r1, 0xc
/* 80122DD4  7F A5 EB 78 */	mr r5, r29
/* 80122DD8  38 C0 00 00 */	li r6, 0
/* 80122DDC  48 14 46 19 */	bl __ct__5csXyzFsss
/* 80122DE0  7F C3 F3 78 */	mr r3, r30
/* 80122DE4  38 9E 31 E4 */	addi r4, r30, 0x31e4
/* 80122DE8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008682@ha */
/* 80122DEC  38 A5 86 82 */	addi r5, r5, 0x8682 /* 0x00008682@l */
/* 80122DF0  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80122DF4  38 E1 00 0C */	addi r7, r1, 0xc
/* 80122DF8  4B FF D7 89 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80122DFC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80122E00  41 82 01 00 */	beq lbl_80122F00
/* 80122E04  38 61 00 50 */	addi r3, r1, 0x50
/* 80122E08  48 22 43 31 */	bl PSVECSquareMag
/* 80122E0C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80122E10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122E14  40 81 00 58 */	ble lbl_80122E6C
/* 80122E18  FC 00 08 34 */	frsqrte f0, f1
/* 80122E1C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80122E20  FC 44 00 32 */	fmul f2, f4, f0
/* 80122E24  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80122E28  FC 00 00 32 */	fmul f0, f0, f0
/* 80122E2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80122E30  FC 03 00 28 */	fsub f0, f3, f0
/* 80122E34  FC 02 00 32 */	fmul f0, f2, f0
/* 80122E38  FC 44 00 32 */	fmul f2, f4, f0
/* 80122E3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80122E40  FC 01 00 32 */	fmul f0, f1, f0
/* 80122E44  FC 03 00 28 */	fsub f0, f3, f0
/* 80122E48  FC 02 00 32 */	fmul f0, f2, f0
/* 80122E4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80122E50  FC 00 00 32 */	fmul f0, f0, f0
/* 80122E54  FC 01 00 32 */	fmul f0, f1, f0
/* 80122E58  FC 03 00 28 */	fsub f0, f3, f0
/* 80122E5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80122E60  FC 21 00 32 */	fmul f1, f1, f0
/* 80122E64  FC 20 08 18 */	frsp f1, f1
/* 80122E68  48 00 00 88 */	b lbl_80122EF0
lbl_80122E6C:
/* 80122E6C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80122E70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122E74  40 80 00 10 */	bge lbl_80122E84
/* 80122E78  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80122E7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80122E80  48 00 00 70 */	b lbl_80122EF0
lbl_80122E84:
/* 80122E84  D0 21 00 08 */	stfs f1, 8(r1)
/* 80122E88  80 81 00 08 */	lwz r4, 8(r1)
/* 80122E8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80122E90  3C 00 7F 80 */	lis r0, 0x7f80
/* 80122E94  7C 03 00 00 */	cmpw r3, r0
/* 80122E98  41 82 00 14 */	beq lbl_80122EAC
/* 80122E9C  40 80 00 40 */	bge lbl_80122EDC
/* 80122EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80122EA4  41 82 00 20 */	beq lbl_80122EC4
/* 80122EA8  48 00 00 34 */	b lbl_80122EDC
lbl_80122EAC:
/* 80122EAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80122EB0  41 82 00 0C */	beq lbl_80122EBC
/* 80122EB4  38 00 00 01 */	li r0, 1
/* 80122EB8  48 00 00 28 */	b lbl_80122EE0
lbl_80122EBC:
/* 80122EBC  38 00 00 02 */	li r0, 2
/* 80122EC0  48 00 00 20 */	b lbl_80122EE0
lbl_80122EC4:
/* 80122EC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80122EC8  41 82 00 0C */	beq lbl_80122ED4
/* 80122ECC  38 00 00 05 */	li r0, 5
/* 80122ED0  48 00 00 10 */	b lbl_80122EE0
lbl_80122ED4:
/* 80122ED4  38 00 00 03 */	li r0, 3
/* 80122ED8  48 00 00 08 */	b lbl_80122EE0
lbl_80122EDC:
/* 80122EDC  38 00 00 04 */	li r0, 4
lbl_80122EE0:
/* 80122EE0  2C 00 00 01 */	cmpwi r0, 1
/* 80122EE4  40 82 00 0C */	bne lbl_80122EF0
/* 80122EE8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80122EEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80122EF0:
/* 80122EF0  FC 00 08 1E */	fctiwz f0, f1
/* 80122EF4  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80122EF8  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80122EFC  B0 1D 00 54 */	sth r0, 0x54(r29)
lbl_80122F00:
/* 80122F00  39 61 00 90 */	addi r11, r1, 0x90
/* 80122F04  48 23 F3 1D */	bl _restgpr_27
/* 80122F08  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80122F0C  7C 08 03 A6 */	mtlr r0
/* 80122F10  38 21 00 90 */	addi r1, r1, 0x90
/* 80122F14  4E 80 00 20 */	blr 
