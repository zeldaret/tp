lbl_8047E5A0:
/* 8047E5A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047E5A4  7C 08 02 A6 */	mflr r0
/* 8047E5A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047E5AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8047E5B0  4B EE 3C 19 */	bl _savegpr_24
/* 8047E5B4  7C 78 1B 78 */	mr r24, r3
/* 8047E5B8  7C 99 23 78 */	mr r25, r4
/* 8047E5BC  7C BA 2B 78 */	mr r26, r5
/* 8047E5C0  7C DB 33 78 */	mr r27, r6
/* 8047E5C4  7C FC 3B 78 */	mr r28, r7
/* 8047E5C8  3B C0 00 00 */	li r30, 0
/* 8047E5CC  3B A0 00 00 */	li r29, 0
/* 8047E5D0  3B E0 00 00 */	li r31, 0
/* 8047E5D4  48 00 00 30 */	b lbl_8047E604
lbl_8047E5D8:
/* 8047E5D8  7F 03 C3 78 */	mr r3, r24
/* 8047E5DC  7F 24 CB 78 */	mr r4, r25
/* 8047E5E0  7C BA FA 14 */	add r5, r26, r31
/* 8047E5E4  7F 86 E3 78 */	mr r6, r28
/* 8047E5E8  4B FF FD 69 */	bl chk_wall_touch__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cs
/* 8047E5EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047E5F0  41 82 00 0C */	beq lbl_8047E5FC
/* 8047E5F4  3B C0 00 01 */	li r30, 1
/* 8047E5F8  48 00 00 14 */	b lbl_8047E60C
lbl_8047E5FC:
/* 8047E5FC  3B BD 00 01 */	addi r29, r29, 1
/* 8047E600  3B FF 00 10 */	addi r31, r31, 0x10
lbl_8047E604:
/* 8047E604  7C 1D D8 00 */	cmpw r29, r27
/* 8047E608  41 80 FF D0 */	blt lbl_8047E5D8
lbl_8047E60C:
/* 8047E60C  7F C3 F3 78 */	mr r3, r30
/* 8047E610  39 61 00 30 */	addi r11, r1, 0x30
/* 8047E614  4B EE 3C 01 */	bl _restgpr_24
/* 8047E618  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047E61C  7C 08 03 A6 */	mtlr r0
/* 8047E620  38 21 00 30 */	addi r1, r1, 0x30
/* 8047E624  4E 80 00 20 */	blr 
