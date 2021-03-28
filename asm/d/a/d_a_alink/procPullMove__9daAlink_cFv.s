lbl_800E8F44:
/* 800E8F44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E8F48  7C 08 02 A6 */	mflr r0
/* 800E8F4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E8F50  39 61 00 20 */	addi r11, r1, 0x20
/* 800E8F54  48 27 92 85 */	bl _savegpr_28
/* 800E8F58  7C 7E 1B 78 */	mr r30, r3
/* 800E8F5C  38 80 00 15 */	li r4, 0x15
/* 800E8F60  38 A0 00 02 */	li r5, 2
/* 800E8F64  4B FF EF 6D */	bl setWallGrabStatus__9daAlink_cFUcUc
/* 800E8F68  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800E8F6C  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 800E8F70  7C 03 00 50 */	subf r0, r3, r0
/* 800E8F74  7C 03 07 34 */	extsh r3, r0
/* 800E8F78  4B FC A5 1D */	bl getDirectionFromAngle__9daAlink_cFs
/* 800E8F7C  7C 7D 1B 78 */	mr r29, r3
/* 800E8F80  3B E0 01 60 */	li r31, 0x160
/* 800E8F84  3B 9E 1F D0 */	addi r28, r30, 0x1fd0
/* 800E8F88  7F 83 E3 78 */	mr r3, r28
/* 800E8F8C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E8F90  48 23 F4 9D */	bl checkPass__12J3DFrameCtrlFf
/* 800E8F94  2C 03 00 00 */	cmpwi r3, 0
/* 800E8F98  40 82 00 1C */	bne lbl_800E8FB4
/* 800E8F9C  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 800E8FA0  2C 00 00 00 */	cmpwi r0, 0
/* 800E8FA4  40 82 00 10 */	bne lbl_800E8FB4
/* 800E8FA8  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800E8FAC  2C 00 00 00 */	cmpwi r0, 0
/* 800E8FB0  41 82 01 84 */	beq lbl_800E9134
lbl_800E8FB4:
/* 800E8FB4  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800E8FB8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800E8FBC  40 82 01 14 */	bne lbl_800E90D0
/* 800E8FC0  7F C3 F3 78 */	mr r3, r30
/* 800E8FC4  4B FF EF 55 */	bl wallGrabButton__9daAlink_cFv
/* 800E8FC8  2C 03 00 00 */	cmpwi r3, 0
/* 800E8FCC  40 82 00 10 */	bne lbl_800E8FDC
/* 800E8FD0  7F C3 F3 78 */	mr r3, r30
/* 800E8FD4  4B FF F3 61 */	bl endPushPull__9daAlink_cFv
/* 800E8FD8  48 00 01 C0 */	b lbl_800E9198
lbl_800E8FDC:
/* 800E8FDC  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800E8FE0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800E8FE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E8FE8  40 81 00 D0 */	ble lbl_800E90B8
/* 800E8FEC  2C 1D 00 01 */	cmpwi r29, 1
/* 800E8FF0  40 82 00 B0 */	bne lbl_800E90A0
/* 800E8FF4  7F C3 F3 78 */	mr r3, r30
/* 800E8FF8  4B FF F1 51 */	bl checkPullBehindWall__9daAlink_cFv
/* 800E8FFC  2C 03 00 00 */	cmpwi r3, 0
/* 800E9000  41 82 00 20 */	beq lbl_800E9020
/* 800E9004  7F C3 F3 78 */	mr r3, r30
/* 800E9008  38 80 00 00 */	li r4, 0
/* 800E900C  38 A0 00 01 */	li r5, 1
/* 800E9010  4B FF EF 2D */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
/* 800E9014  38 00 00 01 */	li r0, 1
/* 800E9018  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800E901C  48 00 01 28 */	b lbl_800E9144
lbl_800E9020:
/* 800E9020  7F C3 F3 78 */	mr r3, r30
/* 800E9024  38 80 00 02 */	li r4, 2
/* 800E9028  38 A0 00 00 */	li r5, 0
/* 800E902C  4B FF EF 11 */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
/* 800E9030  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 800E9034  2C 00 00 00 */	cmpwi r0, 0
/* 800E9038  41 82 01 0C */	beq lbl_800E9144
/* 800E903C  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800E9040  2C 00 00 00 */	cmpwi r0, 0
/* 800E9044  40 82 00 34 */	bne lbl_800E9078
/* 800E9048  38 00 00 01 */	li r0, 1
/* 800E904C  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800E9050  7F C3 F3 78 */	mr r3, r30
/* 800E9054  38 80 00 3B */	li r4, 0x3b
/* 800E9058  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E905C  C0 42 93 1C */	lfs f2, lit_7448(r2)
/* 800E9060  38 A0 FF FF */	li r5, -1
/* 800E9064  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800E9068  4B FC 3F A5 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800E906C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E9070  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 800E9074  48 00 00 D0 */	b lbl_800E9144
lbl_800E9078:
/* 800E9078  7F 83 E3 78 */	mr r3, r28
/* 800E907C  48 07 54 51 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E9080  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E9084  41 82 00 C0 */	beq lbl_800E9144
/* 800E9088  7F C3 F3 78 */	mr r3, r30
/* 800E908C  38 80 00 3C */	li r4, 0x3c
/* 800E9090  4B FC 3E F1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800E9094  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E9098  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 800E909C  48 00 00 A8 */	b lbl_800E9144
lbl_800E90A0:
/* 800E90A0  2C 1D 00 00 */	cmpwi r29, 0
/* 800E90A4  40 82 00 0C */	bne lbl_800E90B0
/* 800E90A8  3B E0 01 44 */	li r31, 0x144
/* 800E90AC  48 00 00 98 */	b lbl_800E9144
lbl_800E90B0:
/* 800E90B0  3B E0 01 43 */	li r31, 0x143
/* 800E90B4  48 00 00 90 */	b lbl_800E9144
lbl_800E90B8:
/* 800E90B8  7F C3 F3 78 */	mr r3, r30
/* 800E90BC  38 80 00 00 */	li r4, 0
/* 800E90C0  38 A0 00 01 */	li r5, 1
/* 800E90C4  4B FF EE 79 */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
/* 800E90C8  3B E0 01 43 */	li r31, 0x143
/* 800E90CC  48 00 00 78 */	b lbl_800E9144
lbl_800E90D0:
/* 800E90D0  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 800E90D4  2C 00 00 00 */	cmpwi r0, 0
/* 800E90D8  41 82 00 28 */	beq lbl_800E9100
/* 800E90DC  7F C3 F3 78 */	mr r3, r30
/* 800E90E0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010013@ha */
/* 800E90E4  38 84 00 13 */	addi r4, r4, 0x0013 /* 0x00010013@l */
/* 800E90E8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800E90EC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E90F0  7D 89 03 A6 */	mtctr r12
/* 800E90F4  4E 80 04 21 */	bctrl 
/* 800E90F8  38 00 00 00 */	li r0, 0
/* 800E90FC  90 1E 31 98 */	stw r0, 0x3198(r30)
lbl_800E9100:
/* 800E9100  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800E9104  2C 00 00 00 */	cmpwi r0, 0
/* 800E9108  41 82 00 18 */	beq lbl_800E9120
/* 800E910C  38 00 00 00 */	li r0, 0
/* 800E9110  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800E9114  7F C3 F3 78 */	mr r3, r30
/* 800E9118  38 80 00 3C */	li r4, 0x3c
/* 800E911C  4B FC 3E 65 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800E9120:
/* 800E9120  7F C3 F3 78 */	mr r3, r30
/* 800E9124  38 80 00 02 */	li r4, 2
/* 800E9128  38 A0 00 00 */	li r5, 0
/* 800E912C  4B FF EE 11 */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
/* 800E9130  48 00 00 14 */	b lbl_800E9144
lbl_800E9134:
/* 800E9134  7F C3 F3 78 */	mr r3, r30
/* 800E9138  38 80 00 02 */	li r4, 2
/* 800E913C  38 A0 00 00 */	li r5, 0
/* 800E9140  4B FF ED FD */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
lbl_800E9144:
/* 800E9144  7F C3 F3 78 */	mr r3, r30
/* 800E9148  4B FC 71 75 */	bl setFrontWallType__9daAlink_cFv
/* 800E914C  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800E9150  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800E9154  40 82 00 10 */	bne lbl_800E9164
/* 800E9158  7F C3 F3 78 */	mr r3, r30
/* 800E915C  4B FF F1 D9 */	bl endPushPull__9daAlink_cFv
/* 800E9160  48 00 00 34 */	b lbl_800E9194
lbl_800E9164:
/* 800E9164  2C 1F 01 43 */	cmpwi r31, 0x143
/* 800E9168  40 82 00 14 */	bne lbl_800E917C
/* 800E916C  7F C3 F3 78 */	mr r3, r30
/* 800E9170  38 80 00 00 */	li r4, 0
/* 800E9174  4B FF F2 B5 */	bl procCoPushPullWaitInit__9daAlink_cFi
/* 800E9178  48 00 00 1C */	b lbl_800E9194
lbl_800E917C:
/* 800E917C  2C 1F 01 44 */	cmpwi r31, 0x144
/* 800E9180  40 82 00 14 */	bne lbl_800E9194
/* 800E9184  7F C3 F3 78 */	mr r3, r30
/* 800E9188  38 80 00 01 */	li r4, 1
/* 800E918C  38 A0 00 00 */	li r5, 0
/* 800E9190  4B FF F5 CD */	bl procCoPushMoveInit__9daAlink_cFii
lbl_800E9194:
/* 800E9194  38 60 00 01 */	li r3, 1
lbl_800E9198:
/* 800E9198  39 61 00 20 */	addi r11, r1, 0x20
/* 800E919C  48 27 90 89 */	bl _restgpr_28
/* 800E91A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E91A4  7C 08 03 A6 */	mtlr r0
/* 800E91A8  38 21 00 20 */	addi r1, r1, 0x20
/* 800E91AC  4E 80 00 20 */	blr 
