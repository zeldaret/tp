lbl_80BD9988:
/* 80BD9988  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD998C  7C 08 02 A6 */	mflr r0
/* 80BD9990  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD9994  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD9998  4B 78 88 39 */	bl _savegpr_26
/* 80BD999C  7C 7C 1B 78 */	mr r28, r3
/* 80BD99A0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BD99A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BD99A8  40 82 01 A8 */	bne lbl_80BD9B50
/* 80BD99AC  7F 80 E3 79 */	or. r0, r28, r28
/* 80BD99B0  41 82 01 94 */	beq lbl_80BD9B44
/* 80BD99B4  7C 1B 03 78 */	mr r27, r0
/* 80BD99B8  4B 49 EC 6D */	bl __ct__16dBgS_MoveBgActorFv
/* 80BD99BC  3C 60 80 BE */	lis r3, __vt__12daObjCwall_c@ha /* 0x80BDA2CC@ha */
/* 80BD99C0  38 03 A2 CC */	addi r0, r3, __vt__12daObjCwall_c@l /* 0x80BDA2CC@l */
/* 80BD99C4  90 1B 05 9C */	stw r0, 0x59c(r27)
/* 80BD99C8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BD99CC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BD99D0  90 1B 05 C4 */	stw r0, 0x5c4(r27)
/* 80BD99D4  38 7B 05 C8 */	addi r3, r27, 0x5c8
/* 80BD99D8  4B 4A 9D 89 */	bl __ct__10dCcD_GSttsFv
/* 80BD99DC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BD99E0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BD99E4  90 7B 05 C4 */	stw r3, 0x5c4(r27)
/* 80BD99E8  38 03 00 20 */	addi r0, r3, 0x20
/* 80BD99EC  90 1B 05 C8 */	stw r0, 0x5c8(r27)
/* 80BD99F0  3B 5B 05 E8 */	addi r26, r27, 0x5e8
/* 80BD99F4  7F 43 D3 78 */	mr r3, r26
/* 80BD99F8  4B 4A A0 31 */	bl __ct__12dCcD_GObjInfFv
/* 80BD99FC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BD9A00  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BD9A04  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80BD9A08  3C 60 80 BE */	lis r3, __vt__8cM3dGAab@ha /* 0x80BDA2C0@ha */
/* 80BD9A0C  38 03 A2 C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BDA2C0@l */
/* 80BD9A10  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80BD9A14  3C 60 80 BE */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BDA2B4@ha */
/* 80BD9A18  38 03 A2 B4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BDA2B4@l */
/* 80BD9A1C  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80BD9A20  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BD9A24  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BD9A28  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80BD9A2C  3B E3 00 58 */	addi r31, r3, 0x58
/* 80BD9A30  93 FA 01 38 */	stw r31, 0x138(r26)
/* 80BD9A34  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BD9A38  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BD9A3C  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80BD9A40  3B C3 00 2C */	addi r30, r3, 0x2c
/* 80BD9A44  93 DA 01 20 */	stw r30, 0x120(r26)
/* 80BD9A48  3B A3 00 84 */	addi r29, r3, 0x84
/* 80BD9A4C  93 BA 01 38 */	stw r29, 0x138(r26)
/* 80BD9A50  3B 5B 07 24 */	addi r26, r27, 0x724
/* 80BD9A54  7F 43 D3 78 */	mr r3, r26
/* 80BD9A58  4B 4A 9F D1 */	bl __ct__12dCcD_GObjInfFv
/* 80BD9A5C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BD9A60  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BD9A64  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80BD9A68  3C 60 80 BE */	lis r3, __vt__8cM3dGAab@ha /* 0x80BDA2C0@ha */
/* 80BD9A6C  38 03 A2 C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BDA2C0@l */
/* 80BD9A70  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80BD9A74  3C 60 80 BE */	lis r3, __vt__8cM3dGSph@ha /* 0x80BDA2A8@ha */
/* 80BD9A78  38 03 A2 A8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BDA2A8@l */
/* 80BD9A7C  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80BD9A80  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BD9A84  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BD9A88  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80BD9A8C  38 03 00 58 */	addi r0, r3, 0x58
/* 80BD9A90  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80BD9A94  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BD9A98  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BD9A9C  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80BD9AA0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BD9AA4  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80BD9AA8  38 03 00 84 */	addi r0, r3, 0x84
/* 80BD9AAC  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80BD9AB0  38 7B 08 5C */	addi r3, r27, 0x85c
/* 80BD9AB4  3C 80 80 BE */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80BD9B74@ha */
/* 80BD9AB8  38 84 9B 74 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80BD9B74@l */
/* 80BD9ABC  3C A0 80 BE */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80BD9C40@ha */
/* 80BD9AC0  38 A5 9C 40 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80BD9C40@l */
/* 80BD9AC4  38 C0 01 3C */	li r6, 0x13c
/* 80BD9AC8  38 E0 00 04 */	li r7, 4
/* 80BD9ACC  4B 78 82 95 */	bl __construct_array
/* 80BD9AD0  3B 5B 0D 4C */	addi r26, r27, 0xd4c
/* 80BD9AD4  7F 43 D3 78 */	mr r3, r26
/* 80BD9AD8  4B 4A 9F 51 */	bl __ct__12dCcD_GObjInfFv
/* 80BD9ADC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BD9AE0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BD9AE4  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80BD9AE8  3C 60 80 BE */	lis r3, __vt__8cM3dGAab@ha /* 0x80BDA2C0@ha */
/* 80BD9AEC  38 03 A2 C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BDA2C0@l */
/* 80BD9AF0  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80BD9AF4  3C 60 80 BE */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BDA2B4@ha */
/* 80BD9AF8  38 03 A2 B4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BDA2B4@l */
/* 80BD9AFC  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80BD9B00  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BD9B04  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BD9B08  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80BD9B0C  93 FA 01 38 */	stw r31, 0x138(r26)
/* 80BD9B10  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BD9B14  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BD9B18  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 80BD9B1C  93 DA 01 20 */	stw r30, 0x120(r26)
/* 80BD9B20  93 BA 01 38 */	stw r29, 0x138(r26)
/* 80BD9B24  38 7B 0E 94 */	addi r3, r27, 0xe94
/* 80BD9B28  3C 80 80 BE */	lis r4, __ct__4cXyzFv@ha /* 0x80BD9B70@ha */
/* 80BD9B2C  38 84 9B 70 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BD9B70@l */
/* 80BD9B30  3C A0 80 BD */	lis r5, __dt__4cXyzFv@ha /* 0x80BD6CCC@ha */
/* 80BD9B34  38 A5 6C CC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BD6CCC@l */
/* 80BD9B38  38 C0 00 0C */	li r6, 0xc
/* 80BD9B3C  38 E0 00 07 */	li r7, 7
/* 80BD9B40  4B 78 82 21 */	bl __construct_array
lbl_80BD9B44:
/* 80BD9B44  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80BD9B48  60 00 00 08 */	ori r0, r0, 8
/* 80BD9B4C  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80BD9B50:
/* 80BD9B50  7F 83 E3 78 */	mr r3, r28
/* 80BD9B54  4B FF D3 81 */	bl create1st__12daObjCwall_cFv
/* 80BD9B58  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD9B5C  4B 78 86 C1 */	bl _restgpr_26
/* 80BD9B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD9B64  7C 08 03 A6 */	mtlr r0
/* 80BD9B68  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD9B6C  4E 80 00 20 */	blr 
