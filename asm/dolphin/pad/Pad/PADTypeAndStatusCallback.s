lbl_8034E6C0:
/* 8034E6C0  7C 08 02 A6 */	mflr r0
/* 8034E6C4  3C C0 80 45 */	lis r6, Type@ha /* 0x8044CB70@ha */
/* 8034E6C8  90 01 00 04 */	stw r0, 4(r1)
/* 8034E6CC  54 80 07 3F */	clrlwi. r0, r4, 0x1c
/* 8034E6D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8034E6D4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8034E6D8  3F E0 80 00 */	lis r31, 0x8000
/* 8034E6DC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8034E6E0  3B C6 CB 70 */	addi r30, r6, Type@l /* 0x8044CB70@l */
/* 8034E6E4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8034E6E8  93 81 00 30 */	stw r28, 0x30(r1)
/* 8034E6EC  83 AD 84 A4 */	lwz r29, ResettingChan(r13)
/* 8034E6F0  80 AD 92 D4 */	lwz r5, RecalibrateBits(r13)
/* 8034E6F4  7F FC EC 30 */	srw r28, r31, r29
/* 8034E6F8  7C A3 E0 78 */	andc r3, r5, r28
/* 8034E6FC  90 6D 92 D4 */	stw r3, RecalibrateBits(r13)
/* 8034E700  7C A5 E0 38 */	and r5, r5, r28
/* 8034E704  38 60 00 01 */	li r3, 1
/* 8034E708  41 82 00 54 */	beq lbl_8034E75C
/* 8034E70C  80 8D 92 D0 */	lwz r4, ResettingBits(r13)
/* 8034E710  7C 80 00 34 */	cntlzw r0, r4
/* 8034E714  90 0D 84 A4 */	stw r0, ResettingChan(r13)
/* 8034E718  80 6D 84 A4 */	lwz r3, ResettingChan(r13)
/* 8034E71C  2C 03 00 20 */	cmpwi r3, 0x20
/* 8034E720  41 82 02 AC */	beq lbl_8034E9CC
/* 8034E724  1C 03 00 0C */	mulli r0, r3, 0xc
/* 8034E728  7F E3 1C 30 */	srw r3, r31, r3
/* 8034E72C  7C 84 18 78 */	andc r4, r4, r3
/* 8034E730  7C 7E 02 14 */	add r3, r30, r0
/* 8034E734  90 8D 92 D0 */	stw r4, ResettingBits(r13)
/* 8034E738  38 80 00 00 */	li r4, 0
/* 8034E73C  38 A0 00 0C */	li r5, 0xc
/* 8034E740  38 63 00 10 */	addi r3, r3, 0x10
/* 8034E744  4B CB 4D 15 */	bl memset
/* 8034E748  3C 80 80 35 */	lis r4, PADTypeAndStatusCallback@ha /* 0x8034E6C0@ha */
/* 8034E74C  80 6D 84 A4 */	lwz r3, ResettingChan(r13)
/* 8034E750  38 84 E6 C0 */	addi r4, r4, PADTypeAndStatusCallback@l /* 0x8034E6C0@l */
/* 8034E754  4B FF 7A 01 */	bl SIGetTypeAsync
/* 8034E758  48 00 02 74 */	b lbl_8034E9CC
lbl_8034E75C:
/* 8034E75C  54 86 00 2E */	rlwinm r6, r4, 0, 0, 0x17
/* 8034E760  54 84 00 C8 */	rlwinm r4, r4, 0, 3, 4
/* 8034E764  3C 04 F8 00 */	addis r0, r4, 0xf800
/* 8034E768  57 A4 10 3A */	slwi r4, r29, 2
/* 8034E76C  28 00 00 00 */	cmplwi r0, 0
/* 8034E770  7C DE 21 2E */	stwx r6, r30, r4
/* 8034E774  40 82 00 0C */	bne lbl_8034E780
/* 8034E778  54 C0 01 CF */	rlwinm. r0, r6, 0, 7, 7
/* 8034E77C  40 82 00 58 */	bne lbl_8034E7D4
lbl_8034E780:
/* 8034E780  80 AD 92 D0 */	lwz r5, ResettingBits(r13)
/* 8034E784  7C A0 00 34 */	cntlzw r0, r5
/* 8034E788  90 0D 84 A4 */	stw r0, ResettingChan(r13)
/* 8034E78C  80 8D 84 A4 */	lwz r4, ResettingChan(r13)
/* 8034E790  2C 04 00 20 */	cmpwi r4, 0x20
/* 8034E794  41 82 02 38 */	beq lbl_8034E9CC
/* 8034E798  3C 60 80 00 */	lis r3, 0x8000
/* 8034E79C  1C 04 00 0C */	mulli r0, r4, 0xc
/* 8034E7A0  7C 63 24 30 */	srw r3, r3, r4
/* 8034E7A4  7C A4 18 78 */	andc r4, r5, r3
/* 8034E7A8  7C 7E 02 14 */	add r3, r30, r0
/* 8034E7AC  90 8D 92 D0 */	stw r4, ResettingBits(r13)
/* 8034E7B0  38 80 00 00 */	li r4, 0
/* 8034E7B4  38 A0 00 0C */	li r5, 0xc
/* 8034E7B8  38 63 00 10 */	addi r3, r3, 0x10
/* 8034E7BC  4B CB 4C 9D */	bl memset
/* 8034E7C0  3C 80 80 35 */	lis r4, PADTypeAndStatusCallback@ha /* 0x8034E6C0@ha */
/* 8034E7C4  80 6D 84 A4 */	lwz r3, ResettingChan(r13)
/* 8034E7C8  38 84 E6 C0 */	addi r4, r4, PADTypeAndStatusCallback@l /* 0x8034E6C0@l */
/* 8034E7CC  4B FF 79 89 */	bl SIGetTypeAsync
/* 8034E7D0  48 00 01 FC */	b lbl_8034E9CC
lbl_8034E7D4:
/* 8034E7D4  80 0D 84 B0 */	lwz r0, Spec(r13)
/* 8034E7D8  28 00 00 02 */	cmplwi r0, 2
/* 8034E7DC  40 80 00 84 */	bge lbl_8034E860
/* 8034E7E0  80 0D 92 CC */	lwz r0, EnabledBits(r13)
/* 8034E7E4  38 7D 00 00 */	addi r3, r29, 0
/* 8034E7E8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8034E7EC  7C 00 E3 78 */	or r0, r0, r28
/* 8034E7F0  90 0D 92 CC */	stw r0, EnabledBits(r13)
/* 8034E7F4  4B FF 72 49 */	bl SIGetResponse
/* 8034E7F8  80 0D 84 AC */	lwz r0, AnalogMode(r13)
/* 8034E7FC  38 7D 00 00 */	addi r3, r29, 0
/* 8034E800  64 04 00 40 */	oris r4, r0, 0x40
/* 8034E804  4B FF 6F CD */	bl SISetCommand
/* 8034E808  80 6D 92 CC */	lwz r3, EnabledBits(r13)
/* 8034E80C  4B FF 70 55 */	bl SIEnablePolling
/* 8034E810  80 8D 92 D0 */	lwz r4, ResettingBits(r13)
/* 8034E814  7C 80 00 34 */	cntlzw r0, r4
/* 8034E818  90 0D 84 A4 */	stw r0, ResettingChan(r13)
/* 8034E81C  80 6D 84 A4 */	lwz r3, ResettingChan(r13)
/* 8034E820  2C 03 00 20 */	cmpwi r3, 0x20
/* 8034E824  41 82 01 A8 */	beq lbl_8034E9CC
/* 8034E828  1C 03 00 0C */	mulli r0, r3, 0xc
/* 8034E82C  7F E3 1C 30 */	srw r3, r31, r3
/* 8034E830  7C 84 18 78 */	andc r4, r4, r3
/* 8034E834  7C 7E 02 14 */	add r3, r30, r0
/* 8034E838  90 8D 92 D0 */	stw r4, ResettingBits(r13)
/* 8034E83C  38 80 00 00 */	li r4, 0
/* 8034E840  38 A0 00 0C */	li r5, 0xc
/* 8034E844  38 63 00 10 */	addi r3, r3, 0x10
/* 8034E848  4B CB 4C 11 */	bl memset
/* 8034E84C  3C 80 80 35 */	lis r4, PADTypeAndStatusCallback@ha /* 0x8034E6C0@ha */
/* 8034E850  80 6D 84 A4 */	lwz r3, ResettingChan(r13)
/* 8034E854  38 84 E6 C0 */	addi r4, r4, PADTypeAndStatusCallback@l /* 0x8034E6C0@l */
/* 8034E858  4B FF 78 FD */	bl SIGetTypeAsync
/* 8034E85C  48 00 01 70 */	b lbl_8034E9CC
lbl_8034E860:
/* 8034E860  54 C0 00 01 */	rlwinm. r0, r6, 0, 0, 0
/* 8034E864  41 82 00 0C */	beq lbl_8034E870
/* 8034E868  54 C0 01 4B */	rlwinm. r0, r6, 0, 5, 5
/* 8034E86C  41 82 00 74 */	beq lbl_8034E8E0
lbl_8034E870:
/* 8034E870  28 05 00 00 */	cmplwi r5, 0
/* 8034E874  41 82 00 38 */	beq lbl_8034E8AC
/* 8034E878  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 8034E87C  3C 60 80 35 */	lis r3, PADOriginCallback@ha /* 0x8034E458@ha */
/* 8034E880  7C DE 02 14 */	add r6, r30, r0
/* 8034E884  39 03 E4 58 */	addi r8, r3, PADOriginCallback@l /* 0x8034E458@l */
/* 8034E888  38 7D 00 00 */	addi r3, r29, 0
/* 8034E88C  38 8D 84 BC */	la r4, CmdCalibrate(r13) /* 80450A3C-_SDA_BASE_ */
/* 8034E890  38 A0 00 03 */	li r5, 3
/* 8034E894  38 E0 00 0A */	li r7, 0xa
/* 8034E898  39 40 00 00 */	li r10, 0
/* 8034E89C  39 20 00 00 */	li r9, 0
/* 8034E8A0  38 C6 00 10 */	addi r6, r6, 0x10
/* 8034E8A4  4B FF 72 E9 */	bl SITransfer
/* 8034E8A8  48 00 00 C0 */	b lbl_8034E968
lbl_8034E8AC:
/* 8034E8AC  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 8034E8B0  3C 60 80 35 */	lis r3, PADOriginCallback@ha /* 0x8034E458@ha */
/* 8034E8B4  7C DE 02 14 */	add r6, r30, r0
/* 8034E8B8  39 03 E4 58 */	addi r8, r3, PADOriginCallback@l /* 0x8034E458@l */
/* 8034E8BC  38 7D 00 00 */	addi r3, r29, 0
/* 8034E8C0  38 8D 84 B8 */	la r4, CmdReadOrigin(r13) /* 80450A38-_SDA_BASE_ */
/* 8034E8C4  38 A0 00 01 */	li r5, 1
/* 8034E8C8  38 E0 00 0A */	li r7, 0xa
/* 8034E8CC  39 40 00 00 */	li r10, 0
/* 8034E8D0  39 20 00 00 */	li r9, 0
/* 8034E8D4  38 C6 00 10 */	addi r6, r6, 0x10
/* 8034E8D8  4B FF 72 B5 */	bl SITransfer
/* 8034E8DC  48 00 00 8C */	b lbl_8034E968
lbl_8034E8E0:
/* 8034E8E0  54 C0 02 D7 */	rlwinm. r0, r6, 0, 0xb, 0xb
/* 8034E8E4  41 82 00 84 */	beq lbl_8034E968
/* 8034E8E8  54 C0 03 19 */	rlwinm. r0, r6, 0, 0xc, 0xc
/* 8034E8EC  40 82 00 7C */	bne lbl_8034E968
/* 8034E8F0  54 C0 03 5B */	rlwinm. r0, r6, 0, 0xd, 0xd
/* 8034E8F4  40 82 00 74 */	bne lbl_8034E968
/* 8034E8F8  54 C0 00 43 */	rlwinm. r0, r6, 0, 1, 1
/* 8034E8FC  41 82 00 38 */	beq lbl_8034E934
/* 8034E900  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 8034E904  3C 60 80 35 */	lis r3, PADOriginCallback@ha /* 0x8034E458@ha */
/* 8034E908  7C DE 02 14 */	add r6, r30, r0
/* 8034E90C  39 03 E4 58 */	addi r8, r3, PADOriginCallback@l /* 0x8034E458@l */
/* 8034E910  38 7D 00 00 */	addi r3, r29, 0
/* 8034E914  38 8D 84 B8 */	la r4, CmdReadOrigin(r13) /* 80450A38-_SDA_BASE_ */
/* 8034E918  38 A0 00 01 */	li r5, 1
/* 8034E91C  38 E0 00 0A */	li r7, 0xa
/* 8034E920  39 40 00 00 */	li r10, 0
/* 8034E924  39 20 00 00 */	li r9, 0
/* 8034E928  38 C6 00 10 */	addi r6, r6, 0x10
/* 8034E92C  4B FF 72 61 */	bl SITransfer
/* 8034E930  48 00 00 38 */	b lbl_8034E968
lbl_8034E934:
/* 8034E934  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 8034E938  3C 60 80 35 */	lis r3, PADProbeCallback@ha /* 0x8034E5E8@ha */
/* 8034E93C  7C 9E 22 14 */	add r4, r30, r4
/* 8034E940  7C DE 02 14 */	add r6, r30, r0
/* 8034E944  39 03 E5 E8 */	addi r8, r3, PADProbeCallback@l /* 0x8034E5E8@l */
/* 8034E948  38 7D 00 00 */	addi r3, r29, 0
/* 8034E94C  38 A0 00 03 */	li r5, 3
/* 8034E950  38 E0 00 08 */	li r7, 8
/* 8034E954  39 40 00 00 */	li r10, 0
/* 8034E958  39 20 00 00 */	li r9, 0
/* 8034E95C  38 84 00 40 */	addi r4, r4, 0x40
/* 8034E960  38 C6 00 10 */	addi r6, r6, 0x10
/* 8034E964  4B FF 72 29 */	bl SITransfer
lbl_8034E968:
/* 8034E968  2C 03 00 00 */	cmpwi r3, 0
/* 8034E96C  40 82 00 60 */	bne lbl_8034E9CC
/* 8034E970  80 AD 92 D0 */	lwz r5, ResettingBits(r13)
/* 8034E974  80 6D 92 E0 */	lwz r3, PendingBits(r13)
/* 8034E978  7C A0 00 34 */	cntlzw r0, r5
/* 8034E97C  90 0D 84 A4 */	stw r0, ResettingChan(r13)
/* 8034E980  7C 60 E3 78 */	or r0, r3, r28
/* 8034E984  80 8D 84 A4 */	lwz r4, ResettingChan(r13)
/* 8034E988  90 0D 92 E0 */	stw r0, PendingBits(r13)
/* 8034E98C  2C 04 00 20 */	cmpwi r4, 0x20
/* 8034E990  41 82 00 3C */	beq lbl_8034E9CC
/* 8034E994  3C 60 80 00 */	lis r3, 0x8000
/* 8034E998  1C 04 00 0C */	mulli r0, r4, 0xc
/* 8034E99C  7C 63 24 30 */	srw r3, r3, r4
/* 8034E9A0  7C A4 18 78 */	andc r4, r5, r3
/* 8034E9A4  7C 7E 02 14 */	add r3, r30, r0
/* 8034E9A8  90 8D 92 D0 */	stw r4, ResettingBits(r13)
/* 8034E9AC  38 80 00 00 */	li r4, 0
/* 8034E9B0  38 A0 00 0C */	li r5, 0xc
/* 8034E9B4  38 63 00 10 */	addi r3, r3, 0x10
/* 8034E9B8  4B CB 4A A1 */	bl memset
/* 8034E9BC  3C 80 80 35 */	lis r4, PADTypeAndStatusCallback@ha /* 0x8034E6C0@ha */
/* 8034E9C0  80 6D 84 A4 */	lwz r3, ResettingChan(r13)
/* 8034E9C4  38 84 E6 C0 */	addi r4, r4, PADTypeAndStatusCallback@l /* 0x8034E6C0@l */
/* 8034E9C8  4B FF 77 8D */	bl SIGetTypeAsync
lbl_8034E9CC:
/* 8034E9CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8034E9D0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8034E9D4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8034E9D8  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8034E9DC  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8034E9E0  38 21 00 40 */	addi r1, r1, 0x40
/* 8034E9E4  7C 08 03 A6 */	mtlr r0
/* 8034E9E8  4E 80 00 20 */	blr 
