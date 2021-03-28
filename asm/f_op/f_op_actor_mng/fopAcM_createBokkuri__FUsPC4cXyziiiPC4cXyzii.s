lbl_8001C870:
/* 8001C870  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001C874  7C 08 02 A6 */	mflr r0
/* 8001C878  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001C87C  39 61 00 40 */	addi r11, r1, 0x40
/* 8001C880  48 34 59 49 */	bl _savegpr_24
/* 8001C884  7C 7E 1B 78 */	mr r30, r3
/* 8001C888  7C 9F 23 78 */	mr r31, r4
/* 8001C88C  7C B8 2B 78 */	mr r24, r5
/* 8001C890  7C D9 33 78 */	mr r25, r6
/* 8001C894  7C FA 3B 78 */	mr r26, r7
/* 8001C898  7D 1B 43 78 */	mr r27, r8
/* 8001C89C  7D 3C 4B 78 */	mr r28, r9
/* 8001C8A0  7D 5D 53 78 */	mr r29, r10
/* 8001C8A4  38 61 00 10 */	addi r3, r1, 0x10
/* 8001C8A8  38 80 00 00 */	li r4, 0
/* 8001C8AC  38 A0 00 00 */	li r5, 0
/* 8001C8B0  38 C0 00 00 */	li r6, 0
/* 8001C8B4  48 24 AB 41 */	bl __ct__5csXyzFsss
/* 8001C8B8  28 1B 00 00 */	cmplwi r27, 0
/* 8001C8BC  41 82 00 3C */	beq lbl_8001C8F8
/* 8001C8C0  7F 63 DB 78 */	mr r3, r27
/* 8001C8C4  48 24 A8 65 */	bl atan2sX_Z__4cXyzCFv
/* 8001C8C8  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8001C8CC  C0 22 82 38 */	lfs f1, lit_5810(r2)
/* 8001C8D0  48 24 B0 BD */	bl cM_rndFX__Ff
/* 8001C8D4  C0 02 82 44 */	lfs f0, lit_5845(r2)
/* 8001C8D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8001C8DC  FC 00 00 1E */	fctiwz f0, f0
/* 8001C8E0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8001C8E4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8001C8E8  A8 01 00 12 */	lha r0, 0x12(r1)
/* 8001C8EC  7C 00 1A 14 */	add r0, r0, r3
/* 8001C8F0  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8001C8F4  3B A0 00 01 */	li r29, 1
lbl_8001C8F8:
/* 8001C8F8  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8001C8FC  53 20 44 2E */	rlwimi r0, r25, 8, 0x10, 0x17
/* 8001C900  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8001C904  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 8001C908  57 A0 6A E4 */	rlwinm r0, r29, 0xd, 0xb, 0x12
/* 8001C90C  60 00 00 0C */	ori r0, r0, 0xc
/* 8001C910  7C 60 03 78 */	or r0, r3, r0
/* 8001C914  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8001C918  38 00 00 00 */	li r0, 0
/* 8001C91C  90 01 00 08 */	stw r0, 8(r1)
/* 8001C920  38 60 02 FC */	li r3, 0x2fc
/* 8001C924  7F C4 F3 78 */	mr r4, r30
/* 8001C928  38 A0 00 00 */	li r5, 0
/* 8001C92C  7F E6 FB 78 */	mr r6, r31
/* 8001C930  7F 47 D3 78 */	mr r7, r26
/* 8001C934  39 01 00 10 */	addi r8, r1, 0x10
/* 8001C938  39 20 00 00 */	li r9, 0
/* 8001C93C  39 40 FF FF */	li r10, -1
/* 8001C940  4B FF D3 D9 */	bl fopAcM_create__FsUsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8001C944  39 61 00 40 */	addi r11, r1, 0x40
/* 8001C948  48 34 58 CD */	bl _restgpr_24
/* 8001C94C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001C950  7C 08 03 A6 */	mtlr r0
/* 8001C954  38 21 00 40 */	addi r1, r1, 0x40
/* 8001C958  4E 80 00 20 */	blr 
