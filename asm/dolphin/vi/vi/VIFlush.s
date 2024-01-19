lbl_8034D694:
/* 8034D694  7C 08 02 A6 */	mflr r0
/* 8034D698  3C 60 80 45 */	lis r3, regs@ha /* 0x8044CA28@ha */
/* 8034D69C  90 01 00 04 */	stw r0, 4(r1)
/* 8034D6A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034D6A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034D6A8  3B E3 CA 28 */	addi r31, r3, regs@l /* 0x8044CA28@l */
/* 8034D6AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034D6B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034D6B4  93 81 00 10 */	stw r28, 0x10(r1)
/* 8034D6B8  4B FF 00 3D */	bl OSDisableInterrupts
/* 8034D6BC  80 AD 92 98 */	lwz r5, shdwChangeMode(r13)
/* 8034D6C0  3B C3 00 00 */	addi r30, r3, 0
/* 8034D6C4  38 00 00 00 */	li r0, 0
/* 8034D6C8  80 8D 92 88 */	lwz r4, changeMode(r13)
/* 8034D6CC  7C A3 23 78 */	or r3, r5, r4
/* 8034D6D0  90 6D 92 98 */	stw r3, shdwChangeMode(r13)
/* 8034D6D4  90 0D 92 88 */	stw r0, changeMode(r13)
/* 8034D6D8  80 8D 92 A0 */	lwz r4, shdwChanged(r13)
/* 8034D6DC  80 AD 92 A4 */	lwz r5, shdwChanged+0x4(r13)
/* 8034D6E0  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034D6E4  80 6D 92 94 */	lwz r3, changed+0x4(r13)
/* 8034D6E8  7C 80 03 78 */	or r0, r4, r0
/* 8034D6EC  7C A3 1B 78 */	or r3, r5, r3
/* 8034D6F0  90 6D 92 A4 */	stw r3, shdwChanged+0x4(r13)
/* 8034D6F4  90 0D 92 A0 */	stw r0, shdwChanged(r13)
/* 8034D6F8  48 00 00 78 */	b lbl_8034D770
lbl_8034D6FC:
/* 8034D6FC  80 6D 92 90 */	lwz r3, changed(r13)
/* 8034D700  38 A0 00 20 */	li r5, 0x20
/* 8034D704  83 8D 92 94 */	lwz r28, changed+0x4(r13)
/* 8034D708  38 9C 00 00 */	addi r4, r28, 0
/* 8034D70C  48 01 4F 65 */	bl __shr2u
/* 8034D710  7C 84 00 34 */	cntlzw r4, r4
/* 8034D714  2C 04 00 20 */	cmpwi r4, 0x20
/* 8034D718  38 00 FF FF */	li r0, -1
/* 8034D71C  7F 80 00 38 */	and r0, r28, r0
/* 8034D720  40 80 00 08 */	bge lbl_8034D728
/* 8034D724  48 00 00 0C */	b lbl_8034D730
lbl_8034D728:
/* 8034D728  7C 03 00 34 */	cntlzw r3, r0
/* 8034D72C  38 83 00 20 */	addi r4, r3, 0x20
lbl_8034D730:
/* 8034D730  54 83 08 3C */	slwi r3, r4, 1
/* 8034D734  7C 1F 1A 2E */	lhzx r0, r31, r3
/* 8034D738  7C 7F 1A 14 */	add r3, r31, r3
/* 8034D73C  20 A4 00 3F */	subfic r5, r4, 0x3f
/* 8034D740  B0 03 00 78 */	sth r0, 0x78(r3)
/* 8034D744  38 60 00 00 */	li r3, 0
/* 8034D748  38 80 00 01 */	li r4, 1
/* 8034D74C  48 01 4F 01 */	bl __shl2i
/* 8034D750  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034D754  7C 65 18 F8 */	nor r5, r3, r3
/* 8034D758  7C 84 20 F8 */	nor r4, r4, r4
/* 8034D75C  80 6D 92 94 */	lwz r3, changed+0x4(r13)
/* 8034D760  7C 00 28 38 */	and r0, r0, r5
/* 8034D764  7C 63 20 38 */	and r3, r3, r4
/* 8034D768  90 6D 92 94 */	stw r3, changed+0x4(r13)
/* 8034D76C  90 0D 92 90 */	stw r0, changed(r13)
lbl_8034D770:
/* 8034D770  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034D774  38 60 00 00 */	li r3, 0
/* 8034D778  80 8D 92 94 */	lwz r4, changed+0x4(r13)
/* 8034D77C  7C 00 1A 78 */	xor r0, r0, r3
/* 8034D780  7C 83 1A 78 */	xor r3, r4, r3
/* 8034D784  7C 60 03 79 */	or. r0, r3, r0
/* 8034D788  40 82 FF 74 */	bne lbl_8034D6FC
/* 8034D78C  38 00 00 01 */	li r0, 1
/* 8034D790  90 0D 92 68 */	stw r0, flushFlag(r13)
/* 8034D794  7F C3 F3 78 */	mr r3, r30
/* 8034D798  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 8034D79C  90 0D 92 B0 */	stw r0, NextBufAddr(r13)
/* 8034D7A0  4B FE FF 7D */	bl OSRestoreInterrupts
/* 8034D7A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034D7A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034D7AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034D7B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034D7B4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8034D7B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8034D7BC  7C 08 03 A6 */	mtlr r0
/* 8034D7C0  4E 80 00 20 */	blr 
