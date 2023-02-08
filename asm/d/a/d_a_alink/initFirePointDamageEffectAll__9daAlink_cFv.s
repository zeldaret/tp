lbl_80124EA8:
/* 80124EA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80124EAC  7C 08 02 A6 */	mflr r0
/* 80124EB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80124EB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80124EB8  48 23 D3 11 */	bl _savegpr_24
/* 80124EBC  7C 7B 1B 78 */	mr r27, r3
/* 80124EC0  3B BB 32 D8 */	addi r29, r27, 0x32d8
/* 80124EC4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80124EC8  54 05 3F FE */	rlwinm r5, r0, 7, 0x1f, 0x1f
/* 80124ECC  3B 80 00 00 */	li r28, 0
/* 80124ED0  3B 40 00 00 */	li r26, 0
/* 80124ED4  3B 20 00 00 */	li r25, 0
/* 80124ED8  54 04 57 38 */	rlwinm r4, r0, 0xa, 0x1c, 0x1c
/* 80124EDC  3C 60 80 39 */	lis r3, effJoint@ha /* 0x80391D84@ha */
/* 80124EE0  38 03 1D 84 */	addi r0, r3, effJoint@l /* 0x80391D84@l */
/* 80124EE4  7F C0 22 14 */	add r30, r0, r4
/* 80124EE8  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80124EEC  3B E3 0C F4 */	addi r31, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80124EF0  1C 85 00 30 */	mulli r4, r5, 0x30
/* 80124EF4  3C 60 80 39 */	lis r3, effOffset@ha /* 0x80391D94@ha */
/* 80124EF8  38 03 1D 94 */	addi r0, r3, effOffset@l /* 0x80391D94@l */
/* 80124EFC  7F 00 22 14 */	add r24, r0, r4
lbl_80124F00:
/* 80124F00  38 00 00 01 */	li r0, 1
/* 80124F04  98 1D 00 00 */	stb r0, 0(r29)
/* 80124F08  7C 1E CA 2E */	lhzx r0, r30, r25
/* 80124F0C  B0 1D 00 02 */	sth r0, 2(r29)
/* 80124F10  38 00 00 00 */	li r0, 0
/* 80124F14  90 1D 00 04 */	stw r0, 4(r29)
/* 80124F18  90 1D 00 08 */	stw r0, 8(r29)
/* 80124F1C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80124F20  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80124F24  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80124F28  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80124F2C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80124F30  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 80124F34  7C 78 D2 14 */	add r3, r24, r26
/* 80124F38  C0 03 00 00 */	lfs f0, 0(r3)
/* 80124F3C  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80124F40  C0 03 00 04 */	lfs f0, 4(r3)
/* 80124F44  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80124F48  C0 03 00 08 */	lfs f0, 8(r3)
/* 80124F4C  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80124F50  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 80124F54  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80124F58  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80124F5C  A0 1D 00 02 */	lhz r0, 2(r29)
/* 80124F60  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80124F64  7C 63 02 14 */	add r3, r3, r0
/* 80124F68  38 9D 00 18 */	addi r4, r29, 0x18
/* 80124F6C  38 BD 00 0C */	addi r5, r29, 0xc
/* 80124F70  48 22 1D FD */	bl PSMTXMultVec
/* 80124F74  3B 9C 00 01 */	addi r28, r28, 1
/* 80124F78  2C 1C 00 04 */	cmpwi r28, 4
/* 80124F7C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80124F80  3B 39 00 02 */	addi r25, r25, 2
/* 80124F84  3B BD 00 30 */	addi r29, r29, 0x30
/* 80124F88  41 80 FF 78 */	blt lbl_80124F00
/* 80124F8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80124F90  48 23 D2 85 */	bl _restgpr_24
/* 80124F94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80124F98  7C 08 03 A6 */	mtlr r0
/* 80124F9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80124FA0  4E 80 00 20 */	blr 
