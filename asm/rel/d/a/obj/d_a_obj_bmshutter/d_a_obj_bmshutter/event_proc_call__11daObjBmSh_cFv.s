lbl_80BBA080:
/* 80BBA080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA084  7C 08 02 A6 */	mflr r0
/* 80BBA088  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA08C  3C 80 80 BC */	lis r4, cNullVec__6Z2Calc@ha
/* 80BBA090  38 E4 A8 2C */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80BBA094  3C 80 80 BC */	lis r4, struct_80BBA970+0x0@ha
/* 80BBA098  38 C4 A9 70 */	addi r6, r4, struct_80BBA970+0x0@l
/* 80BBA09C  88 06 00 00 */	lbz r0, 0(r6)
/* 80BBA0A0  7C 00 07 75 */	extsb. r0, r0
/* 80BBA0A4  40 82 00 70 */	bne lbl_80BBA114
/* 80BBA0A8  80 87 00 24 */	lwz r4, 0x24(r7)
/* 80BBA0AC  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80BBA0B0  90 87 00 54 */	stw r4, 0x54(r7)
/* 80BBA0B4  90 07 00 58 */	stw r0, 0x58(r7)
/* 80BBA0B8  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 80BBA0BC  90 07 00 5C */	stw r0, 0x5c(r7)
/* 80BBA0C0  38 A7 00 54 */	addi r5, r7, 0x54
/* 80BBA0C4  80 87 00 30 */	lwz r4, 0x30(r7)
/* 80BBA0C8  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80BBA0CC  90 85 00 0C */	stw r4, 0xc(r5)
/* 80BBA0D0  90 05 00 10 */	stw r0, 0x10(r5)
/* 80BBA0D4  80 07 00 38 */	lwz r0, 0x38(r7)
/* 80BBA0D8  90 05 00 14 */	stw r0, 0x14(r5)
/* 80BBA0DC  80 87 00 3C */	lwz r4, 0x3c(r7)
/* 80BBA0E0  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80BBA0E4  90 85 00 18 */	stw r4, 0x18(r5)
/* 80BBA0E8  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80BBA0EC  80 07 00 44 */	lwz r0, 0x44(r7)
/* 80BBA0F0  90 05 00 20 */	stw r0, 0x20(r5)
/* 80BBA0F4  80 87 00 48 */	lwz r4, 0x48(r7)
/* 80BBA0F8  80 07 00 4C */	lwz r0, 0x4c(r7)
/* 80BBA0FC  90 85 00 24 */	stw r4, 0x24(r5)
/* 80BBA100  90 05 00 28 */	stw r0, 0x28(r5)
/* 80BBA104  80 07 00 50 */	lwz r0, 0x50(r7)
/* 80BBA108  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80BBA10C  38 00 00 01 */	li r0, 1
/* 80BBA110  98 06 00 00 */	stb r0, 0(r6)
lbl_80BBA114:
/* 80BBA114  88 03 05 AF */	lbz r0, 0x5af(r3)
/* 80BBA118  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BBA11C  39 87 00 54 */	addi r12, r7, 0x54
/* 80BBA120  7D 8C 02 14 */	add r12, r12, r0
/* 80BBA124  4B 7A 7F 60 */	b __ptmf_scall
/* 80BBA128  60 00 00 00 */	nop 
/* 80BBA12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA130  7C 08 03 A6 */	mtlr r0
/* 80BBA134  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA138  4E 80 00 20 */	blr 
