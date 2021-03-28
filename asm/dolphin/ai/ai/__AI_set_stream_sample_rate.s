lbl_8034FF48:
/* 8034FF48  7C 08 02 A6 */	mflr r0
/* 8034FF4C  90 01 00 04 */	stw r0, 4(r1)
/* 8034FF50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8034FF54  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8034FF58  7C 79 1B 78 */	mr r25, r3
/* 8034FF5C  48 00 00 C1 */	bl AIGetStreamSampleRate
/* 8034FF60  7C 19 18 40 */	cmplw r25, r3
/* 8034FF64  41 82 00 A4 */	beq lbl_80350008
/* 8034FF68  3F E0 CC 00 */	lis r31, 0xCC00 /* 0xCC006C00@ha */
/* 8034FF6C  80 1F 6C 00 */	lwz r0, 0x6C00(r31)
/* 8034FF70  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8034FF74  7C 1D 03 78 */	mr r29, r0
/* 8034FF78  48 00 00 D1 */	bl AIGetStreamVolLeft
/* 8034FF7C  7C 7C 1B 78 */	mr r28, r3
/* 8034FF80  48 00 00 F5 */	bl AIGetStreamVolRight
/* 8034FF84  3B 63 00 00 */	addi r27, r3, 0
/* 8034FF88  38 60 00 00 */	li r3, 0
/* 8034FF8C  48 00 00 CD */	bl AISetStreamVolRight
/* 8034FF90  38 60 00 00 */	li r3, 0
/* 8034FF94  48 00 00 99 */	bl AISetStreamVolLeft
/* 8034FF98  80 7F 6C 00 */	lwz r3, 0x6c00(r31)
/* 8034FF9C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8034FFA0  54 7A 06 72 */	rlwinm r26, r3, 0, 0x19, 0x19
/* 8034FFA4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8034FFA8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8034FFAC  4B FE D7 49 */	bl OSDisableInterrupts
/* 8034FFB0  7C 7E 1B 78 */	mr r30, r3
/* 8034FFB4  48 00 03 BD */	bl __AI_SRC_INIT
/* 8034FFB8  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8034FFBC  57 20 08 3C */	slwi r0, r25, 1
/* 8034FFC0  38 7E 00 00 */	addi r3, r30, 0
/* 8034FFC4  7C 84 D3 78 */	or r4, r4, r26
/* 8034FFC8  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8034FFCC  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8034FFD0  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 8034FFD4  60 84 00 20 */	ori r4, r4, 0x20
/* 8034FFD8  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8034FFDC  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8034FFE0  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8034FFE4  7C 80 03 78 */	or r0, r4, r0
/* 8034FFE8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8034FFEC  4B FE D7 31 */	bl OSRestoreInterrupts
/* 8034FFF0  7F A3 EB 78 */	mr r3, r29
/* 8034FFF4  4B FF FD 79 */	bl AISetStreamPlayState
/* 8034FFF8  7F 83 E3 78 */	mr r3, r28
/* 8034FFFC  48 00 00 31 */	bl AISetStreamVolLeft
/* 80350000  7F 63 DB 78 */	mr r3, r27
/* 80350004  48 00 00 55 */	bl AISetStreamVolRight
lbl_80350008:
/* 80350008  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8035000C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80350010  38 21 00 30 */	addi r1, r1, 0x30
/* 80350014  7C 08 03 A6 */	mtlr r0
/* 80350018  4E 80 00 20 */	blr 
