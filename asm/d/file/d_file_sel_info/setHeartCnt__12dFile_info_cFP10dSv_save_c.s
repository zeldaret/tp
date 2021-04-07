lbl_80192AA0:
/* 80192AA0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80192AA4  7C 08 02 A6 */	mflr r0
/* 80192AA8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80192AAC  39 61 00 80 */	addi r11, r1, 0x80
/* 80192AB0  48 1C F7 11 */	bl _savegpr_22
/* 80192AB4  7C 78 1B 78 */	mr r24, r3
/* 80192AB8  7C 99 23 78 */	mr r25, r4
/* 80192ABC  A0 84 00 02 */	lhz r4, 2(r4)
/* 80192AC0  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80192AC4  38 60 00 05 */	li r3, 5
/* 80192AC8  7F 80 1B D6 */	divw r28, r0, r3
/* 80192ACC  7C 04 1B D6 */	divw r0, r4, r3
/* 80192AD0  7C 00 19 D6 */	mullw r0, r0, r3
/* 80192AD4  7F 60 20 51 */	subf. r27, r0, r4
/* 80192AD8  41 82 00 08 */	beq lbl_80192AE0
/* 80192ADC  3B 9C 00 01 */	addi r28, r28, 1
lbl_80192AE0:
/* 80192AE0  3B 40 00 00 */	li r26, 0
/* 80192AE4  3A E0 00 00 */	li r23, 0
/* 80192AE8  3A C0 00 00 */	li r22, 0
/* 80192AEC  57 64 10 3A */	slwi r4, r27, 2
/* 80192AF0  3C 60 80 3C */	lis r3, amariheartTex@ha /* 0x803BB548@ha */
/* 80192AF4  38 03 B5 48 */	addi r0, r3, amariheartTex@l /* 0x803BB548@l */
/* 80192AF8  7C 60 22 14 */	add r3, r0, r4
/* 80192AFC  3B C3 FF FC */	addi r30, r3, -4
/* 80192B00  3C 60 80 3C */	lis r3, l_htag@ha /* 0x803BB4A8@ha */
/* 80192B04  3B E3 B4 A8 */	addi r31, r3, l_htag@l /* 0x803BB4A8@l */
/* 80192B08  3B A1 00 08 */	addi r29, r1, 8
lbl_80192B0C:
/* 80192B0C  80 78 00 0C */	lwz r3, 0xc(r24)
/* 80192B10  7C 9F B2 14 */	add r4, r31, r22
/* 80192B14  80 A4 00 00 */	lwz r5, 0(r4)
/* 80192B18  80 C4 00 04 */	lwz r6, 4(r4)
/* 80192B1C  81 83 00 00 */	lwz r12, 0(r3)
/* 80192B20  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80192B24  7D 89 03 A6 */	mtctr r12
/* 80192B28  4E 80 04 21 */	bctrl 
/* 80192B2C  7C 7D B9 2E */	stwx r3, r29, r23
/* 80192B30  A0 79 00 00 */	lhz r3, 0(r25)
/* 80192B34  38 00 00 05 */	li r0, 5
/* 80192B38  7C 03 03 D6 */	divw r0, r3, r0
/* 80192B3C  7C 1A 00 00 */	cmpw r26, r0
/* 80192B40  40 80 00 90 */	bge lbl_80192BD0
/* 80192B44  38 00 00 01 */	li r0, 1
/* 80192B48  7C 7D B8 2E */	lwzx r3, r29, r23
/* 80192B4C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80192B50  7C 1A E0 00 */	cmpw r26, r28
/* 80192B54  40 80 00 58 */	bge lbl_80192BAC
/* 80192B58  2C 1B 00 00 */	cmpwi r27, 0
/* 80192B5C  41 82 00 2C */	beq lbl_80192B88
/* 80192B60  38 1C FF FF */	addi r0, r28, -1
/* 80192B64  7C 1A 00 00 */	cmpw r26, r0
/* 80192B68  40 82 00 20 */	bne lbl_80192B88
/* 80192B6C  80 9E 00 00 */	lwz r4, 0(r30)
/* 80192B70  38 A0 00 00 */	li r5, 0
/* 80192B74  81 83 00 00 */	lwz r12, 0(r3)
/* 80192B78  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80192B7C  7D 89 03 A6 */	mtctr r12
/* 80192B80  4E 80 04 21 */	bctrl 
/* 80192B84  48 00 00 58 */	b lbl_80192BDC
lbl_80192B88:
/* 80192B88  3C 80 80 39 */	lis r4, d_file_d_file_sel_info__stringBase0@ha /* 0x803948B8@ha */
/* 80192B8C  38 84 48 B8 */	addi r4, r4, d_file_d_file_sel_info__stringBase0@l /* 0x803948B8@l */
/* 80192B90  38 84 00 21 */	addi r4, r4, 0x21
/* 80192B94  38 A0 00 00 */	li r5, 0
/* 80192B98  81 83 00 00 */	lwz r12, 0(r3)
/* 80192B9C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80192BA0  7D 89 03 A6 */	mtctr r12
/* 80192BA4  4E 80 04 21 */	bctrl 
/* 80192BA8  48 00 00 34 */	b lbl_80192BDC
lbl_80192BAC:
/* 80192BAC  3C 80 80 39 */	lis r4, d_file_d_file_sel_info__stringBase0@ha /* 0x803948B8@ha */
/* 80192BB0  38 84 48 B8 */	addi r4, r4, d_file_d_file_sel_info__stringBase0@l /* 0x803948B8@l */
/* 80192BB4  38 84 00 21 */	addi r4, r4, 0x21
/* 80192BB8  38 A0 00 00 */	li r5, 0
/* 80192BBC  81 83 00 00 */	lwz r12, 0(r3)
/* 80192BC0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80192BC4  7D 89 03 A6 */	mtctr r12
/* 80192BC8  4E 80 04 21 */	bctrl 
/* 80192BCC  48 00 00 10 */	b lbl_80192BDC
lbl_80192BD0:
/* 80192BD0  38 00 00 00 */	li r0, 0
/* 80192BD4  7C 7D B8 2E */	lwzx r3, r29, r23
/* 80192BD8  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_80192BDC:
/* 80192BDC  3B 5A 00 01 */	addi r26, r26, 1
/* 80192BE0  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80192BE4  3A F7 00 04 */	addi r23, r23, 4
/* 80192BE8  3A D6 00 08 */	addi r22, r22, 8
/* 80192BEC  41 80 FF 20 */	blt lbl_80192B0C
/* 80192BF0  39 61 00 80 */	addi r11, r1, 0x80
/* 80192BF4  48 1C F6 19 */	bl _restgpr_22
/* 80192BF8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80192BFC  7C 08 03 A6 */	mtlr r0
/* 80192C00  38 21 00 80 */	addi r1, r1, 0x80
/* 80192C04  4E 80 00 20 */	blr 
