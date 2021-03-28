lbl_80C20F48:
/* 80C20F48  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C20F4C  7C 08 02 A6 */	mflr r0
/* 80C20F50  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C20F54  39 61 00 70 */	addi r11, r1, 0x70
/* 80C20F58  4B 74 12 78 */	b _savegpr_26
/* 80C20F5C  7C 9A 23 78 */	mr r26, r4
/* 80C20F60  7C BC 2B 78 */	mr r28, r5
/* 80C20F64  3C 60 80 C2 */	lis r3, lit_3644@ha
/* 80C20F68  3B E3 1A F8 */	addi r31, r3, lit_3644@l
/* 80C20F6C  7F 5D D3 78 */	mr r29, r26
/* 80C20F70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C20F74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C20F78  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C20F7C  7F C3 F3 78 */	mr r3, r30
/* 80C20F80  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C20F84  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 80C20F88  7D 89 03 A6 */	mtctr r12
/* 80C20F8C  4E 80 04 21 */	bctrl 
/* 80C20F90  7C 7B 1B 78 */	mr r27, r3
/* 80C20F94  A8 1C 00 08 */	lha r0, 8(r28)
/* 80C20F98  7C 00 00 34 */	cntlzw r0, r0
/* 80C20F9C  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80C20FA0  28 00 00 FD */	cmplwi r0, 0xfd
/* 80C20FA4  40 82 00 20 */	bne lbl_80C20FC4
/* 80C20FA8  38 00 01 00 */	li r0, 0x100
/* 80C20FAC  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 80C20FB0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C20FB4  D0 1D 05 A4 */	stfs f0, 0x5a4(r29)
/* 80C20FB8  38 00 05 00 */	li r0, 0x500
/* 80C20FBC  B0 1D 05 AC */	sth r0, 0x5ac(r29)
/* 80C20FC0  48 00 00 30 */	b lbl_80C20FF0
lbl_80C20FC4:
/* 80C20FC4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C20FC8  D0 1D 05 A4 */	stfs f0, 0x5a4(r29)
/* 80C20FCC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C20FD0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C20FD4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C20FD8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C20FDC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C20FE0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C20FE4  7F A3 EB 78 */	mr r3, r29
/* 80C20FE8  38 81 00 48 */	addi r4, r1, 0x48
/* 80C20FEC  4B FF FA 59 */	bl Check_LinkRideOn__12daObjIce_s_cF4cXyz
lbl_80C20FF0:
/* 80C20FF0  3B 5A 04 D0 */	addi r26, r26, 0x4d0
/* 80C20FF4  28 1B 00 00 */	cmplwi r27, 0
/* 80C20FF8  41 82 01 78 */	beq lbl_80C21170
/* 80C20FFC  28 1A 00 00 */	cmplwi r26, 0
/* 80C21000  41 82 01 70 */	beq lbl_80C21170
/* 80C21004  C0 5A 00 08 */	lfs f2, 8(r26)
/* 80C21008  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80C2100C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C21010  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C21014  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C21018  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C2101C  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80C21020  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80C21024  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C21028  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C2102C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80C21030  38 61 00 0C */	addi r3, r1, 0xc
/* 80C21034  38 81 00 18 */	addi r4, r1, 0x18
/* 80C21038  4B 72 63 64 */	b PSVECSquareDistance
/* 80C2103C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C21040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C21044  40 81 00 58 */	ble lbl_80C2109C
/* 80C21048  FC 00 08 34 */	frsqrte f0, f1
/* 80C2104C  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80C21050  FC 44 00 32 */	fmul f2, f4, f0
/* 80C21054  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80C21058  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2105C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C21060  FC 03 00 28 */	fsub f0, f3, f0
/* 80C21064  FC 02 00 32 */	fmul f0, f2, f0
/* 80C21068  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2106C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C21070  FC 01 00 32 */	fmul f0, f1, f0
/* 80C21074  FC 03 00 28 */	fsub f0, f3, f0
/* 80C21078  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2107C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C21080  FC 00 00 32 */	fmul f0, f0, f0
/* 80C21084  FC 01 00 32 */	fmul f0, f1, f0
/* 80C21088  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2108C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C21090  FC 21 00 32 */	fmul f1, f1, f0
/* 80C21094  FC 20 08 18 */	frsp f1, f1
/* 80C21098  48 00 00 88 */	b lbl_80C21120
lbl_80C2109C:
/* 80C2109C  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80C210A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C210A4  40 80 00 10 */	bge lbl_80C210B4
/* 80C210A8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C210AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C210B0  48 00 00 70 */	b lbl_80C21120
lbl_80C210B4:
/* 80C210B4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C210B8  80 81 00 08 */	lwz r4, 8(r1)
/* 80C210BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C210C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C210C4  7C 03 00 00 */	cmpw r3, r0
/* 80C210C8  41 82 00 14 */	beq lbl_80C210DC
/* 80C210CC  40 80 00 40 */	bge lbl_80C2110C
/* 80C210D0  2C 03 00 00 */	cmpwi r3, 0
/* 80C210D4  41 82 00 20 */	beq lbl_80C210F4
/* 80C210D8  48 00 00 34 */	b lbl_80C2110C
lbl_80C210DC:
/* 80C210DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C210E0  41 82 00 0C */	beq lbl_80C210EC
/* 80C210E4  38 00 00 01 */	li r0, 1
/* 80C210E8  48 00 00 28 */	b lbl_80C21110
lbl_80C210EC:
/* 80C210EC  38 00 00 02 */	li r0, 2
/* 80C210F0  48 00 00 20 */	b lbl_80C21110
lbl_80C210F4:
/* 80C210F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C210F8  41 82 00 0C */	beq lbl_80C21104
/* 80C210FC  38 00 00 05 */	li r0, 5
/* 80C21100  48 00 00 10 */	b lbl_80C21110
lbl_80C21104:
/* 80C21104  38 00 00 03 */	li r0, 3
/* 80C21108  48 00 00 08 */	b lbl_80C21110
lbl_80C2110C:
/* 80C2110C  38 00 00 04 */	li r0, 4
lbl_80C21110:
/* 80C21110  2C 00 00 01 */	cmpwi r0, 1
/* 80C21114  40 82 00 0C */	bne lbl_80C21120
/* 80C21118  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C2111C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C21120:
/* 80C21120  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C21124  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 80C21128  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C2112C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C21130  40 80 00 40 */	bge lbl_80C21170
/* 80C21134  38 00 03 00 */	li r0, 0x300
/* 80C21138  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 80C2113C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C21140  D0 1D 05 A4 */	stfs f0, 0x5a4(r29)
/* 80C21144  38 00 10 00 */	li r0, 0x1000
/* 80C21148  B0 1D 05 AC */	sth r0, 0x5ac(r29)
/* 80C2114C  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80C21150  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C21154  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80C21158  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C2115C  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80C21160  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C21164  7F A3 EB 78 */	mr r3, r29
/* 80C21168  38 81 00 3C */	addi r4, r1, 0x3c
/* 80C2116C  4B FF FB 2D */	bl Check_RideOn__12daObjIce_s_cF4cXyz
lbl_80C21170:
/* 80C21170  7F C3 F3 78 */	mr r3, r30
/* 80C21174  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C21178  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80C2117C  7D 89 03 A6 */	mtctr r12
/* 80C21180  4E 80 04 21 */	bctrl 
/* 80C21184  2C 03 00 00 */	cmpwi r3, 0
/* 80C21188  41 82 00 40 */	beq lbl_80C211C8
/* 80C2118C  38 00 03 00 */	li r0, 0x300
/* 80C21190  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 80C21194  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C21198  D0 1D 05 A4 */	stfs f0, 0x5a4(r29)
/* 80C2119C  38 00 10 00 */	li r0, 0x1000
/* 80C211A0  B0 1D 05 AC */	sth r0, 0x5ac(r29)
/* 80C211A4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C211A8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C211AC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C211B0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C211B4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C211B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C211BC  7F A3 EB 78 */	mr r3, r29
/* 80C211C0  38 81 00 30 */	addi r4, r1, 0x30
/* 80C211C4  4B FF FA D5 */	bl Check_RideOn__12daObjIce_s_cF4cXyz
lbl_80C211C8:
/* 80C211C8  88 1D 05 C5 */	lbz r0, 0x5c5(r29)
/* 80C211CC  28 00 00 FF */	cmplwi r0, 0xff
/* 80C211D0  40 82 00 4C */	bne lbl_80C2121C
/* 80C211D4  A8 1C 00 08 */	lha r0, 8(r28)
/* 80C211D8  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C211DC  40 82 00 40 */	bne lbl_80C2121C
/* 80C211E0  38 00 03 00 */	li r0, 0x300
/* 80C211E4  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 80C211E8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C211EC  D0 1D 05 A4 */	stfs f0, 0x5a4(r29)
/* 80C211F0  38 00 10 00 */	li r0, 0x1000
/* 80C211F4  B0 1D 05 AC */	sth r0, 0x5ac(r29)
/* 80C211F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C211FC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C21200  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C21204  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C21208  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C2120C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C21210  7F A3 EB 78 */	mr r3, r29
/* 80C21214  38 81 00 24 */	addi r4, r1, 0x24
/* 80C21218  4B FF FA 81 */	bl Check_RideOn__12daObjIce_s_cF4cXyz
lbl_80C2121C:
/* 80C2121C  39 61 00 70 */	addi r11, r1, 0x70
/* 80C21220  4B 74 0F FC */	b _restgpr_26
/* 80C21224  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C21228  7C 08 03 A6 */	mtlr r0
/* 80C2122C  38 21 00 70 */	addi r1, r1, 0x70
/* 80C21230  4E 80 00 20 */	blr 
