lbl_8034C514:
/* 8034C514  7C 08 02 A6 */	mflr r0
/* 8034C518  3C 80 80 3D */	lis r4, lit_1@ha /* 0x803D1760@ha */
/* 8034C51C  90 01 00 04 */	stw r0, 4(r1)
/* 8034C520  3C 60 80 45 */	lis r3, regs@ha /* 0x8044CA28@ha */
/* 8034C524  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034C528  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034C52C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034C530  3B C3 CA 28 */	addi r30, r3, regs@l /* 0x8044CA28@l */
/* 8034C534  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8034C538  3B A4 17 60 */	addi r29, r4, lit_1@l /* 0x803D1760@l */
/* 8034C53C  93 81 00 08 */	stw r28, 8(r1)
/* 8034C540  80 0D 92 60 */	lwz r0, IsInitialized(r13)
/* 8034C544  2C 00 00 00 */	cmpwi r0, 0
/* 8034C548  40 82 04 5C */	bne lbl_8034C9A4
/* 8034C54C  80 6D 84 90 */	lwz r3, __VIVersion(r13)
/* 8034C550  4B FE E3 25 */	bl OSRegisterVersion
/* 8034C554  38 00 00 01 */	li r0, 1
/* 8034C558  90 0D 92 60 */	stw r0, IsInitialized(r13)
/* 8034C55C  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC002000@ha */
/* 8034C560  3B 83 20 00 */	addi r28, r3, 0x2000 /* 0xCC002000@l */
/* 8034C564  90 0D 92 80 */	stw r0, encoderType(r13)
/* 8034C568  A4 1C 00 02 */	lhzu r0, 2(r28)
/* 8034C56C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8034C570  40 82 00 0C */	bne lbl_8034C57C
/* 8034C574  38 60 00 00 */	li r3, 0
/* 8034C578  4B FF FD 99 */	bl __VIInit
lbl_8034C57C:
/* 8034C57C  3B E0 00 00 */	li r31, 0
/* 8034C580  93 ED 92 64 */	stw r31, retraceCount(r13)
/* 8034C584  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC002000@ha */
/* 8034C588  38 63 20 00 */	addi r3, r3, 0x2000 /* 0xCC002000@l */
/* 8034C58C  93 ED 92 94 */	stw r31, changed+0x4(r13)
/* 8034C590  38 00 02 80 */	li r0, 0x280
/* 8034C594  93 ED 92 90 */	stw r31, changed(r13)
/* 8034C598  93 ED 92 A4 */	stw r31, shdwChanged+0x4(r13)
/* 8034C59C  93 ED 92 A0 */	stw r31, shdwChanged(r13)
/* 8034C5A0  93 ED 92 88 */	stw r31, changeMode(r13)
/* 8034C5A4  93 ED 92 98 */	stw r31, shdwChangeMode(r13)
/* 8034C5A8  93 ED 92 68 */	stw r31, flushFlag(r13)
/* 8034C5AC  A0 BD 01 C2 */	lhz r5, 0x1c2(r29)
/* 8034C5B0  A0 DD 01 C0 */	lhz r6, 0x1c0(r29)
/* 8034C5B4  54 A5 54 2A */	rlwinm r5, r5, 0xa, 0x10, 0x15
/* 8034C5B8  7C C5 2B 78 */	or r5, r6, r5
/* 8034C5BC  B0 A3 00 4E */	sth r5, 0x4e(r3)
/* 8034C5C0  A0 DD 01 C2 */	lhz r6, 0x1c2(r29)
/* 8034C5C4  A0 BD 01 C4 */	lhz r5, 0x1c4(r29)
/* 8034C5C8  7C C6 36 70 */	srawi r6, r6, 6
/* 8034C5CC  54 A5 20 36 */	slwi r5, r5, 4
/* 8034C5D0  7C C5 2B 78 */	or r5, r6, r5
/* 8034C5D4  B0 A3 00 4C */	sth r5, 0x4c(r3)
/* 8034C5D8  A0 BD 01 C8 */	lhz r5, 0x1c8(r29)
/* 8034C5DC  A0 DD 01 C6 */	lhz r6, 0x1c6(r29)
/* 8034C5E0  54 A5 54 2A */	rlwinm r5, r5, 0xa, 0x10, 0x15
/* 8034C5E4  7C C5 2B 78 */	or r5, r6, r5
/* 8034C5E8  B0 A3 00 52 */	sth r5, 0x52(r3)
/* 8034C5EC  A0 DD 01 C8 */	lhz r6, 0x1c8(r29)
/* 8034C5F0  A0 BD 01 CA */	lhz r5, 0x1ca(r29)
/* 8034C5F4  7C C6 36 70 */	srawi r6, r6, 6
/* 8034C5F8  54 A5 20 36 */	slwi r5, r5, 4
/* 8034C5FC  7C C5 2B 78 */	or r5, r6, r5
/* 8034C600  B0 A3 00 50 */	sth r5, 0x50(r3)
/* 8034C604  A0 BD 01 CE */	lhz r5, 0x1ce(r29)
/* 8034C608  A0 DD 01 CC */	lhz r6, 0x1cc(r29)
/* 8034C60C  54 A5 54 2A */	rlwinm r5, r5, 0xa, 0x10, 0x15
/* 8034C610  7C C5 2B 78 */	or r5, r6, r5
/* 8034C614  B0 A3 00 56 */	sth r5, 0x56(r3)
/* 8034C618  A0 BD 01 CE */	lhz r5, 0x1ce(r29)
/* 8034C61C  A0 9D 01 D0 */	lhz r4, 0x1d0(r29)
/* 8034C620  7C A5 36 70 */	srawi r5, r5, 6
/* 8034C624  54 84 20 36 */	slwi r4, r4, 4
/* 8034C628  7C A4 23 78 */	or r4, r5, r4
/* 8034C62C  B0 83 00 54 */	sth r4, 0x54(r3)
/* 8034C630  A0 9D 01 D4 */	lhz r4, 0x1d4(r29)
/* 8034C634  A0 BD 01 D2 */	lhz r5, 0x1d2(r29)
/* 8034C638  54 84 40 2E */	slwi r4, r4, 8
/* 8034C63C  7C A4 23 78 */	or r4, r5, r4
/* 8034C640  B0 83 00 5A */	sth r4, 0x5a(r3)
/* 8034C644  A0 9D 01 D8 */	lhz r4, 0x1d8(r29)
/* 8034C648  A0 BD 01 D6 */	lhz r5, 0x1d6(r29)
/* 8034C64C  54 84 40 2E */	slwi r4, r4, 8
/* 8034C650  7C A4 23 78 */	or r4, r5, r4
/* 8034C654  B0 83 00 58 */	sth r4, 0x58(r3)
/* 8034C658  A0 9D 01 DC */	lhz r4, 0x1dc(r29)
/* 8034C65C  A0 BD 01 DA */	lhz r5, 0x1da(r29)
/* 8034C660  54 84 40 2E */	slwi r4, r4, 8
/* 8034C664  7C A4 23 78 */	or r4, r5, r4
/* 8034C668  B0 83 00 5E */	sth r4, 0x5e(r3)
/* 8034C66C  A0 9D 01 E0 */	lhz r4, 0x1e0(r29)
/* 8034C670  A0 BD 01 DE */	lhz r5, 0x1de(r29)
/* 8034C674  54 84 40 2E */	slwi r4, r4, 8
/* 8034C678  7C A4 23 78 */	or r4, r5, r4
/* 8034C67C  B0 83 00 5C */	sth r4, 0x5c(r3)
/* 8034C680  A0 9D 01 E4 */	lhz r4, 0x1e4(r29)
/* 8034C684  A0 BD 01 E2 */	lhz r5, 0x1e2(r29)
/* 8034C688  54 84 40 2E */	slwi r4, r4, 8
/* 8034C68C  7C A4 23 78 */	or r4, r5, r4
/* 8034C690  B0 83 00 62 */	sth r4, 0x62(r3)
/* 8034C694  A0 9D 01 E8 */	lhz r4, 0x1e8(r29)
/* 8034C698  A0 BD 01 E6 */	lhz r5, 0x1e6(r29)
/* 8034C69C  54 84 40 2E */	slwi r4, r4, 8
/* 8034C6A0  7C A4 23 78 */	or r4, r5, r4
/* 8034C6A4  B0 83 00 60 */	sth r4, 0x60(r3)
/* 8034C6A8  A0 9D 01 EC */	lhz r4, 0x1ec(r29)
/* 8034C6AC  A0 BD 01 EA */	lhz r5, 0x1ea(r29)
/* 8034C6B0  54 84 40 2E */	slwi r4, r4, 8
/* 8034C6B4  7C A4 23 78 */	or r4, r5, r4
/* 8034C6B8  B0 83 00 66 */	sth r4, 0x66(r3)
/* 8034C6BC  A0 9D 01 F0 */	lhz r4, 0x1f0(r29)
/* 8034C6C0  A0 BD 01 EE */	lhz r5, 0x1ee(r29)
/* 8034C6C4  54 84 40 2E */	slwi r4, r4, 8
/* 8034C6C8  7C A4 23 78 */	or r4, r5, r4
/* 8034C6CC  B0 83 00 64 */	sth r4, 0x64(r3)
/* 8034C6D0  B0 03 00 70 */	sth r0, 0x70(r3)
/* 8034C6D4  4B FF 3A 71 */	bl __OSLockSram
/* 8034C6D8  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8034C6DC  38 60 00 00 */	li r3, 0
/* 8034C6E0  7C 00 07 74 */	extsb r0, r0
/* 8034C6E4  B3 ED 92 86 */	sth r31, displayOffsetV(r13)
/* 8034C6E8  B0 0D 92 84 */	sth r0, displayOffsetH(r13)
/* 8034C6EC  4B FF 3E 4D */	bl __OSUnlockSram
/* 8034C6F0  A3 BC 00 00 */	lhz r29, 0(r28)
/* 8034C6F4  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000CC@ha */
/* 8034C6F8  80 63 00 CC */	lwz r3, 0x00CC(r3)  /* 0x800000CC@l */
/* 8034C6FC  38 9E 01 14 */	addi r4, r30, 0x114
/* 8034C700  57 A0 F7 FE */	rlwinm r0, r29, 0x1e, 0x1f, 0x1f
/* 8034C704  90 1E 01 14 */	stw r0, 0x114(r30)
/* 8034C708  57 A0 C7 BE */	rlwinm r0, r29, 0x18, 0x1e, 0x1f
/* 8034C70C  28 03 00 01 */	cmplwi r3, 1
/* 8034C710  90 1E 01 18 */	stw r0, 0x118(r30)
/* 8034C714  3B 9E 01 18 */	addi r28, r30, 0x118
/* 8034C718  40 82 00 18 */	bne lbl_8034C730
/* 8034C71C  80 1C 00 00 */	lwz r0, 0(r28)
/* 8034C720  28 00 00 00 */	cmplwi r0, 0
/* 8034C724  40 82 00 0C */	bne lbl_8034C730
/* 8034C728  38 00 00 05 */	li r0, 5
/* 8034C72C  90 1C 00 00 */	stw r0, 0(r28)
lbl_8034C730:
/* 8034C730  80 7C 00 00 */	lwz r3, 0(r28)
/* 8034C734  28 03 00 03 */	cmplwi r3, 3
/* 8034C738  40 82 00 08 */	bne lbl_8034C740
/* 8034C73C  38 60 00 00 */	li r3, 0
lbl_8034C740:
/* 8034C740  80 04 00 00 */	lwz r0, 0(r4)
/* 8034C744  54 63 10 3A */	slwi r3, r3, 2
/* 8034C748  7C 63 02 14 */	add r3, r3, r0
/* 8034C74C  4B FF FB 1D */	bl getTiming
/* 8034C750  90 7E 01 44 */	stw r3, 0x144(r30)
/* 8034C754  38 9E 01 44 */	addi r4, r30, 0x144
/* 8034C758  38 00 02 80 */	li r0, 0x280
/* 8034C75C  B3 BE 00 02 */	sth r29, 2(r30)
/* 8034C760  39 00 00 00 */	li r8, 0
/* 8034C764  38 DE 00 F6 */	addi r6, r30, 0xf6
/* 8034C768  80 84 00 00 */	lwz r4, 0(r4)
/* 8034C76C  38 7E 00 F2 */	addi r3, r30, 0xf2
/* 8034C770  90 8D 92 A8 */	stw r4, CurrTiming(r13)
/* 8034C774  80 9C 00 00 */	lwz r4, 0(r28)
/* 8034C778  90 8D 92 AC */	stw r4, CurrTvMode(r13)
/* 8034C77C  B0 1E 00 F4 */	sth r0, 0xf4(r30)
/* 8034C780  80 8D 92 A8 */	lwz r4, CurrTiming(r13)
/* 8034C784  A4 04 00 02 */	lhzu r0, 2(r4)
/* 8034C788  54 00 0C 3C */	rlwinm r0, r0, 1, 0x10, 0x1e
/* 8034C78C  B0 1E 00 F6 */	sth r0, 0xf6(r30)
/* 8034C790  A0 1E 00 F4 */	lhz r0, 0xf4(r30)
/* 8034C794  20 00 02 D0 */	subfic r0, r0, 0x2d0
/* 8034C798  7C 00 0E 70 */	srawi r0, r0, 1
/* 8034C79C  7C 00 01 94 */	addze r0, r0
/* 8034C7A0  B0 1E 00 F0 */	sth r0, 0xf0(r30)
/* 8034C7A4  B1 1E 00 F2 */	sth r8, 0xf2(r30)
/* 8034C7A8  A0 1E 00 F4 */	lhz r0, 0xf4(r30)
/* 8034C7AC  A8 FE 00 F0 */	lha r7, 0xf0(r30)
/* 8034C7B0  A8 AD 92 84 */	lha r5, displayOffsetH(r13)
/* 8034C7B4  20 00 02 D0 */	subfic r0, r0, 0x2d0
/* 8034C7B8  A1 24 00 00 */	lhz r9, 0(r4)
/* 8034C7BC  7C A7 2A 14 */	add r5, r7, r5
/* 8034C7C0  7C 05 00 00 */	cmpw r5, r0
/* 8034C7C4  40 81 00 08 */	ble lbl_8034C7CC
/* 8034C7C8  48 00 00 18 */	b lbl_8034C7E0
lbl_8034C7CC:
/* 8034C7CC  2C 05 00 00 */	cmpwi r5, 0
/* 8034C7D0  40 80 00 08 */	bge lbl_8034C7D8
/* 8034C7D4  48 00 00 08 */	b lbl_8034C7DC
lbl_8034C7D8:
/* 8034C7D8  7C A8 2B 78 */	mr r8, r5
lbl_8034C7DC:
/* 8034C7DC  7D 00 43 78 */	mr r0, r8
lbl_8034C7E0:
/* 8034C7E0  B0 1E 00 F8 */	sth r0, 0xf8(r30)
/* 8034C7E4  39 1E 01 10 */	addi r8, r30, 0x110
/* 8034C7E8  80 1E 01 10 */	lwz r0, 0x110(r30)
/* 8034C7EC  2C 00 00 00 */	cmpwi r0, 0
/* 8034C7F0  40 82 00 0C */	bne lbl_8034C7FC
/* 8034C7F4  39 60 00 02 */	li r11, 2
/* 8034C7F8  48 00 00 08 */	b lbl_8034C800
lbl_8034C7FC:
/* 8034C7FC  39 60 00 01 */	li r11, 1
lbl_8034C800:
/* 8034C800  A0 03 00 00 */	lhz r0, 0(r3)
/* 8034C804  A8 AD 92 86 */	lha r5, displayOffsetV(r13)
/* 8034C808  7C 07 07 34 */	extsh r7, r0
/* 8034C80C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8034C810  7C E7 2A 14 */	add r7, r7, r5
/* 8034C814  7C 07 00 00 */	cmpw r7, r0
/* 8034C818  40 81 00 08 */	ble lbl_8034C820
/* 8034C81C  48 00 00 08 */	b lbl_8034C824
lbl_8034C820:
/* 8034C820  7C 07 03 78 */	mr r7, r0
lbl_8034C824:
/* 8034C824  B0 FE 00 FA */	sth r7, 0xfa(r30)
/* 8034C828  7D 27 07 34 */	extsh r7, r9
/* 8034C82C  54 E7 08 3C */	slwi r7, r7, 1
/* 8034C830  A3 86 00 00 */	lhz r28, 0(r6)
/* 8034C834  7D 80 38 50 */	subf r12, r0, r7
/* 8034C838  A9 43 00 00 */	lha r10, 0(r3)
/* 8034C83C  7F 87 07 34 */	extsh r7, r28
/* 8034C840  7D 27 2A 14 */	add r9, r7, r5
/* 8034C844  7D 2A 4A 14 */	add r9, r10, r9
/* 8034C848  7C EC 48 51 */	subf. r7, r12, r9
/* 8034C84C  40 81 00 0C */	ble lbl_8034C858
/* 8034C850  7D 2C 48 50 */	subf r9, r12, r9
/* 8034C854  48 00 00 08 */	b lbl_8034C85C
lbl_8034C858:
/* 8034C858  39 20 00 00 */	li r9, 0
lbl_8034C85C:
/* 8034C85C  7D 4A 2A 14 */	add r10, r10, r5
/* 8034C860  7C E0 50 51 */	subf. r7, r0, r10
/* 8034C864  40 80 00 0C */	bge lbl_8034C870
/* 8034C868  7C E0 50 50 */	subf r7, r0, r10
/* 8034C86C  48 00 00 08 */	b lbl_8034C874
lbl_8034C870:
/* 8034C870  38 E0 00 00 */	li r7, 0
lbl_8034C874:
/* 8034C874  7C FC 3A 14 */	add r7, r28, r7
/* 8034C878  7C E9 38 50 */	subf r7, r9, r7
/* 8034C87C  B0 FE 00 FC */	sth r7, 0xfc(r30)
/* 8034C880  A8 E3 00 00 */	lha r7, 0(r3)
/* 8034C884  7D 27 2A 14 */	add r9, r7, r5
/* 8034C888  7C E0 48 51 */	subf. r7, r0, r9
/* 8034C88C  40 80 00 0C */	bge lbl_8034C898
/* 8034C890  7C E0 48 50 */	subf r7, r0, r9
/* 8034C894  48 00 00 08 */	b lbl_8034C89C
lbl_8034C898:
/* 8034C898  38 E0 00 00 */	li r7, 0
lbl_8034C89C:
/* 8034C89C  7D 47 5B D6 */	divw r10, r7, r11
/* 8034C8A0  38 FE 01 08 */	addi r7, r30, 0x108
/* 8034C8A4  A1 3E 01 08 */	lhz r9, 0x108(r30)
/* 8034C8A8  7D 2A 48 50 */	subf r9, r10, r9
/* 8034C8AC  B1 3E 00 FE */	sth r9, 0xfe(r30)
/* 8034C8B0  A8 C6 00 00 */	lha r6, 0(r6)
/* 8034C8B4  A9 23 00 00 */	lha r9, 0(r3)
/* 8034C8B8  7C C6 2A 14 */	add r6, r6, r5
/* 8034C8BC  7C C9 32 14 */	add r6, r9, r6
/* 8034C8C0  7C 6C 30 51 */	subf. r3, r12, r6
/* 8034C8C4  40 81 00 0C */	ble lbl_8034C8D0
/* 8034C8C8  7C CC 30 50 */	subf r6, r12, r6
/* 8034C8CC  48 00 00 08 */	b lbl_8034C8D4
lbl_8034C8D0:
/* 8034C8D0  38 C0 00 00 */	li r6, 0
lbl_8034C8D4:
/* 8034C8D4  7C A9 2A 14 */	add r5, r9, r5
/* 8034C8D8  7C 60 28 51 */	subf. r3, r0, r5
/* 8034C8DC  40 80 00 0C */	bge lbl_8034C8E8
/* 8034C8E0  7C 00 28 50 */	subf r0, r0, r5
/* 8034C8E4  48 00 00 08 */	b lbl_8034C8EC
lbl_8034C8E8:
/* 8034C8E8  38 00 00 00 */	li r0, 0
lbl_8034C8EC:
/* 8034C8EC  7C 00 5B D6 */	divw r0, r0, r11
/* 8034C8F0  A0 7E 01 0C */	lhz r3, 0x10c(r30)
/* 8034C8F4  7C 03 02 14 */	add r0, r3, r0
/* 8034C8F8  7C A6 5B D6 */	divw r5, r6, r11
/* 8034C8FC  7C 05 00 50 */	subf r0, r5, r0
/* 8034C900  B0 1E 01 00 */	sth r0, 0x100(r30)
/* 8034C904  39 20 02 80 */	li r9, 0x280
/* 8034C908  3B 80 00 00 */	li r28, 0
/* 8034C90C  B1 3E 01 02 */	sth r9, 0x102(r30)
/* 8034C910  38 A0 00 28 */	li r5, 0x28
/* 8034C914  38 00 00 01 */	li r0, 1
/* 8034C918  A0 C4 00 00 */	lhz r6, 0(r4)
/* 8034C91C  38 6D 92 6C */	la r3, retraceQueue(r13) /* 804517EC-_SDA_BASE_ */
/* 8034C920  54 C6 0C 3C */	rlwinm r6, r6, 1, 0x10, 0x1e
/* 8034C924  B0 DE 01 04 */	sth r6, 0x104(r30)
/* 8034C928  B3 9E 01 06 */	sth r28, 0x106(r30)
/* 8034C92C  B3 87 00 00 */	sth r28, 0(r7)
/* 8034C930  B1 3E 01 0A */	sth r9, 0x10a(r30)
/* 8034C934  A0 84 00 00 */	lhz r4, 0(r4)
/* 8034C938  54 84 0C 3C */	rlwinm r4, r4, 1, 0x10, 0x1e
/* 8034C93C  B0 9E 01 0C */	sth r4, 0x10c(r30)
/* 8034C940  93 88 00 00 */	stw r28, 0(r8)
/* 8034C944  98 BE 01 1C */	stb r5, 0x11c(r30)
/* 8034C948  98 BE 01 1D */	stb r5, 0x11d(r30)
/* 8034C94C  98 BE 01 1E */	stb r5, 0x11e(r30)
/* 8034C950  9B 9E 01 2C */	stb r28, 0x12c(r30)
/* 8034C954  90 1E 01 30 */	stw r0, 0x130(r30)
/* 8034C958  93 9E 01 34 */	stw r28, 0x134(r30)
/* 8034C95C  4B FF 43 19 */	bl OSInitThreadQueue
/* 8034C960  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC002030@ha */
/* 8034C964  A0 03 20 30 */	lhz r0, 0x2030(r3)  /* 0xCC002030@l */
/* 8034C968  38 83 20 00 */	addi r4, r3, 0x2000
/* 8034C96C  38 A3 20 00 */	addi r5, r3, 0x2000
/* 8034C970  54 00 04 7E */	clrlwi r0, r0, 0x11
/* 8034C974  B0 04 00 30 */	sth r0, 0x30(r4)
/* 8034C978  3C 60 80 35 */	lis r3, __VIRetraceHandler@ha /* 0x8034BF6C@ha */
/* 8034C97C  38 83 BF 6C */	addi r4, r3, __VIRetraceHandler@l /* 0x8034BF6C@l */
/* 8034C980  A0 05 00 34 */	lhz r0, 0x34(r5)
/* 8034C984  38 60 00 18 */	li r3, 0x18
/* 8034C988  54 00 04 7E */	clrlwi r0, r0, 0x11
/* 8034C98C  B0 05 00 34 */	sth r0, 0x34(r5)
/* 8034C990  93 8D 92 74 */	stw r28, PreCB(r13)
/* 8034C994  93 8D 92 78 */	stw r28, PostCB(r13)
/* 8034C998  4B FF 0D A9 */	bl __OSSetInterruptHandler
/* 8034C99C  38 60 00 80 */	li r3, 0x80
/* 8034C9A0  4B FF 11 A5 */	bl __OSUnmaskInterrupts
lbl_8034C9A4:
/* 8034C9A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034C9A8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034C9AC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034C9B0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8034C9B4  83 81 00 08 */	lwz r28, 8(r1)
/* 8034C9B8  38 21 00 18 */	addi r1, r1, 0x18
/* 8034C9BC  7C 08 03 A6 */	mtlr r0
/* 8034C9C0  4E 80 00 20 */	blr 
