lbl_80345B8C:
/* 80345B8C  7C 08 02 A6 */	mflr r0
/* 80345B90  90 01 00 04 */	stw r0, 4(r1)
/* 80345B94  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80345B98  BE 61 00 2C */	stmw r19, 0x2c(r1)
/* 80345B9C  3B 03 00 00 */	addi r24, r3, 0
/* 80345BA0  3C 60 80 45 */	lis r3, Packet@ha /* 0x8044C630@ha */
/* 80345BA4  3A E3 C6 30 */	addi r23, r3, Packet@l /* 0x8044C630@l */
/* 80345BA8  57 00 28 34 */	slwi r0, r24, 5
/* 80345BAC  3B 24 00 00 */	addi r25, r4, 0
/* 80345BB0  3B 45 00 00 */	addi r26, r5, 0
/* 80345BB4  3B 66 00 00 */	addi r27, r6, 0
/* 80345BB8  3B 87 00 00 */	addi r28, r7, 0
/* 80345BBC  3B A8 00 00 */	addi r29, r8, 0
/* 80345BC0  3B E9 00 00 */	addi r31, r9, 0
/* 80345BC4  3B CA 00 00 */	addi r30, r10, 0
/* 80345BC8  7E D7 02 14 */	add r22, r23, r0
/* 80345BCC  4B FF 7B 29 */	bl OSDisableInterrupts
/* 80345BD0  80 16 00 00 */	lwz r0, 0(r22)
/* 80345BD4  3A A3 00 00 */	addi r21, r3, 0
/* 80345BD8  2C 00 FF FF */	cmpwi r0, -1
/* 80345BDC  40 82 00 14 */	bne lbl_80345BF0
/* 80345BE0  3C 60 80 3D */	lis r3, Si@ha /* 0x803D11FC@ha */
/* 80345BE4  80 03 11 FC */	lwz r0, Si@l(r3)  /* 0x803D11FC@l */
/* 80345BE8  7C 00 C0 00 */	cmpw r0, r24
/* 80345BEC  40 82 00 14 */	bne lbl_80345C00
lbl_80345BF0:
/* 80345BF0  7E A3 AB 78 */	mr r3, r21
/* 80345BF4  4B FF 7B 29 */	bl OSRestoreInterrupts
/* 80345BF8  38 60 00 00 */	li r3, 0
/* 80345BFC  48 00 00 E8 */	b lbl_80345CE4
lbl_80345C00:
/* 80345C00  4B FF CB 1D */	bl __OSGetSystemTime
/* 80345C04  38 00 00 00 */	li r0, 0
/* 80345C08  7F C5 02 78 */	xor r5, r30, r0
/* 80345C0C  7F E0 02 78 */	xor r0, r31, r0
/* 80345C10  7C A0 03 79 */	or. r0, r5, r0
/* 80345C14  40 82 00 10 */	bne lbl_80345C24
/* 80345C18  3A 64 00 00 */	addi r19, r4, 0
/* 80345C1C  3A 83 00 00 */	addi r20, r3, 0
/* 80345C20  48 00 00 1C */	b lbl_80345C3C
lbl_80345C24:
/* 80345C24  57 00 18 38 */	slwi r0, r24, 3
/* 80345C28  7C D7 02 14 */	add r6, r23, r0
/* 80345C2C  80 A6 01 44 */	lwz r5, 0x144(r6)
/* 80345C30  80 06 01 40 */	lwz r0, 0x140(r6)
/* 80345C34  7E 7E 28 14 */	addc r19, r30, r5
/* 80345C38  7E 9F 01 14 */	adde r20, r31, r0
lbl_80345C3C:
/* 80345C3C  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 80345C40  6E 85 80 00 */	xoris r5, r20, 0x8000
/* 80345C44  7C 13 20 10 */	subfc r0, r19, r4
/* 80345C48  7C A5 31 10 */	subfe r5, r5, r6
/* 80345C4C  7C A6 31 10 */	subfe r5, r6, r6
/* 80345C50  7C A5 00 D1 */	neg. r5, r5
/* 80345C54  41 82 00 30 */	beq lbl_80345C84
/* 80345C58  1C 18 00 28 */	mulli r0, r24, 0x28
/* 80345C5C  7F C4 98 10 */	subfc r30, r4, r19
/* 80345C60  7F E3 A1 10 */	subfe r31, r3, r20
/* 80345C64  3C 80 80 34 */	lis r4, AlarmHandler@ha /* 0x80345B00@ha */
/* 80345C68  7C 77 02 14 */	add r3, r23, r0
/* 80345C6C  38 E4 5B 00 */	addi r7, r4, AlarmHandler@l /* 0x80345B00@l */
/* 80345C70  38 DE 00 00 */	addi r6, r30, 0
/* 80345C74  38 BF 00 00 */	addi r5, r31, 0
/* 80345C78  38 63 00 80 */	addi r3, r3, 0x80
/* 80345C7C  4B FF 4E DD */	bl OSSetAlarm
/* 80345C80  48 00 00 38 */	b lbl_80345CB8
lbl_80345C84:
/* 80345C84  38 78 00 00 */	addi r3, r24, 0
/* 80345C88  38 99 00 00 */	addi r4, r25, 0
/* 80345C8C  38 BA 00 00 */	addi r5, r26, 0
/* 80345C90  38 DB 00 00 */	addi r6, r27, 0
/* 80345C94  38 FC 00 00 */	addi r7, r28, 0
/* 80345C98  39 1D 00 00 */	addi r8, r29, 0
/* 80345C9C  4B FF F8 AD */	bl __SITransfer
/* 80345CA0  2C 03 00 00 */	cmpwi r3, 0
/* 80345CA4  41 82 00 14 */	beq lbl_80345CB8
/* 80345CA8  7E A3 AB 78 */	mr r3, r21
/* 80345CAC  4B FF 7A 71 */	bl OSRestoreInterrupts
/* 80345CB0  38 60 00 01 */	li r3, 1
/* 80345CB4  48 00 00 30 */	b lbl_80345CE4
lbl_80345CB8:
/* 80345CB8  93 16 00 00 */	stw r24, 0(r22)
/* 80345CBC  7E A3 AB 78 */	mr r3, r21
/* 80345CC0  93 36 00 04 */	stw r25, 4(r22)
/* 80345CC4  93 56 00 08 */	stw r26, 8(r22)
/* 80345CC8  93 76 00 0C */	stw r27, 0xc(r22)
/* 80345CCC  93 96 00 10 */	stw r28, 0x10(r22)
/* 80345CD0  93 B6 00 14 */	stw r29, 0x14(r22)
/* 80345CD4  92 76 00 1C */	stw r19, 0x1c(r22)
/* 80345CD8  92 96 00 18 */	stw r20, 0x18(r22)
/* 80345CDC  4B FF 7A 41 */	bl OSRestoreInterrupts
/* 80345CE0  38 60 00 01 */	li r3, 1
lbl_80345CE4:
/* 80345CE4  BA 61 00 2C */	lmw r19, 0x2c(r1)
/* 80345CE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80345CEC  38 21 00 60 */	addi r1, r1, 0x60
/* 80345CF0  7C 08 03 A6 */	mtlr r0
/* 80345CF4  4E 80 00 20 */	blr 
