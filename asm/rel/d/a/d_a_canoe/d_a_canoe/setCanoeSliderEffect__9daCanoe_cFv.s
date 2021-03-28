lbl_804DC554:
/* 804DC554  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804DC558  7C 08 02 A6 */	mflr r0
/* 804DC55C  90 01 00 74 */	stw r0, 0x74(r1)
/* 804DC560  39 61 00 70 */	addi r11, r1, 0x70
/* 804DC564  4B E8 5C 64 */	b _savegpr_24
/* 804DC568  7C 7B 1B 78 */	mr r27, r3
/* 804DC56C  3C 60 80 4E */	lis r3, lit_3766@ha
/* 804DC570  3B C3 D5 DC */	addi r30, r3, lit_3766@l
/* 804DC574  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DC578  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 804DC57C  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804DC580  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 804DC584  28 00 00 2D */	cmplwi r0, 0x2d
/* 804DC588  40 82 02 14 */	bne lbl_804DC79C
/* 804DC58C  C0 3B 14 CC */	lfs f1, 0x14cc(r27)
/* 804DC590  C0 1B 14 C4 */	lfs f0, 0x14c4(r27)
/* 804DC594  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804DC598  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804DC59C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804DC5A0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804DC5A4  38 61 00 20 */	addi r3, r1, 0x20
/* 804DC5A8  4B E6 AB 90 */	b PSVECSquareMag
/* 804DC5AC  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 804DC5B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DC5B4  41 81 00 1C */	bgt lbl_804DC5D0
/* 804DC5B8  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804DC5BC  FC 00 02 10 */	fabs f0, f0
/* 804DC5C0  FC 20 00 18 */	frsp f1, f0
/* 804DC5C4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804DC5C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DC5CC  40 81 00 AC */	ble lbl_804DC678
lbl_804DC5D0:
/* 804DC5D0  3B BB 14 88 */	addi r29, r27, 0x1488
/* 804DC5D4  3B 80 00 00 */	li r28, 0
/* 804DC5D8  3B 40 00 00 */	li r26, 0
/* 804DC5DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DC5E0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 804DC5E4  3B 3E 00 DC */	addi r25, r30, 0xdc
lbl_804DC5E8:
/* 804DC5E8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 804DC5EC  38 00 00 FF */	li r0, 0xff
/* 804DC5F0  90 01 00 08 */	stw r0, 8(r1)
/* 804DC5F4  38 80 00 00 */	li r4, 0
/* 804DC5F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 804DC5FC  38 00 FF FF */	li r0, -1
/* 804DC600  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DC604  90 81 00 14 */	stw r4, 0x14(r1)
/* 804DC608  90 81 00 18 */	stw r4, 0x18(r1)
/* 804DC60C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804DC610  80 9D 00 00 */	lwz r4, 0(r29)
/* 804DC614  38 A0 00 00 */	li r5, 0
/* 804DC618  7C D9 D2 2E */	lhzx r6, r25, r26
/* 804DC61C  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 804DC620  39 1B 01 0C */	addi r8, r27, 0x10c
/* 804DC624  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 804DC628  39 40 00 00 */	li r10, 0
/* 804DC62C  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804DC630  4B B7 0E 9C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804DC634  90 7D 00 00 */	stw r3, 0(r29)
/* 804DC638  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 804DC63C  38 63 02 10 */	addi r3, r3, 0x210
/* 804DC640  80 9D 00 00 */	lwz r4, 0(r29)
/* 804DC644  4B B6 F2 D4 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804DC648  7C 65 1B 79 */	or. r5, r3, r3
/* 804DC64C  41 82 00 18 */	beq lbl_804DC664
/* 804DC650  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 804DC654  38 63 00 24 */	addi r3, r3, 0x24
/* 804DC658  38 85 00 68 */	addi r4, r5, 0x68
/* 804DC65C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 804DC660  4B DA 41 80 */	b func_802807E0
lbl_804DC664:
/* 804DC664  3B 9C 00 01 */	addi r28, r28, 1
/* 804DC668  2C 1C 00 02 */	cmpwi r28, 2
/* 804DC66C  3B 5A 00 02 */	addi r26, r26, 2
/* 804DC670  3B BD 00 04 */	addi r29, r29, 4
/* 804DC674  41 80 FF 74 */	blt lbl_804DC5E8
lbl_804DC678:
/* 804DC678  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DC67C  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 804DC680  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 804DC684  38 63 02 10 */	addi r3, r3, 0x210
/* 804DC688  80 9B 14 90 */	lwz r4, 0x1490(r27)
/* 804DC68C  4B B6 F2 8C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804DC690  28 03 00 00 */	cmplwi r3, 0
/* 804DC694  41 82 00 30 */	beq lbl_804DC6C4
/* 804DC698  38 A0 00 00 */	li r5, 0
/* 804DC69C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 804DC6A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804DC6A4  41 82 00 18 */	beq lbl_804DC6BC
/* 804DC6A8  80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 804DC6AC  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 804DC6B0  7C 04 02 15 */	add. r0, r4, r0
/* 804DC6B4  40 82 00 08 */	bne lbl_804DC6BC
/* 804DC6B8  38 A0 00 01 */	li r5, 1
lbl_804DC6BC:
/* 804DC6BC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804DC6C0  41 82 00 10 */	beq lbl_804DC6D0
lbl_804DC6C4:
/* 804DC6C4  A8 1B 14 5C */	lha r0, 0x145c(r27)
/* 804DC6C8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 804DC6CC  40 82 00 84 */	bne lbl_804DC750
lbl_804DC6D0:
/* 804DC6D0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 804DC6D4  38 00 00 FF */	li r0, 0xff
/* 804DC6D8  90 01 00 08 */	stw r0, 8(r1)
/* 804DC6DC  38 80 00 00 */	li r4, 0
/* 804DC6E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 804DC6E4  38 00 FF FF */	li r0, -1
/* 804DC6E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DC6EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804DC6F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804DC6F4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804DC6F8  80 9B 14 90 */	lwz r4, 0x1490(r27)
/* 804DC6FC  38 A0 00 00 */	li r5, 0
/* 804DC700  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AA6@ha */
/* 804DC704  38 C6 8A A6 */	addi r6, r6, 0x8AA6 /* 0x00008AA6@l */
/* 804DC708  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 804DC70C  39 1B 01 0C */	addi r8, r27, 0x10c
/* 804DC710  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 804DC714  39 40 00 00 */	li r10, 0
/* 804DC718  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804DC71C  4B B7 0D B0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804DC720  90 7B 14 90 */	stw r3, 0x1490(r27)
/* 804DC724  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 804DC728  38 63 02 10 */	addi r3, r3, 0x210
/* 804DC72C  80 9B 14 90 */	lwz r4, 0x1490(r27)
/* 804DC730  4B B6 F1 E8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804DC734  7C 65 1B 79 */	or. r5, r3, r3
/* 804DC738  41 82 00 18 */	beq lbl_804DC750
/* 804DC73C  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 804DC740  38 63 00 24 */	addi r3, r3, 0x24
/* 804DC744  38 85 00 68 */	addi r4, r5, 0x68
/* 804DC748  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 804DC74C  4B DA 40 94 */	b func_802807E0
lbl_804DC750:
/* 804DC750  38 61 00 38 */	addi r3, r1, 0x38
/* 804DC754  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 804DC758  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 804DC75C  4B D8 A3 D8 */	b __mi__4cXyzCFRC3Vec
/* 804DC760  38 61 00 2C */	addi r3, r1, 0x2c
/* 804DC764  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 804DC768  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 804DC76C  38 A1 00 38 */	addi r5, r1, 0x38
/* 804DC770  4B D8 A3 74 */	b __pl__4cXyzCFRC3Vec
/* 804DC774  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804DC778  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804DC77C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804DC780  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804DC784  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804DC788  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804DC78C  3C 60 80 4E */	lis r3, daCanoe_searchTagWaterFall__FP10fopAc_ac_cPv@ha
/* 804DC790  38 63 A5 4C */	addi r3, r3, daCanoe_searchTagWaterFall__FP10fopAc_ac_cPv@l
/* 804DC794  38 81 00 44 */	addi r4, r1, 0x44
/* 804DC798  4B B3 D0 24 */	b fopAcIt_Executor__FPFPvPv_iPv
lbl_804DC79C:
/* 804DC79C  39 61 00 70 */	addi r11, r1, 0x70
/* 804DC7A0  4B E8 5A 74 */	b _restgpr_24
/* 804DC7A4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804DC7A8  7C 08 03 A6 */	mtlr r0
/* 804DC7AC  38 21 00 70 */	addi r1, r1, 0x70
/* 804DC7B0  4E 80 00 20 */	blr 
