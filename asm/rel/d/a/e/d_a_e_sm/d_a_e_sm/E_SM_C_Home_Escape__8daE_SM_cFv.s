lbl_807949CC:
/* 807949CC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807949D0  7C 08 02 A6 */	mflr r0
/* 807949D4  90 01 00 94 */	stw r0, 0x94(r1)
/* 807949D8  39 61 00 90 */	addi r11, r1, 0x90
/* 807949DC  4B BC D8 01 */	bl _savegpr_29
/* 807949E0  7C 7E 1B 78 */	mr r30, r3
/* 807949E4  3C 80 80 7A */	lis r4, lit_3920@ha /* 0x807985E0@ha */
/* 807949E8  3B E4 85 E0 */	addi r31, r4, lit_3920@l /* 0x807985E0@l */
/* 807949EC  A8 03 06 B6 */	lha r0, 0x6b6(r3)
/* 807949F0  28 00 00 14 */	cmplwi r0, 0x14
/* 807949F4  41 81 07 D0 */	bgt lbl_807951C4
/* 807949F8  3C 80 80 7A */	lis r4, lit_5019@ha /* 0x807987C4@ha */
/* 807949FC  38 84 87 C4 */	addi r4, r4, lit_5019@l /* 0x807987C4@l */
/* 80794A00  54 00 10 3A */	slwi r0, r0, 2
/* 80794A04  7C 04 00 2E */	lwzx r0, r4, r0
/* 80794A08  7C 09 03 A6 */	mtctr r0
/* 80794A0C  4E 80 04 20 */	bctr 
lbl_80794A10:
/* 80794A10  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80794A14  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80794A18  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80794A1C  38 80 00 01 */	li r4, 1
/* 80794A20  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80794A24  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80794A28  40 82 00 14 */	bne lbl_80794A3C
/* 80794A2C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80794A30  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80794A34  41 82 00 08 */	beq lbl_80794A3C
/* 80794A38  38 80 00 00 */	li r4, 0
lbl_80794A3C:
/* 80794A3C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80794A40  41 82 00 0C */	beq lbl_80794A4C
/* 80794A44  38 00 00 05 */	li r0, 5
/* 80794A48  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
lbl_80794A4C:
/* 80794A4C  38 00 00 19 */	li r0, 0x19
/* 80794A50  90 1E 06 88 */	stw r0, 0x688(r30)
/* 80794A54  48 00 07 70 */	b lbl_807951C4
lbl_80794A58:
/* 80794A58  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80794A5C  38 63 00 0C */	addi r3, r3, 0xc
/* 80794A60  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80794A64  4B B9 39 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80794A68  2C 03 00 00 */	cmpwi r3, 0
/* 80794A6C  41 82 07 58 */	beq lbl_807951C4
/* 80794A70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80794A74  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80794A78  38 00 00 05 */	li r0, 5
/* 80794A7C  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 80794A80  80 1E 0A 8C */	lwz r0, 0xa8c(r30)
/* 80794A84  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80794A88  41 82 00 34 */	beq lbl_80794ABC
/* 80794A8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702D0@ha */
/* 80794A90  38 03 02 D0 */	addi r0, r3, 0x02D0 /* 0x000702D0@l */
/* 80794A94  90 01 00 38 */	stw r0, 0x38(r1)
/* 80794A98  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80794A9C  38 81 00 38 */	addi r4, r1, 0x38
/* 80794AA0  38 A0 00 00 */	li r5, 0
/* 80794AA4  38 C0 FF FF */	li r6, -1
/* 80794AA8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80794AAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80794AB0  7D 89 03 A6 */	mtctr r12
/* 80794AB4  4E 80 04 21 */	bctrl 
/* 80794AB8  48 00 07 0C */	b lbl_807951C4
lbl_80794ABC:
/* 80794ABC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702CF@ha */
/* 80794AC0  38 03 02 CF */	addi r0, r3, 0x02CF /* 0x000702CF@l */
/* 80794AC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80794AC8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80794ACC  38 81 00 34 */	addi r4, r1, 0x34
/* 80794AD0  38 A0 00 00 */	li r5, 0
/* 80794AD4  38 C0 FF FF */	li r6, -1
/* 80794AD8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80794ADC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80794AE0  7D 89 03 A6 */	mtctr r12
/* 80794AE4  4E 80 04 21 */	bctrl 
/* 80794AE8  48 00 06 DC */	b lbl_807951C4
lbl_80794AEC:
/* 80794AEC  80 1E 0E F4 */	lwz r0, 0xef4(r30)
/* 80794AF0  60 00 00 01 */	ori r0, r0, 1
/* 80794AF4  90 1E 0E F4 */	stw r0, 0xef4(r30)
/* 80794AF8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80794AFC  38 9E 09 90 */	addi r4, r30, 0x990
/* 80794B00  4B AD C1 05 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80794B04  B0 7E 06 D8 */	sth r3, 0x6d8(r30)
/* 80794B08  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80794B0C  A8 9E 06 D8 */	lha r4, 0x6d8(r30)
/* 80794B10  38 A0 10 00 */	li r5, 0x1000
/* 80794B14  4B AD C0 7D */	bl cLib_chaseAngleS__FPsss
/* 80794B18  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80794B1C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80794B20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80794B24  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80794B28  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80794B2C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80794B30  C0 5E 09 98 */	lfs f2, 0x998(r30)
/* 80794B34  C0 1E 09 90 */	lfs f0, 0x990(r30)
/* 80794B38  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80794B3C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80794B40  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80794B44  38 61 00 3C */	addi r3, r1, 0x3c
/* 80794B48  38 81 00 48 */	addi r4, r1, 0x48
/* 80794B4C  4B BB 28 51 */	bl PSVECSquareDistance
/* 80794B50  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80794B54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80794B58  40 81 00 58 */	ble lbl_80794BB0
/* 80794B5C  FC 00 08 34 */	frsqrte f0, f1
/* 80794B60  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80794B64  FC 44 00 32 */	fmul f2, f4, f0
/* 80794B68  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80794B6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80794B70  FC 01 00 32 */	fmul f0, f1, f0
/* 80794B74  FC 03 00 28 */	fsub f0, f3, f0
/* 80794B78  FC 02 00 32 */	fmul f0, f2, f0
/* 80794B7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80794B80  FC 00 00 32 */	fmul f0, f0, f0
/* 80794B84  FC 01 00 32 */	fmul f0, f1, f0
/* 80794B88  FC 03 00 28 */	fsub f0, f3, f0
/* 80794B8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80794B90  FC 44 00 32 */	fmul f2, f4, f0
/* 80794B94  FC 00 00 32 */	fmul f0, f0, f0
/* 80794B98  FC 01 00 32 */	fmul f0, f1, f0
/* 80794B9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80794BA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80794BA4  FC 21 00 32 */	fmul f1, f1, f0
/* 80794BA8  FC 20 08 18 */	frsp f1, f1
/* 80794BAC  48 00 00 88 */	b lbl_80794C34
lbl_80794BB0:
/* 80794BB0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80794BB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80794BB8  40 80 00 10 */	bge lbl_80794BC8
/* 80794BBC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80794BC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80794BC4  48 00 00 70 */	b lbl_80794C34
lbl_80794BC8:
/* 80794BC8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80794BCC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80794BD0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80794BD4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80794BD8  7C 03 00 00 */	cmpw r3, r0
/* 80794BDC  41 82 00 14 */	beq lbl_80794BF0
/* 80794BE0  40 80 00 40 */	bge lbl_80794C20
/* 80794BE4  2C 03 00 00 */	cmpwi r3, 0
/* 80794BE8  41 82 00 20 */	beq lbl_80794C08
/* 80794BEC  48 00 00 34 */	b lbl_80794C20
lbl_80794BF0:
/* 80794BF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80794BF4  41 82 00 0C */	beq lbl_80794C00
/* 80794BF8  38 00 00 01 */	li r0, 1
/* 80794BFC  48 00 00 28 */	b lbl_80794C24
lbl_80794C00:
/* 80794C00  38 00 00 02 */	li r0, 2
/* 80794C04  48 00 00 20 */	b lbl_80794C24
lbl_80794C08:
/* 80794C08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80794C0C  41 82 00 0C */	beq lbl_80794C18
/* 80794C10  38 00 00 05 */	li r0, 5
/* 80794C14  48 00 00 10 */	b lbl_80794C24
lbl_80794C18:
/* 80794C18  38 00 00 03 */	li r0, 3
/* 80794C1C  48 00 00 08 */	b lbl_80794C24
lbl_80794C20:
/* 80794C20  38 00 00 04 */	li r0, 4
lbl_80794C24:
/* 80794C24  2C 00 00 01 */	cmpwi r0, 1
/* 80794C28  40 82 00 0C */	bne lbl_80794C34
/* 80794C2C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80794C30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80794C34:
/* 80794C34  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80794C38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80794C3C  40 80 00 6C */	bge lbl_80794CA8
/* 80794C40  38 00 00 07 */	li r0, 7
/* 80794C44  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 80794C48  7F C3 F3 78 */	mr r3, r30
/* 80794C4C  38 80 00 19 */	li r4, 0x19
/* 80794C50  38 A0 00 00 */	li r5, 0
/* 80794C54  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80794C58  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80794C5C  4B FF D6 05 */	bl SetAnm__8daE_SM_cFiiff
/* 80794C60  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702CE@ha */
/* 80794C64  38 03 02 CE */	addi r0, r3, 0x02CE /* 0x000702CE@l */
/* 80794C68  90 01 00 30 */	stw r0, 0x30(r1)
/* 80794C6C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80794C70  38 81 00 30 */	addi r4, r1, 0x30
/* 80794C74  38 A0 00 00 */	li r5, 0
/* 80794C78  38 C0 FF FF */	li r6, -1
/* 80794C7C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80794C80  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80794C84  7D 89 03 A6 */	mtctr r12
/* 80794C88  4E 80 04 21 */	bctrl 
/* 80794C8C  80 1E 0F 64 */	lwz r0, 0xf64(r30)
/* 80794C90  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80794C94  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80794C98  80 1E 0E E0 */	lwz r0, 0xee0(r30)
/* 80794C9C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80794CA0  90 1E 0E E0 */	stw r0, 0xee0(r30)
/* 80794CA4  48 00 05 20 */	b lbl_807951C4
lbl_80794CA8:
/* 80794CA8  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 80794CAC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80794CB0  41 82 00 70 */	beq lbl_80794D20
/* 80794CB4  7F C3 F3 78 */	mr r3, r30
/* 80794CB8  38 80 00 0F */	li r4, 0xf
/* 80794CBC  38 A0 00 00 */	li r5, 0
/* 80794CC0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80794CC4  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80794CC8  4B FF D5 99 */	bl SetAnm__8daE_SM_cFiiff
/* 80794CCC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702CD@ha */
/* 80794CD0  38 03 02 CD */	addi r0, r3, 0x02CD /* 0x000702CD@l */
/* 80794CD4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80794CD8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80794CDC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80794CE0  38 A0 FF FF */	li r5, -1
/* 80794CE4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80794CE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80794CEC  7D 89 03 A6 */	mtctr r12
/* 80794CF0  4E 80 04 21 */	bctrl 
/* 80794CF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702CE@ha */
/* 80794CF8  38 03 02 CE */	addi r0, r3, 0x02CE /* 0x000702CE@l */
/* 80794CFC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80794D00  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80794D04  38 81 00 28 */	addi r4, r1, 0x28
/* 80794D08  38 A0 00 00 */	li r5, 0
/* 80794D0C  38 C0 FF FF */	li r6, -1
/* 80794D10  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80794D14  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80794D18  7D 89 03 A6 */	mtctr r12
/* 80794D1C  4E 80 04 21 */	bctrl 
lbl_80794D20:
/* 80794D20  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80794D24  38 63 00 0C */	addi r3, r3, 0xc
/* 80794D28  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80794D2C  4B B9 37 01 */	bl checkPass__12J3DFrameCtrlFf
/* 80794D30  2C 03 00 00 */	cmpwi r3, 0
/* 80794D34  41 82 04 90 */	beq lbl_807951C4
/* 80794D38  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80794D3C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80794D40  38 00 00 00 */	li r0, 0
/* 80794D44  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 80794D48  38 00 00 19 */	li r0, 0x19
/* 80794D4C  90 1E 06 88 */	stw r0, 0x688(r30)
/* 80794D50  48 00 04 74 */	b lbl_807951C4
lbl_80794D54:
/* 80794D54  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 80794D58  2C 00 00 19 */	cmpwi r0, 0x19
/* 80794D5C  40 82 00 74 */	bne lbl_80794DD0
/* 80794D60  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80794D64  38 80 00 01 */	li r4, 1
/* 80794D68  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80794D6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80794D70  40 82 00 18 */	bne lbl_80794D88
/* 80794D74  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80794D78  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80794D7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80794D80  41 82 00 08 */	beq lbl_80794D88
/* 80794D84  38 80 00 00 */	li r4, 0
lbl_80794D88:
/* 80794D88  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80794D8C  41 82 00 44 */	beq lbl_80794DD0
/* 80794D90  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80794D94  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80794D98  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80794D9C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80794DA0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80794DA4  38 9E 09 90 */	addi r4, r30, 0x990
/* 80794DA8  4B AD BE 5D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80794DAC  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80794DB0  38 00 00 0F */	li r0, 0xf
/* 80794DB4  B0 1E 06 D0 */	sth r0, 0x6d0(r30)
/* 80794DB8  7F C3 F3 78 */	mr r3, r30
/* 80794DBC  38 80 00 1A */	li r4, 0x1a
/* 80794DC0  38 A0 00 02 */	li r5, 2
/* 80794DC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80794DC8  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80794DCC  4B FF D4 95 */	bl SetAnm__8daE_SM_cFiiff
lbl_80794DD0:
/* 80794DD0  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 80794DD4  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80794DD8  40 82 00 0C */	bne lbl_80794DE4
/* 80794DDC  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80794DE0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80794DE4:
/* 80794DE4  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80794DE8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80794DEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80794DF0  4C 40 13 82 */	cror 2, 0, 2
/* 80794DF4  40 82 03 D0 */	bne lbl_807951C4
/* 80794DF8  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 80794DFC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80794E00  40 82 03 C4 */	bne lbl_807951C4
/* 80794E04  38 7E 0E C8 */	addi r3, r30, 0xec8
/* 80794E08  4B 8E F8 51 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80794E0C  28 03 00 00 */	cmplwi r3, 0
/* 80794E10  41 82 03 B4 */	beq lbl_807951C4
/* 80794E14  80 1E 0E F4 */	lwz r0, 0xef4(r30)
/* 80794E18  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 80794E1C  90 1E 0E F4 */	stw r0, 0xef4(r30)
/* 80794E20  80 1E 0E F4 */	lwz r0, 0xef4(r30)
/* 80794E24  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80794E28  90 1E 0E F4 */	stw r0, 0xef4(r30)
/* 80794E2C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702D9@ha */
/* 80794E30  38 03 02 D9 */	addi r0, r3, 0x02D9 /* 0x000702D9@l */
/* 80794E34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80794E38  38 7E 06 60 */	addi r3, r30, 0x660
/* 80794E3C  38 81 00 24 */	addi r4, r1, 0x24
/* 80794E40  38 A0 00 00 */	li r5, 0
/* 80794E44  38 C0 FF FF */	li r6, -1
/* 80794E48  81 9E 06 70 */	lwz r12, 0x670(r30)
/* 80794E4C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80794E50  7D 89 03 A6 */	mtctr r12
/* 80794E54  4E 80 04 21 */	bctrl 
/* 80794E58  38 00 00 06 */	li r0, 6
/* 80794E5C  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 80794E60  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80794E64  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80794E68  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80794E6C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80794E70  38 61 00 6C */	addi r3, r1, 0x6c
/* 80794E74  7C 64 1B 78 */	mr r4, r3
/* 80794E78  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80794E7C  4B BB 22 5D */	bl PSVECScale
/* 80794E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80794E84  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80794E88  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80794E8C  38 80 00 00 */	li r4, 0
/* 80794E90  90 81 00 08 */	stw r4, 8(r1)
/* 80794E94  38 00 FF FF */	li r0, -1
/* 80794E98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80794E9C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80794EA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80794EA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80794EA8  38 80 00 00 */	li r4, 0
/* 80794EAC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008781@ha */
/* 80794EB0  38 A5 87 81 */	addi r5, r5, 0x8781 /* 0x00008781@l */
/* 80794EB4  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80794EB8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80794EBC  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80794EC0  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80794EC4  39 40 00 FF */	li r10, 0xff
/* 80794EC8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80794ECC  4B 8B 7B C5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80794ED0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80794ED4  38 80 00 00 */	li r4, 0
/* 80794ED8  90 81 00 08 */	stw r4, 8(r1)
/* 80794EDC  38 00 FF FF */	li r0, -1
/* 80794EE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80794EE4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80794EE8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80794EEC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80794EF0  38 80 00 00 */	li r4, 0
/* 80794EF4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008782@ha */
/* 80794EF8  38 A5 87 82 */	addi r5, r5, 0x8782 /* 0x00008782@l */
/* 80794EFC  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80794F00  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80794F04  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80794F08  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80794F0C  39 40 00 FF */	li r10, 0xff
/* 80794F10  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80794F14  4B 8B 7B 7D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80794F18  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80794F1C  38 80 00 00 */	li r4, 0
/* 80794F20  90 81 00 08 */	stw r4, 8(r1)
/* 80794F24  38 00 FF FF */	li r0, -1
/* 80794F28  90 01 00 0C */	stw r0, 0xc(r1)
/* 80794F2C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80794F30  90 81 00 14 */	stw r4, 0x14(r1)
/* 80794F34  90 81 00 18 */	stw r4, 0x18(r1)
/* 80794F38  38 80 00 00 */	li r4, 0
/* 80794F3C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008783@ha */
/* 80794F40  38 A5 87 83 */	addi r5, r5, 0x8783 /* 0x00008783@l */
/* 80794F44  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80794F48  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80794F4C  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80794F50  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80794F54  39 40 00 FF */	li r10, 0xff
/* 80794F58  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80794F5C  4B 8B 7B 35 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80794F60  7F C3 F3 78 */	mr r3, r30
/* 80794F64  38 80 00 1B */	li r4, 0x1b
/* 80794F68  38 A0 00 00 */	li r5, 0
/* 80794F6C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80794F70  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80794F74  4B FF D2 ED */	bl SetAnm__8daE_SM_cFiiff
/* 80794F78  38 00 00 02 */	li r0, 2
/* 80794F7C  B0 1E 09 88 */	sth r0, 0x988(r30)
/* 80794F80  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80794F84  D0 1E 09 78 */	stfs f0, 0x978(r30)
/* 80794F88  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80794F8C  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 80794F90  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80794F94  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 80794F98  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 80794F9C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80794FA0  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 80794FA4  38 00 00 28 */	li r0, 0x28
/* 80794FA8  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 80794FAC  38 00 00 00 */	li r0, 0
/* 80794FB0  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 80794FB4  3B A0 00 00 */	li r29, 0
lbl_80794FB8:
/* 80794FB8  7F C3 F3 78 */	mr r3, r30
/* 80794FBC  4B FF DC 65 */	bl E_SM_Damage__8daE_SM_cFv
/* 80794FC0  3B BD 00 01 */	addi r29, r29, 1
/* 80794FC4  2C 1D 00 02 */	cmpwi r29, 2
/* 80794FC8  41 80 FF F0 */	blt lbl_80794FB8
/* 80794FCC  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80794FD0  D0 1E 06 E8 */	stfs f0, 0x6e8(r30)
/* 80794FD4  38 00 00 1E */	li r0, 0x1e
/* 80794FD8  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 80794FDC  38 7E 0E 50 */	addi r3, r30, 0xe50
/* 80794FE0  4B AC E9 7D */	bl ClrCcMove__9cCcD_SttsFv
/* 80794FE4  38 00 00 96 */	li r0, 0x96
/* 80794FE8  98 1E 0E A0 */	stb r0, 0xea0(r30)
/* 80794FEC  48 00 01 D8 */	b lbl_807951C4
lbl_80794FF0:
/* 80794FF0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80794FF4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80794FF8  C0 1E 09 94 */	lfs f0, 0x994(r30)
/* 80794FFC  EC 01 00 2A */	fadds f0, f1, f0
/* 80795000  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80795004  40 80 01 C0 */	bge lbl_807951C4
/* 80795008  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8079500C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80795010  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80795014  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 80795018  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8079501C  41 82 00 18 */	beq lbl_80795034
/* 80795020  38 80 00 1B */	li r4, 0x1b
/* 80795024  38 A0 00 00 */	li r5, 0
/* 80795028  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8079502C  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80795030  4B FF D2 31 */	bl SetAnm__8daE_SM_cFiiff
lbl_80795034:
/* 80795034  C0 1E 09 90 */	lfs f0, 0x990(r30)
/* 80795038  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8079503C  C0 3E 09 94 */	lfs f1, 0x994(r30)
/* 80795040  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80795044  C0 1E 09 98 */	lfs f0, 0x998(r30)
/* 80795048  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8079504C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80795050  EC 01 00 2A */	fadds f0, f1, f0
/* 80795054  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80795058  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8079505C  38 81 00 60 */	addi r4, r1, 0x60
/* 80795060  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 80795064  4B AD B7 49 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80795068  2C 03 00 00 */	cmpwi r3, 0
/* 8079506C  41 82 01 58 */	beq lbl_807951C4
/* 80795070  38 00 00 00 */	li r0, 0
/* 80795074  B0 1E 06 B0 */	sth r0, 0x6b0(r30)
/* 80795078  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 8079507C  B0 1E 09 88 */	sth r0, 0x988(r30)
/* 80795080  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 80795084  48 00 01 40 */	b lbl_807951C4
lbl_80795088:
/* 80795088  38 7E 0E 50 */	addi r3, r30, 0xe50
/* 8079508C  4B AC E8 D1 */	bl ClrCcMove__9cCcD_SttsFv
/* 80795090  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80795094  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80795098  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8079509C  C0 5F 01 24 */	lfs f2, 0x124(r31)
/* 807950A0  4B AD B6 A1 */	bl cLib_chaseF__FPfff
/* 807950A4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807950A8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807950AC  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 807950B0  4B AD B6 91 */	bl cLib_chaseF__FPfff
/* 807950B4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807950B8  C0 3E 09 90 */	lfs f1, 0x990(r30)
/* 807950BC  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 807950C0  4B AD B6 81 */	bl cLib_chaseF__FPfff
/* 807950C4  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807950C8  C0 3E 09 98 */	lfs f1, 0x998(r30)
/* 807950CC  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 807950D0  4B AD B6 71 */	bl cLib_chaseF__FPfff
/* 807950D4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807950D8  38 80 00 01 */	li r4, 1
/* 807950DC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807950E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807950E4  40 82 00 18 */	bne lbl_807950FC
/* 807950E8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807950EC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807950F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807950F4  41 82 00 08 */	beq lbl_807950FC
/* 807950F8  38 80 00 00 */	li r4, 0
lbl_807950FC:
/* 807950FC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80795100  41 82 00 1C */	beq lbl_8079511C
/* 80795104  7F C3 F3 78 */	mr r3, r30
/* 80795108  38 80 00 14 */	li r4, 0x14
/* 8079510C  38 A0 00 02 */	li r5, 2
/* 80795110  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80795114  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80795118  4B FF D1 49 */	bl SetAnm__8daE_SM_cFiiff
lbl_8079511C:
/* 8079511C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80795120  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80795124  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80795128  40 82 00 9C */	bne lbl_807951C4
/* 8079512C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80795130  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80795134  40 82 00 90 */	bne lbl_807951C4
/* 80795138  C0 1E 09 90 */	lfs f0, 0x990(r30)
/* 8079513C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80795140  C0 3E 09 94 */	lfs f1, 0x994(r30)
/* 80795144  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80795148  C0 1E 09 98 */	lfs f0, 0x998(r30)
/* 8079514C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80795150  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80795154  EC 01 00 2A */	fadds f0, f1, f0
/* 80795158  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8079515C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80795160  38 81 00 54 */	addi r4, r1, 0x54
/* 80795164  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80795168  4B AD B6 45 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8079516C  2C 03 00 00 */	cmpwi r3, 0
/* 80795170  41 82 00 54 */	beq lbl_807951C4
/* 80795174  38 60 00 00 */	li r3, 0
/* 80795178  90 7E 0E F0 */	stw r3, 0xef0(r30)
/* 8079517C  38 00 40 00 */	li r0, 0x4000
/* 80795180  90 1E 0E F0 */	stw r0, 0xef0(r30)
/* 80795184  B0 7E 06 BE */	sth r3, 0x6be(r30)
/* 80795188  98 7E 09 C4 */	stb r3, 0x9c4(r30)
/* 8079518C  88 1E 0A 08 */	lbz r0, 0xa08(r30)
/* 80795190  28 00 00 00 */	cmplwi r0, 0
/* 80795194  40 82 00 1C */	bne lbl_807951B0
/* 80795198  B0 7E 06 B0 */	sth r3, 0x6b0(r30)
/* 8079519C  B0 7E 06 B2 */	sth r3, 0x6b2(r30)
/* 807951A0  B0 7E 06 B4 */	sth r3, 0x6b4(r30)
/* 807951A4  B0 7E 06 B6 */	sth r3, 0x6b6(r30)
/* 807951A8  B0 7E 09 88 */	sth r3, 0x988(r30)
/* 807951AC  B0 7E 09 8A */	sth r3, 0x98a(r30)
lbl_807951B0:
/* 807951B0  38 00 00 01 */	li r0, 1
/* 807951B4  98 1E 06 8C */	stb r0, 0x68c(r30)
/* 807951B8  80 1E 0E E0 */	lwz r0, 0xee0(r30)
/* 807951BC  60 00 00 01 */	ori r0, r0, 1
/* 807951C0  90 1E 0E E0 */	stw r0, 0xee0(r30)
lbl_807951C4:
/* 807951C4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807951C8  A8 9E 06 D8 */	lha r4, 0x6d8(r30)
/* 807951CC  38 A0 04 00 */	li r5, 0x400
/* 807951D0  4B AD B9 C1 */	bl cLib_chaseAngleS__FPsss
/* 807951D4  39 61 00 90 */	addi r11, r1, 0x90
/* 807951D8  4B BC D0 51 */	bl _restgpr_29
/* 807951DC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807951E0  7C 08 03 A6 */	mtlr r0
/* 807951E4  38 21 00 90 */	addi r1, r1, 0x90
/* 807951E8  4E 80 00 20 */	blr 
