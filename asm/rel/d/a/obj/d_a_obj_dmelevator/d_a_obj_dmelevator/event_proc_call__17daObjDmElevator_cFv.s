lbl_80BDEDE0:
/* 80BDEDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDEDE4  7C 08 02 A6 */	mflr r0
/* 80BDEDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDEDEC  3C 80 80 BE */	lis r4, cNullVec__6Z2Calc@ha /* 0x80BDF944@ha */
/* 80BDEDF0  38 84 F9 44 */	addi r4, r4, cNullVec__6Z2Calc@l /* 0x80BDF944@l */
/* 80BDEDF4  3C A0 80 BE */	lis r5, struct_80BDFBDC+0x2@ha /* 0x80BDFBDE@ha */
/* 80BDEDF8  38 E5 FB DE */	addi r7, r5, struct_80BDFBDC+0x2@l /* 0x80BDFBDE@l */
/* 80BDEDFC  88 07 00 00 */	lbz r0, 0(r7)
/* 80BDEE00  7C 00 07 75 */	extsb. r0, r0
/* 80BDEE04  40 82 00 A0 */	bne lbl_80BDEEA4
/* 80BDEE08  80 A4 00 DC */	lwz r5, 0xdc(r4)
/* 80BDEE0C  80 04 00 E0 */	lwz r0, 0xe0(r4)
/* 80BDEE10  90 A4 01 24 */	stw r5, 0x124(r4)
/* 80BDEE14  90 04 01 28 */	stw r0, 0x128(r4)
/* 80BDEE18  80 04 00 E4 */	lwz r0, 0xe4(r4)
/* 80BDEE1C  90 04 01 2C */	stw r0, 0x12c(r4)
/* 80BDEE20  38 C4 01 24 */	addi r6, r4, 0x124
/* 80BDEE24  80 A4 00 E8 */	lwz r5, 0xe8(r4)
/* 80BDEE28  80 04 00 EC */	lwz r0, 0xec(r4)
/* 80BDEE2C  90 A6 00 0C */	stw r5, 0xc(r6)
/* 80BDEE30  90 06 00 10 */	stw r0, 0x10(r6)
/* 80BDEE34  80 04 00 F0 */	lwz r0, 0xf0(r4)
/* 80BDEE38  90 06 00 14 */	stw r0, 0x14(r6)
/* 80BDEE3C  80 A4 00 F4 */	lwz r5, 0xf4(r4)
/* 80BDEE40  80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 80BDEE44  90 A6 00 18 */	stw r5, 0x18(r6)
/* 80BDEE48  90 06 00 1C */	stw r0, 0x1c(r6)
/* 80BDEE4C  80 04 00 FC */	lwz r0, 0xfc(r4)
/* 80BDEE50  90 06 00 20 */	stw r0, 0x20(r6)
/* 80BDEE54  80 A4 01 00 */	lwz r5, 0x100(r4)
/* 80BDEE58  80 04 01 04 */	lwz r0, 0x104(r4)
/* 80BDEE5C  90 A6 00 24 */	stw r5, 0x24(r6)
/* 80BDEE60  90 06 00 28 */	stw r0, 0x28(r6)
/* 80BDEE64  80 04 01 08 */	lwz r0, 0x108(r4)
/* 80BDEE68  90 06 00 2C */	stw r0, 0x2c(r6)
/* 80BDEE6C  80 A4 01 0C */	lwz r5, 0x10c(r4)
/* 80BDEE70  80 04 01 10 */	lwz r0, 0x110(r4)
/* 80BDEE74  90 A6 00 30 */	stw r5, 0x30(r6)
/* 80BDEE78  90 06 00 34 */	stw r0, 0x34(r6)
/* 80BDEE7C  80 04 01 14 */	lwz r0, 0x114(r4)
/* 80BDEE80  90 06 00 38 */	stw r0, 0x38(r6)
/* 80BDEE84  80 A4 01 18 */	lwz r5, 0x118(r4)
/* 80BDEE88  80 04 01 1C */	lwz r0, 0x11c(r4)
/* 80BDEE8C  90 A6 00 3C */	stw r5, 0x3c(r6)
/* 80BDEE90  90 06 00 40 */	stw r0, 0x40(r6)
/* 80BDEE94  80 04 01 20 */	lwz r0, 0x120(r4)
/* 80BDEE98  90 06 00 44 */	stw r0, 0x44(r6)
/* 80BDEE9C  38 00 00 01 */	li r0, 1
/* 80BDEEA0  98 07 00 00 */	stb r0, 0(r7)
lbl_80BDEEA4:
/* 80BDEEA4  88 03 05 E2 */	lbz r0, 0x5e2(r3)
/* 80BDEEA8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BDEEAC  39 84 01 24 */	addi r12, r4, 0x124
/* 80BDEEB0  7D 8C 02 14 */	add r12, r12, r0
/* 80BDEEB4  4B 78 31 D1 */	bl __ptmf_scall
/* 80BDEEB8  60 00 00 00 */	nop 
/* 80BDEEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDEEC0  7C 08 03 A6 */	mtlr r0
/* 80BDEEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDEEC8  4E 80 00 20 */	blr 
