lbl_8022C908:
/* 8022C908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022C90C  7C 08 02 A6 */	mflr r0
/* 8022C910  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022C914  80 C3 00 04 */	lwz r6, 4(r3)
/* 8022C918  88 A6 05 DC */	lbz r5, 0x5dc(r6)
/* 8022C91C  38 05 00 01 */	addi r0, r5, 1
/* 8022C920  98 06 05 DC */	stb r0, 0x5dc(r6)
/* 8022C924  88 03 00 AC */	lbz r0, 0xac(r3)
/* 8022C928  28 00 00 00 */	cmplwi r0, 0
/* 8022C92C  40 82 00 E8 */	bne lbl_8022CA14
/* 8022C930  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8022C934  38 E5 FF FF */	addi r7, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8022C938  38 04 FF F6 */	addi r0, r4, -10
/* 8022C93C  28 00 00 30 */	cmplwi r0, 0x30
/* 8022C940  41 81 00 C8 */	bgt lbl_8022CA08
/* 8022C944  3C 60 80 3C */	lis r3, lit_6110@ha
/* 8022C948  38 63 03 30 */	addi r3, r3, lit_6110@l
/* 8022C94C  54 00 10 3A */	slwi r0, r0, 2
/* 8022C950  7C 03 00 2E */	lwzx r0, r3, r0
/* 8022C954  7C 09 03 A6 */	mtctr r0
/* 8022C958  4E 80 04 20 */	bctr 
/* 8022C95C  38 E5 FF E0 */	addi r7, r5, -32
/* 8022C960  48 00 00 A8 */	b lbl_8022CA08
/* 8022C964  38 E5 FF E1 */	addi r7, r5, -31
/* 8022C968  48 00 00 A0 */	b lbl_8022CA08
/* 8022C96C  38 E5 FF E2 */	addi r7, r5, -30
/* 8022C970  48 00 00 98 */	b lbl_8022CA08
/* 8022C974  38 E5 FF E3 */	addi r7, r5, -29
/* 8022C978  48 00 00 90 */	b lbl_8022CA08
/* 8022C97C  38 E5 FF E4 */	addi r7, r5, -28
/* 8022C980  48 00 00 88 */	b lbl_8022CA08
/* 8022C984  38 E5 FF E5 */	addi r7, r5, -27
/* 8022C988  48 00 00 80 */	b lbl_8022CA08
/* 8022C98C  38 E5 FF E6 */	addi r7, r5, -26
/* 8022C990  48 00 00 78 */	b lbl_8022CA08
/* 8022C994  38 E5 FF E7 */	addi r7, r5, -25
/* 8022C998  48 00 00 70 */	b lbl_8022CA08
/* 8022C99C  38 E5 FF E8 */	addi r7, r5, -24
/* 8022C9A0  48 00 00 68 */	b lbl_8022CA08
/* 8022C9A4  38 E5 FF E9 */	addi r7, r5, -23
/* 8022C9A8  48 00 00 60 */	b lbl_8022CA08
/* 8022C9AC  38 E5 FF EA */	addi r7, r5, -22
/* 8022C9B0  48 00 00 58 */	b lbl_8022CA08
/* 8022C9B4  38 E5 FF EB */	addi r7, r5, -21
/* 8022C9B8  48 00 00 50 */	b lbl_8022CA08
/* 8022C9BC  38 E5 FF EC */	addi r7, r5, -20
/* 8022C9C0  48 00 00 48 */	b lbl_8022CA08
/* 8022C9C4  38 E5 FF ED */	addi r7, r5, -19
/* 8022C9C8  48 00 00 40 */	b lbl_8022CA08
/* 8022C9CC  38 E5 FF EE */	addi r7, r5, -18
/* 8022C9D0  48 00 00 38 */	b lbl_8022CA08
/* 8022C9D4  38 E5 FF F0 */	addi r7, r5, -16
/* 8022C9D8  48 00 00 30 */	b lbl_8022CA08
/* 8022C9DC  38 E5 FF F1 */	addi r7, r5, -15
/* 8022C9E0  48 00 00 28 */	b lbl_8022CA08
/* 8022C9E4  38 E5 FF F2 */	addi r7, r5, -14
/* 8022C9E8  48 00 00 20 */	b lbl_8022CA08
/* 8022C9EC  38 E5 FF F3 */	addi r7, r5, -13
/* 8022C9F0  48 00 00 18 */	b lbl_8022CA08
/* 8022C9F4  38 E5 FF F4 */	addi r7, r5, -12
/* 8022C9F8  48 00 00 10 */	b lbl_8022CA08
/* 8022C9FC  38 E5 FF F5 */	addi r7, r5, -11
/* 8022CA00  48 00 00 08 */	b lbl_8022CA08
/* 8022CA04  38 E5 FF F6 */	addi r7, r5, -10
lbl_8022CA08:
/* 8022CA08  7C C3 33 78 */	mr r3, r6
/* 8022CA0C  7C E4 3B 78 */	mr r4, r7
/* 8022CA10  4B FF CD 79 */	bl addCharactor__19jmessage_tReferenceFUs
lbl_8022CA14:
/* 8022CA14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022CA18  7C 08 03 A6 */	mtlr r0
/* 8022CA1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8022CA20  4E 80 00 20 */	blr 
