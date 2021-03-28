lbl_80875A28:
/* 80875A28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80875A2C  7C 08 02 A6 */	mflr r0
/* 80875A30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80875A34  39 61 00 20 */	addi r11, r1, 0x20
/* 80875A38  4B AE C7 9C */	b _savegpr_27
/* 80875A3C  3B 80 00 00 */	li r28, 0
/* 80875A40  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80875A44  3B E3 9B D0 */	addi r31, r3, daMP_ActivePlayer@l
/* 80875A48  83 DF 00 B8 */	lwz r30, 0xb8(r31)
/* 80875A4C  83 BF 00 BC */	lwz r29, 0xbc(r31)
lbl_80875A50:
/* 80875A50  4B FF FE 95 */	bl daMP_PopFreeReadBuffer__Fv
/* 80875A54  7C 7B 1B 78 */	mr r27, r3
/* 80875A58  7F E3 FB 78 */	mr r3, r31
/* 80875A5C  80 9B 00 00 */	lwz r4, 0(r27)
/* 80875A60  7F A5 EB 78 */	mr r5, r29
/* 80875A64  7F C6 F3 78 */	mr r6, r30
/* 80875A68  38 E0 00 02 */	li r7, 2
/* 80875A6C  4B AD 33 D8 */	b DVDReadPrio
/* 80875A70  7C 03 E8 00 */	cmpw r3, r29
/* 80875A74  41 82 00 30 */	beq lbl_80875AA4
/* 80875A78  2C 03 FF FF */	cmpwi r3, -1
/* 80875A7C  40 82 00 0C */	bne lbl_80875A88
/* 80875A80  38 00 FF FF */	li r0, -1
/* 80875A84  90 1F 00 A8 */	stw r0, 0xa8(r31)
lbl_80875A88:
/* 80875A88  2C 1C 00 00 */	cmpwi r28, 0
/* 80875A8C  40 82 00 0C */	bne lbl_80875A98
/* 80875A90  38 60 00 00 */	li r3, 0
/* 80875A94  48 00 24 F5 */	bl daMP_PrepareReady__Fi
lbl_80875A98:
/* 80875A98  3C 60 80 88 */	lis r3, daMP_ReadThread@ha
/* 80875A9C  38 63 9E 80 */	addi r3, r3, daMP_ReadThread@l
/* 80875AA0  4B AC BF 9C */	b OSSuspendThread
lbl_80875AA4:
/* 80875AA4  93 9B 00 04 */	stw r28, 4(r27)
/* 80875AA8  7F 63 DB 78 */	mr r3, r27
/* 80875AAC  4B FF FE 09 */	bl daMP_PushReadedBuffer__FPv
/* 80875AB0  7F DE EA 14 */	add r30, r30, r29
/* 80875AB4  7F 63 DB 78 */	mr r3, r27
/* 80875AB8  48 00 00 55 */	bl daMP_NEXT_READ_SIZE__FP18daMP_THPReadBuffer
/* 80875ABC  7C 7D 1B 78 */	mr r29, r3
/* 80875AC0  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 80875AC4  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80875AC8  7C 7C 02 14 */	add r3, r28, r0
/* 80875ACC  7C 03 23 96 */	divwu r0, r3, r4
/* 80875AD0  7C 00 21 D6 */	mullw r0, r0, r4
/* 80875AD4  7C 60 18 50 */	subf r3, r0, r3
/* 80875AD8  38 04 FF FF */	addi r0, r4, -1
/* 80875ADC  7C 03 00 40 */	cmplw r3, r0
/* 80875AE0  40 82 00 24 */	bne lbl_80875B04
/* 80875AE4  88 1F 00 A6 */	lbz r0, 0xa6(r31)
/* 80875AE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80875AEC  41 82 00 0C */	beq lbl_80875AF8
/* 80875AF0  83 DF 00 64 */	lwz r30, 0x64(r31)
/* 80875AF4  48 00 00 10 */	b lbl_80875B04
lbl_80875AF8:
/* 80875AF8  3C 60 80 88 */	lis r3, daMP_ReadThread@ha
/* 80875AFC  38 63 9E 80 */	addi r3, r3, daMP_ReadThread@l
/* 80875B00  4B AC BF 3C */	b OSSuspendThread
lbl_80875B04:
/* 80875B04  3B 9C 00 01 */	addi r28, r28, 1
/* 80875B08  4B FF FF 48 */	b lbl_80875A50
