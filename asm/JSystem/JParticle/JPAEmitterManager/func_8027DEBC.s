lbl_8027DEBC:
/* 8027DEBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027DEC0  7C 08 02 A6 */	mflr r0
/* 8027DEC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027DEC8  39 61 00 30 */	addi r11, r1, 0x30
/* 8027DECC  48 0E 42 FD */	bl _savegpr_24
/* 8027DED0  7C 78 1B 78 */	mr r24, r3
/* 8027DED4  7C 99 23 78 */	mr r25, r4
/* 8027DED8  7C DA 33 78 */	mr r26, r6
/* 8027DEDC  7C FB 3B 78 */	mr r27, r7
/* 8027DEE0  7D 1C 43 78 */	mr r28, r8
/* 8027DEE4  7D 3D 4B 78 */	mr r29, r9
/* 8027DEE8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8027DEEC  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 8027DEF0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8027DEF4  7C A4 2B 78 */	mr r4, r5
/* 8027DEF8  4B FF 5F 71 */	bl getResource__18JPAResourceManagerCFUs
/* 8027DEFC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8027DF00  41 82 00 84 */	beq lbl_8027DF84
/* 8027DF04  80 18 00 0C */	lwz r0, 0xc(r24)
/* 8027DF08  28 00 00 00 */	cmplwi r0, 0
/* 8027DF0C  41 82 00 78 */	beq lbl_8027DF84
/* 8027DF10  83 F8 00 04 */	lwz r31, 4(r24)
/* 8027DF14  38 78 00 04 */	addi r3, r24, 4
/* 8027DF18  7F E4 FB 78 */	mr r4, r31
/* 8027DF1C  48 05 E2 41 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8027DF20  80 78 00 00 */	lwz r3, 0(r24)
/* 8027DF24  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 8027DF28  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8027DF2C  7C 63 02 14 */	add r3, r3, r0
/* 8027DF30  7F E4 FB 78 */	mr r4, r31
/* 8027DF34  48 05 E0 19 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 8027DF38  83 FF 00 00 */	lwz r31, 0(r31)
/* 8027DF3C  7F E3 FB 78 */	mr r3, r31
/* 8027DF40  7F 04 C3 78 */	mr r4, r24
/* 8027DF44  7F C5 F3 78 */	mr r5, r30
/* 8027DF48  48 00 07 A5 */	bl init__14JPABaseEmitterFP17JPAEmitterManagerP11JPAResource
/* 8027DF4C  38 18 00 10 */	addi r0, r24, 0x10
/* 8027DF50  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 8027DF54  93 9F 00 EC */	stw r28, 0xec(r31)
/* 8027DF58  93 BF 00 F0 */	stw r29, 0xf0(r31)
/* 8027DF5C  9B 5F 01 12 */	stb r26, 0x112(r31)
/* 8027DF60  9B 7F 01 13 */	stb r27, 0x113(r31)
/* 8027DF64  C0 19 00 00 */	lfs f0, 0(r25)
/* 8027DF68  D0 1F 00 A4 */	stfs f0, 0xa4(r31)
/* 8027DF6C  C0 19 00 04 */	lfs f0, 4(r25)
/* 8027DF70  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
/* 8027DF74  C0 19 00 08 */	lfs f0, 8(r25)
/* 8027DF78  D0 1F 00 AC */	stfs f0, 0xac(r31)
/* 8027DF7C  7F E3 FB 78 */	mr r3, r31
/* 8027DF80  48 00 00 08 */	b lbl_8027DF88
lbl_8027DF84:
/* 8027DF84  38 60 00 00 */	li r3, 0
lbl_8027DF88:
/* 8027DF88  39 61 00 30 */	addi r11, r1, 0x30
/* 8027DF8C  48 0E 42 89 */	bl _restgpr_24
/* 8027DF90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027DF94  7C 08 03 A6 */	mtlr r0
/* 8027DF98  38 21 00 30 */	addi r1, r1, 0x30
/* 8027DF9C  4E 80 00 20 */	blr 
