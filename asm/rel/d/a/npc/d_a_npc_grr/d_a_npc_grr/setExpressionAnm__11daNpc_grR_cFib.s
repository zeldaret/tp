lbl_809E105C:
/* 809E105C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E1060  7C 08 02 A6 */	mflr r0
/* 809E1064  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E1068  39 61 00 20 */	addi r11, r1, 0x20
/* 809E106C  4B 98 11 68 */	b _savegpr_27
/* 809E1070  7C 7B 1B 78 */	mr r27, r3
/* 809E1074  7C 9C 23 78 */	mr r28, r4
/* 809E1078  7C BD 2B 78 */	mr r29, r5
/* 809E107C  3B E0 00 00 */	li r31, 0
/* 809E1080  3B C0 00 00 */	li r30, 0
/* 809E1084  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809E1088  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 809E108C  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809E1090  54 80 18 38 */	slwi r0, r4, 3
/* 809E1094  3C 80 80 9E */	lis r4, l_bckGetParamList@ha
/* 809E1098  38 84 3C 18 */	addi r4, r4, l_bckGetParamList@l
/* 809E109C  7C A4 00 2E */	lwzx r5, r4, r0
/* 809E10A0  2C 05 00 00 */	cmpwi r5, 0
/* 809E10A4  41 80 00 24 */	blt lbl_809E10C8
/* 809E10A8  7C 84 02 14 */	add r4, r4, r0
/* 809E10AC  80 04 00 04 */	lwz r0, 4(r4)
/* 809E10B0  54 00 10 3A */	slwi r0, r0, 2
/* 809E10B4  3C 80 80 9E */	lis r4, l_resNames@ha
/* 809E10B8  38 84 3D 30 */	addi r4, r4, l_resNames@l
/* 809E10BC  7C 84 00 2E */	lwzx r4, r4, r0
/* 809E10C0  4B 77 1A 6C */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809E10C4  7C 7F 1B 78 */	mr r31, r3
lbl_809E10C8:
/* 809E10C8  38 60 00 00 */	li r3, 0
/* 809E10CC  28 1C 00 07 */	cmplwi r28, 7
/* 809E10D0  41 81 01 08 */	bgt lbl_809E11D8
/* 809E10D4  3C 80 80 9E */	lis r4, lit_4885@ha
/* 809E10D8  38 84 3D 5C */	addi r4, r4, lit_4885@l
/* 809E10DC  57 80 10 3A */	slwi r0, r28, 2
/* 809E10E0  7C 04 00 2E */	lwzx r0, r4, r0
/* 809E10E4  7C 09 03 A6 */	mtctr r0
/* 809E10E8  4E 80 04 20 */	bctr 
lbl_809E10EC:
/* 809E10EC  7F 63 DB 78 */	mr r3, r27
/* 809E10F0  38 80 00 00 */	li r4, 0
/* 809E10F4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E10F8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E10FC  7D 89 03 A6 */	mtctr r12
/* 809E1100  4E 80 04 21 */	bctrl 
/* 809E1104  48 00 00 D8 */	b lbl_809E11DC
lbl_809E1108:
/* 809E1108  7F 63 DB 78 */	mr r3, r27
/* 809E110C  38 80 00 00 */	li r4, 0
/* 809E1110  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E1114  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E1118  7D 89 03 A6 */	mtctr r12
/* 809E111C  4E 80 04 21 */	bctrl 
/* 809E1120  48 00 00 BC */	b lbl_809E11DC
lbl_809E1124:
/* 809E1124  7F 63 DB 78 */	mr r3, r27
/* 809E1128  38 80 00 00 */	li r4, 0
/* 809E112C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E1130  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E1134  7D 89 03 A6 */	mtctr r12
/* 809E1138  4E 80 04 21 */	bctrl 
/* 809E113C  3B C0 00 02 */	li r30, 2
/* 809E1140  48 00 00 9C */	b lbl_809E11DC
lbl_809E1144:
/* 809E1144  7F 63 DB 78 */	mr r3, r27
/* 809E1148  38 80 00 01 */	li r4, 1
/* 809E114C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E1150  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E1154  7D 89 03 A6 */	mtctr r12
/* 809E1158  4E 80 04 21 */	bctrl 
/* 809E115C  48 00 00 80 */	b lbl_809E11DC
lbl_809E1160:
/* 809E1160  7F 63 DB 78 */	mr r3, r27
/* 809E1164  38 80 00 02 */	li r4, 2
/* 809E1168  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E116C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E1170  7D 89 03 A6 */	mtctr r12
/* 809E1174  4E 80 04 21 */	bctrl 
/* 809E1178  48 00 00 64 */	b lbl_809E11DC
lbl_809E117C:
/* 809E117C  7F 63 DB 78 */	mr r3, r27
/* 809E1180  38 80 00 03 */	li r4, 3
/* 809E1184  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E1188  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E118C  7D 89 03 A6 */	mtctr r12
/* 809E1190  4E 80 04 21 */	bctrl 
/* 809E1194  48 00 00 48 */	b lbl_809E11DC
lbl_809E1198:
/* 809E1198  7F 63 DB 78 */	mr r3, r27
/* 809E119C  38 80 00 04 */	li r4, 4
/* 809E11A0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E11A4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E11A8  7D 89 03 A6 */	mtctr r12
/* 809E11AC  4E 80 04 21 */	bctrl 
/* 809E11B0  3B C0 00 02 */	li r30, 2
/* 809E11B4  48 00 00 28 */	b lbl_809E11DC
lbl_809E11B8:
/* 809E11B8  7F 63 DB 78 */	mr r3, r27
/* 809E11BC  38 80 00 05 */	li r4, 5
/* 809E11C0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E11C4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E11C8  7D 89 03 A6 */	mtctr r12
/* 809E11CC  4E 80 04 21 */	bctrl 
/* 809E11D0  3B C0 00 02 */	li r30, 2
/* 809E11D4  48 00 00 08 */	b lbl_809E11DC
lbl_809E11D8:
/* 809E11D8  3B E0 00 00 */	li r31, 0
lbl_809E11DC:
/* 809E11DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809E11E0  40 82 00 0C */	bne lbl_809E11EC
/* 809E11E4  38 60 00 00 */	li r3, 0
/* 809E11E8  48 00 00 60 */	b lbl_809E1248
lbl_809E11EC:
/* 809E11EC  28 1F 00 00 */	cmplwi r31, 0
/* 809E11F0  40 82 00 0C */	bne lbl_809E11FC
/* 809E11F4  38 60 00 01 */	li r3, 1
/* 809E11F8  48 00 00 50 */	b lbl_809E1248
lbl_809E11FC:
/* 809E11FC  7F 63 DB 78 */	mr r3, r27
/* 809E1200  7F E4 FB 78 */	mr r4, r31
/* 809E1204  3C A0 80 9E */	lis r5, lit_4452@ha
/* 809E1208  C0 25 39 64 */	lfs f1, lit_4452@l(r5)
/* 809E120C  7F C5 F3 78 */	mr r5, r30
/* 809E1210  38 C0 00 00 */	li r6, 0
/* 809E1214  38 E0 FF FF */	li r7, -1
/* 809E1218  7F A8 EB 78 */	mr r8, r29
/* 809E121C  4B 77 1A 64 */	b setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 809E1220  2C 03 00 00 */	cmpwi r3, 0
/* 809E1224  41 82 00 20 */	beq lbl_809E1244
/* 809E1228  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 809E122C  60 00 01 40 */	ori r0, r0, 0x140
/* 809E1230  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 809E1234  38 00 00 00 */	li r0, 0
/* 809E1238  B0 1B 09 E4 */	sth r0, 0x9e4(r27)
/* 809E123C  38 60 00 01 */	li r3, 1
/* 809E1240  48 00 00 08 */	b lbl_809E1248
lbl_809E1244:
/* 809E1244  38 60 00 00 */	li r3, 0
lbl_809E1248:
/* 809E1248  39 61 00 20 */	addi r11, r1, 0x20
/* 809E124C  4B 98 0F D4 */	b _restgpr_27
/* 809E1250  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E1254  7C 08 03 A6 */	mtlr r0
/* 809E1258  38 21 00 20 */	addi r1, r1, 0x20
/* 809E125C  4E 80 00 20 */	blr 
