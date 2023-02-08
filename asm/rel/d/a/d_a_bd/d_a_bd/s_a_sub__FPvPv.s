lbl_804D6F10:
/* 804D6F10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804D6F14  7C 08 02 A6 */	mflr r0
/* 804D6F18  90 01 00 54 */	stw r0, 0x54(r1)
/* 804D6F1C  39 61 00 50 */	addi r11, r1, 0x50
/* 804D6F20  4B E8 B2 B9 */	bl _savegpr_28
/* 804D6F24  7C 7D 1B 78 */	mr r29, r3
/* 804D6F28  7C 9E 23 78 */	mr r30, r4
/* 804D6F2C  3C 80 80 4E */	lis r4, lit_3942@ha /* 0x804D9E64@ha */
/* 804D6F30  3B E4 9E 64 */	addi r31, r4, lit_3942@l /* 0x804D9E64@l */
/* 804D6F34  4B B4 1D AD */	bl fopAc_IsActor__FPv
/* 804D6F38  2C 03 00 00 */	cmpwi r3, 0
/* 804D6F3C  41 82 00 10 */	beq lbl_804D6F4C
/* 804D6F40  88 1D 04 96 */	lbz r0, 0x496(r29)
/* 804D6F44  28 00 00 02 */	cmplwi r0, 2
/* 804D6F48  41 82 00 24 */	beq lbl_804D6F6C
lbl_804D6F4C:
/* 804D6F4C  88 1D 04 96 */	lbz r0, 0x496(r29)
/* 804D6F50  28 00 00 04 */	cmplwi r0, 4
/* 804D6F54  41 82 00 18 */	beq lbl_804D6F6C
/* 804D6F58  A8 1D 00 08 */	lha r0, 8(r29)
/* 804D6F5C  2C 00 01 1B */	cmpwi r0, 0x11b
/* 804D6F60  41 82 00 0C */	beq lbl_804D6F6C
/* 804D6F64  2C 00 01 10 */	cmpwi r0, 0x110
/* 804D6F68  40 82 02 8C */	bne lbl_804D71F4
lbl_804D6F6C:
/* 804D6F6C  38 61 00 1C */	addi r3, r1, 0x1c
/* 804D6F70  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804D6F74  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804D6F78  4B D8 FB BD */	bl __mi__4cXyzCFRC3Vec
/* 804D6F7C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804D6F80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804D6F84  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804D6F88  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804D6F8C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804D6F90  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804D6F94  38 61 00 28 */	addi r3, r1, 0x28
/* 804D6F98  4B E7 01 A1 */	bl PSVECSquareMag
/* 804D6F9C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D6FA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D6FA4  40 81 00 58 */	ble lbl_804D6FFC
/* 804D6FA8  FC 00 08 34 */	frsqrte f0, f1
/* 804D6FAC  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 804D6FB0  FC 44 00 32 */	fmul f2, f4, f0
/* 804D6FB4  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 804D6FB8  FC 00 00 32 */	fmul f0, f0, f0
/* 804D6FBC  FC 01 00 32 */	fmul f0, f1, f0
/* 804D6FC0  FC 03 00 28 */	fsub f0, f3, f0
/* 804D6FC4  FC 02 00 32 */	fmul f0, f2, f0
/* 804D6FC8  FC 44 00 32 */	fmul f2, f4, f0
/* 804D6FCC  FC 00 00 32 */	fmul f0, f0, f0
/* 804D6FD0  FC 01 00 32 */	fmul f0, f1, f0
/* 804D6FD4  FC 03 00 28 */	fsub f0, f3, f0
/* 804D6FD8  FC 02 00 32 */	fmul f0, f2, f0
/* 804D6FDC  FC 44 00 32 */	fmul f2, f4, f0
/* 804D6FE0  FC 00 00 32 */	fmul f0, f0, f0
/* 804D6FE4  FC 01 00 32 */	fmul f0, f1, f0
/* 804D6FE8  FC 03 00 28 */	fsub f0, f3, f0
/* 804D6FEC  FC 02 00 32 */	fmul f0, f2, f0
/* 804D6FF0  FC 21 00 32 */	fmul f1, f1, f0
/* 804D6FF4  FC 20 08 18 */	frsp f1, f1
/* 804D6FF8  48 00 00 88 */	b lbl_804D7080
lbl_804D6FFC:
/* 804D6FFC  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 804D7000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D7004  40 80 00 10 */	bge lbl_804D7014
/* 804D7008  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D700C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804D7010  48 00 00 70 */	b lbl_804D7080
lbl_804D7014:
/* 804D7014  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804D7018  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804D701C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804D7020  3C 00 7F 80 */	lis r0, 0x7f80
/* 804D7024  7C 03 00 00 */	cmpw r3, r0
/* 804D7028  41 82 00 14 */	beq lbl_804D703C
/* 804D702C  40 80 00 40 */	bge lbl_804D706C
/* 804D7030  2C 03 00 00 */	cmpwi r3, 0
/* 804D7034  41 82 00 20 */	beq lbl_804D7054
/* 804D7038  48 00 00 34 */	b lbl_804D706C
lbl_804D703C:
/* 804D703C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D7040  41 82 00 0C */	beq lbl_804D704C
/* 804D7044  38 00 00 01 */	li r0, 1
/* 804D7048  48 00 00 28 */	b lbl_804D7070
lbl_804D704C:
/* 804D704C  38 00 00 02 */	li r0, 2
/* 804D7050  48 00 00 20 */	b lbl_804D7070
lbl_804D7054:
/* 804D7054  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D7058  41 82 00 0C */	beq lbl_804D7064
/* 804D705C  38 00 00 05 */	li r0, 5
/* 804D7060  48 00 00 10 */	b lbl_804D7070
lbl_804D7064:
/* 804D7064  38 00 00 03 */	li r0, 3
/* 804D7068  48 00 00 08 */	b lbl_804D7070
lbl_804D706C:
/* 804D706C  38 00 00 04 */	li r0, 4
lbl_804D7070:
/* 804D7070  2C 00 00 01 */	cmpwi r0, 1
/* 804D7074  40 82 00 0C */	bne lbl_804D7080
/* 804D7078  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D707C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804D7080:
/* 804D7080  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 804D7084  FC 00 02 10 */	fabs f0, f0
/* 804D7088  3C 60 80 4E */	lis r3, l_HIO@ha /* 0x804DA36C@ha */
/* 804D708C  3B 83 A3 6C */	addi r28, r3, l_HIO@l /* 0x804DA36C@l */
/* 804D7090  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 804D7094  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 804D7098  FC 00 00 18 */	frsp f0, f0
/* 804D709C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804D70A0  EC 03 00 2A */	fadds f0, f3, f0
/* 804D70A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D70A8  40 80 00 0C */	bge lbl_804D70B4
/* 804D70AC  7F A3 EB 78 */	mr r3, r29
/* 804D70B0  48 00 01 48 */	b lbl_804D71F8
lbl_804D70B4:
/* 804D70B4  38 61 00 10 */	addi r3, r1, 0x10
/* 804D70B8  38 9E 05 C4 */	addi r4, r30, 0x5c4
/* 804D70BC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804D70C0  4B D8 FA 75 */	bl __mi__4cXyzCFRC3Vec
/* 804D70C4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D70C8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804D70CC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804D70D0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804D70D4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804D70D8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804D70DC  38 61 00 28 */	addi r3, r1, 0x28
/* 804D70E0  4B E7 00 59 */	bl PSVECSquareMag
/* 804D70E4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D70E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D70EC  40 81 00 58 */	ble lbl_804D7144
/* 804D70F0  FC 00 08 34 */	frsqrte f0, f1
/* 804D70F4  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 804D70F8  FC 44 00 32 */	fmul f2, f4, f0
/* 804D70FC  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 804D7100  FC 00 00 32 */	fmul f0, f0, f0
/* 804D7104  FC 01 00 32 */	fmul f0, f1, f0
/* 804D7108  FC 03 00 28 */	fsub f0, f3, f0
/* 804D710C  FC 02 00 32 */	fmul f0, f2, f0
/* 804D7110  FC 44 00 32 */	fmul f2, f4, f0
/* 804D7114  FC 00 00 32 */	fmul f0, f0, f0
/* 804D7118  FC 01 00 32 */	fmul f0, f1, f0
/* 804D711C  FC 03 00 28 */	fsub f0, f3, f0
/* 804D7120  FC 02 00 32 */	fmul f0, f2, f0
/* 804D7124  FC 44 00 32 */	fmul f2, f4, f0
/* 804D7128  FC 00 00 32 */	fmul f0, f0, f0
/* 804D712C  FC 01 00 32 */	fmul f0, f1, f0
/* 804D7130  FC 03 00 28 */	fsub f0, f3, f0
/* 804D7134  FC 02 00 32 */	fmul f0, f2, f0
/* 804D7138  FC 21 00 32 */	fmul f1, f1, f0
/* 804D713C  FC 20 08 18 */	frsp f1, f1
/* 804D7140  48 00 00 88 */	b lbl_804D71C8
lbl_804D7144:
/* 804D7144  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 804D7148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D714C  40 80 00 10 */	bge lbl_804D715C
/* 804D7150  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D7154  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804D7158  48 00 00 70 */	b lbl_804D71C8
lbl_804D715C:
/* 804D715C  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D7160  80 81 00 08 */	lwz r4, 8(r1)
/* 804D7164  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804D7168  3C 00 7F 80 */	lis r0, 0x7f80
/* 804D716C  7C 03 00 00 */	cmpw r3, r0
/* 804D7170  41 82 00 14 */	beq lbl_804D7184
/* 804D7174  40 80 00 40 */	bge lbl_804D71B4
/* 804D7178  2C 03 00 00 */	cmpwi r3, 0
/* 804D717C  41 82 00 20 */	beq lbl_804D719C
/* 804D7180  48 00 00 34 */	b lbl_804D71B4
lbl_804D7184:
/* 804D7184  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D7188  41 82 00 0C */	beq lbl_804D7194
/* 804D718C  38 00 00 01 */	li r0, 1
/* 804D7190  48 00 00 28 */	b lbl_804D71B8
lbl_804D7194:
/* 804D7194  38 00 00 02 */	li r0, 2
/* 804D7198  48 00 00 20 */	b lbl_804D71B8
lbl_804D719C:
/* 804D719C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D71A0  41 82 00 0C */	beq lbl_804D71AC
/* 804D71A4  38 00 00 05 */	li r0, 5
/* 804D71A8  48 00 00 10 */	b lbl_804D71B8
lbl_804D71AC:
/* 804D71AC  38 00 00 03 */	li r0, 3
/* 804D71B0  48 00 00 08 */	b lbl_804D71B8
lbl_804D71B4:
/* 804D71B4  38 00 00 04 */	li r0, 4
lbl_804D71B8:
/* 804D71B8  2C 00 00 01 */	cmpwi r0, 1
/* 804D71BC  40 82 00 0C */	bne lbl_804D71C8
/* 804D71C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D71C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804D71C8:
/* 804D71C8  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 804D71CC  FC 00 02 10 */	fabs f0, f0
/* 804D71D0  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 804D71D4  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 804D71D8  FC 00 00 18 */	frsp f0, f0
/* 804D71DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804D71E0  EC 03 00 2A */	fadds f0, f3, f0
/* 804D71E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D71E8  40 80 00 0C */	bge lbl_804D71F4
/* 804D71EC  7F A3 EB 78 */	mr r3, r29
/* 804D71F0  48 00 00 08 */	b lbl_804D71F8
lbl_804D71F4:
/* 804D71F4  38 60 00 00 */	li r3, 0
lbl_804D71F8:
/* 804D71F8  39 61 00 50 */	addi r11, r1, 0x50
/* 804D71FC  4B E8 B0 29 */	bl _restgpr_28
/* 804D7200  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804D7204  7C 08 03 A6 */	mtlr r0
/* 804D7208  38 21 00 50 */	addi r1, r1, 0x50
/* 804D720C  4E 80 00 20 */	blr 
