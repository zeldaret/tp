lbl_80CA9184:
/* 80CA9184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9188  7C 08 02 A6 */	mflr r0
/* 80CA918C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA9190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA9194  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA9198  7C 7E 1B 78 */	mr r30, r3
/* 80CA919C  3C 60 80 CB */	lis r3, cNullVec__6Z2Calc@ha /* 0x80CA9C18@ha */
/* 80CA91A0  3B E3 9C 18 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80CA9C18@l */
/* 80CA91A4  3C 60 80 CB */	lis r3, data_80CA9E04@ha /* 0x80CA9E04@ha */
/* 80CA91A8  38 A3 9E 04 */	addi r5, r3, data_80CA9E04@l /* 0x80CA9E04@l */
/* 80CA91AC  88 05 00 00 */	lbz r0, 0(r5)
/* 80CA91B0  7C 00 07 75 */	extsb. r0, r0
/* 80CA91B4  40 82 00 88 */	bne lbl_80CA923C
/* 80CA91B8  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80CA91BC  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80CA91C0  90 7F 00 A0 */	stw r3, 0xa0(r31)
/* 80CA91C4  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 80CA91C8  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80CA91CC  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 80CA91D0  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 80CA91D4  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80CA91D8  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 80CA91DC  90 64 00 0C */	stw r3, 0xc(r4)
/* 80CA91E0  90 04 00 10 */	stw r0, 0x10(r4)
/* 80CA91E4  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 80CA91E8  90 04 00 14 */	stw r0, 0x14(r4)
/* 80CA91EC  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80CA91F0  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 80CA91F4  90 64 00 18 */	stw r3, 0x18(r4)
/* 80CA91F8  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80CA91FC  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 80CA9200  90 04 00 20 */	stw r0, 0x20(r4)
/* 80CA9204  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 80CA9208  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 80CA920C  90 64 00 24 */	stw r3, 0x24(r4)
/* 80CA9210  90 04 00 28 */	stw r0, 0x28(r4)
/* 80CA9214  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 80CA9218  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80CA921C  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80CA9220  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 80CA9224  90 64 00 30 */	stw r3, 0x30(r4)
/* 80CA9228  90 04 00 34 */	stw r0, 0x34(r4)
/* 80CA922C  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 80CA9230  90 04 00 38 */	stw r0, 0x38(r4)
/* 80CA9234  38 00 00 01 */	li r0, 1
/* 80CA9238  98 05 00 00 */	stb r0, 0(r5)
lbl_80CA923C:
/* 80CA923C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80CA9240  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CA9244  41 82 00 18 */	beq lbl_80CA925C
/* 80CA9248  88 1E 05 79 */	lbz r0, 0x579(r30)
/* 80CA924C  28 00 00 00 */	cmplwi r0, 0
/* 80CA9250  40 82 00 0C */	bne lbl_80CA925C
/* 80CA9254  7F C3 F3 78 */	mr r3, r30
/* 80CA9258  48 00 00 99 */	bl mode_init_carry__11daOnsTaru_cFv
lbl_80CA925C:
/* 80CA925C  7F C3 F3 78 */	mr r3, r30
/* 80CA9260  88 1E 05 78 */	lbz r0, 0x578(r30)
/* 80CA9264  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CA9268  39 9F 00 A0 */	addi r12, r31, 0xa0
/* 80CA926C  7D 8C 02 14 */	add r12, r12, r0
/* 80CA9270  4B 6B 8E 15 */	bl __ptmf_scall
/* 80CA9274  60 00 00 00 */	nop 
/* 80CA9278  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80CA927C  54 00 9F FE */	rlwinm r0, r0, 0x13, 0x1f, 0x1f
/* 80CA9280  98 1E 05 79 */	stb r0, 0x579(r30)
/* 80CA9284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA9288  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA928C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA9290  7C 08 03 A6 */	mtlr r0
/* 80CA9294  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA9298  4E 80 00 20 */	blr 
