lbl_801C0D70:
/* 801C0D70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C0D74  7C 08 02 A6 */	mflr r0
/* 801C0D78  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C0D7C  39 61 00 30 */	addi r11, r1, 0x30
/* 801C0D80  48 1A 14 41 */	bl _savegpr_22
/* 801C0D84  7C 76 1B 78 */	mr r22, r3
/* 801C0D88  7C 97 23 78 */	mr r23, r4
/* 801C0D8C  7C B8 2B 78 */	mr r24, r5
/* 801C0D90  7C D9 33 78 */	mr r25, r6
/* 801C0D94  7C FA 3B 78 */	mr r26, r7
/* 801C0D98  3B 60 00 00 */	li r27, 0
/* 801C0D9C  3B E0 00 00 */	li r31, 0
/* 801C0DA0  3B C0 00 00 */	li r30, 0
lbl_801C0DA4:
/* 801C0DA4  7E E3 BB 78 */	mr r3, r23
/* 801C0DA8  7F 04 C3 78 */	mr r4, r24
/* 801C0DAC  38 A0 00 09 */	li r5, 9
/* 801C0DB0  38 C0 00 00 */	li r6, 0
/* 801C0DB4  38 E0 00 00 */	li r7, 0
/* 801C0DB8  48 19 CE 65 */	bl GXGetTexBufferSize
/* 801C0DBC  38 80 00 20 */	li r4, 0x20
/* 801C0DC0  48 10 DF 2D */	bl __nwa__FUli
/* 801C0DC4  7F B6 F2 14 */	add r29, r22, r30
/* 801C0DC8  90 7D 00 7C */	stw r3, 0x7c(r29)
/* 801C0DCC  3B 9F 00 04 */	addi r28, r31, 4
/* 801C0DD0  7F 96 E2 14 */	add r28, r22, r28
/* 801C0DD4  7F 83 E3 78 */	mr r3, r28
/* 801C0DD8  80 9D 00 7C */	lwz r4, 0x7c(r29)
/* 801C0DDC  7E E5 BB 78 */	mr r5, r23
/* 801C0DE0  7F 06 C3 78 */	mr r6, r24
/* 801C0DE4  7F 27 CB 78 */	mr r7, r25
/* 801C0DE8  7F 48 D3 78 */	mr r8, r26
/* 801C0DEC  4B E7 EE DD */	bl init__16renderingDAmap_cFPUcUsUsUsUs
/* 801C0DF0  38 60 00 20 */	li r3, 0x20
/* 801C0DF4  38 80 00 20 */	li r4, 0x20
/* 801C0DF8  48 10 DE 7D */	bl __nw__FUli
/* 801C0DFC  90 7D 00 74 */	stw r3, 0x74(r29)
/* 801C0E00  7F 83 E3 78 */	mr r3, r28
/* 801C0E04  80 9D 00 74 */	lwz r4, 0x74(r29)
/* 801C0E08  7E E5 BB 78 */	mr r5, r23
/* 801C0E0C  7F 06 C3 78 */	mr r6, r24
/* 801C0E10  80 FD 00 7C */	lwz r7, 0x7c(r29)
/* 801C0E14  81 0D 8B 08 */	lwz r8, m_res__22dMdm_HIO_prm_res_dst_s(r13)
/* 801C0E18  39 20 00 1E */	li r9, 0x1e
/* 801C0E1C  4B E7 BF 1D */	bl makeResTIMG__15dRenderingMap_cCFP7ResTIMGUsUsPUcPUcUs
/* 801C0E20  3B 7B 00 01 */	addi r27, r27, 1
/* 801C0E24  2C 1B 00 02 */	cmpwi r27, 2
/* 801C0E28  3B FF 00 38 */	addi r31, r31, 0x38
/* 801C0E2C  3B DE 00 04 */	addi r30, r30, 4
/* 801C0E30  41 80 FF 74 */	blt lbl_801C0DA4
/* 801C0E34  39 61 00 30 */	addi r11, r1, 0x30
/* 801C0E38  48 1A 13 D5 */	bl _restgpr_22
/* 801C0E3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C0E40  7C 08 03 A6 */	mtlr r0
/* 801C0E44  38 21 00 30 */	addi r1, r1, 0x30
/* 801C0E48  4E 80 00 20 */	blr 
