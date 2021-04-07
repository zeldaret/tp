lbl_804A8FB8:
/* 804A8FB8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A8FBC  7C 08 02 A6 */	mflr r0
/* 804A8FC0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A8FC4  39 61 00 50 */	addi r11, r1, 0x50
/* 804A8FC8  4B EB 92 05 */	bl _savegpr_25
/* 804A8FCC  7C 79 1B 78 */	mr r25, r3
/* 804A8FD0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804A8FD4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804A8FD8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804A8FDC  3B 60 00 03 */	li r27, 3
/* 804A8FE0  88 03 05 67 */	lbz r0, 0x567(r3)
/* 804A8FE4  2C 00 00 02 */	cmpwi r0, 2
/* 804A8FE8  40 82 00 08 */	bne lbl_804A8FF0
/* 804A8FEC  3B 60 00 04 */	li r27, 4
lbl_804A8FF0:
/* 804A8FF0  3B 40 00 00 */	li r26, 0
/* 804A8FF4  3B E0 00 00 */	li r31, 0
/* 804A8FF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A8FFC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A9000  3C 60 80 4B */	lis r3, da_name_3684@ha /* 0x804A9480@ha */
/* 804A9004  3B A3 94 80 */	addi r29, r3, da_name_3684@l /* 0x804A9480@l */
/* 804A9008  3C 60 80 4B */	lis r3, lit_3704@ha /* 0x804A9460@ha */
/* 804A900C  3B C3 94 60 */	addi r30, r3, lit_3704@l /* 0x804A9460@l */
/* 804A9010  48 00 00 50 */	b lbl_804A9060
lbl_804A9014:
/* 804A9014  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804A9018  38 80 00 00 */	li r4, 0
/* 804A901C  90 81 00 08 */	stw r4, 8(r1)
/* 804A9020  38 00 FF FF */	li r0, -1
/* 804A9024  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A9028  90 81 00 10 */	stw r4, 0x10(r1)
/* 804A902C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804A9030  90 81 00 18 */	stw r4, 0x18(r1)
/* 804A9034  38 80 00 00 */	li r4, 0
/* 804A9038  7C BD FA 2E */	lhzx r5, r29, r31
/* 804A903C  38 D9 04 D0 */	addi r6, r25, 0x4d0
/* 804A9040  38 E0 00 00 */	li r7, 0
/* 804A9044  39 00 00 00 */	li r8, 0
/* 804A9048  39 21 00 20 */	addi r9, r1, 0x20
/* 804A904C  39 40 00 FF */	li r10, 0xff
/* 804A9050  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804A9054  4B BA 3A 3D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804A9058  3B 5A 00 01 */	addi r26, r26, 1
/* 804A905C  3B FF 00 02 */	addi r31, r31, 2
lbl_804A9060:
/* 804A9060  7C 1A D8 00 */	cmpw r26, r27
/* 804A9064  41 80 FF B0 */	blt lbl_804A9014
/* 804A9068  39 61 00 50 */	addi r11, r1, 0x50
/* 804A906C  4B EB 91 AD */	bl _restgpr_25
/* 804A9070  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A9074  7C 08 03 A6 */	mtlr r0
/* 804A9078  38 21 00 50 */	addi r1, r1, 0x50
/* 804A907C  4E 80 00 20 */	blr 
