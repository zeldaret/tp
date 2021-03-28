lbl_80BA7618:
/* 80BA7618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA761C  7C 08 02 A6 */	mflr r0
/* 80BA7620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA7624  3C 80 80 BA */	lis r4, cNullVec__6Z2Calc@ha
/* 80BA7628  38 E4 7D 70 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80BA762C  3C 80 80 BA */	lis r4, data_80BA7EA0@ha
/* 80BA7630  38 C4 7E A0 */	addi r6, r4, data_80BA7EA0@l
/* 80BA7634  88 06 00 00 */	lbz r0, 0(r6)
/* 80BA7638  7C 00 07 75 */	extsb. r0, r0
/* 80BA763C  40 82 00 70 */	bne lbl_80BA76AC
/* 80BA7640  80 87 00 44 */	lwz r4, 0x44(r7)
/* 80BA7644  80 07 00 48 */	lwz r0, 0x48(r7)
/* 80BA7648  90 87 00 74 */	stw r4, 0x74(r7)
/* 80BA764C  90 07 00 78 */	stw r0, 0x78(r7)
/* 80BA7650  80 07 00 4C */	lwz r0, 0x4c(r7)
/* 80BA7654  90 07 00 7C */	stw r0, 0x7c(r7)
/* 80BA7658  38 A7 00 74 */	addi r5, r7, 0x74
/* 80BA765C  80 87 00 50 */	lwz r4, 0x50(r7)
/* 80BA7660  80 07 00 54 */	lwz r0, 0x54(r7)
/* 80BA7664  90 85 00 0C */	stw r4, 0xc(r5)
/* 80BA7668  90 05 00 10 */	stw r0, 0x10(r5)
/* 80BA766C  80 07 00 58 */	lwz r0, 0x58(r7)
/* 80BA7670  90 05 00 14 */	stw r0, 0x14(r5)
/* 80BA7674  80 87 00 5C */	lwz r4, 0x5c(r7)
/* 80BA7678  80 07 00 60 */	lwz r0, 0x60(r7)
/* 80BA767C  90 85 00 18 */	stw r4, 0x18(r5)
/* 80BA7680  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80BA7684  80 07 00 64 */	lwz r0, 0x64(r7)
/* 80BA7688  90 05 00 20 */	stw r0, 0x20(r5)
/* 80BA768C  80 87 00 68 */	lwz r4, 0x68(r7)
/* 80BA7690  80 07 00 6C */	lwz r0, 0x6c(r7)
/* 80BA7694  90 85 00 24 */	stw r4, 0x24(r5)
/* 80BA7698  90 05 00 28 */	stw r0, 0x28(r5)
/* 80BA769C  80 07 00 70 */	lwz r0, 0x70(r7)
/* 80BA76A0  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80BA76A4  38 00 00 01 */	li r0, 1
/* 80BA76A8  98 06 00 00 */	stb r0, 0(r6)
lbl_80BA76AC:
/* 80BA76AC  88 03 05 E8 */	lbz r0, 0x5e8(r3)
/* 80BA76B0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BA76B4  39 87 00 74 */	addi r12, r7, 0x74
/* 80BA76B8  7D 8C 02 14 */	add r12, r12, r0
/* 80BA76BC  4B 7B A9 C8 */	b __ptmf_scall
/* 80BA76C0  60 00 00 00 */	nop 
/* 80BA76C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA76C8  7C 08 03 A6 */	mtlr r0
/* 80BA76CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA76D0  4E 80 00 20 */	blr 
