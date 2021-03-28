lbl_806E6ED8:
/* 806E6ED8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E6EDC  7C 08 02 A6 */	mflr r0
/* 806E6EE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E6EE4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806E6EE8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 806E6EEC  7C 7E 1B 78 */	mr r30, r3
/* 806E6EF0  3C 80 80 6F */	lis r4, lit_3905@ha
/* 806E6EF4  3B E4 A1 F4 */	addi r31, r4, lit_3905@l
/* 806E6EF8  80 03 07 14 */	lwz r0, 0x714(r3)
/* 806E6EFC  2C 00 00 01 */	cmpwi r0, 1
/* 806E6F00  41 82 00 60 */	beq lbl_806E6F60
/* 806E6F04  40 80 03 0C */	bge lbl_806E7210
/* 806E6F08  2C 00 00 00 */	cmpwi r0, 0
/* 806E6F0C  40 80 00 08 */	bge lbl_806E6F14
/* 806E6F10  48 00 03 00 */	b lbl_806E7210
lbl_806E6F14:
/* 806E6F14  38 00 00 00 */	li r0, 0
/* 806E6F18  98 1E 07 1F */	stb r0, 0x71f(r30)
/* 806E6F1C  38 80 00 0C */	li r4, 0xc
/* 806E6F20  38 A0 00 02 */	li r5, 2
/* 806E6F24  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E6F28  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E6F2C  4B FF F5 E9 */	bl setBck__8daE_HP_cFiUcff
/* 806E6F30  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007052E@ha */
/* 806E6F34  38 03 05 2E */	addi r0, r3, 0x052E /* 0x0007052E@l */
/* 806E6F38  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E6F3C  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E6F40  38 81 00 10 */	addi r4, r1, 0x10
/* 806E6F44  38 A0 FF FF */	li r5, -1
/* 806E6F48  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E6F4C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E6F50  7D 89 03 A6 */	mtctr r12
/* 806E6F54  4E 80 04 21 */	bctrl 
/* 806E6F58  38 00 00 01 */	li r0, 1
/* 806E6F5C  90 1E 07 14 */	stw r0, 0x714(r30)
lbl_806E6F60:
/* 806E6F60  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806E6F64  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806E6F68  38 61 00 14 */	addi r3, r1, 0x14
/* 806E6F6C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806E6F70  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806E6F74  4B B7 FB C0 */	b __mi__4cXyzCFRC3Vec
/* 806E6F78  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806E6F7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E6F80  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806E6F84  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E6F88  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806E6F8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E6F90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E6F94  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E6F98  38 61 00 20 */	addi r3, r1, 0x20
/* 806E6F9C  4B C6 01 9C */	b PSVECSquareMag
/* 806E6FA0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E6FA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E6FA8  40 81 00 58 */	ble lbl_806E7000
/* 806E6FAC  FC 00 08 34 */	frsqrte f0, f1
/* 806E6FB0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806E6FB4  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6FB8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806E6FBC  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6FC0  FC 01 00 32 */	fmul f0, f1, f0
/* 806E6FC4  FC 03 00 28 */	fsub f0, f3, f0
/* 806E6FC8  FC 02 00 32 */	fmul f0, f2, f0
/* 806E6FCC  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6FD0  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6FD4  FC 01 00 32 */	fmul f0, f1, f0
/* 806E6FD8  FC 03 00 28 */	fsub f0, f3, f0
/* 806E6FDC  FC 02 00 32 */	fmul f0, f2, f0
/* 806E6FE0  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6FE4  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6FE8  FC 01 00 32 */	fmul f0, f1, f0
/* 806E6FEC  FC 03 00 28 */	fsub f0, f3, f0
/* 806E6FF0  FC 02 00 32 */	fmul f0, f2, f0
/* 806E6FF4  FC 21 00 32 */	fmul f1, f1, f0
/* 806E6FF8  FC 20 08 18 */	frsp f1, f1
/* 806E6FFC  48 00 00 88 */	b lbl_806E7084
lbl_806E7000:
/* 806E7000  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806E7004  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E7008  40 80 00 10 */	bge lbl_806E7018
/* 806E700C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E7010  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806E7014  48 00 00 70 */	b lbl_806E7084
lbl_806E7018:
/* 806E7018  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806E701C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E7020  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E7024  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E7028  7C 03 00 00 */	cmpw r3, r0
/* 806E702C  41 82 00 14 */	beq lbl_806E7040
/* 806E7030  40 80 00 40 */	bge lbl_806E7070
/* 806E7034  2C 03 00 00 */	cmpwi r3, 0
/* 806E7038  41 82 00 20 */	beq lbl_806E7058
/* 806E703C  48 00 00 34 */	b lbl_806E7070
lbl_806E7040:
/* 806E7040  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E7044  41 82 00 0C */	beq lbl_806E7050
/* 806E7048  38 00 00 01 */	li r0, 1
/* 806E704C  48 00 00 28 */	b lbl_806E7074
lbl_806E7050:
/* 806E7050  38 00 00 02 */	li r0, 2
/* 806E7054  48 00 00 20 */	b lbl_806E7074
lbl_806E7058:
/* 806E7058  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E705C  41 82 00 0C */	beq lbl_806E7068
/* 806E7060  38 00 00 05 */	li r0, 5
/* 806E7064  48 00 00 10 */	b lbl_806E7074
lbl_806E7068:
/* 806E7068  38 00 00 03 */	li r0, 3
/* 806E706C  48 00 00 08 */	b lbl_806E7074
lbl_806E7070:
/* 806E7070  38 00 00 04 */	li r0, 4
lbl_806E7074:
/* 806E7074  2C 00 00 01 */	cmpwi r0, 1
/* 806E7078  40 82 00 0C */	bne lbl_806E7084
/* 806E707C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E7080  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806E7084:
/* 806E7084  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806E7088  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 806E708C  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E7090  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E7094  40 80 00 68 */	bge lbl_806E70FC
/* 806E7098  7F C3 F3 78 */	mr r3, r30
/* 806E709C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806E70A0  4B FF F5 2D */	bl mChkDistance__8daE_HP_cFf
/* 806E70A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E70A8  41 82 00 54 */	beq lbl_806E70FC
/* 806E70AC  4B A7 83 78 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 806E70B0  2C 03 00 00 */	cmpwi r3, 0
/* 806E70B4  40 82 00 34 */	bne lbl_806E70E8
/* 806E70B8  88 7E 07 1F */	lbz r3, 0x71f(r30)
/* 806E70BC  38 03 00 01 */	addi r0, r3, 1
/* 806E70C0  98 1E 07 1F */	stb r0, 0x71f(r30)
/* 806E70C4  88 9E 07 1F */	lbz r4, 0x71f(r30)
/* 806E70C8  3C 60 80 6F */	lis r3, l_HIO@ha
/* 806E70CC  38 63 A4 F8 */	addi r3, r3, l_HIO@l
/* 806E70D0  A8 03 00 10 */	lha r0, 0x10(r3)
/* 806E70D4  7C 04 00 00 */	cmpw r4, r0
/* 806E70D8  40 80 00 10 */	bge lbl_806E70E8
/* 806E70DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E70E0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806E70E4  48 00 01 2C */	b lbl_806E7210
lbl_806E70E8:
/* 806E70E8  7F C3 F3 78 */	mr r3, r30
/* 806E70EC  38 80 00 03 */	li r4, 3
/* 806E70F0  38 A0 00 00 */	li r5, 0
/* 806E70F4  4B FF F4 CD */	bl setActionMode__8daE_HP_cFii
/* 806E70F8  48 00 01 18 */	b lbl_806E7210
lbl_806E70FC:
/* 806E70FC  38 61 00 20 */	addi r3, r1, 0x20
/* 806E7100  4B B8 00 28 */	b atan2sX_Z__4cXyzCFv
/* 806E7104  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 806E7108  38 61 00 20 */	addi r3, r1, 0x20
/* 806E710C  4B C6 00 2C */	b PSVECSquareMag
/* 806E7110  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E7114  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E7118  40 81 00 58 */	ble lbl_806E7170
/* 806E711C  FC 00 08 34 */	frsqrte f0, f1
/* 806E7120  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806E7124  FC 44 00 32 */	fmul f2, f4, f0
/* 806E7128  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806E712C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E7130  FC 01 00 32 */	fmul f0, f1, f0
/* 806E7134  FC 03 00 28 */	fsub f0, f3, f0
/* 806E7138  FC 02 00 32 */	fmul f0, f2, f0
/* 806E713C  FC 44 00 32 */	fmul f2, f4, f0
/* 806E7140  FC 00 00 32 */	fmul f0, f0, f0
/* 806E7144  FC 01 00 32 */	fmul f0, f1, f0
/* 806E7148  FC 03 00 28 */	fsub f0, f3, f0
/* 806E714C  FC 02 00 32 */	fmul f0, f2, f0
/* 806E7150  FC 44 00 32 */	fmul f2, f4, f0
/* 806E7154  FC 00 00 32 */	fmul f0, f0, f0
/* 806E7158  FC 01 00 32 */	fmul f0, f1, f0
/* 806E715C  FC 03 00 28 */	fsub f0, f3, f0
/* 806E7160  FC 02 00 32 */	fmul f0, f2, f0
/* 806E7164  FC 21 00 32 */	fmul f1, f1, f0
/* 806E7168  FC 20 08 18 */	frsp f1, f1
/* 806E716C  48 00 00 88 */	b lbl_806E71F4
lbl_806E7170:
/* 806E7170  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806E7174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E7178  40 80 00 10 */	bge lbl_806E7188
/* 806E717C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E7180  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806E7184  48 00 00 70 */	b lbl_806E71F4
lbl_806E7188:
/* 806E7188  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E718C  80 81 00 08 */	lwz r4, 8(r1)
/* 806E7190  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E7194  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E7198  7C 03 00 00 */	cmpw r3, r0
/* 806E719C  41 82 00 14 */	beq lbl_806E71B0
/* 806E71A0  40 80 00 40 */	bge lbl_806E71E0
/* 806E71A4  2C 03 00 00 */	cmpwi r3, 0
/* 806E71A8  41 82 00 20 */	beq lbl_806E71C8
/* 806E71AC  48 00 00 34 */	b lbl_806E71E0
lbl_806E71B0:
/* 806E71B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E71B4  41 82 00 0C */	beq lbl_806E71C0
/* 806E71B8  38 00 00 01 */	li r0, 1
/* 806E71BC  48 00 00 28 */	b lbl_806E71E4
lbl_806E71C0:
/* 806E71C0  38 00 00 02 */	li r0, 2
/* 806E71C4  48 00 00 20 */	b lbl_806E71E4
lbl_806E71C8:
/* 806E71C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E71CC  41 82 00 0C */	beq lbl_806E71D8
/* 806E71D0  38 00 00 05 */	li r0, 5
/* 806E71D4  48 00 00 10 */	b lbl_806E71E4
lbl_806E71D8:
/* 806E71D8  38 00 00 03 */	li r0, 3
/* 806E71DC  48 00 00 08 */	b lbl_806E71E4
lbl_806E71E0:
/* 806E71E0  38 00 00 04 */	li r0, 4
lbl_806E71E4:
/* 806E71E4  2C 00 00 01 */	cmpwi r0, 1
/* 806E71E8  40 82 00 0C */	bne lbl_806E71F4
/* 806E71EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E71F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806E71F4:
/* 806E71F4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806E71F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E71FC  40 80 00 14 */	bge lbl_806E7210
/* 806E7200  7F C3 F3 78 */	mr r3, r30
/* 806E7204  38 80 00 00 */	li r4, 0
/* 806E7208  38 A0 00 00 */	li r5, 0
/* 806E720C  4B FF F3 B5 */	bl setActionMode__8daE_HP_cFii
lbl_806E7210:
/* 806E7210  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806E7214  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 806E7218  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E721C  7C 08 03 A6 */	mtlr r0
/* 806E7220  38 21 00 40 */	addi r1, r1, 0x40
/* 806E7224  4E 80 00 20 */	blr 
