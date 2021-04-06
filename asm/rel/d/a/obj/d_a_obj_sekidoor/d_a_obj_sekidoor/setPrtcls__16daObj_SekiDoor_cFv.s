lbl_80CCD64C:
/* 80CCD64C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CCD650  7C 08 02 A6 */	mflr r0
/* 80CCD654  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CCD658  39 61 00 60 */	addi r11, r1, 0x60
/* 80CCD65C  4B 69 4B 6D */	bl _savegpr_24
/* 80CCD660  7C 7E 1B 78 */	mr r30, r3
/* 80CCD664  3C 60 80 CD */	lis r3, m__22daObj_SekiDoor_Param_c@ha /* 0x80CCDA08@ha */
/* 80CCD668  3B E3 DA 08 */	addi r31, r3, m__22daObj_SekiDoor_Param_c@l /* 0x80CCDA08@l */
/* 80CCD66C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CCD670  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CCD674  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CCD678  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80CCD67C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CCD680  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CCD684  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CCD688  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCD68C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CCD690  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CCD694  C0 3E 05 BC */	lfs f1, 0x5bc(r30)
/* 80CCD698  EC 02 08 2A */	fadds f0, f2, f1
/* 80CCD69C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CCD6A0  88 1E 05 D5 */	lbz r0, 0x5d5(r30)
/* 80CCD6A4  28 00 00 00 */	cmplwi r0, 0
/* 80CCD6A8  41 82 01 50 */	beq lbl_80CCD7F8
/* 80CCD6AC  88 1E 05 D4 */	lbz r0, 0x5d4(r30)
/* 80CCD6B0  28 00 00 00 */	cmplwi r0, 0
/* 80CCD6B4  41 82 00 88 */	beq lbl_80CCD73C
/* 80CCD6B8  3B 00 00 02 */	li r24, 2
/* 80CCD6BC  3B 80 00 04 */	li r28, 4
/* 80CCD6C0  3B A0 00 08 */	li r29, 8
/* 80CCD6C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCD6C8  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCD6CC  3B 5F 00 20 */	addi r26, r31, 0x20
lbl_80CCD6D0:
/* 80CCD6D0  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80CCD6D4  38 00 00 FF */	li r0, 0xff
/* 80CCD6D8  90 01 00 08 */	stw r0, 8(r1)
/* 80CCD6DC  38 80 00 00 */	li r4, 0
/* 80CCD6E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CCD6E4  38 00 FF FF */	li r0, -1
/* 80CCD6E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CCD6EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CCD6F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CCD6F4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CCD6F8  3B 3D 05 C4 */	addi r25, r29, 0x5c4
/* 80CCD6FC  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80CCD700  38 A0 00 00 */	li r5, 0
/* 80CCD704  7C DA E2 2E */	lhzx r6, r26, r28
/* 80CCD708  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80CCD70C  39 00 00 00 */	li r8, 0
/* 80CCD710  39 20 00 00 */	li r9, 0
/* 80CCD714  39 41 00 20 */	addi r10, r1, 0x20
/* 80CCD718  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CCD71C  4B 37 FD B1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CCD720  7C 7E C9 2E */	stwx r3, r30, r25
/* 80CCD724  3B 18 00 01 */	addi r24, r24, 1
/* 80CCD728  2C 18 00 03 */	cmpwi r24, 3
/* 80CCD72C  3B 9C 00 02 */	addi r28, r28, 2
/* 80CCD730  3B BD 00 04 */	addi r29, r29, 4
/* 80CCD734  40 81 FF 9C */	ble lbl_80CCD6D0
/* 80CCD738  48 00 00 C0 */	b lbl_80CCD7F8
lbl_80CCD73C:
/* 80CCD73C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CCD740  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CCD744  40 80 00 B4 */	bge lbl_80CCD7F8
/* 80CCD748  3B 00 00 00 */	li r24, 0
/* 80CCD74C  3B A0 00 00 */	li r29, 0
/* 80CCD750  3B 80 00 00 */	li r28, 0
/* 80CCD754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCD758  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCD75C  3B 7F 00 20 */	addi r27, r31, 0x20
lbl_80CCD760:
/* 80CCD760  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80CCD764  38 00 00 FF */	li r0, 0xff
/* 80CCD768  90 01 00 08 */	stw r0, 8(r1)
/* 80CCD76C  38 80 00 00 */	li r4, 0
/* 80CCD770  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CCD774  38 00 FF FF */	li r0, -1
/* 80CCD778  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CCD77C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CCD780  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CCD784  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CCD788  3B 3C 05 C4 */	addi r25, r28, 0x5c4
/* 80CCD78C  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80CCD790  38 A0 00 00 */	li r5, 0
/* 80CCD794  7C DB EA 2E */	lhzx r6, r27, r29
/* 80CCD798  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80CCD79C  39 00 00 00 */	li r8, 0
/* 80CCD7A0  39 20 00 00 */	li r9, 0
/* 80CCD7A4  39 41 00 20 */	addi r10, r1, 0x20
/* 80CCD7A8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CCD7AC  4B 37 FD 21 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CCD7B0  7C 7E C9 2E */	stwx r3, r30, r25
/* 80CCD7B4  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80CCD7B8  38 63 02 10 */	addi r3, r3, 0x210
/* 80CCD7BC  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80CCD7C0  4B 37 E1 59 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80CCD7C4  28 03 00 00 */	cmplwi r3, 0
/* 80CCD7C8  41 82 00 1C */	beq lbl_80CCD7E4
/* 80CCD7CC  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80CCD7D0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80CCD7D4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CCD7D8  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80CCD7DC  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 80CCD7E0  D0 43 00 AC */	stfs f2, 0xac(r3)
lbl_80CCD7E4:
/* 80CCD7E4  3B 18 00 01 */	addi r24, r24, 1
/* 80CCD7E8  2C 18 00 01 */	cmpwi r24, 1
/* 80CCD7EC  3B BD 00 02 */	addi r29, r29, 2
/* 80CCD7F0  3B 9C 00 04 */	addi r28, r28, 4
/* 80CCD7F4  40 81 FF 6C */	ble lbl_80CCD760
lbl_80CCD7F8:
/* 80CCD7F8  39 61 00 60 */	addi r11, r1, 0x60
/* 80CCD7FC  4B 69 4A 19 */	bl _restgpr_24
/* 80CCD800  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CCD804  7C 08 03 A6 */	mtlr r0
/* 80CCD808  38 21 00 60 */	addi r1, r1, 0x60
/* 80CCD80C  4E 80 00 20 */	blr 
