lbl_804F0F80:
/* 804F0F80  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804F0F84  7C 08 02 A6 */	mflr r0
/* 804F0F88  90 01 00 44 */	stw r0, 0x44(r1)
/* 804F0F8C  39 61 00 40 */	addi r11, r1, 0x40
/* 804F0F90  4B E7 12 4D */	bl _savegpr_29
/* 804F0F94  7C 7E 1B 78 */	mr r30, r3
/* 804F0F98  3C 80 80 50 */	lis r4, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F0F9C  3B E4 A6 BC */	addi r31, r4, lit_3777@l /* 0x804FA6BC@l */
/* 804F0FA0  80 83 05 D0 */	lwz r4, 0x5d0(r3)
/* 804F0FA4  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 804F0FA8  FC 00 00 1E */	fctiwz f0, f0
/* 804F0FAC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804F0FB0  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 804F0FB4  A8 03 07 A4 */	lha r0, 0x7a4(r3)
/* 804F0FB8  2C 00 00 01 */	cmpwi r0, 1
/* 804F0FBC  41 82 00 BC */	beq lbl_804F1078
/* 804F0FC0  40 80 01 F0 */	bge lbl_804F11B0
/* 804F0FC4  2C 00 00 00 */	cmpwi r0, 0
/* 804F0FC8  40 80 00 08 */	bge lbl_804F0FD0
/* 804F0FCC  48 00 01 E4 */	b lbl_804F11B0
lbl_804F0FD0:
/* 804F0FD0  80 9E 05 D4 */	lwz r4, 0x5d4(r30)
/* 804F0FD4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 804F0FD8  FC 00 00 1E */	fctiwz f0, f0
/* 804F0FDC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804F0FE0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804F0FE4  2C 00 00 00 */	cmpwi r0, 0
/* 804F0FE8  40 82 01 C8 */	bne lbl_804F11B0
/* 804F0FEC  38 80 00 0B */	li r4, 0xb
/* 804F0FF0  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804F0FF4  38 A0 00 00 */	li r5, 0
/* 804F0FF8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F0FFC  4B FF E8 0D */	bl anm_init__FP10e_fm_classifUcf
/* 804F1000  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070293@ha */
/* 804F1004  38 03 02 93 */	addi r0, r3, 0x0293 /* 0x00070293@l */
/* 804F1008  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F100C  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F1010  38 81 00 14 */	addi r4, r1, 0x14
/* 804F1014  38 A0 FF FF */	li r5, -1
/* 804F1018  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F101C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F1020  7D 89 03 A6 */	mtctr r12
/* 804F1024  4E 80 04 21 */	bctrl 
/* 804F1028  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070294@ha */
/* 804F102C  38 03 02 94 */	addi r0, r3, 0x0294 /* 0x00070294@l */
/* 804F1030  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F1034  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F1038  38 81 00 10 */	addi r4, r1, 0x10
/* 804F103C  38 A0 00 00 */	li r5, 0
/* 804F1040  38 C0 FF FF */	li r6, -1
/* 804F1044  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F1048  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F104C  7D 89 03 A6 */	mtctr r12
/* 804F1050  4E 80 04 21 */	bctrl 
/* 804F1054  38 00 00 01 */	li r0, 1
/* 804F1058  90 1E 06 1C */	stw r0, 0x61c(r30)
/* 804F105C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F1060  80 7E 05 FC */	lwz r3, 0x5fc(r30)
/* 804F1064  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F1068  80 7E 05 D8 */	lwz r3, 0x5d8(r30)
/* 804F106C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F1070  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F1074  48 00 01 3C */	b lbl_804F11B0
lbl_804F1078:
/* 804F1078  4B FF FC C5 */	bl tame_eff_set__FP10e_fm_class
/* 804F107C  2C 1D 00 58 */	cmpwi r29, 0x58
/* 804F1080  40 82 00 B8 */	bne lbl_804F1138
/* 804F1084  38 00 00 01 */	li r0, 1
/* 804F1088  B0 1E 07 90 */	sth r0, 0x790(r30)
/* 804F108C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F1090  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804F1094  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F1098  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804F109C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804F10A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F10A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F10A8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F10AC  38 80 00 03 */	li r4, 3
/* 804F10B0  38 A0 00 01 */	li r5, 1
/* 804F10B4  38 C1 00 18 */	addi r6, r1, 0x18
/* 804F10B8  4B B7 EA 59 */	bl StartQuake__12dVibration_cFii4cXyz
/* 804F10BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070002@ha */
/* 804F10C0  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x00070002@l */
/* 804F10C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F10C8  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F10CC  38 81 00 0C */	addi r4, r1, 0xc
/* 804F10D0  38 A0 00 00 */	li r5, 0
/* 804F10D4  38 C0 FF FF */	li r6, -1
/* 804F10D8  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F10DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F10E0  7D 89 03 A6 */	mtctr r12
/* 804F10E4  4E 80 04 21 */	bctrl 
/* 804F10E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070006@ha */
/* 804F10EC  38 03 00 06 */	addi r0, r3, 0x0006 /* 0x00070006@l */
/* 804F10F0  90 01 00 08 */	stw r0, 8(r1)
/* 804F10F4  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F10F8  38 81 00 08 */	addi r4, r1, 8
/* 804F10FC  38 A0 FF FF */	li r5, -1
/* 804F1100  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F1104  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F1108  7D 89 03 A6 */	mtctr r12
/* 804F110C  4E 80 04 21 */	bctrl 
/* 804F1110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F1114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F1118  88 03 00 EC */	lbz r0, 0xec(r3)
/* 804F111C  28 00 00 05 */	cmplwi r0, 5
/* 804F1120  40 81 00 10 */	ble lbl_804F1130
/* 804F1124  A0 03 00 02 */	lhz r0, 2(r3)
/* 804F1128  28 00 00 04 */	cmplwi r0, 4
/* 804F112C  41 81 00 0C */	bgt lbl_804F1138
lbl_804F1130:
/* 804F1130  38 00 00 01 */	li r0, 1
/* 804F1134  98 1E 07 72 */	stb r0, 0x772(r30)
lbl_804F1138:
/* 804F1138  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 804F113C  38 80 00 01 */	li r4, 1
/* 804F1140  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804F1144  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804F1148  40 82 00 18 */	bne lbl_804F1160
/* 804F114C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F1150  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804F1154  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F1158  41 82 00 08 */	beq lbl_804F1160
/* 804F115C  38 80 00 00 */	li r4, 0
lbl_804F1160:
/* 804F1160  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804F1164  41 82 00 4C */	beq lbl_804F11B0
/* 804F1168  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F116C  4B D7 67 E9 */	bl cM_rndF__Ff
/* 804F1170  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 804F1174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F1178  40 80 00 10 */	bge lbl_804F1188
/* 804F117C  38 00 00 05 */	li r0, 5
/* 804F1180  B0 1E 07 A2 */	sth r0, 0x7a2(r30)
/* 804F1184  48 00 00 0C */	b lbl_804F1190
lbl_804F1188:
/* 804F1188  38 00 00 00 */	li r0, 0
/* 804F118C  B0 1E 07 A2 */	sth r0, 0x7a2(r30)
lbl_804F1190:
/* 804F1190  38 00 00 00 */	li r0, 0
/* 804F1194  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F1198  90 1E 06 1C */	stw r0, 0x61c(r30)
/* 804F119C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F11A0  80 7E 05 F8 */	lwz r3, 0x5f8(r30)
/* 804F11A4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F11A8  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 804F11AC  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_804F11B0:
/* 804F11B0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804F11B4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F11B8  FC 40 08 90 */	fmr f2, f1
/* 804F11BC  4B D7 E8 C5 */	bl cLib_addCalc0__FPfff
/* 804F11C0  39 61 00 40 */	addi r11, r1, 0x40
/* 804F11C4  4B E7 10 65 */	bl _restgpr_29
/* 804F11C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F11CC  7C 08 03 A6 */	mtlr r0
/* 804F11D0  38 21 00 40 */	addi r1, r1, 0x40
/* 804F11D4  4E 80 00 20 */	blr 
