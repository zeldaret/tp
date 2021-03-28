lbl_80BAF750:
/* 80BAF750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAF754  7C 08 02 A6 */	mflr r0
/* 80BAF758  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAF75C  3C 80 80 BB */	lis r4, cNullVec__6Z2Calc@ha
/* 80BAF760  38 E4 3A 74 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80BAF764  3C 80 80 BB */	lis r4, struct_80BB3F24+0x3@ha
/* 80BAF768  38 C4 3F 27 */	addi r6, r4, struct_80BB3F24+0x3@l
/* 80BAF76C  88 06 00 00 */	lbz r0, 0(r6)
/* 80BAF770  7C 00 07 75 */	extsb. r0, r0
/* 80BAF774  40 82 00 70 */	bne lbl_80BAF7E4
/* 80BAF778  80 87 01 E0 */	lwz r4, 0x1e0(r7)
/* 80BAF77C  80 07 01 E4 */	lwz r0, 0x1e4(r7)
/* 80BAF780  90 87 02 10 */	stw r4, 0x210(r7)
/* 80BAF784  90 07 02 14 */	stw r0, 0x214(r7)
/* 80BAF788  80 07 01 E8 */	lwz r0, 0x1e8(r7)
/* 80BAF78C  90 07 02 18 */	stw r0, 0x218(r7)
/* 80BAF790  38 A7 02 10 */	addi r5, r7, 0x210
/* 80BAF794  80 87 01 EC */	lwz r4, 0x1ec(r7)
/* 80BAF798  80 07 01 F0 */	lwz r0, 0x1f0(r7)
/* 80BAF79C  90 85 00 0C */	stw r4, 0xc(r5)
/* 80BAF7A0  90 05 00 10 */	stw r0, 0x10(r5)
/* 80BAF7A4  80 07 01 F4 */	lwz r0, 0x1f4(r7)
/* 80BAF7A8  90 05 00 14 */	stw r0, 0x14(r5)
/* 80BAF7AC  80 87 01 F8 */	lwz r4, 0x1f8(r7)
/* 80BAF7B0  80 07 01 FC */	lwz r0, 0x1fc(r7)
/* 80BAF7B4  90 85 00 18 */	stw r4, 0x18(r5)
/* 80BAF7B8  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80BAF7BC  80 07 02 00 */	lwz r0, 0x200(r7)
/* 80BAF7C0  90 05 00 20 */	stw r0, 0x20(r5)
/* 80BAF7C4  80 87 02 04 */	lwz r4, 0x204(r7)
/* 80BAF7C8  80 07 02 08 */	lwz r0, 0x208(r7)
/* 80BAF7CC  90 85 00 24 */	stw r4, 0x24(r5)
/* 80BAF7D0  90 05 00 28 */	stw r0, 0x28(r5)
/* 80BAF7D4  80 07 02 0C */	lwz r0, 0x20c(r7)
/* 80BAF7D8  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80BAF7DC  38 00 00 01 */	li r0, 1
/* 80BAF7E0  98 06 00 00 */	stb r0, 0(r6)
lbl_80BAF7E4:
/* 80BAF7E4  80 03 10 AC */	lwz r0, 0x10ac(r3)
/* 80BAF7E8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BAF7EC  39 87 02 10 */	addi r12, r7, 0x210
/* 80BAF7F0  7D 8C 02 14 */	add r12, r12, r0
/* 80BAF7F4  4B 7B 28 90 */	b __ptmf_scall
/* 80BAF7F8  60 00 00 00 */	nop 
/* 80BAF7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAF800  7C 08 03 A6 */	mtlr r0
/* 80BAF804  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAF808  4E 80 00 20 */	blr 
