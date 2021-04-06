lbl_8034E458:
/* 8034E458  7C 08 02 A6 */	mflr r0
/* 8034E45C  90 01 00 04 */	stw r0, 4(r1)
/* 8034E460  54 80 07 3F */	clrlwi. r0, r4, 0x1c
/* 8034E464  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8034E468  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8034E46C  40 82 00 48 */	bne lbl_8034E4B4
/* 8034E470  80 6D 84 A4 */	lwz r3, ResettingChan(r13)
/* 8034E474  4B FF FE 41 */	bl UpdateOrigin
/* 8034E478  83 ED 84 A4 */	lwz r31, ResettingChan(r13)
/* 8034E47C  3C 00 80 00 */	lis r0, 0x8000
/* 8034E480  80 6D 92 CC */	lwz r3, EnabledBits(r13)
/* 8034E484  38 81 00 1C */	addi r4, r1, 0x1c
/* 8034E488  7C 00 FC 30 */	srw r0, r0, r31
/* 8034E48C  7C 60 03 78 */	or r0, r3, r0
/* 8034E490  90 0D 92 CC */	stw r0, EnabledBits(r13)
/* 8034E494  7F E3 FB 78 */	mr r3, r31
/* 8034E498  4B FF 75 A5 */	bl SIGetResponse
/* 8034E49C  80 0D 84 AC */	lwz r0, AnalogMode(r13)
/* 8034E4A0  38 7F 00 00 */	addi r3, r31, 0
/* 8034E4A4  64 04 00 40 */	oris r4, r0, 0x40
/* 8034E4A8  4B FF 73 29 */	bl SISetCommand
/* 8034E4AC  80 6D 92 CC */	lwz r3, EnabledBits(r13)
/* 8034E4B0  4B FF 73 B1 */	bl SIEnablePolling
lbl_8034E4B4:
/* 8034E4B4  80 AD 92 D0 */	lwz r5, ResettingBits(r13)
/* 8034E4B8  7C A0 00 34 */	cntlzw r0, r5
/* 8034E4BC  90 0D 84 A4 */	stw r0, ResettingChan(r13)
/* 8034E4C0  80 8D 84 A4 */	lwz r4, ResettingChan(r13)
/* 8034E4C4  2C 04 00 20 */	cmpwi r4, 0x20
/* 8034E4C8  41 82 00 40 */	beq lbl_8034E508
/* 8034E4CC  3C 00 80 00 */	lis r0, 0x8000
/* 8034E4D0  7C 00 24 30 */	srw r0, r0, r4
/* 8034E4D4  7C A0 00 78 */	andc r0, r5, r0
/* 8034E4D8  1C 84 00 0C */	mulli r4, r4, 0xc
/* 8034E4DC  90 0D 92 D0 */	stw r0, ResettingBits(r13)
/* 8034E4E0  3C 60 80 45 */	lis r3, Origin@ha /* 0x8044CB80@ha */
/* 8034E4E4  38 03 CB 80 */	addi r0, r3, Origin@l /* 0x8044CB80@l */
/* 8034E4E8  7C 60 22 14 */	add r3, r0, r4
/* 8034E4EC  38 80 00 00 */	li r4, 0
/* 8034E4F0  38 A0 00 0C */	li r5, 0xc
/* 8034E4F4  4B CB 4F 65 */	bl memset
/* 8034E4F8  3C 80 80 35 */	lis r4, PADTypeAndStatusCallback@ha /* 0x8034E6C0@ha */
/* 8034E4FC  80 6D 84 A4 */	lwz r3, ResettingChan(r13)
/* 8034E500  38 84 E6 C0 */	addi r4, r4, PADTypeAndStatusCallback@l /* 0x8034E6C0@l */
/* 8034E504  4B FF 7C 51 */	bl SIGetTypeAsync
lbl_8034E508:
/* 8034E508  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8034E50C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8034E510  38 21 00 30 */	addi r1, r1, 0x30
/* 8034E514  7C 08 03 A6 */	mtlr r0
/* 8034E518  4E 80 00 20 */	blr 
