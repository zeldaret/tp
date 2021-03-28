lbl_80BAF29C:
/* 80BAF29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAF2A0  7C 08 02 A6 */	mflr r0
/* 80BAF2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAF2A8  3C 80 80 BB */	lis r4, cNullVec__6Z2Calc@ha
/* 80BAF2AC  38 E4 3A 74 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80BAF2B0  3C 80 80 BB */	lis r4, struct_80BB3F24+0x1@ha
/* 80BAF2B4  38 C4 3F 25 */	addi r6, r4, struct_80BB3F24+0x1@l
/* 80BAF2B8  88 06 00 00 */	lbz r0, 0(r6)
/* 80BAF2BC  7C 00 07 75 */	extsb. r0, r0
/* 80BAF2C0  40 82 00 40 */	bne lbl_80BAF300
/* 80BAF2C4  80 87 01 38 */	lwz r4, 0x138(r7)
/* 80BAF2C8  80 07 01 3C */	lwz r0, 0x13c(r7)
/* 80BAF2CC  90 87 01 50 */	stw r4, 0x150(r7)
/* 80BAF2D0  90 07 01 54 */	stw r0, 0x154(r7)
/* 80BAF2D4  80 07 01 40 */	lwz r0, 0x140(r7)
/* 80BAF2D8  90 07 01 58 */	stw r0, 0x158(r7)
/* 80BAF2DC  38 A7 01 50 */	addi r5, r7, 0x150
/* 80BAF2E0  80 87 01 44 */	lwz r4, 0x144(r7)
/* 80BAF2E4  80 07 01 48 */	lwz r0, 0x148(r7)
/* 80BAF2E8  90 85 00 0C */	stw r4, 0xc(r5)
/* 80BAF2EC  90 05 00 10 */	stw r0, 0x10(r5)
/* 80BAF2F0  80 07 01 4C */	lwz r0, 0x14c(r7)
/* 80BAF2F4  90 05 00 14 */	stw r0, 0x14(r5)
/* 80BAF2F8  38 00 00 01 */	li r0, 1
/* 80BAF2FC  98 06 00 00 */	stb r0, 0(r6)
lbl_80BAF300:
/* 80BAF300  88 03 0F EB */	lbz r0, 0xfeb(r3)
/* 80BAF304  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BAF308  39 87 01 50 */	addi r12, r7, 0x150
/* 80BAF30C  7D 8C 02 14 */	add r12, r12, r0
/* 80BAF310  4B 7B 2D 74 */	b __ptmf_scall
/* 80BAF314  60 00 00 00 */	nop 
/* 80BAF318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAF31C  7C 08 03 A6 */	mtlr r0
/* 80BAF320  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAF324  4E 80 00 20 */	blr 
