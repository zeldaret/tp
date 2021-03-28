lbl_80C6BBC4:
/* 80C6BBC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6BBC8  7C 08 02 A6 */	mflr r0
/* 80C6BBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6BBD0  3C 80 80 C7 */	lis r4, cNullVec__6Z2Calc@ha
/* 80C6BBD4  38 E4 C6 C8 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80C6BBD8  3C 80 80 C7 */	lis r4, data_80C6C850@ha
/* 80C6BBDC  38 C4 C8 50 */	addi r6, r4, data_80C6C850@l
/* 80C6BBE0  88 06 00 00 */	lbz r0, 0(r6)
/* 80C6BBE4  7C 00 07 75 */	extsb. r0, r0
/* 80C6BBE8  40 82 00 40 */	bne lbl_80C6BC28
/* 80C6BBEC  80 87 00 64 */	lwz r4, 0x64(r7)
/* 80C6BBF0  80 07 00 68 */	lwz r0, 0x68(r7)
/* 80C6BBF4  90 87 00 7C */	stw r4, 0x7c(r7)
/* 80C6BBF8  90 07 00 80 */	stw r0, 0x80(r7)
/* 80C6BBFC  80 07 00 6C */	lwz r0, 0x6c(r7)
/* 80C6BC00  90 07 00 84 */	stw r0, 0x84(r7)
/* 80C6BC04  38 A7 00 7C */	addi r5, r7, 0x7c
/* 80C6BC08  80 87 00 70 */	lwz r4, 0x70(r7)
/* 80C6BC0C  80 07 00 74 */	lwz r0, 0x74(r7)
/* 80C6BC10  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C6BC14  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C6BC18  80 07 00 78 */	lwz r0, 0x78(r7)
/* 80C6BC1C  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C6BC20  38 00 00 01 */	li r0, 1
/* 80C6BC24  98 06 00 00 */	stb r0, 0(r6)
lbl_80C6BC28:
/* 80C6BC28  88 03 08 64 */	lbz r0, 0x864(r3)
/* 80C6BC2C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C6BC30  39 87 00 7C */	addi r12, r7, 0x7c
/* 80C6BC34  7D 8C 02 14 */	add r12, r12, r0
/* 80C6BC38  4B 6F 64 4C */	b __ptmf_scall
/* 80C6BC3C  60 00 00 00 */	nop 
/* 80C6BC40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6BC44  7C 08 03 A6 */	mtlr r0
/* 80C6BC48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6BC4C  4E 80 00 20 */	blr 
