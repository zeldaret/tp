lbl_8034E5E8:
/* 8034E5E8  7C 08 02 A6 */	mflr r0
/* 8034E5EC  90 01 00 04 */	stw r0, 4(r1)
/* 8034E5F0  54 80 07 3F */	clrlwi. r0, r4, 0x1c
/* 8034E5F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8034E5F8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8034E5FC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8034E600  40 82 00 54 */	bne lbl_8034E654
/* 8034E604  83 CD 84 A4 */	lwz r30, ResettingChan(r13)
/* 8034E608  3F E0 80 00 */	lis r31, 0x8000
/* 8034E60C  80 6D 92 CC */	lwz r3, EnabledBits(r13)
/* 8034E610  38 81 00 1C */	addi r4, r1, 0x1c
/* 8034E614  7F E0 F4 30 */	srw r0, r31, r30
/* 8034E618  7C 60 03 78 */	or r0, r3, r0
/* 8034E61C  90 0D 92 CC */	stw r0, EnabledBits(r13)
/* 8034E620  7F C3 F3 78 */	mr r3, r30
/* 8034E624  4B FF 74 19 */	bl SIGetResponse
/* 8034E628  80 0D 84 AC */	lwz r0, AnalogMode(r13)
/* 8034E62C  38 7E 00 00 */	addi r3, r30, 0
/* 8034E630  64 04 00 40 */	oris r4, r0, 0x40
/* 8034E634  4B FF 71 9D */	bl SISetCommand
/* 8034E638  80 6D 92 CC */	lwz r3, EnabledBits(r13)
/* 8034E63C  4B FF 72 25 */	bl SIEnablePolling
/* 8034E640  80 0D 84 A4 */	lwz r0, ResettingChan(r13)
/* 8034E644  80 6D 92 D8 */	lwz r3, WaitingBits(r13)
/* 8034E648  7F E0 04 30 */	srw r0, r31, r0
/* 8034E64C  7C 60 03 78 */	or r0, r3, r0
/* 8034E650  90 0D 92 D8 */	stw r0, WaitingBits(r13)
lbl_8034E654:
/* 8034E654  80 AD 92 D0 */	lwz r5, ResettingBits(r13)
/* 8034E658  7C A0 00 34 */	cntlzw r0, r5
/* 8034E65C  90 0D 84 A4 */	stw r0, ResettingChan(r13)
/* 8034E660  80 8D 84 A4 */	lwz r4, ResettingChan(r13)
/* 8034E664  2C 04 00 20 */	cmpwi r4, 0x20
/* 8034E668  41 82 00 40 */	beq lbl_8034E6A8
/* 8034E66C  3C 00 80 00 */	lis r0, 0x8000
/* 8034E670  7C 00 24 30 */	srw r0, r0, r4
/* 8034E674  7C A0 00 78 */	andc r0, r5, r0
/* 8034E678  1C 84 00 0C */	mulli r4, r4, 0xc
/* 8034E67C  90 0D 92 D0 */	stw r0, ResettingBits(r13)
/* 8034E680  3C 60 80 45 */	lis r3, Origin@ha /* 0x8044CB80@ha */
/* 8034E684  38 03 CB 80 */	addi r0, r3, Origin@l /* 0x8044CB80@l */
/* 8034E688  7C 60 22 14 */	add r3, r0, r4
/* 8034E68C  38 80 00 00 */	li r4, 0
/* 8034E690  38 A0 00 0C */	li r5, 0xc
/* 8034E694  4B CB 4D C5 */	bl memset
/* 8034E698  3C 80 80 35 */	lis r4, PADTypeAndStatusCallback@ha /* 0x8034E6C0@ha */
/* 8034E69C  80 6D 84 A4 */	lwz r3, ResettingChan(r13)
/* 8034E6A0  38 84 E6 C0 */	addi r4, r4, PADTypeAndStatusCallback@l /* 0x8034E6C0@l */
/* 8034E6A4  4B FF 7A B1 */	bl SIGetTypeAsync
lbl_8034E6A8:
/* 8034E6A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8034E6AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8034E6B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8034E6B4  38 21 00 30 */	addi r1, r1, 0x30
/* 8034E6B8  7C 08 03 A6 */	mtlr r0
/* 8034E6BC  4E 80 00 20 */	blr 
