lbl_80512914:
/* 80512914  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80512918  7C 08 02 A6 */	mflr r0
/* 8051291C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80512920  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80512924  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80512928  39 61 00 90 */	addi r11, r1, 0x90
/* 8051292C  4B E4 F8 95 */	bl _savegpr_22
/* 80512930  7C 7C 1B 78 */	mr r28, r3
/* 80512934  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 80512938  3B E3 85 84 */	addi r31, r3, lit_4208@l /* 0x80518584@l */
/* 8051293C  88 1C 05 BC */	lbz r0, 0x5bc(r28)
/* 80512940  28 00 00 04 */	cmplwi r0, 4
/* 80512944  40 82 00 64 */	bne lbl_805129A8
/* 80512948  3B C0 00 02 */	li r30, 2
/* 8051294C  38 00 01 DF */	li r0, 0x1df
/* 80512950  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80512954  38 00 01 DE */	li r0, 0x1de
/* 80512958  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 8051295C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000A@ha */
/* 80512960  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0008000A@l */
/* 80512964  90 01 00 24 */	stw r0, 0x24(r1)
/* 80512968  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8051296C  38 81 00 24 */	addi r4, r1, 0x24
/* 80512970  38 A0 00 00 */	li r5, 0
/* 80512974  38 C0 FF FF */	li r6, -1
/* 80512978  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8051297C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80512980  7D 89 03 A6 */	mtctr r12
/* 80512984  4E 80 04 21 */	bctrl 
/* 80512988  C3 FF 00 A8 */	lfs f31, 0xa8(r31)
/* 8051298C  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 80512990  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80512994  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 80512998  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8051299C  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 805129A0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805129A4  48 00 00 5C */	b lbl_80512A00
lbl_805129A8:
/* 805129A8  3B C0 00 01 */	li r30, 1
/* 805129AC  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008113@ha */
/* 805129B0  38 03 81 13 */	addi r0, r3, 0x8113 /* 0x00008113@l */
/* 805129B4  B0 01 00 28 */	sth r0, 0x28(r1)
/* 805129B8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080006@ha */
/* 805129BC  38 03 00 06 */	addi r0, r3, 0x0006 /* 0x00080006@l */
/* 805129C0  90 01 00 20 */	stw r0, 0x20(r1)
/* 805129C4  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 805129C8  38 81 00 20 */	addi r4, r1, 0x20
/* 805129CC  38 A0 00 00 */	li r5, 0
/* 805129D0  38 C0 FF FF */	li r6, -1
/* 805129D4  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 805129D8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805129DC  7D 89 03 A6 */	mtctr r12
/* 805129E0  4E 80 04 21 */	bctrl 
/* 805129E4  C3 FF 00 08 */	lfs f31, 8(r31)
/* 805129E8  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 805129EC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805129F0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805129F4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805129F8  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 805129FC  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_80512A00:
/* 80512A00  38 61 00 50 */	addi r3, r1, 0x50
/* 80512A04  38 81 00 44 */	addi r4, r1, 0x44
/* 80512A08  4B D5 E4 E5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80512A0C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80512A10  38 81 00 44 */	addi r4, r1, 0x44
/* 80512A14  38 BC 12 7C */	addi r5, r28, 0x127c
/* 80512A18  4B D5 41 1D */	bl __mi__4cXyzCFRC3Vec
/* 80512A1C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80512A20  D0 1C 12 88 */	stfs f0, 0x1288(r28)
/* 80512A24  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80512A28  D0 1C 12 8C */	stfs f0, 0x128c(r28)
/* 80512A2C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80512A30  D0 1C 12 90 */	stfs f0, 0x1290(r28)
/* 80512A34  38 7C 12 88 */	addi r3, r28, 0x1288
/* 80512A38  7C 64 1B 78 */	mr r4, r3
/* 80512A3C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80512A40  4B E3 46 99 */	bl PSVECScale
/* 80512A44  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80512A48  D0 1C 12 7C */	stfs f0, 0x127c(r28)
/* 80512A4C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80512A50  D0 1C 12 80 */	stfs f0, 0x1280(r28)
/* 80512A54  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80512A58  D0 1C 12 84 */	stfs f0, 0x1284(r28)
/* 80512A5C  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 80512A60  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 80512A64  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 80512A68  3B A0 00 00 */	li r29, 0
/* 80512A6C  3B 60 00 00 */	li r27, 0
/* 80512A70  3B 40 00 00 */	li r26, 0
/* 80512A74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80512A78  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80512A7C  3A FC 12 88 */	addi r23, r28, 0x1288
/* 80512A80  3B 21 00 28 */	addi r25, r1, 0x28
/* 80512A84  48 00 00 94 */	b lbl_80512B18
lbl_80512A88:
/* 80512A88  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80512A8C  38 00 00 FF */	li r0, 0xff
/* 80512A90  90 01 00 08 */	stw r0, 8(r1)
/* 80512A94  38 80 00 00 */	li r4, 0
/* 80512A98  90 81 00 0C */	stw r4, 0xc(r1)
/* 80512A9C  38 00 FF FF */	li r0, -1
/* 80512AA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80512AA4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80512AA8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80512AAC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80512AB0  3A DA 12 74 */	addi r22, r26, 0x1274
/* 80512AB4  7C 9C B0 2E */	lwzx r4, r28, r22
/* 80512AB8  38 A0 00 00 */	li r5, 0
/* 80512ABC  7C D9 DA 2E */	lhzx r6, r25, r27
/* 80512AC0  38 E1 00 44 */	addi r7, r1, 0x44
/* 80512AC4  39 00 00 00 */	li r8, 0
/* 80512AC8  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 80512ACC  39 41 00 38 */	addi r10, r1, 0x38
/* 80512AD0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80512AD4  4B B3 A9 F9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80512AD8  7C 7C B1 2E */	stwx r3, r28, r22
/* 80512ADC  2C 1D 00 00 */	cmpwi r29, 0
/* 80512AE0  40 82 00 2C */	bne lbl_80512B0C
/* 80512AE4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80512AE8  38 63 02 10 */	addi r3, r3, 0x210
/* 80512AEC  7C 9C B0 2E */	lwzx r4, r28, r22
/* 80512AF0  4B B3 8E 29 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80512AF4  28 03 00 00 */	cmplwi r3, 0
/* 80512AF8  41 82 00 14 */	beq lbl_80512B0C
/* 80512AFC  3C 80 80 45 */	lis r4, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 80512B00  38 04 0E C8 */	addi r0, r4, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 80512B04  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 80512B08  92 E3 00 C0 */	stw r23, 0xc0(r3)
lbl_80512B0C:
/* 80512B0C  3B BD 00 01 */	addi r29, r29, 1
/* 80512B10  3B 7B 00 02 */	addi r27, r27, 2
/* 80512B14  3B 5A 00 04 */	addi r26, r26, 4
lbl_80512B18:
/* 80512B18  7C 1D F0 00 */	cmpw r29, r30
/* 80512B1C  41 80 FF 6C */	blt lbl_80512A88
/* 80512B20  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80512B24  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80512B28  39 61 00 90 */	addi r11, r1, 0x90
/* 80512B2C  4B E4 F6 E1 */	bl _restgpr_22
/* 80512B30  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80512B34  7C 08 03 A6 */	mtlr r0
/* 80512B38  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80512B3C  4E 80 00 20 */	blr 
