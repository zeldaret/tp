lbl_80370DD4:
/* 80370DD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80370DD8  7C 08 02 A6 */	mflr r0
/* 80370DDC  3C C0 80 3D */	lis r6, gTRKExceptionStatus@ha
/* 80370DE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80370DE4  38 00 00 00 */	li r0, 0
/* 80370DE8  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 80370DEC  3B E6 32 44 */	addi r31, r6, gTRKExceptionStatus@l
/* 80370DF0  7C 9B 23 78 */	mr r27, r4
/* 80370DF4  7C BC 2B 78 */	mr r28, r5
/* 80370DF8  7C 7A 1B 78 */	mr r26, r3
/* 80370DFC  7C FD 3B 78 */	mr r29, r7
/* 80370E00  7F 63 DB 78 */	mr r3, r27
/* 80370E04  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80370E08  81 1F 00 00 */	lwz r8, 0(r31)
/* 80370E0C  80 DF 00 04 */	lwz r6, 4(r31)
/* 80370E10  80 BF 00 08 */	lwz r5, 8(r31)
/* 80370E14  91 01 00 08 */	stw r8, 8(r1)
/* 80370E18  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80370E1C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80370E20  90 81 00 14 */	stw r4, 0x14(r1)
/* 80370E24  98 1F 00 0D */	stb r0, 0xd(r31)
/* 80370E28  48 00 0C FD */	bl TRKTargetTranslate
/* 80370E2C  7F A0 00 34 */	cntlzw r0, r29
/* 80370E30  80 9C 00 00 */	lwz r4, 0(r28)
/* 80370E34  7C 79 1B 78 */	mr r25, r3
/* 80370E38  54 05 D9 7E */	srwi r5, r0, 5
/* 80370E3C  48 00 00 E5 */	bl TRKValidMemory32
/* 80370E40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80370E44  41 82 00 10 */	beq lbl_80370E54
/* 80370E48  38 00 00 00 */	li r0, 0
/* 80370E4C  90 1C 00 00 */	stw r0, 0(r28)
/* 80370E50  48 00 00 78 */	b lbl_80370EC8
lbl_80370E54:
/* 80370E54  4B FF E7 E5 */	bl __TRK_get_MSR
/* 80370E58  3C 80 80 45 */	lis r4, gTRKCPUState@ha
/* 80370E5C  2C 1D 00 00 */	cmpwi r29, 0
/* 80370E60  38 84 F3 38 */	addi r4, r4, gTRKCPUState@l
/* 80370E64  7C 68 1B 78 */	mr r8, r3
/* 80370E68  80 04 01 F8 */	lwz r0, 0x1f8(r4)
/* 80370E6C  54 00 06 F6 */	rlwinm r0, r0, 0, 0x1b, 0x1b
/* 80370E70  7D 07 03 78 */	or r7, r8, r0
/* 80370E74  41 82 00 1C */	beq lbl_80370E90
/* 80370E78  80 BC 00 00 */	lwz r5, 0(r28)
/* 80370E7C  7F 43 D3 78 */	mr r3, r26
/* 80370E80  7F 24 CB 78 */	mr r4, r25
/* 80370E84  7D 06 43 78 */	mr r6, r8
/* 80370E88  4B FF E7 C1 */	bl TRK_ppc_memcpy
/* 80370E8C  48 00 00 3C */	b lbl_80370EC8
lbl_80370E90:
/* 80370E90  80 BC 00 00 */	lwz r5, 0(r28)
/* 80370E94  7F 23 CB 78 */	mr r3, r25
/* 80370E98  7F 44 D3 78 */	mr r4, r26
/* 80370E9C  7C E6 3B 78 */	mr r6, r7
/* 80370EA0  7D 07 43 78 */	mr r7, r8
/* 80370EA4  4B FF E7 A5 */	bl TRK_ppc_memcpy
/* 80370EA8  80 9C 00 00 */	lwz r4, 0(r28)
/* 80370EAC  7F 23 CB 78 */	mr r3, r25
/* 80370EB0  4B FF E6 99 */	bl TRK_flush_cache
/* 80370EB4  7C 1B C8 40 */	cmplw r27, r25
/* 80370EB8  41 82 00 10 */	beq lbl_80370EC8
/* 80370EBC  80 9C 00 00 */	lwz r4, 0(r28)
/* 80370EC0  7F 63 DB 78 */	mr r3, r27
/* 80370EC4  4B FF E6 85 */	bl TRK_flush_cache
lbl_80370EC8:
/* 80370EC8  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 80370ECC  28 00 00 00 */	cmplwi r0, 0
/* 80370ED0  41 82 00 10 */	beq lbl_80370EE0
/* 80370ED4  38 00 00 00 */	li r0, 0
/* 80370ED8  3B C0 07 02 */	li r30, 0x702
/* 80370EDC  90 1C 00 00 */	stw r0, 0(r28)
lbl_80370EE0:
/* 80370EE0  3C 60 80 3D */	lis r3, gTRKExceptionStatus@ha
/* 80370EE4  80 C1 00 08 */	lwz r6, 8(r1)
/* 80370EE8  38 E3 32 44 */	addi r7, r3, gTRKExceptionStatus@l
/* 80370EEC  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80370EF0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80370EF4  7F C3 F3 78 */	mr r3, r30
/* 80370EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370EFC  90 C7 00 00 */	stw r6, 0(r7)
/* 80370F00  90 A7 00 04 */	stw r5, 4(r7)
/* 80370F04  90 87 00 08 */	stw r4, 8(r7)
/* 80370F08  90 07 00 0C */	stw r0, 0xc(r7)
/* 80370F0C  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 80370F10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80370F14  7C 08 03 A6 */	mtlr r0
/* 80370F18  38 21 00 40 */	addi r1, r1, 0x40
/* 80370F1C  4E 80 00 20 */	blr 
