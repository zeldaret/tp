lbl_80875CA0:
/* 80875CA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80875CA4  7C 08 02 A6 */	mflr r0
/* 80875CA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80875CAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80875CB0  4B AE C5 18 */	b _savegpr_24
/* 80875CB4  7C 78 1B 78 */	mr r24, r3
/* 80875CB8  80 83 00 00 */	lwz r4, 0(r3)
/* 80875CBC  3B 44 00 08 */	addi r26, r4, 8
/* 80875CC0  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80875CC4  3B C3 9B D0 */	addi r30, r3, daMP_ActivePlayer@l
/* 80875CC8  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 80875CCC  54 03 10 3A */	slwi r3, r0, 2
/* 80875CD0  3B 23 00 08 */	addi r25, r3, 8
/* 80875CD4  7F 24 CA 14 */	add r25, r4, r25
/* 80875CD8  4B FF FE F1 */	bl daMP_PopFreeTextureSet__Fv
/* 80875CDC  7C 7C 1B 78 */	mr r28, r3
/* 80875CE0  3B 60 00 00 */	li r27, 0
/* 80875CE4  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80875CE8  3B E3 9B D0 */	addi r31, r3, daMP_ActivePlayer@l
/* 80875CEC  7F FD FB 78 */	mr r29, r31
/* 80875CF0  48 00 00 A0 */	b lbl_80875D90
lbl_80875CF4:
/* 80875CF4  88 1D 00 70 */	lbz r0, 0x70(r29)
/* 80875CF8  2C 00 00 00 */	cmpwi r0, 0
/* 80875CFC  41 82 00 08 */	beq lbl_80875D04
/* 80875D00  48 00 00 7C */	b lbl_80875D7C
lbl_80875D04:
/* 80875D04  7F 23 CB 78 */	mr r3, r25
/* 80875D08  80 9C 00 00 */	lwz r4, 0(r28)
/* 80875D0C  80 BC 00 04 */	lwz r5, 4(r28)
/* 80875D10  80 DC 00 08 */	lwz r6, 8(r28)
/* 80875D14  80 FF 00 9C */	lwz r7, 0x9c(r31)
/* 80875D18  4B FF CF A5 */	bl THPVideoDecode
/* 80875D1C  90 7F 00 AC */	stw r3, 0xac(r31)
/* 80875D20  2C 03 00 00 */	cmpwi r3, 0
/* 80875D24  41 82 00 34 */	beq lbl_80875D58
/* 80875D28  3C 60 80 8E */	lis r3, daMP_First@ha
/* 80875D2C  80 03 05 10 */	lwz r0, daMP_First@l(r3)
/* 80875D30  2C 00 00 00 */	cmpwi r0, 0
/* 80875D34  41 82 00 18 */	beq lbl_80875D4C
/* 80875D38  38 60 00 00 */	li r3, 0
/* 80875D3C  48 00 22 4D */	bl daMP_PrepareReady__Fi
/* 80875D40  38 00 00 00 */	li r0, 0
/* 80875D44  3C 60 80 8E */	lis r3, daMP_First@ha
/* 80875D48  90 03 05 10 */	stw r0, daMP_First@l(r3)
lbl_80875D4C:
/* 80875D4C  3C 60 80 88 */	lis r3, daMP_VideoDecodeThread@ha
/* 80875D50  38 63 C1 A0 */	addi r3, r3, daMP_VideoDecodeThread@l
/* 80875D54  4B AC BC E8 */	b OSSuspendThread
lbl_80875D58:
/* 80875D58  80 18 00 04 */	lwz r0, 4(r24)
/* 80875D5C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80875D60  7F 83 E3 78 */	mr r3, r28
/* 80875D64  4B FF FF 0D */	bl daMP_PushDecodedTextureSet__FPv
/* 80875D68  4B AC 79 8C */	b OSDisableInterrupts
/* 80875D6C  80 9F 00 D8 */	lwz r4, 0xd8(r31)
/* 80875D70  38 04 00 01 */	addi r0, r4, 1
/* 80875D74  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 80875D78  4B AC 79 A4 */	b OSRestoreInterrupts
lbl_80875D7C:
/* 80875D7C  80 1A 00 00 */	lwz r0, 0(r26)
/* 80875D80  7F 39 02 14 */	add r25, r25, r0
/* 80875D84  3B 5A 00 04 */	addi r26, r26, 4
/* 80875D88  3B BD 00 01 */	addi r29, r29, 1
/* 80875D8C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80875D90:
/* 80875D90  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 80875D94  7C 1B 00 40 */	cmplw r27, r0
/* 80875D98  41 80 FF 5C */	blt lbl_80875CF4
/* 80875D9C  3C 60 80 8E */	lis r3, daMP_First@ha
/* 80875DA0  80 03 05 10 */	lwz r0, daMP_First@l(r3)
/* 80875DA4  2C 00 00 00 */	cmpwi r0, 0
/* 80875DA8  41 82 00 18 */	beq lbl_80875DC0
/* 80875DAC  38 60 00 01 */	li r3, 1
/* 80875DB0  48 00 21 D9 */	bl daMP_PrepareReady__Fi
/* 80875DB4  38 00 00 00 */	li r0, 0
/* 80875DB8  3C 60 80 8E */	lis r3, daMP_First@ha
/* 80875DBC  90 03 05 10 */	stw r0, daMP_First@l(r3)
lbl_80875DC0:
/* 80875DC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80875DC4  4B AE C4 50 */	b _restgpr_24
/* 80875DC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80875DCC  7C 08 03 A6 */	mtlr r0
/* 80875DD0  38 21 00 30 */	addi r1, r1, 0x30
/* 80875DD4  4E 80 00 20 */	blr 
