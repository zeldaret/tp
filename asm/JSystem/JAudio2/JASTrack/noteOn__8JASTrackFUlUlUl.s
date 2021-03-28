lbl_80291F38:
/* 80291F38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80291F3C  7C 08 02 A6 */	mflr r0
/* 80291F40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80291F44  39 61 00 30 */	addi r11, r1, 0x30
/* 80291F48  48 0D 02 7D */	bl _savegpr_23
/* 80291F4C  7C 77 1B 78 */	mr r23, r3
/* 80291F50  7C 98 23 78 */	mr r24, r4
/* 80291F54  7C B9 2B 78 */	mr r25, r5
/* 80291F58  7C DA 33 78 */	mr r26, r6
/* 80291F5C  48 00 0B 99 */	bl isMute__8JASTrackCFv
/* 80291F60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80291F64  41 82 00 0C */	beq lbl_80291F70
/* 80291F68  38 60 00 00 */	li r3, 0
/* 80291F6C  48 00 00 84 */	b lbl_80291FF0
lbl_80291F70:
/* 80291F70  3B 80 00 01 */	li r28, 1
/* 80291F74  7E E3 BB 78 */	mr r3, r23
/* 80291F78  48 00 0B 2D */	bl getTransposeTotal__8JASTrackCFv
/* 80291F7C  7F 39 1A 14 */	add r25, r25, r3
/* 80291F80  3B 60 00 00 */	li r27, 0
/* 80291F84  3B E0 00 00 */	li r31, 0
/* 80291F88  57 1E 10 3A */	slwi r30, r24, 2
/* 80291F8C  48 00 00 54 */	b lbl_80291FE0
lbl_80291F90:
/* 80291F90  3B BF 01 70 */	addi r29, r31, 0x170
/* 80291F94  7C 77 E8 2E */	lwzx r3, r23, r29
/* 80291F98  28 03 00 00 */	cmplwi r3, 0
/* 80291F9C  41 82 00 3C */	beq lbl_80291FD8
/* 80291FA0  7F 04 C3 78 */	mr r4, r24
/* 80291FA4  38 A0 00 00 */	li r5, 0
/* 80291FA8  48 00 12 79 */	bl noteOff__Q28JASTrack11TChannelMgrFUlUs
/* 80291FAC  7E E3 BB 78 */	mr r3, r23
/* 80291FB0  7C 97 E8 2E */	lwzx r4, r23, r29
/* 80291FB4  7F 25 CB 78 */	mr r5, r25
/* 80291FB8  7F 46 D3 78 */	mr r6, r26
/* 80291FBC  38 E0 00 00 */	li r7, 0
/* 80291FC0  4B FF FE 39 */	bl channelStart__8JASTrackFPQ28JASTrack11TChannelMgrUlUlUl
/* 80291FC4  28 03 00 00 */	cmplwi r3, 0
/* 80291FC8  40 82 00 08 */	bne lbl_80291FD0
/* 80291FCC  3B 80 00 00 */	li r28, 0
lbl_80291FD0:
/* 80291FD0  7C 17 E8 2E */	lwzx r0, r23, r29
/* 80291FD4  7C 7E 01 2E */	stwx r3, r30, r0
lbl_80291FD8:
/* 80291FD8  3B 7B 00 01 */	addi r27, r27, 1
/* 80291FDC  3B FF 00 04 */	addi r31, r31, 4
lbl_80291FE0:
/* 80291FE0  80 17 01 D0 */	lwz r0, 0x1d0(r23)
/* 80291FE4  7C 1B 00 40 */	cmplw r27, r0
/* 80291FE8  41 80 FF A8 */	blt lbl_80291F90
/* 80291FEC  7F 83 E3 78 */	mr r3, r28
lbl_80291FF0:
/* 80291FF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80291FF4  48 0D 02 1D */	bl _restgpr_23
/* 80291FF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80291FFC  7C 08 03 A6 */	mtlr r0
/* 80292000  38 21 00 30 */	addi r1, r1, 0x30
/* 80292004  4E 80 00 20 */	blr 
